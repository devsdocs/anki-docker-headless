import re
import json
import os

with open('content.md', 'r', encoding='utf-8') as f:
    content = f.read()

action_regex = re.compile(r'#### `([^`]+)`\s*([\s\S]*?)(?=(?:#### `|\n---\n|$))')
matches = action_regex.findall(content)

actions = {}
all_models = {}

def infer_schema(value, name_hint, models_dict):
    if isinstance(value, bool): return {"type": "boolean"}
    if isinstance(value, int): return {"type": "integer"}
    if isinstance(value, float): return {"type": "float"}
    if isinstance(value, str): return {"type": "string"}
    if value is None: return {"type": "any"}
    if isinstance(value, list):
        if len(value) > 0:
            item_schema = infer_schema(value[0], name_hint + "Item", models_dict)
            return {"type": "array", "items": item_schema}
        else:
            return {"type": "array", "items": {"type": "any"}}
    if isinstance(value, dict):
        model_name = name_hint[0].upper() + name_hint[1:]
        fields = {}
        for k, v in value.items():
            clean_k = re.sub(r'[^a-zA-Z0-9_]', '', k)
            if not clean_k or clean_k[0].isdigit():
                return {"type": "map", "values": {"type": "any"}}
            fields[k] = infer_schema(v, model_name + clean_k.capitalize(), models_dict)
        
        models_dict[model_name] = {"type": "object", "name": model_name, "fields": fields}
        return {"type": "model", "name": model_name}
    
    return {"type": "any"}

for action_name, action_body in matches:
    req_regex = re.compile(r'<summary><i>Sample request.*?</i></summary>\s*```json\n(.*?)\n\s*```', re.DOTALL)
    req_match = req_regex.search(action_body)
    
    res_regex = re.compile(r'<summary><i>Sample result.*?</i></summary>\s*```json\n(.*?)\n\s*```', re.DOTALL)
    res_match = res_regex.search(action_body)
    
    params_schema = {}
    if req_match:
        try:
            req_json = json.loads(req_match.group(1))
            raw_params = req_json.get('params', {})
            for k, v in raw_params.items():
                params_schema[k] = infer_schema(v, action_name[0].upper() + action_name[1:] + k.capitalize(), all_models)
        except:
            pass
            
    res_schema = {"type": "any"}
    if res_match:
        try:
            res_json = json.loads(res_match.group(1))
            res = res_json.get('result')
            res_schema = infer_schema(res, action_name[0].upper() + action_name[1:] + "Response", all_models)
        except:
            pass
            
    actions[action_name] = {
        "params": params_schema,
        "returns": res_schema,
        "description": action_body.split('\n\n')[0].replace('* ', '').strip()
    }

# ----------------- TYPESCRIPT -----------------
ts_dir = "ts"
os.makedirs(ts_dir, exist_ok=True)

def get_ts_type(t):
    if t['type'] == 'boolean': return 'boolean'
    if t['type'] in ('integer', 'float'): return 'number'
    if t['type'] == 'string': return 'string'
    if t['type'] == 'any': return 'any'
    if t['type'] == 'array': return get_ts_type(t['items']) + '[]'
    if t['type'] == 'map': return '{ [key: string]: ' + get_ts_type(t['values']) + ' }'
    if t['type'] == 'model': return t['name']
    return 'any'

ts_types = []
for m_name, m_def in all_models.items():
    fields_ts = []
    for k, v in m_def['fields'].items():
        safe_k = f"'{k}'" if not re.match(r'^[a-zA-Z_$][a-zA-Z0-9_$]*$', k) else k
        fields_ts.append(f"  {safe_k}?: {get_ts_type(v)};")
    ts_types.append(f"export interface {m_name} {{\n" + "\n".join(fields_ts) + "\n}")

