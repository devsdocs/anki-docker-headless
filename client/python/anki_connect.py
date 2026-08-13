from typing import List, Dict, Any, Optional

from dataclasses import dataclass, asdict

@dataclass
class CardsModTimeResponseItem:
    cardId: Optional[int] = None
    mod: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'cardId' in data:
            kwargs['cardId'] = data['cardId']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        return cls(**kwargs)


@dataclass
class CardsInfoResponseItemFieldsFront:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class CardsInfoResponseItemFieldsBack:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class CardsInfoResponseItemFields:
    Front: Optional['CardsInfoResponseItemFieldsFront'] = None
    Back: Optional['CardsInfoResponseItemFieldsBack'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data and data['Front']:
            kwargs['Front'] = CardsInfoResponseItemFieldsFront.from_dict(data['Front'])
        if 'Back' in data and data['Back']:
            kwargs['Back'] = CardsInfoResponseItemFieldsBack.from_dict(data['Back'])
        return cls(**kwargs)


@dataclass
class CardsInfoResponseItem:
    answer: Optional[str] = None
    question: Optional[str] = None
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fieldOrder: Optional[int] = None
    fields: Optional['CardsInfoResponseItemFields'] = None
    css: Optional[str] = None
    cardId: Optional[int] = None
    interval: Optional[int] = None
    note: Optional[int] = None
    ord: Optional[int] = None
    type: Optional[int] = None
    queue: Optional[int] = None
    due: Optional[int] = None
    reps: Optional[int] = None
    lapses: Optional[int] = None
    left: Optional[int] = None
    mod: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'answer' in data:
            kwargs['answer'] = data['answer']
        if 'question' in data:
            kwargs['question'] = data['question']
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fieldOrder' in data:
            kwargs['fieldOrder'] = data['fieldOrder']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = CardsInfoResponseItemFields.from_dict(data['fields'])
        if 'css' in data:
            kwargs['css'] = data['css']
        if 'cardId' in data:
            kwargs['cardId'] = data['cardId']
        if 'interval' in data:
            kwargs['interval'] = data['interval']
        if 'note' in data:
            kwargs['note'] = data['note']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'type' in data:
            kwargs['type'] = data['type']
        if 'queue' in data:
            kwargs['queue'] = data['queue']
        if 'due' in data:
            kwargs['due'] = data['due']
        if 'reps' in data:
            kwargs['reps'] = data['reps']
        if 'lapses' in data:
            kwargs['lapses'] = data['lapses']
        if 'left' in data:
            kwargs['left'] = data['left']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        return cls(**kwargs)


@dataclass
class AnswerCardsAnswersItem:
    cardId: Optional[int] = None
    ease: Optional[int] = None
    time: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'cardId' in data:
            kwargs['cardId'] = data['cardId']
        if 'ease' in data:
            kwargs['ease'] = data['ease']
        if 'time' in data:
            kwargs['time'] = data['time']
        return cls(**kwargs)


@dataclass
class DeckNamesAndIdsResponse:
    Default: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Default' in data:
            kwargs['Default'] = data['Default']
        return cls(**kwargs)


@dataclass
class GetDecksResponse:
    Default: Optional[List[int]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Default' in data:
            kwargs['Default'] = data['Default']
        return cls(**kwargs)


@dataclass
class GetDeckConfigResponseLapse:
    leechFails: Optional[int] = None
    delays: Optional[List[int]] = None
    minInt: Optional[int] = None
    leechAction: Optional[int] = None
    mult: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'leechFails' in data:
            kwargs['leechFails'] = data['leechFails']
        if 'delays' in data:
            kwargs['delays'] = data['delays']
        if 'minInt' in data:
            kwargs['minInt'] = data['minInt']
        if 'leechAction' in data:
            kwargs['leechAction'] = data['leechAction']
        if 'mult' in data:
            kwargs['mult'] = data['mult']
        return cls(**kwargs)


@dataclass
class GetDeckConfigResponseNew:
    bury: Optional[bool] = None
    order: Optional[int] = None
    initialFactor: Optional[int] = None
    perDay: Optional[int] = None
    delays: Optional[List[int]] = None
    separate: Optional[bool] = None
    ints: Optional[List[int]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'bury' in data:
            kwargs['bury'] = data['bury']
        if 'order' in data:
            kwargs['order'] = data['order']
        if 'initialFactor' in data:
            kwargs['initialFactor'] = data['initialFactor']
        if 'perDay' in data:
            kwargs['perDay'] = data['perDay']
        if 'delays' in data:
            kwargs['delays'] = data['delays']
        if 'separate' in data:
            kwargs['separate'] = data['separate']
        if 'ints' in data:
            kwargs['ints'] = data['ints']
        return cls(**kwargs)


@dataclass
class GetDeckConfigResponseRev:
    bury: Optional[bool] = None
    ivlFct: Optional[int] = None
    ease4: Optional[float] = None
    maxIvl: Optional[int] = None
    perDay: Optional[int] = None
    minSpace: Optional[int] = None
    fuzz: Optional[float] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'bury' in data:
            kwargs['bury'] = data['bury']
        if 'ivlFct' in data:
            kwargs['ivlFct'] = data['ivlFct']
        if 'ease4' in data:
            kwargs['ease4'] = data['ease4']
        if 'maxIvl' in data:
            kwargs['maxIvl'] = data['maxIvl']
        if 'perDay' in data:
            kwargs['perDay'] = data['perDay']
        if 'minSpace' in data:
            kwargs['minSpace'] = data['minSpace']
        if 'fuzz' in data:
            kwargs['fuzz'] = data['fuzz']
        return cls(**kwargs)


@dataclass
class GetDeckConfigResponse:
    lapse: Optional['GetDeckConfigResponseLapse'] = None
    dyn: Optional[bool] = None
    autoplay: Optional[bool] = None
    mod: Optional[int] = None
    id: Optional[int] = None
    maxTaken: Optional[int] = None
    new: Optional['GetDeckConfigResponseNew'] = None
    name: Optional[str] = None
    rev: Optional['GetDeckConfigResponseRev'] = None
    timer: Optional[int] = None
    replayq: Optional[bool] = None
    usn: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'lapse' in data and data['lapse']:
            kwargs['lapse'] = GetDeckConfigResponseLapse.from_dict(data['lapse'])
        if 'dyn' in data:
            kwargs['dyn'] = data['dyn']
        if 'autoplay' in data:
            kwargs['autoplay'] = data['autoplay']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'maxTaken' in data:
            kwargs['maxTaken'] = data['maxTaken']
        if 'new' in data and data['new']:
            kwargs['new'] = GetDeckConfigResponseNew.from_dict(data['new'])
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'rev' in data and data['rev']:
            kwargs['rev'] = GetDeckConfigResponseRev.from_dict(data['rev'])
        if 'timer' in data:
            kwargs['timer'] = data['timer']
        if 'replayq' in data:
            kwargs['replayq'] = data['replayq']
        if 'usn' in data:
            kwargs['usn'] = data['usn']
        return cls(**kwargs)


@dataclass
class SaveDeckConfigConfigLapse:
    leechFails: Optional[int] = None
    delays: Optional[List[int]] = None
    minInt: Optional[int] = None
    leechAction: Optional[int] = None
    mult: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'leechFails' in data:
            kwargs['leechFails'] = data['leechFails']
        if 'delays' in data:
            kwargs['delays'] = data['delays']
        if 'minInt' in data:
            kwargs['minInt'] = data['minInt']
        if 'leechAction' in data:
            kwargs['leechAction'] = data['leechAction']
        if 'mult' in data:
            kwargs['mult'] = data['mult']
        return cls(**kwargs)


@dataclass
class SaveDeckConfigConfigNew:
    bury: Optional[bool] = None
    order: Optional[int] = None
    initialFactor: Optional[int] = None
    perDay: Optional[int] = None
    delays: Optional[List[int]] = None
    separate: Optional[bool] = None
    ints: Optional[List[int]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'bury' in data:
            kwargs['bury'] = data['bury']
        if 'order' in data:
            kwargs['order'] = data['order']
        if 'initialFactor' in data:
            kwargs['initialFactor'] = data['initialFactor']
        if 'perDay' in data:
            kwargs['perDay'] = data['perDay']
        if 'delays' in data:
            kwargs['delays'] = data['delays']
        if 'separate' in data:
            kwargs['separate'] = data['separate']
        if 'ints' in data:
            kwargs['ints'] = data['ints']
        return cls(**kwargs)


@dataclass
class SaveDeckConfigConfigRev:
    bury: Optional[bool] = None
    ivlFct: Optional[int] = None
    ease4: Optional[float] = None
    maxIvl: Optional[int] = None
    perDay: Optional[int] = None
    minSpace: Optional[int] = None
    fuzz: Optional[float] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'bury' in data:
            kwargs['bury'] = data['bury']
        if 'ivlFct' in data:
            kwargs['ivlFct'] = data['ivlFct']
        if 'ease4' in data:
            kwargs['ease4'] = data['ease4']
        if 'maxIvl' in data:
            kwargs['maxIvl'] = data['maxIvl']
        if 'perDay' in data:
            kwargs['perDay'] = data['perDay']
        if 'minSpace' in data:
            kwargs['minSpace'] = data['minSpace']
        if 'fuzz' in data:
            kwargs['fuzz'] = data['fuzz']
        return cls(**kwargs)


@dataclass
class SaveDeckConfigConfig:
    lapse: Optional['SaveDeckConfigConfigLapse'] = None
    dyn: Optional[bool] = None
    autoplay: Optional[bool] = None
    mod: Optional[int] = None
    id: Optional[int] = None
    maxTaken: Optional[int] = None
    new: Optional['SaveDeckConfigConfigNew'] = None
    name: Optional[str] = None
    rev: Optional['SaveDeckConfigConfigRev'] = None
    timer: Optional[int] = None
    replayq: Optional[bool] = None
    usn: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'lapse' in data and data['lapse']:
            kwargs['lapse'] = SaveDeckConfigConfigLapse.from_dict(data['lapse'])
        if 'dyn' in data:
            kwargs['dyn'] = data['dyn']
        if 'autoplay' in data:
            kwargs['autoplay'] = data['autoplay']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'maxTaken' in data:
            kwargs['maxTaken'] = data['maxTaken']
        if 'new' in data and data['new']:
            kwargs['new'] = SaveDeckConfigConfigNew.from_dict(data['new'])
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'rev' in data and data['rev']:
            kwargs['rev'] = SaveDeckConfigConfigRev.from_dict(data['rev'])
        if 'timer' in data:
            kwargs['timer'] = data['timer']
        if 'replayq' in data:
            kwargs['replayq'] = data['replayq']
        if 'usn' in data:
            kwargs['usn'] = data['usn']
        return cls(**kwargs)


@dataclass
class GuiBrowseReordercards:
    order: Optional[str] = None
    columnId: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'order' in data:
            kwargs['order'] = data['order']
        if 'columnId' in data:
            kwargs['columnId'] = data['columnId']
        return cls(**kwargs)


@dataclass
class GuiAddCardsNoteFields:
    Text: Optional[str] = None
    Extra: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Text' in data:
            kwargs['Text'] = data['Text']
        if 'Extra' in data:
            kwargs['Extra'] = data['Extra']
        return cls(**kwargs)


@dataclass
class GuiAddCardsNotePictureItem:
    url: Optional[str] = None
    filename: Optional[str] = None
    fields: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'url' in data:
            kwargs['url'] = data['url']
        if 'filename' in data:
            kwargs['filename'] = data['filename']
        if 'fields' in data:
            kwargs['fields'] = data['fields']
        return cls(**kwargs)


@dataclass
class GuiAddCardsNote:
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fields: Optional['GuiAddCardsNoteFields'] = None
    tags: Optional[List[str]] = None
    picture: Optional[List['GuiAddCardsNotePictureItem']] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = GuiAddCardsNoteFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        if 'picture' in data and data['picture']:
            kwargs['picture'] = [GuiAddCardsNotePictureItem.from_dict(i) for i in data['picture']]
        return cls(**kwargs)


@dataclass
class GuiAddNoteSetDataNoteFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class GuiAddNoteSetDataNote:
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fields: Optional['GuiAddNoteSetDataNoteFields'] = None
    tags: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = GuiAddNoteSetDataNoteFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        return cls(**kwargs)


@dataclass
class GuiCurrentCardResponseFieldsFront:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class GuiCurrentCardResponseFieldsBack:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class GuiCurrentCardResponseFields:
    Front: Optional['GuiCurrentCardResponseFieldsFront'] = None
    Back: Optional['GuiCurrentCardResponseFieldsBack'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data and data['Front']:
            kwargs['Front'] = GuiCurrentCardResponseFieldsFront.from_dict(data['Front'])
        if 'Back' in data and data['Back']:
            kwargs['Back'] = GuiCurrentCardResponseFieldsBack.from_dict(data['Back'])
        return cls(**kwargs)


@dataclass
class GuiCurrentCardResponse:
    answer: Optional[str] = None
    question: Optional[str] = None
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fieldOrder: Optional[int] = None
    fields: Optional['GuiCurrentCardResponseFields'] = None
    template: Optional[str] = None
    cardId: Optional[int] = None
    buttons: Optional[List[int]] = None
    nextReviews: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'answer' in data:
            kwargs['answer'] = data['answer']
        if 'question' in data:
            kwargs['question'] = data['question']
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fieldOrder' in data:
            kwargs['fieldOrder'] = data['fieldOrder']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = GuiCurrentCardResponseFields.from_dict(data['fields'])
        if 'template' in data:
            kwargs['template'] = data['template']
        if 'cardId' in data:
            kwargs['cardId'] = data['cardId']
        if 'buttons' in data:
            kwargs['buttons'] = data['buttons']
        if 'nextReviews' in data:
            kwargs['nextReviews'] = data['nextReviews']
        return cls(**kwargs)


@dataclass
class RequestPermissionResponse:
    permission: Optional[str] = None
    requireApiKey: Optional[bool] = None
    version: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'permission' in data:
            kwargs['permission'] = data['permission']
        if 'requireApiKey' in data:
            kwargs['requireApiKey'] = data['requireApiKey']
        if 'version' in data:
            kwargs['version'] = data['version']
        return cls(**kwargs)


@dataclass
class ApiReflectResponse:
    scopes: Optional[List[str]] = None
    actions: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'scopes' in data:
            kwargs['scopes'] = data['scopes']
        if 'actions' in data:
            kwargs['actions'] = data['actions']
        return cls(**kwargs)


@dataclass
class MultiActionsItem:
    action: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'action' in data:
            kwargs['action'] = data['action']
        return cls(**kwargs)


@dataclass
class ModelNamesAndIdsResponse:
    Basic: Optional[int] = None
    Cloze: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Basic' in data:
            kwargs['Basic'] = data['Basic']
        if 'Cloze' in data:
            kwargs['Cloze'] = data['Cloze']
        return cls(**kwargs)


@dataclass
class FindModelsByIdResponseItemTmplsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    qfmt: Optional[str] = None
    afmt: Optional[str] = None
    bqfmt: Optional[str] = None
    bafmt: Optional[str] = None
    did: Optional[Any] = None
    bfont: Optional[str] = None
    bsize: Optional[int] = None
    id: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'qfmt' in data:
            kwargs['qfmt'] = data['qfmt']
        if 'afmt' in data:
            kwargs['afmt'] = data['afmt']
        if 'bqfmt' in data:
            kwargs['bqfmt'] = data['bqfmt']
        if 'bafmt' in data:
            kwargs['bafmt'] = data['bafmt']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'bfont' in data:
            kwargs['bfont'] = data['bfont']
        if 'bsize' in data:
            kwargs['bsize'] = data['bsize']
        if 'id' in data:
            kwargs['id'] = data['id']
        return cls(**kwargs)


@dataclass
class FindModelsByIdResponseItemFldsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    sticky: Optional[bool] = None
    rtl: Optional[bool] = None
    font: Optional[str] = None
    size: Optional[int] = None
    description: Optional[str] = None
    plainText: Optional[bool] = None
    collapsed: Optional[bool] = None
    excludeFromSearch: Optional[bool] = None
    id: Optional[int] = None
    tag: Optional[Any] = None
    preventDeletion: Optional[bool] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'sticky' in data:
            kwargs['sticky'] = data['sticky']
        if 'rtl' in data:
            kwargs['rtl'] = data['rtl']
        if 'font' in data:
            kwargs['font'] = data['font']
        if 'size' in data:
            kwargs['size'] = data['size']
        if 'description' in data:
            kwargs['description'] = data['description']
        if 'plainText' in data:
            kwargs['plainText'] = data['plainText']
        if 'collapsed' in data:
            kwargs['collapsed'] = data['collapsed']
        if 'excludeFromSearch' in data:
            kwargs['excludeFromSearch'] = data['excludeFromSearch']
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'tag' in data:
            kwargs['tag'] = data['tag']
        if 'preventDeletion' in data:
            kwargs['preventDeletion'] = data['preventDeletion']
        return cls(**kwargs)


@dataclass
class FindModelsByIdResponseItem:
    id: Optional[int] = None
    name: Optional[str] = None
    type: Optional[int] = None
    mod: Optional[int] = None
    usn: Optional[int] = None
    sortf: Optional[int] = None
    did: Optional[Any] = None
    tmpls: Optional[List['FindModelsByIdResponseItemTmplsItem']] = None
    flds: Optional[List['FindModelsByIdResponseItemFldsItem']] = None
    css: Optional[str] = None
    latexPre: Optional[str] = None
    latexPost: Optional[str] = None
    latexsvg: Optional[bool] = None
    req: Optional[List[List[int]]] = None
    originalStockKind: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'type' in data:
            kwargs['type'] = data['type']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'usn' in data:
            kwargs['usn'] = data['usn']
        if 'sortf' in data:
            kwargs['sortf'] = data['sortf']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'tmpls' in data and data['tmpls']:
            kwargs['tmpls'] = [FindModelsByIdResponseItemTmplsItem.from_dict(i) for i in data['tmpls']]
        if 'flds' in data and data['flds']:
            kwargs['flds'] = [FindModelsByIdResponseItemFldsItem.from_dict(i) for i in data['flds']]
        if 'css' in data:
            kwargs['css'] = data['css']
        if 'latexPre' in data:
            kwargs['latexPre'] = data['latexPre']
        if 'latexPost' in data:
            kwargs['latexPost'] = data['latexPost']
        if 'latexsvg' in data:
            kwargs['latexsvg'] = data['latexsvg']
        if 'req' in data:
            kwargs['req'] = data['req']
        if 'originalStockKind' in data:
            kwargs['originalStockKind'] = data['originalStockKind']
        return cls(**kwargs)


@dataclass
class FindModelsByNameResponseItemTmplsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    qfmt: Optional[str] = None
    afmt: Optional[str] = None
    bqfmt: Optional[str] = None
    bafmt: Optional[str] = None
    did: Optional[Any] = None
    bfont: Optional[str] = None
    bsize: Optional[int] = None
    id: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'qfmt' in data:
            kwargs['qfmt'] = data['qfmt']
        if 'afmt' in data:
            kwargs['afmt'] = data['afmt']
        if 'bqfmt' in data:
            kwargs['bqfmt'] = data['bqfmt']
        if 'bafmt' in data:
            kwargs['bafmt'] = data['bafmt']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'bfont' in data:
            kwargs['bfont'] = data['bfont']
        if 'bsize' in data:
            kwargs['bsize'] = data['bsize']
        if 'id' in data:
            kwargs['id'] = data['id']
        return cls(**kwargs)


@dataclass
class FindModelsByNameResponseItemFldsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    sticky: Optional[bool] = None
    rtl: Optional[bool] = None
    font: Optional[str] = None
    size: Optional[int] = None
    description: Optional[str] = None
    plainText: Optional[bool] = None
    collapsed: Optional[bool] = None
    excludeFromSearch: Optional[bool] = None
    id: Optional[int] = None
    tag: Optional[Any] = None
    preventDeletion: Optional[bool] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'sticky' in data:
            kwargs['sticky'] = data['sticky']
        if 'rtl' in data:
            kwargs['rtl'] = data['rtl']
        if 'font' in data:
            kwargs['font'] = data['font']
        if 'size' in data:
            kwargs['size'] = data['size']
        if 'description' in data:
            kwargs['description'] = data['description']
        if 'plainText' in data:
            kwargs['plainText'] = data['plainText']
        if 'collapsed' in data:
            kwargs['collapsed'] = data['collapsed']
        if 'excludeFromSearch' in data:
            kwargs['excludeFromSearch'] = data['excludeFromSearch']
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'tag' in data:
            kwargs['tag'] = data['tag']
        if 'preventDeletion' in data:
            kwargs['preventDeletion'] = data['preventDeletion']
        return cls(**kwargs)


@dataclass
class FindModelsByNameResponseItem:
    id: Optional[int] = None
    name: Optional[str] = None
    type: Optional[int] = None
    mod: Optional[int] = None
    usn: Optional[int] = None
    sortf: Optional[int] = None
    did: Optional[Any] = None
    tmpls: Optional[List['FindModelsByNameResponseItemTmplsItem']] = None
    flds: Optional[List['FindModelsByNameResponseItemFldsItem']] = None
    css: Optional[str] = None
    latexPre: Optional[str] = None
    latexPost: Optional[str] = None
    latexsvg: Optional[bool] = None
    req: Optional[List[List[int]]] = None
    originalStockKind: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'type' in data:
            kwargs['type'] = data['type']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'usn' in data:
            kwargs['usn'] = data['usn']
        if 'sortf' in data:
            kwargs['sortf'] = data['sortf']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'tmpls' in data and data['tmpls']:
            kwargs['tmpls'] = [FindModelsByNameResponseItemTmplsItem.from_dict(i) for i in data['tmpls']]
        if 'flds' in data and data['flds']:
            kwargs['flds'] = [FindModelsByNameResponseItemFldsItem.from_dict(i) for i in data['flds']]
        if 'css' in data:
            kwargs['css'] = data['css']
        if 'latexPre' in data:
            kwargs['latexPre'] = data['latexPre']
        if 'latexPost' in data:
            kwargs['latexPost'] = data['latexPost']
        if 'latexsvg' in data:
            kwargs['latexsvg'] = data['latexsvg']
        if 'req' in data:
            kwargs['req'] = data['req']
        if 'originalStockKind' in data:
            kwargs['originalStockKind'] = data['originalStockKind']
        return cls(**kwargs)


@dataclass
class ModelFieldFontsResponseFront:
    font: Optional[str] = None
    size: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'font' in data:
            kwargs['font'] = data['font']
        if 'size' in data:
            kwargs['size'] = data['size']
        return cls(**kwargs)


@dataclass
class ModelFieldFontsResponseBack:
    font: Optional[str] = None
    size: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'font' in data:
            kwargs['font'] = data['font']
        if 'size' in data:
            kwargs['size'] = data['size']
        return cls(**kwargs)


@dataclass
class ModelFieldFontsResponse:
    Front: Optional['ModelFieldFontsResponseFront'] = None
    Back: Optional['ModelFieldFontsResponseBack'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data and data['Front']:
            kwargs['Front'] = ModelFieldFontsResponseFront.from_dict(data['Front'])
        if 'Back' in data and data['Back']:
            kwargs['Back'] = ModelFieldFontsResponseBack.from_dict(data['Back'])
        return cls(**kwargs)


@dataclass
class ModelFieldsOnTemplatesResponse:
    pass
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        return cls(**kwargs)


@dataclass
class CreateModelCardtemplatesItem:
    Name: Optional[str] = None
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Name' in data:
            kwargs['Name'] = data['Name']
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class CreateModelResponseFldsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    sticky: Optional[bool] = None
    rtl: Optional[bool] = None
    font: Optional[str] = None
    size: Optional[int] = None
    media: Optional[List[Any]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'sticky' in data:
            kwargs['sticky'] = data['sticky']
        if 'rtl' in data:
            kwargs['rtl'] = data['rtl']
        if 'font' in data:
            kwargs['font'] = data['font']
        if 'size' in data:
            kwargs['size'] = data['size']
        if 'media' in data:
            kwargs['media'] = data['media']
        return cls(**kwargs)


@dataclass
class CreateModelResponseTmplsItem:
    name: Optional[str] = None
    ord: Optional[int] = None
    qfmt: Optional[str] = None
    afmt: Optional[str] = None
    did: Optional[Any] = None
    bqfmt: Optional[str] = None
    bafmt: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'ord' in data:
            kwargs['ord'] = data['ord']
        if 'qfmt' in data:
            kwargs['qfmt'] = data['qfmt']
        if 'afmt' in data:
            kwargs['afmt'] = data['afmt']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'bqfmt' in data:
            kwargs['bqfmt'] = data['bqfmt']
        if 'bafmt' in data:
            kwargs['bafmt'] = data['bafmt']
        return cls(**kwargs)


@dataclass
class CreateModelResponse:
    sortf: Optional[int] = None
    did: Optional[int] = None
    latexPre: Optional[str] = None
    latexPost: Optional[str] = None
    mod: Optional[int] = None
    usn: Optional[int] = None
    vers: Optional[List[Any]] = None
    type: Optional[int] = None
    css: Optional[str] = None
    name: Optional[str] = None
    flds: Optional[List['CreateModelResponseFldsItem']] = None
    tmpls: Optional[List['CreateModelResponseTmplsItem']] = None
    tags: Optional[List[Any]] = None
    id: Optional[int] = None
    req: Optional[List[List[int]]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'sortf' in data:
            kwargs['sortf'] = data['sortf']
        if 'did' in data:
            kwargs['did'] = data['did']
        if 'latexPre' in data:
            kwargs['latexPre'] = data['latexPre']
        if 'latexPost' in data:
            kwargs['latexPost'] = data['latexPost']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'usn' in data:
            kwargs['usn'] = data['usn']
        if 'vers' in data:
            kwargs['vers'] = data['vers']
        if 'type' in data:
            kwargs['type'] = data['type']
        if 'css' in data:
            kwargs['css'] = data['css']
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'flds' in data and data['flds']:
            kwargs['flds'] = [CreateModelResponseFldsItem.from_dict(i) for i in data['flds']]
        if 'tmpls' in data and data['tmpls']:
            kwargs['tmpls'] = [CreateModelResponseTmplsItem.from_dict(i) for i in data['tmpls']]
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'req' in data:
            kwargs['req'] = data['req']
        return cls(**kwargs)


@dataclass
class ModelTemplatesResponseCard1:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class ModelTemplatesResponseCard2:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class ModelTemplatesResponse:
    pass
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        return cls(**kwargs)


@dataclass
class ModelStylingResponse:
    css: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'css' in data:
            kwargs['css'] = data['css']
        return cls(**kwargs)


@dataclass
class UpdateModelTemplatesModelTemplatesCard1:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class UpdateModelTemplatesModelTemplates:
    pass
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        return cls(**kwargs)


@dataclass
class UpdateModelTemplatesModel:
    name: Optional[str] = None
    templates: Optional['UpdateModelTemplatesModelTemplates'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'templates' in data and data['templates']:
            kwargs['templates'] = UpdateModelTemplatesModelTemplates.from_dict(data['templates'])
        return cls(**kwargs)


@dataclass
class UpdateModelStylingModel:
    name: Optional[str] = None
    css: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'name' in data:
            kwargs['name'] = data['name']
        if 'css' in data:
            kwargs['css'] = data['css']
        return cls(**kwargs)


@dataclass
class FindAndReplaceInModelsModel:
    modelName: Optional[str] = None
    findText: Optional[str] = None
    replaceText: Optional[str] = None
    front: Optional[bool] = None
    back: Optional[bool] = None
    css: Optional[bool] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'findText' in data:
            kwargs['findText'] = data['findText']
        if 'replaceText' in data:
            kwargs['replaceText'] = data['replaceText']
        if 'front' in data:
            kwargs['front'] = data['front']
        if 'back' in data:
            kwargs['back'] = data['back']
        if 'css' in data:
            kwargs['css'] = data['css']
        return cls(**kwargs)


@dataclass
class ModelTemplateAddTemplate:
    Name: Optional[str] = None
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Name' in data:
            kwargs['Name'] = data['Name']
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class AddNotesNotesItemFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class AddNotesNotesItem:
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fields: Optional['AddNotesNotesItemFields'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = AddNotesNotesItemFields.from_dict(data['fields'])
        return cls(**kwargs)


@dataclass
class CanAddNotesNotesItemFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class CanAddNotesNotesItem:
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fields: Optional['CanAddNotesNotesItemFields'] = None
    tags: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = CanAddNotesNotesItemFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        return cls(**kwargs)


@dataclass
class CanAddNotesWithErrorDetailNotesItemFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class CanAddNotesWithErrorDetailNotesItem:
    deckName: Optional[str] = None
    modelName: Optional[str] = None
    fields: Optional['CanAddNotesWithErrorDetailNotesItemFields'] = None
    tags: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'deckName' in data:
            kwargs['deckName'] = data['deckName']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = CanAddNotesWithErrorDetailNotesItemFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        return cls(**kwargs)


@dataclass
class CanAddNotesWithErrorDetailResponseItem:
    canAdd: Optional[bool] = None
    error: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'canAdd' in data:
            kwargs['canAdd'] = data['canAdd']
        if 'error' in data:
            kwargs['error'] = data['error']
        return cls(**kwargs)


@dataclass
class UpdateNoteFieldsNoteFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class UpdateNoteFieldsNoteAudioItem:
    url: Optional[str] = None
    filename: Optional[str] = None
    skipHash: Optional[str] = None
    fields: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'url' in data:
            kwargs['url'] = data['url']
        if 'filename' in data:
            kwargs['filename'] = data['filename']
        if 'skipHash' in data:
            kwargs['skipHash'] = data['skipHash']
        if 'fields' in data:
            kwargs['fields'] = data['fields']
        return cls(**kwargs)


@dataclass
class UpdateNoteFieldsNote:
    id: Optional[int] = None
    fields: Optional['UpdateNoteFieldsNoteFields'] = None
    audio: Optional[List['UpdateNoteFieldsNoteAudioItem']] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = UpdateNoteFieldsNoteFields.from_dict(data['fields'])
        if 'audio' in data and data['audio']:
            kwargs['audio'] = [UpdateNoteFieldsNoteAudioItem.from_dict(i) for i in data['audio']]
        return cls(**kwargs)


@dataclass
class UpdateNoteNoteFields:
    Front: Optional[str] = None
    Back: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data:
            kwargs['Front'] = data['Front']
        if 'Back' in data:
            kwargs['Back'] = data['Back']
        return cls(**kwargs)


@dataclass
class UpdateNoteNote:
    id: Optional[int] = None
    fields: Optional['UpdateNoteNoteFields'] = None
    tags: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = UpdateNoteNoteFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        return cls(**kwargs)


@dataclass
class UpdateNoteModelNoteFields:
    NewField1: Optional[str] = None
    NewField2: Optional[str] = None
    NewField3: Optional[str] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'NewField1' in data:
            kwargs['NewField1'] = data['NewField1']
        if 'NewField2' in data:
            kwargs['NewField2'] = data['NewField2']
        if 'NewField3' in data:
            kwargs['NewField3'] = data['NewField3']
        return cls(**kwargs)


@dataclass
class UpdateNoteModelNote:
    id: Optional[int] = None
    modelName: Optional[str] = None
    fields: Optional['UpdateNoteModelNoteFields'] = None
    tags: Optional[List[str]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'id' in data:
            kwargs['id'] = data['id']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = UpdateNoteModelNoteFields.from_dict(data['fields'])
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        return cls(**kwargs)


@dataclass
class NotesInfoResponseItemFieldsFront:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class NotesInfoResponseItemFieldsBack:
    value: Optional[str] = None
    order: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'value' in data:
            kwargs['value'] = data['value']
        if 'order' in data:
            kwargs['order'] = data['order']
        return cls(**kwargs)


@dataclass
class NotesInfoResponseItemFields:
    Front: Optional['NotesInfoResponseItemFieldsFront'] = None
    Back: Optional['NotesInfoResponseItemFieldsBack'] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'Front' in data and data['Front']:
            kwargs['Front'] = NotesInfoResponseItemFieldsFront.from_dict(data['Front'])
        if 'Back' in data and data['Back']:
            kwargs['Back'] = NotesInfoResponseItemFieldsBack.from_dict(data['Back'])
        return cls(**kwargs)


@dataclass
class NotesInfoResponseItem:
    noteId: Optional[int] = None
    profile: Optional[str] = None
    modelName: Optional[str] = None
    tags: Optional[List[str]] = None
    fields: Optional['NotesInfoResponseItemFields'] = None
    mod: Optional[int] = None
    cards: Optional[List[int]] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'noteId' in data:
            kwargs['noteId'] = data['noteId']
        if 'profile' in data:
            kwargs['profile'] = data['profile']
        if 'modelName' in data:
            kwargs['modelName'] = data['modelName']
        if 'tags' in data:
            kwargs['tags'] = data['tags']
        if 'fields' in data and data['fields']:
            kwargs['fields'] = NotesInfoResponseItemFields.from_dict(data['fields'])
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        if 'cards' in data:
            kwargs['cards'] = data['cards']
        return cls(**kwargs)


@dataclass
class NotesModTimeResponseItem:
    noteId: Optional[int] = None
    mod: Optional[int] = None
    @classmethod
    def from_dict(cls, data):
        if not isinstance(data, dict): return data
        kwargs = {}
        if 'noteId' in data:
            kwargs['noteId'] = data['noteId']
        if 'mod' in data:
            kwargs['mod'] = data['mod']
        return cls(**kwargs)


import urllib.request
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

    def getEaseFactors(self, cards: List[int]) -> List[int]:
        res = self.invoke('getEaseFactors', cards=cards)
        return res

    def setEaseFactors(self, cards: List[int], easeFactors: List[int]) -> List[bool]:
        res = self.invoke('setEaseFactors', cards=cards, easeFactors=easeFactors)
        return res

    def setSpecificValueOfCard(self, card: int, keys: List[str], newValues: List[str]) -> List[bool]:
        res = self.invoke('setSpecificValueOfCard', card=card, keys=keys, newValues=newValues)
        return res

    def suspend(self, cards: List[int]) -> bool:
        res = self.invoke('suspend', cards=cards)
        return res

    def unsuspend(self, cards: List[int]) -> bool:
        res = self.invoke('unsuspend', cards=cards)
        return res

    def suspended(self, card: int) -> bool:
        res = self.invoke('suspended', card=card)
        return res

    def areSuspended(self, cards: List[int]) -> List[bool]:
        res = self.invoke('areSuspended', cards=cards)
        return res

    def areDue(self, cards: List[int]) -> List[bool]:
        res = self.invoke('areDue', cards=cards)
        return res

    def getIntervals(self, cards: List[int]) -> List[int]:
        res = self.invoke('getIntervals', cards=cards)
        return res

    def findCards(self, query: str) -> List[int]:
        res = self.invoke('findCards', query=query)
        return res

    def cardsToNotes(self, cards: List[int]) -> List[int]:
        res = self.invoke('cardsToNotes', cards=cards)
        return res

    def cardsModTime(self, cards: List[int]) -> List['CardsModTimeResponseItem']:
        res = self.invoke('cardsModTime', cards=cards)
        return [CardsModTimeResponseItem.from_dict(i) for i in res] if res else []

    def cardsInfo(self, cards: List[int]) -> List['CardsInfoResponseItem']:
        res = self.invoke('cardsInfo', cards=cards)
        return [CardsInfoResponseItem.from_dict(i) for i in res] if res else []

    def forgetCards(self, cards: List[int]) -> Any:
        res = self.invoke('forgetCards', cards=cards)
        return res

    def relearnCards(self, cards: List[int]) -> Any:
        res = self.invoke('relearnCards', cards=cards)
        return res

    def answerCards(self, answers: List['AnswerCardsAnswersItem']) -> List[bool]:
        res = self.invoke('answerCards', answers=answers)
        return res

    def setDueDate(self, cards: List[int], days: str) -> bool:
        res = self.invoke('setDueDate', cards=cards, days=days)
        return res

    def deckNames(self) -> List[str]:
        res = self.invoke('deckNames')
        return res

    def deckNamesAndIds(self) -> 'DeckNamesAndIdsResponse':
        res = self.invoke('deckNamesAndIds')
        return DeckNamesAndIdsResponse.from_dict(res) if res else res

    def getDecks(self, cards: List[int]) -> 'GetDecksResponse':
        res = self.invoke('getDecks', cards=cards)
        return GetDecksResponse.from_dict(res) if res else res

    def createDeck(self, deck: str) -> int:
        res = self.invoke('createDeck', deck=deck)
        return res

    def changeDeck(self, cards: List[int], deck: str) -> Any:
        res = self.invoke('changeDeck', cards=cards, deck=deck)
        return res

    def deleteDecks(self, decks: List[str], cardsToo: bool) -> Any:
        res = self.invoke('deleteDecks', decks=decks, cardsToo=cardsToo)
        return res

    def getDeckConfig(self, deck: str) -> 'GetDeckConfigResponse':
        res = self.invoke('getDeckConfig', deck=deck)
        return GetDeckConfigResponse.from_dict(res) if res else res

    def saveDeckConfig(self, config: 'SaveDeckConfigConfig') -> bool:
        res = self.invoke('saveDeckConfig', config=config)
        return res

    def setDeckConfigId(self, decks: List[str], configId: int) -> bool:
        res = self.invoke('setDeckConfigId', decks=decks, configId=configId)
        return res

    def cloneDeckConfigId(self, name: str, cloneFrom: int) -> int:
        res = self.invoke('cloneDeckConfigId', name=name, cloneFrom=cloneFrom)
        return res

    def removeDeckConfigId(self, configId: int) -> bool:
        res = self.invoke('removeDeckConfigId', configId=configId)
        return res

    def getDeckStats(self, decks: List[str]) -> Dict[str, Any]:
        res = self.invoke('getDeckStats', decks=decks)
        return res

    def guiBrowse(self, query: str, reorderCards: 'GuiBrowseReordercards') -> List[int]:
        res = self.invoke('guiBrowse', query=query, reorderCards=reorderCards)
        return res

    def guiSelectCard(self, card: int) -> bool:
        res = self.invoke('guiSelectCard', card=card)
        return res

    def guiSelectedNotes(self) -> List[int]:
        res = self.invoke('guiSelectedNotes')
        return res

    def guiAddCards(self, note: 'GuiAddCardsNote') -> int:
        res = self.invoke('guiAddCards', note=note)
        return res

    def guiEditNote(self, note: int) -> Any:
        res = self.invoke('guiEditNote', note=note)
        return res

    def guiAddNoteSetData(self, note: 'GuiAddNoteSetDataNote') -> bool:
        res = self.invoke('guiAddNoteSetData', note=note)
        return res

    def guiCurrentCard(self) -> 'GuiCurrentCardResponse':
        res = self.invoke('guiCurrentCard')
        return GuiCurrentCardResponse.from_dict(res) if res else res

    def guiStartCardTimer(self) -> bool:
        res = self.invoke('guiStartCardTimer')
        return res

    def guiShowQuestion(self) -> bool:
        res = self.invoke('guiShowQuestion')
        return res

    def guiShowAnswer(self) -> bool:
        res = self.invoke('guiShowAnswer')
        return res

    def guiAnswerCard(self, ease: int) -> bool:
        res = self.invoke('guiAnswerCard', ease=ease)
        return res

    def guiUndo(self) -> bool:
        res = self.invoke('guiUndo')
        return res

    def guiDeckOverview(self, name: str) -> bool:
        res = self.invoke('guiDeckOverview', name=name)
        return res

    def guiDeckBrowser(self) -> Any:
        res = self.invoke('guiDeckBrowser')
        return res

    def guiDeckReview(self, name: str) -> bool:
        res = self.invoke('guiDeckReview', name=name)
        return res

    def guiImportFile(self, path: str) -> Any:
        res = self.invoke('guiImportFile', path=path)
        return res

    def guiExitAnki(self) -> Any:
        res = self.invoke('guiExitAnki')
        return res

    def guiCheckDatabase(self) -> bool:
        res = self.invoke('guiCheckDatabase')
        return res

    def guiPlayAudio(self) -> bool:
        res = self.invoke('guiPlayAudio')
        return res

    def storeMediaFile(self, filename: str, data: str) -> str:
        res = self.invoke('storeMediaFile', filename=filename, data=data)
        return res

    def retrieveMediaFile(self, filename: str) -> str:
        res = self.invoke('retrieveMediaFile', filename=filename)
        return res

    def getMediaFilesNames(self, pattern: str) -> List[str]:
        res = self.invoke('getMediaFilesNames', pattern=pattern)
        return res

    def getMediaDirPath(self) -> str:
        res = self.invoke('getMediaDirPath')
        return res

    def deleteMediaFile(self, filename: str) -> Any:
        res = self.invoke('deleteMediaFile', filename=filename)
        return res

    def requestPermission(self) -> 'RequestPermissionResponse':
        res = self.invoke('requestPermission')
        return RequestPermissionResponse.from_dict(res) if res else res

    def version(self) -> int:
        res = self.invoke('version')
        return res

    def apiReflect(self, scopes: List[str], actions: List[str]) -> 'ApiReflectResponse':
        res = self.invoke('apiReflect', scopes=scopes, actions=actions)
        return ApiReflectResponse.from_dict(res) if res else res

    def sync(self) -> Any:
        res = self.invoke('sync')
        return res

    def getProfiles(self) -> List[str]:
        res = self.invoke('getProfiles')
        return res

    def getActiveProfile(self) -> str:
        res = self.invoke('getActiveProfile')
        return res

    def loadProfile(self, name: str) -> bool:
        res = self.invoke('loadProfile', name=name)
        return res

    def multi(self, actions: List['MultiActionsItem']) -> List[List[str]]:
        res = self.invoke('multi', actions=actions)
        return res

    def exportPackage(self, deck: str, path: str, includeSched: bool) -> bool:
        res = self.invoke('exportPackage', deck=deck, path=path, includeSched=includeSched)
        return res

    def importPackage(self, path: str) -> bool:
        res = self.invoke('importPackage', path=path)
        return res

    def reloadCollection(self) -> Any:
        res = self.invoke('reloadCollection')
        return res

    def modelNames(self) -> List[str]:
        res = self.invoke('modelNames')
        return res

    def modelNamesAndIds(self) -> 'ModelNamesAndIdsResponse':
        res = self.invoke('modelNamesAndIds')
        return ModelNamesAndIdsResponse.from_dict(res) if res else res

    def findModelsById(self, modelIds: List[int]) -> List['FindModelsByIdResponseItem']:
        res = self.invoke('findModelsById', modelIds=modelIds)
        return [FindModelsByIdResponseItem.from_dict(i) for i in res] if res else []

    def findModelsByName(self, modelNames: List[str]) -> List['FindModelsByNameResponseItem']:
        res = self.invoke('findModelsByName', modelNames=modelNames)
        return [FindModelsByNameResponseItem.from_dict(i) for i in res] if res else []

    def modelFieldNames(self, modelName: str) -> List[str]:
        res = self.invoke('modelFieldNames', modelName=modelName)
        return res

    def modelFieldDescriptions(self, modelName: str) -> List[str]:
        res = self.invoke('modelFieldDescriptions', modelName=modelName)
        return res

    def modelFieldFonts(self, modelName: str) -> 'ModelFieldFontsResponse':
        res = self.invoke('modelFieldFonts', modelName=modelName)
        return ModelFieldFontsResponse.from_dict(res) if res else res

    def modelFieldsOnTemplates(self, modelName: str) -> 'ModelFieldsOnTemplatesResponse':
        res = self.invoke('modelFieldsOnTemplates', modelName=modelName)
        return ModelFieldsOnTemplatesResponse.from_dict(res) if res else res

    def createModel(self, modelName: str, inOrderFields: List[str], css: str, isCloze: bool, cardTemplates: List['CreateModelCardtemplatesItem']) -> 'CreateModelResponse':
        res = self.invoke('createModel', modelName=modelName, inOrderFields=inOrderFields, css=css, isCloze=isCloze, cardTemplates=cardTemplates)
        return CreateModelResponse.from_dict(res) if res else res

    def modelTemplates(self, modelName: str) -> 'ModelTemplatesResponse':
        res = self.invoke('modelTemplates', modelName=modelName)
        return ModelTemplatesResponse.from_dict(res) if res else res

    def modelStyling(self, modelName: str) -> 'ModelStylingResponse':
        res = self.invoke('modelStyling', modelName=modelName)
        return ModelStylingResponse.from_dict(res) if res else res

    def updateModelTemplates(self, model: 'UpdateModelTemplatesModel') -> Any:
        res = self.invoke('updateModelTemplates', model=model)
        return res

    def updateModelStyling(self, model: 'UpdateModelStylingModel') -> Any:
        res = self.invoke('updateModelStyling', model=model)
        return res

    def findAndReplaceInModels(self, model: 'FindAndReplaceInModelsModel') -> int:
        res = self.invoke('findAndReplaceInModels', model=model)
        return res

    def modelTemplateRename(self, modelName: str, oldTemplateName: str, newTemplateName: str) -> Any:
        res = self.invoke('modelTemplateRename', modelName=modelName, oldTemplateName=oldTemplateName, newTemplateName=newTemplateName)
        return res

    def modelTemplateReposition(self, modelName: str, templateName: str, index: int) -> Any:
        res = self.invoke('modelTemplateReposition', modelName=modelName, templateName=templateName, index=index)
        return res

    def modelTemplateAdd(self, modelName: str, template: 'ModelTemplateAddTemplate') -> Any:
        res = self.invoke('modelTemplateAdd', modelName=modelName, template=template)
        return res

    def modelTemplateRemove(self, modelName: str, templateName: str) -> Any:
        res = self.invoke('modelTemplateRemove', modelName=modelName, templateName=templateName)
        return res

    def modelFieldRename(self, modelName: str, oldFieldName: str, newFieldName: str) -> Any:
        res = self.invoke('modelFieldRename', modelName=modelName, oldFieldName=oldFieldName, newFieldName=newFieldName)
        return res

    def modelFieldReposition(self, modelName: str, fieldName: str, index: int) -> Any:
        res = self.invoke('modelFieldReposition', modelName=modelName, fieldName=fieldName, index=index)
        return res

    def modelFieldAdd(self, modelName: str, fieldName: str, index: int) -> Any:
        res = self.invoke('modelFieldAdd', modelName=modelName, fieldName=fieldName, index=index)
        return res

    def modelFieldRemove(self, modelName: str, fieldName: str) -> Any:
        res = self.invoke('modelFieldRemove', modelName=modelName, fieldName=fieldName)
        return res

    def modelFieldSetFont(self, modelName: str, fieldName: str, font: str) -> Any:
        res = self.invoke('modelFieldSetFont', modelName=modelName, fieldName=fieldName, font=font)
        return res

    def modelFieldSetFontSize(self, modelName: str, fieldName: str, fontSize: int) -> Any:
        res = self.invoke('modelFieldSetFontSize', modelName=modelName, fieldName=fieldName, fontSize=fontSize)
        return res

    def modelFieldSetDescription(self, modelName: str, fieldName: str, description: str) -> bool:
        res = self.invoke('modelFieldSetDescription', modelName=modelName, fieldName=fieldName, description=description)
        return res

    def addNote(self) -> int:
        res = self.invoke('addNote')
        return res

    def addNotes(self, notes: List['AddNotesNotesItem']) -> Any:
        res = self.invoke('addNotes', notes=notes)
        return res

    def canAddNotes(self, notes: List['CanAddNotesNotesItem']) -> List[bool]:
        res = self.invoke('canAddNotes', notes=notes)
        return res

    def canAddNotesWithErrorDetail(self, notes: List['CanAddNotesWithErrorDetailNotesItem']) -> List['CanAddNotesWithErrorDetailResponseItem']:
        res = self.invoke('canAddNotesWithErrorDetail', notes=notes)
        return [CanAddNotesWithErrorDetailResponseItem.from_dict(i) for i in res] if res else []

    def updateNoteFields(self, note: 'UpdateNoteFieldsNote') -> Any:
        res = self.invoke('updateNoteFields', note=note)
        return res

    def updateNote(self, note: 'UpdateNoteNote') -> Any:
        res = self.invoke('updateNote', note=note)
        return res

    def updateNoteModel(self, note: 'UpdateNoteModelNote') -> Any:
        res = self.invoke('updateNoteModel', note=note)
        return res

    def updateNoteTags(self, note: int, tags: List[str]) -> Any:
        res = self.invoke('updateNoteTags', note=note, tags=tags)
        return res

    def getNoteTags(self, note: int) -> List[str]:
        res = self.invoke('getNoteTags', note=note)
        return res

    def addTags(self, notes: List[int], tags: str) -> Any:
        res = self.invoke('addTags', notes=notes, tags=tags)
        return res

    def removeTags(self, notes: List[int], tags: str) -> Any:
        res = self.invoke('removeTags', notes=notes, tags=tags)
        return res

    def getTags(self) -> List[str]:
        res = self.invoke('getTags')
        return res

    def clearUnusedTags(self) -> Any:
        res = self.invoke('clearUnusedTags')
        return res

    def replaceTags(self, notes: List[int], tag_to_replace: str, replace_with_tag: str) -> Any:
        res = self.invoke('replaceTags', notes=notes, tag_to_replace=tag_to_replace, replace_with_tag=replace_with_tag)
        return res

    def replaceTagsInAllNotes(self, tag_to_replace: str, replace_with_tag: str) -> Any:
        res = self.invoke('replaceTagsInAllNotes', tag_to_replace=tag_to_replace, replace_with_tag=replace_with_tag)
        return res

    def findNotes(self, query: str) -> List[int]:
        res = self.invoke('findNotes', query=query)
        return res

    def notesInfo(self, notes: List[int]) -> List['NotesInfoResponseItem']:
        res = self.invoke('notesInfo', notes=notes)
        return [NotesInfoResponseItem.from_dict(i) for i in res] if res else []

    def notesModTime(self, notes: List[int]) -> List['NotesModTimeResponseItem']:
        res = self.invoke('notesModTime', notes=notes)
        return [NotesModTimeResponseItem.from_dict(i) for i in res] if res else []

    def deleteNotes(self, notes: List[int]) -> Any:
        res = self.invoke('deleteNotes', notes=notes)
        return res

    def removeEmptyNotes(self) -> Any:
        res = self.invoke('removeEmptyNotes')
        return res

    def getNumCardsReviewedToday(self) -> int:
        res = self.invoke('getNumCardsReviewedToday')
        return res

    def getNumCardsReviewedByDay(self) -> List[List[str]]:
        res = self.invoke('getNumCardsReviewedByDay')
        return res

    def getCollectionStatsHTML(self, wholeCollection: bool) -> str:
        res = self.invoke('getCollectionStatsHTML', wholeCollection=wholeCollection)
        return res

    def cardReviews(self, deck: str, startID: int) -> List[List[int]]:
        res = self.invoke('cardReviews', deck=deck, startID=startID)
        return res

    def getReviewsOfCards(self, cards: List[str]) -> Dict[str, Any]:
        res = self.invoke('getReviewsOfCards', cards=cards)
        return res

    def getLatestReviewID(self, deck: str) -> int:
        res = self.invoke('getLatestReviewID', deck=deck)
        return res

    def insertReviews(self, reviews: List[List[int]]) -> Any:
        res = self.invoke('insertReviews', reviews=reviews)
        return res
