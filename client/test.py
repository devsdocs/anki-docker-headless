import re

with open('content.md', 'r', encoding='utf-8') as f:
    content = f.read()

action_regex = re.compile(r'#### `([^`]+)`\s*([\s\S]*?)(?=(?:#### `|\n---\n|$))')
matches = action_regex.findall(content)

for action_name, action_body in matches:
    if action_name == 'answerCards':
        print(repr(action_body))