ts_code = "\n\n".join(ts_types) + "\n\n"
ts_code += """export class AnkiConnect {
  private url: string;
  private apiVersion: number;

  constructor(url: string = 'http://127.0.0.1:8765', apiVersion: number = 6) {
    this.url = url;
    this.apiVersion = apiVersion;
  }

  private async invoke(action: string, params: any = {}): Promise<any> {
    const response = await fetch(this.url, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({ action, version: this.apiVersion, params })
    });

    const data = await response.json();
    if (data.error) {
      throw new Error(data.error);
    }
    return data.result;
  }
"""

for action, meta in actions.items():
    params = meta['params']
    ret_type = get_ts_type(meta['returns'])
    if params:
        ts_params = ", ".join([f"{p}: {get_ts_type(t)}" for p, t in params.items()])
        invoke_params = ", ".join([f"{p}" for p in params.keys()])
        ts_code += f"\n  async {action}({ts_params}): Promise<{ret_type}> {{\n"
        ts_code += f"    return this.invoke('{action}', {{ {invoke_params} }});\n  }}\n"
    else:
        ts_code += f"\n  async {action}(): Promise<{ret_type}> {{\n"
        ts_code += f"    return this.invoke('{action}');\n  }}\n"
ts_code += "}\n"

with open(os.path.join(ts_dir, "index.ts"), "w", encoding="utf-8") as f:
    f.write(ts_code)

# ----------------- PYTHON -----------------
py_dir = "python"
os.makedirs(py_dir, exist_ok=True)

py_types = []
py_types.append("from typing import List, Dict, Any, Optional")
py_types.append("from dataclasses import dataclass, asdict")

def get_py_type(t):
    if t['type'] == 'boolean': return 'bool'
    if t['type'] == 'integer': return 'int'
    if t['type'] == 'float': return 'float'
    if t['type'] == 'string': return 'str'
    if t['type'] == 'any': return 'Any'
    if t['type'] == 'array': return f"List[{get_py_type(t['items'])}]"
    if t['type'] == 'map': return f"Dict[str, {get_py_type(t['values'])}]"
    if t['type'] == 'model': return f"'{t['name']}'"
    return 'Any'

for m_name, m_def in all_models.items():
    fields_py = []
    for k, v in m_def['fields'].items():
        if not re.match(r'^[a-zA-Z_][a-zA-Z0-9_]*$', k): continue
        fields_py.append(f"    {k}: Optional[{get_py_type(v)}] = None")
    
    if not fields_py:
        fields_py.append("    pass")
    
    cls_code = f"@dataclass\nclass {m_name}:\n" + "\n".join(fields_py)
    cls_code += f"\n    @classmethod\n    def from_dict(cls, data):\n        if not isinstance(data, dict): return data\n        kwargs = {{}}\n"
    
    for k, v in m_def['fields'].items():
        if not re.match(r'^[a-zA-Z_][a-zA-Z0-9_]*$', k): continue
        if v['type'] == 'model':
            cls_code += f"        if '{k}' in data and data['{k}']:\n            kwargs['{k}'] = {v['name']}.from_dict(data['{k}'])\n"
        elif v['type'] == 'array' and v['items']['type'] == 'model':
            sub = v['items']['name']
            cls_code += f"        if '{k}' in data and data['{k}']:\n            kwargs['{k}'] = [{sub}.from_dict(i) for i in data['{k}']]\n"
        else:
            cls_code += f"        if '{k}' in data:\n            kwargs['{k}'] = data['{k}']\n"
    
    cls_code += "        return cls(**kwargs)\n"
    py_types.append(cls_code)

py_code = "\n\n".join(py_types) + "\n\n"
py_code += """import urllib.request
import json

def to_dict(obj):
    if hasattr(obj, '__dict__'):
        return {k: to_dict(v) for k, v in obj.__dict__.items() if v is not None}
    elif isinstance(obj, list):
        return [to_dict(i) for i in obj]
    elif isinstance(obj, dict):
        return {k: to_dict(v) for k, v in obj.items() if v is not None}
    return obj

class AnkiConnect:
    def __init__(self, url='http://127.0.0.1:8765', apiVersion=6):
        self.url = url
        self.apiVersion = apiVersion

    def invoke(self, action, **params):
        requestJson = json.dumps({"action": action, "params": to_dict(params), "version": self.apiVersion}).encode('utf-8')
        response = json.loads(urllib.request.urlopen(urllib.request.Request(self.url, requestJson)).read())
        if response.get('error') is not None:
            raise Exception(response['error'])
        return response['result']
"""

for action, meta in actions.items():
    params = meta['params']
    ret_t = meta['returns']
    ret_type_str = get_py_type(ret_t)
    
    if params:
        py_params = ", ".join([f"{p}: {get_py_type(t)}" for p, t in params.items()])
        invoke_params = ", ".join([f"{p}={p}" for p in params.keys()])
        py_code += f"\n    def {action}(self, {py_params}) -> {ret_type_str}:\n"
        py_code += f"        res = self.invoke('{action}', {invoke_params})\n"
    else:
        py_code += f"\n    def {action}(self) -> {ret_type_str}:\n"
        py_code += f"        res = self.invoke('{action}')\n"
        
    if ret_t['type'] == 'model':
        py_code += f"        return {ret_t['name']}.from_dict(res) if res else res\n"
    elif ret_t['type'] == 'array' and ret_t['items']['type'] == 'model':
        sub = ret_t['items']['name']
        py_code += f"        return [{sub}.from_dict(i) for i in res] if res else []\n"
    else:
        py_code += f"        return res\n"

with open(os.path.join(py_dir, "anki_connect.py"), "w", encoding="utf-8") as f:
    f.write(py_code)

# ----------------- DART -----------------
dart_dir = "dart"
os.makedirs(dart_dir, exist_ok=True)

dart_types = []
def get_dart_type(t):
    if t['type'] == 'boolean': return 'bool'
    if t['type'] == 'integer': return 'int'
    if t['type'] == 'float': return 'double'
    if t['type'] == 'string': return 'String'
    if t['type'] == 'any': return 'dynamic'
    if t['type'] == 'array': return f"List<{get_dart_type(t['items'])}>"
    if t['type'] == 'map': return f"Map<String, {get_dart_type(t['values'])}>"
    if t['type'] == 'model': return t['name']
    return 'dynamic'

for m_name, m_def in all_models.items():
    fields_dart = []
    constructor_dart = []
    from_json_dart = []
    to_json_dart = []
    
    for k, v in m_def['fields'].items():
        if not re.match(r'^[a-zA-Z_$][a-zA-Z0-9_$]*$', k): continue
        d_type = get_dart_type(v)
        
        # Handle Dart reserved keywords
        safe_k = k
        reserved = ['new', 'default', 'class', 'in', 'is', 'as', 'var', 'for', 'return']
        if k in reserved:
            safe_k = f"{k}_"
            
        nullable = "?" if d_type != 'dynamic' else ""
        fields_dart.append(f"  final {d_type}{nullable} {safe_k};")
        constructor_dart.append(f"this.{safe_k}")
        
        if v['type'] == 'model':
            from_json_dart.append(f"      {safe_k}: json['{k}'] != null ? {v['name']}.fromJson(json['{k}']) : null,")
            to_json_dart.append(f"    if ({safe_k} != null) data['{k}'] = {safe_k}!.toJson();")
        elif v['type'] == 'array' and v['items']['type'] == 'model':
            sub = v['items']['name']
            from_json_dart.append(f"      {safe_k}: json['{k}'] != null ? (json['{k}'] as List).map((i) => {sub}.fromJson(i)).toList() : null,")
            to_json_dart.append(f"    if ({safe_k} != null) data['{k}'] = {safe_k}!.map((i) => i.toJson()).toList();")
        elif v['type'] == 'array':
            from_json_dart.append(f"      {safe_k}: json['{k}'] != null ? List<{get_dart_type(v['items'])}>.from(json['{k}']) : null,")
            to_json_dart.append(f"    if ({safe_k} != null) data['{k}'] = {safe_k};")
        else:
            from_json_dart.append(f"      {safe_k}: json['{k}'],")
            to_json_dart.append(f"    if ({safe_k} != null) data['{k}'] = {safe_k};")
            
    dart_cls = f"class {m_name} {{\n" + "\n".join(fields_dart) + "\n"
    if constructor_dart:
        dart_cls += f"  {m_name}({{{', '.join(constructor_dart)}}});\n"
    else:
        dart_cls += f"  {m_name}();\n"
        
    dart_cls += f"  factory {m_name}.fromJson(Map<String, dynamic> json) {{\n    return {m_name}(\n" + "\n".join(from_json_dart) + "\n    );\n  }\n"
    dart_cls += f"  Map<String, dynamic> toJson() {{\n    final Map<String, dynamic> data = <String, dynamic>{{}};\n" + "\n".join(to_json_dart) + "\n    return data;\n  }\n}"
    dart_types.append(dart_cls)

dart_code = """import 'dart:convert';
import 'dart:io';

""" + "\n\n".join(dart_types) + "\n\n"

dart_code += """class AnkiConnect {
  final String url;
  final int apiVersion;

  AnkiConnect({this.url = 'http://127.0.0.1:8765', this.apiVersion = 6});

  dynamic _toJson(dynamic obj) {
    if (obj == null) return null;
    if (obj is List) return obj.map((i) => _toJson(i)).toList();
    if (obj is Map) return obj.map((k, v) => MapEntry(k, _toJson(v)));
    try {
      return (obj as dynamic).toJson();
    } catch (_) {
      return obj;
    }
  }

  Future<dynamic> invoke(String action, [Map<String, dynamic>? params]) async {
    final request = await HttpClient().postUrl(Uri.parse(url));
    request.headers.set('content-type', 'application/json');
    request.add(utf8.encode(json.encode({
      'action': action,
      'version': apiVersion,
      'params': _toJson(params ?? {}),
    })));
    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();
    final data = json.decode(responseBody);
    
    if (data['error'] != null) {
      throw Exception(data['error']);
    }
    return data['result'];
  }
"""

for action, meta in actions.items():
    params = meta['params']
    ret_t = meta['returns']
    ret_type_str = get_dart_type(ret_t)
    
    if params:
        dart_params = ", ".join([f"{get_dart_type(t)} {p}" for p, t in params.items()])
        invoke_params = ", ".join([f"'{p}': {p}" for p in params.keys()])
        dart_code += f"\n  Future<{ret_type_str}> {action}({dart_params}) async {{\n"
        dart_code += f"    var res = await invoke('{action}', {{ {invoke_params} }});\n"
    else:
        dart_code += f"\n  Future<{ret_type_str}> {action}() async {{\n"
        dart_code += f"    var res = await invoke('{action}');\n"
        
    if ret_t['type'] == 'model':
        dart_code += f"    return {ret_t['name']}.fromJson(res);\n  }}\n"
    elif ret_t['type'] == 'array' and ret_t['items']['type'] == 'model':
        sub = ret_t['items']['name']
        dart_code += f"    if (res == null) return [];\n    return (res as List).map((i) => {sub}.fromJson(i)).toList();\n  }}\n"
    elif ret_t['type'] == 'array':
        sub_type = get_dart_type(ret_t['items'])
        if sub_type != 'dynamic':
            dart_code += f"    if (res == null) return [];\n    return List<{sub_type}>.from(res);\n  }}\n"
        else:
            dart_code += f"    return res;\n  }}\n"
    else:
        dart_code += f"    return res;\n  }}\n"

dart_code += "}\n"

with open(os.path.join(dart_dir, "anki_connect.dart"), "w", encoding="utf-8") as f:
    f.write(dart_code)

print("Generated models and wrappers successfully.")
