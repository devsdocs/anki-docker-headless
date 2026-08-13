import 'dart:convert';
import 'dart:io';

class CardsModTimeResponseItem {
  final int? cardId;
  final int? mod;
  CardsModTimeResponseItem({this.cardId, this.mod});
  factory CardsModTimeResponseItem.fromJson(Map<String, dynamic> json) {
    return CardsModTimeResponseItem(cardId: json['cardId'], mod: json['mod']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cardId != null) data['cardId'] = cardId;
    if (mod != null) data['mod'] = mod;
    return data;
  }
}

class CardsInfoResponseItemFieldsFront {
  final String? value;
  final int? order;
  CardsInfoResponseItemFieldsFront({this.value, this.order});
  factory CardsInfoResponseItemFieldsFront.fromJson(Map<String, dynamic> json) {
    return CardsInfoResponseItemFieldsFront(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class CardsInfoResponseItemFieldsBack {
  final String? value;
  final int? order;
  CardsInfoResponseItemFieldsBack({this.value, this.order});
  factory CardsInfoResponseItemFieldsBack.fromJson(Map<String, dynamic> json) {
    return CardsInfoResponseItemFieldsBack(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class CardsInfoResponseItemFields {
  final CardsInfoResponseItemFieldsFront? Front;
  final CardsInfoResponseItemFieldsBack? Back;
  CardsInfoResponseItemFields({this.Front, this.Back});
  factory CardsInfoResponseItemFields.fromJson(Map<String, dynamic> json) {
    return CardsInfoResponseItemFields(
      Front: json['Front'] != null
          ? CardsInfoResponseItemFieldsFront.fromJson(json['Front'])
          : null,
      Back: json['Back'] != null
          ? CardsInfoResponseItemFieldsBack.fromJson(json['Back'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front!.toJson();
    if (Back != null) data['Back'] = Back!.toJson();
    return data;
  }
}

class CardsInfoResponseItem {
  final String? answer;
  final String? question;
  final String? deckName;
  final String? modelName;
  final int? fieldOrder;
  final CardsInfoResponseItemFields? fields;
  final String? css;
  final int? cardId;
  final int? interval;
  final int? note;
  final int? ord;
  final int? type;
  final int? queue;
  final int? due;
  final int? reps;
  final int? lapses;
  final int? left;
  final int? mod;
  CardsInfoResponseItem({
    this.answer,
    this.question,
    this.deckName,
    this.modelName,
    this.fieldOrder,
    this.fields,
    this.css,
    this.cardId,
    this.interval,
    this.note,
    this.ord,
    this.type,
    this.queue,
    this.due,
    this.reps,
    this.lapses,
    this.left,
    this.mod,
  });
  factory CardsInfoResponseItem.fromJson(Map<String, dynamic> json) {
    return CardsInfoResponseItem(
      answer: json['answer'],
      question: json['question'],
      deckName: json['deckName'],
      modelName: json['modelName'],
      fieldOrder: json['fieldOrder'],
      fields: json['fields'] != null
          ? CardsInfoResponseItemFields.fromJson(json['fields'])
          : null,
      css: json['css'],
      cardId: json['cardId'],
      interval: json['interval'],
      note: json['note'],
      ord: json['ord'],
      type: json['type'],
      queue: json['queue'],
      due: json['due'],
      reps: json['reps'],
      lapses: json['lapses'],
      left: json['left'],
      mod: json['mod'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (answer != null) data['answer'] = answer;
    if (question != null) data['question'] = question;
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fieldOrder != null) data['fieldOrder'] = fieldOrder;
    if (fields != null) data['fields'] = fields!.toJson();
    if (css != null) data['css'] = css;
    if (cardId != null) data['cardId'] = cardId;
    if (interval != null) data['interval'] = interval;
    if (note != null) data['note'] = note;
    if (ord != null) data['ord'] = ord;
    if (type != null) data['type'] = type;
    if (queue != null) data['queue'] = queue;
    if (due != null) data['due'] = due;
    if (reps != null) data['reps'] = reps;
    if (lapses != null) data['lapses'] = lapses;
    if (left != null) data['left'] = left;
    if (mod != null) data['mod'] = mod;
    return data;
  }
}

class AnswerCardsAnswersItem {
  final int? cardId;
  final int? ease;
  final int? time;
  AnswerCardsAnswersItem({this.cardId, this.ease, this.time});
  factory AnswerCardsAnswersItem.fromJson(Map<String, dynamic> json) {
    return AnswerCardsAnswersItem(
      cardId: json['cardId'],
      ease: json['ease'],
      time: json['time'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (cardId != null) data['cardId'] = cardId;
    if (ease != null) data['ease'] = ease;
    if (time != null) data['time'] = time;
    return data;
  }
}

class DeckNamesAndIdsResponse {
  final int? Default;
  DeckNamesAndIdsResponse({this.Default});
  factory DeckNamesAndIdsResponse.fromJson(Map<String, dynamic> json) {
    return DeckNamesAndIdsResponse(Default: json['Default']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Default != null) data['Default'] = Default;
    return data;
  }
}

class GetDecksResponse {
  final List<int>? Default;
  GetDecksResponse({this.Default});
  factory GetDecksResponse.fromJson(Map<String, dynamic> json) {
    return GetDecksResponse(
      Default: json['Default'] != null ? List<int>.from(json['Default']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Default != null) data['Default'] = Default;
    return data;
  }
}

class GetDeckConfigResponseLapse {
  final int? leechFails;
  final List<int>? delays;
  final int? minInt;
  final int? leechAction;
  final int? mult;
  GetDeckConfigResponseLapse({
    this.leechFails,
    this.delays,
    this.minInt,
    this.leechAction,
    this.mult,
  });
  factory GetDeckConfigResponseLapse.fromJson(Map<String, dynamic> json) {
    return GetDeckConfigResponseLapse(
      leechFails: json['leechFails'],
      delays: json['delays'] != null ? List<int>.from(json['delays']) : null,
      minInt: json['minInt'],
      leechAction: json['leechAction'],
      mult: json['mult'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (leechFails != null) data['leechFails'] = leechFails;
    if (delays != null) data['delays'] = delays;
    if (minInt != null) data['minInt'] = minInt;
    if (leechAction != null) data['leechAction'] = leechAction;
    if (mult != null) data['mult'] = mult;
    return data;
  }
}

class GetDeckConfigResponseNew {
  final bool? bury;
  final int? order;
  final int? initialFactor;
  final int? perDay;
  final List<int>? delays;
  final bool? separate;
  final List<int>? ints;
  GetDeckConfigResponseNew({
    this.bury,
    this.order,
    this.initialFactor,
    this.perDay,
    this.delays,
    this.separate,
    this.ints,
  });
  factory GetDeckConfigResponseNew.fromJson(Map<String, dynamic> json) {
    return GetDeckConfigResponseNew(
      bury: json['bury'],
      order: json['order'],
      initialFactor: json['initialFactor'],
      perDay: json['perDay'],
      delays: json['delays'] != null ? List<int>.from(json['delays']) : null,
      separate: json['separate'],
      ints: json['ints'] != null ? List<int>.from(json['ints']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bury != null) data['bury'] = bury;
    if (order != null) data['order'] = order;
    if (initialFactor != null) data['initialFactor'] = initialFactor;
    if (perDay != null) data['perDay'] = perDay;
    if (delays != null) data['delays'] = delays;
    if (separate != null) data['separate'] = separate;
    if (ints != null) data['ints'] = ints;
    return data;
  }
}

class GetDeckConfigResponseRev {
  final bool? bury;
  final int? ivlFct;
  final double? ease4;
  final int? maxIvl;
  final int? perDay;
  final int? minSpace;
  final double? fuzz;
  GetDeckConfigResponseRev({
    this.bury,
    this.ivlFct,
    this.ease4,
    this.maxIvl,
    this.perDay,
    this.minSpace,
    this.fuzz,
  });
  factory GetDeckConfigResponseRev.fromJson(Map<String, dynamic> json) {
    return GetDeckConfigResponseRev(
      bury: json['bury'],
      ivlFct: json['ivlFct'],
      ease4: json['ease4'],
      maxIvl: json['maxIvl'],
      perDay: json['perDay'],
      minSpace: json['minSpace'],
      fuzz: json['fuzz'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bury != null) data['bury'] = bury;
    if (ivlFct != null) data['ivlFct'] = ivlFct;
    if (ease4 != null) data['ease4'] = ease4;
    if (maxIvl != null) data['maxIvl'] = maxIvl;
    if (perDay != null) data['perDay'] = perDay;
    if (minSpace != null) data['minSpace'] = minSpace;
    if (fuzz != null) data['fuzz'] = fuzz;
    return data;
  }
}

class GetDeckConfigResponse {
  final GetDeckConfigResponseLapse? lapse;
  final bool? dyn;
  final bool? autoplay;
  final int? mod;
  final int? id;
  final int? maxTaken;
  final GetDeckConfigResponseNew? new_;
  final String? name;
  final GetDeckConfigResponseRev? rev;
  final int? timer;
  final bool? replayq;
  final int? usn;
  GetDeckConfigResponse({
    this.lapse,
    this.dyn,
    this.autoplay,
    this.mod,
    this.id,
    this.maxTaken,
    this.new_,
    this.name,
    this.rev,
    this.timer,
    this.replayq,
    this.usn,
  });
  factory GetDeckConfigResponse.fromJson(Map<String, dynamic> json) {
    return GetDeckConfigResponse(
      lapse: json['lapse'] != null
          ? GetDeckConfigResponseLapse.fromJson(json['lapse'])
          : null,
      dyn: json['dyn'],
      autoplay: json['autoplay'],
      mod: json['mod'],
      id: json['id'],
      maxTaken: json['maxTaken'],
      new_: json['new'] != null
          ? GetDeckConfigResponseNew.fromJson(json['new'])
          : null,
      name: json['name'],
      rev: json['rev'] != null
          ? GetDeckConfigResponseRev.fromJson(json['rev'])
          : null,
      timer: json['timer'],
      replayq: json['replayq'],
      usn: json['usn'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (lapse != null) data['lapse'] = lapse!.toJson();
    if (dyn != null) data['dyn'] = dyn;
    if (autoplay != null) data['autoplay'] = autoplay;
    if (mod != null) data['mod'] = mod;
    if (id != null) data['id'] = id;
    if (maxTaken != null) data['maxTaken'] = maxTaken;
    if (new_ != null) data['new'] = new_!.toJson();
    if (name != null) data['name'] = name;
    if (rev != null) data['rev'] = rev!.toJson();
    if (timer != null) data['timer'] = timer;
    if (replayq != null) data['replayq'] = replayq;
    if (usn != null) data['usn'] = usn;
    return data;
  }
}

class SaveDeckConfigConfigLapse {
  final int? leechFails;
  final List<int>? delays;
  final int? minInt;
  final int? leechAction;
  final int? mult;
  SaveDeckConfigConfigLapse({
    this.leechFails,
    this.delays,
    this.minInt,
    this.leechAction,
    this.mult,
  });
  factory SaveDeckConfigConfigLapse.fromJson(Map<String, dynamic> json) {
    return SaveDeckConfigConfigLapse(
      leechFails: json['leechFails'],
      delays: json['delays'] != null ? List<int>.from(json['delays']) : null,
      minInt: json['minInt'],
      leechAction: json['leechAction'],
      mult: json['mult'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (leechFails != null) data['leechFails'] = leechFails;
    if (delays != null) data['delays'] = delays;
    if (minInt != null) data['minInt'] = minInt;
    if (leechAction != null) data['leechAction'] = leechAction;
    if (mult != null) data['mult'] = mult;
    return data;
  }
}

class SaveDeckConfigConfigNew {
  final bool? bury;
  final int? order;
  final int? initialFactor;
  final int? perDay;
  final List<int>? delays;
  final bool? separate;
  final List<int>? ints;
  SaveDeckConfigConfigNew({
    this.bury,
    this.order,
    this.initialFactor,
    this.perDay,
    this.delays,
    this.separate,
    this.ints,
  });
  factory SaveDeckConfigConfigNew.fromJson(Map<String, dynamic> json) {
    return SaveDeckConfigConfigNew(
      bury: json['bury'],
      order: json['order'],
      initialFactor: json['initialFactor'],
      perDay: json['perDay'],
      delays: json['delays'] != null ? List<int>.from(json['delays']) : null,
      separate: json['separate'],
      ints: json['ints'] != null ? List<int>.from(json['ints']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bury != null) data['bury'] = bury;
    if (order != null) data['order'] = order;
    if (initialFactor != null) data['initialFactor'] = initialFactor;
    if (perDay != null) data['perDay'] = perDay;
    if (delays != null) data['delays'] = delays;
    if (separate != null) data['separate'] = separate;
    if (ints != null) data['ints'] = ints;
    return data;
  }
}

class SaveDeckConfigConfigRev {
  final bool? bury;
  final int? ivlFct;
  final double? ease4;
  final int? maxIvl;
  final int? perDay;
  final int? minSpace;
  final double? fuzz;
  SaveDeckConfigConfigRev({
    this.bury,
    this.ivlFct,
    this.ease4,
    this.maxIvl,
    this.perDay,
    this.minSpace,
    this.fuzz,
  });
  factory SaveDeckConfigConfigRev.fromJson(Map<String, dynamic> json) {
    return SaveDeckConfigConfigRev(
      bury: json['bury'],
      ivlFct: json['ivlFct'],
      ease4: json['ease4'],
      maxIvl: json['maxIvl'],
      perDay: json['perDay'],
      minSpace: json['minSpace'],
      fuzz: json['fuzz'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (bury != null) data['bury'] = bury;
    if (ivlFct != null) data['ivlFct'] = ivlFct;
    if (ease4 != null) data['ease4'] = ease4;
    if (maxIvl != null) data['maxIvl'] = maxIvl;
    if (perDay != null) data['perDay'] = perDay;
    if (minSpace != null) data['minSpace'] = minSpace;
    if (fuzz != null) data['fuzz'] = fuzz;
    return data;
  }
}

class SaveDeckConfigConfig {
  final SaveDeckConfigConfigLapse? lapse;
  final bool? dyn;
  final bool? autoplay;
  final int? mod;
  final int? id;
  final int? maxTaken;
  final SaveDeckConfigConfigNew? new_;
  final String? name;
  final SaveDeckConfigConfigRev? rev;
  final int? timer;
  final bool? replayq;
  final int? usn;
  SaveDeckConfigConfig({
    this.lapse,
    this.dyn,
    this.autoplay,
    this.mod,
    this.id,
    this.maxTaken,
    this.new_,
    this.name,
    this.rev,
    this.timer,
    this.replayq,
    this.usn,
  });
  factory SaveDeckConfigConfig.fromJson(Map<String, dynamic> json) {
    return SaveDeckConfigConfig(
      lapse: json['lapse'] != null
          ? SaveDeckConfigConfigLapse.fromJson(json['lapse'])
          : null,
      dyn: json['dyn'],
      autoplay: json['autoplay'],
      mod: json['mod'],
      id: json['id'],
      maxTaken: json['maxTaken'],
      new_: json['new'] != null
          ? SaveDeckConfigConfigNew.fromJson(json['new'])
          : null,
      name: json['name'],
      rev: json['rev'] != null
          ? SaveDeckConfigConfigRev.fromJson(json['rev'])
          : null,
      timer: json['timer'],
      replayq: json['replayq'],
      usn: json['usn'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (lapse != null) data['lapse'] = lapse!.toJson();
    if (dyn != null) data['dyn'] = dyn;
    if (autoplay != null) data['autoplay'] = autoplay;
    if (mod != null) data['mod'] = mod;
    if (id != null) data['id'] = id;
    if (maxTaken != null) data['maxTaken'] = maxTaken;
    if (new_ != null) data['new'] = new_!.toJson();
    if (name != null) data['name'] = name;
    if (rev != null) data['rev'] = rev!.toJson();
    if (timer != null) data['timer'] = timer;
    if (replayq != null) data['replayq'] = replayq;
    if (usn != null) data['usn'] = usn;
    return data;
  }
}

class GuiBrowseReordercards {
  final String? order;
  final String? columnId;
  GuiBrowseReordercards({this.order, this.columnId});
  factory GuiBrowseReordercards.fromJson(Map<String, dynamic> json) {
    return GuiBrowseReordercards(
      order: json['order'],
      columnId: json['columnId'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (order != null) data['order'] = order;
    if (columnId != null) data['columnId'] = columnId;
    return data;
  }
}

class GuiAddCardsNoteFields {
  final String? Text;
  final String? Extra;
  GuiAddCardsNoteFields({this.Text, this.Extra});
  factory GuiAddCardsNoteFields.fromJson(Map<String, dynamic> json) {
    return GuiAddCardsNoteFields(Text: json['Text'], Extra: json['Extra']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Text != null) data['Text'] = Text;
    if (Extra != null) data['Extra'] = Extra;
    return data;
  }
}

class GuiAddCardsNotePictureItem {
  final String? url;
  final String? filename;
  final List<String>? fields;
  GuiAddCardsNotePictureItem({this.url, this.filename, this.fields});
  factory GuiAddCardsNotePictureItem.fromJson(Map<String, dynamic> json) {
    return GuiAddCardsNotePictureItem(
      url: json['url'],
      filename: json['filename'],
      fields: json['fields'] != null ? List<String>.from(json['fields']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (url != null) data['url'] = url;
    if (filename != null) data['filename'] = filename;
    if (fields != null) data['fields'] = fields;
    return data;
  }
}

class GuiAddCardsNote {
  final String? deckName;
  final String? modelName;
  final GuiAddCardsNoteFields? fields;
  final List<String>? tags;
  final List<GuiAddCardsNotePictureItem>? picture;
  GuiAddCardsNote({
    this.deckName,
    this.modelName,
    this.fields,
    this.tags,
    this.picture,
  });
  factory GuiAddCardsNote.fromJson(Map<String, dynamic> json) {
    return GuiAddCardsNote(
      deckName: json['deckName'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? GuiAddCardsNoteFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
      picture: json['picture'] != null
          ? (json['picture'] as List)
                .map((i) => GuiAddCardsNotePictureItem.fromJson(i))
                .toList()
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    if (picture != null)
      data['picture'] = picture!.map((i) => i.toJson()).toList();
    return data;
  }
}

class GuiAddNoteSetDataNoteFields {
  final String? Front;
  final String? Back;
  GuiAddNoteSetDataNoteFields({this.Front, this.Back});
  factory GuiAddNoteSetDataNoteFields.fromJson(Map<String, dynamic> json) {
    return GuiAddNoteSetDataNoteFields(
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class GuiAddNoteSetDataNote {
  final String? deckName;
  final String? modelName;
  final GuiAddNoteSetDataNoteFields? fields;
  final List<String>? tags;
  GuiAddNoteSetDataNote({
    this.deckName,
    this.modelName,
    this.fields,
    this.tags,
  });
  factory GuiAddNoteSetDataNote.fromJson(Map<String, dynamic> json) {
    return GuiAddNoteSetDataNote(
      deckName: json['deckName'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? GuiAddNoteSetDataNoteFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    return data;
  }
}

class GuiCurrentCardResponseFieldsFront {
  final String? value;
  final int? order;
  GuiCurrentCardResponseFieldsFront({this.value, this.order});
  factory GuiCurrentCardResponseFieldsFront.fromJson(
    Map<String, dynamic> json,
  ) {
    return GuiCurrentCardResponseFieldsFront(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class GuiCurrentCardResponseFieldsBack {
  final String? value;
  final int? order;
  GuiCurrentCardResponseFieldsBack({this.value, this.order});
  factory GuiCurrentCardResponseFieldsBack.fromJson(Map<String, dynamic> json) {
    return GuiCurrentCardResponseFieldsBack(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class GuiCurrentCardResponseFields {
  final GuiCurrentCardResponseFieldsFront? Front;
  final GuiCurrentCardResponseFieldsBack? Back;
  GuiCurrentCardResponseFields({this.Front, this.Back});
  factory GuiCurrentCardResponseFields.fromJson(Map<String, dynamic> json) {
    return GuiCurrentCardResponseFields(
      Front: json['Front'] != null
          ? GuiCurrentCardResponseFieldsFront.fromJson(json['Front'])
          : null,
      Back: json['Back'] != null
          ? GuiCurrentCardResponseFieldsBack.fromJson(json['Back'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front!.toJson();
    if (Back != null) data['Back'] = Back!.toJson();
    return data;
  }
}

class GuiCurrentCardResponse {
  final String? answer;
  final String? question;
  final String? deckName;
  final String? modelName;
  final int? fieldOrder;
  final GuiCurrentCardResponseFields? fields;
  final String? template;
  final int? cardId;
  final List<int>? buttons;
  final List<String>? nextReviews;
  GuiCurrentCardResponse({
    this.answer,
    this.question,
    this.deckName,
    this.modelName,
    this.fieldOrder,
    this.fields,
    this.template,
    this.cardId,
    this.buttons,
    this.nextReviews,
  });
  factory GuiCurrentCardResponse.fromJson(Map<String, dynamic> json) {
    return GuiCurrentCardResponse(
      answer: json['answer'],
      question: json['question'],
      deckName: json['deckName'],
      modelName: json['modelName'],
      fieldOrder: json['fieldOrder'],
      fields: json['fields'] != null
          ? GuiCurrentCardResponseFields.fromJson(json['fields'])
          : null,
      template: json['template'],
      cardId: json['cardId'],
      buttons: json['buttons'] != null ? List<int>.from(json['buttons']) : null,
      nextReviews: json['nextReviews'] != null
          ? List<String>.from(json['nextReviews'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (answer != null) data['answer'] = answer;
    if (question != null) data['question'] = question;
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fieldOrder != null) data['fieldOrder'] = fieldOrder;
    if (fields != null) data['fields'] = fields!.toJson();
    if (template != null) data['template'] = template;
    if (cardId != null) data['cardId'] = cardId;
    if (buttons != null) data['buttons'] = buttons;
    if (nextReviews != null) data['nextReviews'] = nextReviews;
    return data;
  }
}

class RequestPermissionResponse {
  final String? permission;
  final bool? requireApiKey;
  final int? version;
  RequestPermissionResponse({
    this.permission,
    this.requireApiKey,
    this.version,
  });
  factory RequestPermissionResponse.fromJson(Map<String, dynamic> json) {
    return RequestPermissionResponse(
      permission: json['permission'],
      requireApiKey: json['requireApiKey'],
      version: json['version'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (permission != null) data['permission'] = permission;
    if (requireApiKey != null) data['requireApiKey'] = requireApiKey;
    if (version != null) data['version'] = version;
    return data;
  }
}

class ApiReflectResponse {
  final List<String>? scopes;
  final List<String>? actions;
  ApiReflectResponse({this.scopes, this.actions});
  factory ApiReflectResponse.fromJson(Map<String, dynamic> json) {
    return ApiReflectResponse(
      scopes: json['scopes'] != null ? List<String>.from(json['scopes']) : null,
      actions: json['actions'] != null
          ? List<String>.from(json['actions'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (scopes != null) data['scopes'] = scopes;
    if (actions != null) data['actions'] = actions;
    return data;
  }
}

class MultiActionsItem {
  final String? action;
  MultiActionsItem({this.action});
  factory MultiActionsItem.fromJson(Map<String, dynamic> json) {
    return MultiActionsItem(action: json['action']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (action != null) data['action'] = action;
    return data;
  }
}

class ModelNamesAndIdsResponse {
  final int? Basic;
  final int? Cloze;
  ModelNamesAndIdsResponse({this.Basic, this.Cloze});
  factory ModelNamesAndIdsResponse.fromJson(Map<String, dynamic> json) {
    return ModelNamesAndIdsResponse(Basic: json['Basic'], Cloze: json['Cloze']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Basic != null) data['Basic'] = Basic;
    if (Cloze != null) data['Cloze'] = Cloze;
    return data;
  }
}

class FindModelsByIdResponseItemTmplsItem {
  final String? name;
  final int? ord;
  final String? qfmt;
  final String? afmt;
  final String? bqfmt;
  final String? bafmt;
  final dynamic? did;
  final String? bfont;
  final int? bsize;
  final int? id;
  FindModelsByIdResponseItemTmplsItem({
    this.name,
    this.ord,
    this.qfmt,
    this.afmt,
    this.bqfmt,
    this.bafmt,
    this.did,
    this.bfont,
    this.bsize,
    this.id,
  });
  factory FindModelsByIdResponseItemTmplsItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return FindModelsByIdResponseItemTmplsItem(
      name: json['name'],
      ord: json['ord'],
      qfmt: json['qfmt'],
      afmt: json['afmt'],
      bqfmt: json['bqfmt'],
      bafmt: json['bafmt'],
      did: json['did'],
      bfont: json['bfont'],
      bsize: json['bsize'],
      id: json['id'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (qfmt != null) data['qfmt'] = qfmt;
    if (afmt != null) data['afmt'] = afmt;
    if (bqfmt != null) data['bqfmt'] = bqfmt;
    if (bafmt != null) data['bafmt'] = bafmt;
    if (did != null) data['did'] = did;
    if (bfont != null) data['bfont'] = bfont;
    if (bsize != null) data['bsize'] = bsize;
    if (id != null) data['id'] = id;
    return data;
  }
}

class FindModelsByIdResponseItemFldsItem {
  final String? name;
  final int? ord;
  final bool? sticky;
  final bool? rtl;
  final String? font;
  final int? size;
  final String? description;
  final bool? plainText;
  final bool? collapsed;
  final bool? excludeFromSearch;
  final int? id;
  final dynamic? tag;
  final bool? preventDeletion;
  FindModelsByIdResponseItemFldsItem({
    this.name,
    this.ord,
    this.sticky,
    this.rtl,
    this.font,
    this.size,
    this.description,
    this.plainText,
    this.collapsed,
    this.excludeFromSearch,
    this.id,
    this.tag,
    this.preventDeletion,
  });
  factory FindModelsByIdResponseItemFldsItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return FindModelsByIdResponseItemFldsItem(
      name: json['name'],
      ord: json['ord'],
      sticky: json['sticky'],
      rtl: json['rtl'],
      font: json['font'],
      size: json['size'],
      description: json['description'],
      plainText: json['plainText'],
      collapsed: json['collapsed'],
      excludeFromSearch: json['excludeFromSearch'],
      id: json['id'],
      tag: json['tag'],
      preventDeletion: json['preventDeletion'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (sticky != null) data['sticky'] = sticky;
    if (rtl != null) data['rtl'] = rtl;
    if (font != null) data['font'] = font;
    if (size != null) data['size'] = size;
    if (description != null) data['description'] = description;
    if (plainText != null) data['plainText'] = plainText;
    if (collapsed != null) data['collapsed'] = collapsed;
    if (excludeFromSearch != null)
      data['excludeFromSearch'] = excludeFromSearch;
    if (id != null) data['id'] = id;
    if (tag != null) data['tag'] = tag;
    if (preventDeletion != null) data['preventDeletion'] = preventDeletion;
    return data;
  }
}

class FindModelsByIdResponseItem {
  final int? id;
  final String? name;
  final int? type;
  final int? mod;
  final int? usn;
  final int? sortf;
  final dynamic? did;
  final List<FindModelsByIdResponseItemTmplsItem>? tmpls;
  final List<FindModelsByIdResponseItemFldsItem>? flds;
  final String? css;
  final String? latexPre;
  final String? latexPost;
  final bool? latexsvg;
  final List<List<int>>? req;
  final int? originalStockKind;
  FindModelsByIdResponseItem({
    this.id,
    this.name,
    this.type,
    this.mod,
    this.usn,
    this.sortf,
    this.did,
    this.tmpls,
    this.flds,
    this.css,
    this.latexPre,
    this.latexPost,
    this.latexsvg,
    this.req,
    this.originalStockKind,
  });
  factory FindModelsByIdResponseItem.fromJson(Map<String, dynamic> json) {
    return FindModelsByIdResponseItem(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      mod: json['mod'],
      usn: json['usn'],
      sortf: json['sortf'],
      did: json['did'],
      tmpls: json['tmpls'] != null
          ? (json['tmpls'] as List)
                .map((i) => FindModelsByIdResponseItemTmplsItem.fromJson(i))
                .toList()
          : null,
      flds: json['flds'] != null
          ? (json['flds'] as List)
                .map((i) => FindModelsByIdResponseItemFldsItem.fromJson(i))
                .toList()
          : null,
      css: json['css'],
      latexPre: json['latexPre'],
      latexPost: json['latexPost'],
      latexsvg: json['latexsvg'],
      req: json['req'] != null ? List<List<int>>.from(json['req']) : null,
      originalStockKind: json['originalStockKind'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) data['id'] = id;
    if (name != null) data['name'] = name;
    if (type != null) data['type'] = type;
    if (mod != null) data['mod'] = mod;
    if (usn != null) data['usn'] = usn;
    if (sortf != null) data['sortf'] = sortf;
    if (did != null) data['did'] = did;
    if (tmpls != null) data['tmpls'] = tmpls!.map((i) => i.toJson()).toList();
    if (flds != null) data['flds'] = flds!.map((i) => i.toJson()).toList();
    if (css != null) data['css'] = css;
    if (latexPre != null) data['latexPre'] = latexPre;
    if (latexPost != null) data['latexPost'] = latexPost;
    if (latexsvg != null) data['latexsvg'] = latexsvg;
    if (req != null) data['req'] = req;
    if (originalStockKind != null)
      data['originalStockKind'] = originalStockKind;
    return data;
  }
}

class FindModelsByNameResponseItemTmplsItem {
  final String? name;
  final int? ord;
  final String? qfmt;
  final String? afmt;
  final String? bqfmt;
  final String? bafmt;
  final dynamic? did;
  final String? bfont;
  final int? bsize;
  final int? id;
  FindModelsByNameResponseItemTmplsItem({
    this.name,
    this.ord,
    this.qfmt,
    this.afmt,
    this.bqfmt,
    this.bafmt,
    this.did,
    this.bfont,
    this.bsize,
    this.id,
  });
  factory FindModelsByNameResponseItemTmplsItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return FindModelsByNameResponseItemTmplsItem(
      name: json['name'],
      ord: json['ord'],
      qfmt: json['qfmt'],
      afmt: json['afmt'],
      bqfmt: json['bqfmt'],
      bafmt: json['bafmt'],
      did: json['did'],
      bfont: json['bfont'],
      bsize: json['bsize'],
      id: json['id'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (qfmt != null) data['qfmt'] = qfmt;
    if (afmt != null) data['afmt'] = afmt;
    if (bqfmt != null) data['bqfmt'] = bqfmt;
    if (bafmt != null) data['bafmt'] = bafmt;
    if (did != null) data['did'] = did;
    if (bfont != null) data['bfont'] = bfont;
    if (bsize != null) data['bsize'] = bsize;
    if (id != null) data['id'] = id;
    return data;
  }
}

class FindModelsByNameResponseItemFldsItem {
  final String? name;
  final int? ord;
  final bool? sticky;
  final bool? rtl;
  final String? font;
  final int? size;
  final String? description;
  final bool? plainText;
  final bool? collapsed;
  final bool? excludeFromSearch;
  final int? id;
  final dynamic? tag;
  final bool? preventDeletion;
  FindModelsByNameResponseItemFldsItem({
    this.name,
    this.ord,
    this.sticky,
    this.rtl,
    this.font,
    this.size,
    this.description,
    this.plainText,
    this.collapsed,
    this.excludeFromSearch,
    this.id,
    this.tag,
    this.preventDeletion,
  });
  factory FindModelsByNameResponseItemFldsItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return FindModelsByNameResponseItemFldsItem(
      name: json['name'],
      ord: json['ord'],
      sticky: json['sticky'],
      rtl: json['rtl'],
      font: json['font'],
      size: json['size'],
      description: json['description'],
      plainText: json['plainText'],
      collapsed: json['collapsed'],
      excludeFromSearch: json['excludeFromSearch'],
      id: json['id'],
      tag: json['tag'],
      preventDeletion: json['preventDeletion'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (sticky != null) data['sticky'] = sticky;
    if (rtl != null) data['rtl'] = rtl;
    if (font != null) data['font'] = font;
    if (size != null) data['size'] = size;
    if (description != null) data['description'] = description;
    if (plainText != null) data['plainText'] = plainText;
    if (collapsed != null) data['collapsed'] = collapsed;
    if (excludeFromSearch != null)
      data['excludeFromSearch'] = excludeFromSearch;
    if (id != null) data['id'] = id;
    if (tag != null) data['tag'] = tag;
    if (preventDeletion != null) data['preventDeletion'] = preventDeletion;
    return data;
  }
}

class FindModelsByNameResponseItem {
  final int? id;
  final String? name;
  final int? type;
  final int? mod;
  final int? usn;
  final int? sortf;
  final dynamic? did;
  final List<FindModelsByNameResponseItemTmplsItem>? tmpls;
  final List<FindModelsByNameResponseItemFldsItem>? flds;
  final String? css;
  final String? latexPre;
  final String? latexPost;
  final bool? latexsvg;
  final List<List<int>>? req;
  final int? originalStockKind;
  FindModelsByNameResponseItem({
    this.id,
    this.name,
    this.type,
    this.mod,
    this.usn,
    this.sortf,
    this.did,
    this.tmpls,
    this.flds,
    this.css,
    this.latexPre,
    this.latexPost,
    this.latexsvg,
    this.req,
    this.originalStockKind,
  });
  factory FindModelsByNameResponseItem.fromJson(Map<String, dynamic> json) {
    return FindModelsByNameResponseItem(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      mod: json['mod'],
      usn: json['usn'],
      sortf: json['sortf'],
      did: json['did'],
      tmpls: json['tmpls'] != null
          ? (json['tmpls'] as List)
                .map((i) => FindModelsByNameResponseItemTmplsItem.fromJson(i))
                .toList()
          : null,
      flds: json['flds'] != null
          ? (json['flds'] as List)
                .map((i) => FindModelsByNameResponseItemFldsItem.fromJson(i))
                .toList()
          : null,
      css: json['css'],
      latexPre: json['latexPre'],
      latexPost: json['latexPost'],
      latexsvg: json['latexsvg'],
      req: json['req'] != null ? List<List<int>>.from(json['req']) : null,
      originalStockKind: json['originalStockKind'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) data['id'] = id;
    if (name != null) data['name'] = name;
    if (type != null) data['type'] = type;
    if (mod != null) data['mod'] = mod;
    if (usn != null) data['usn'] = usn;
    if (sortf != null) data['sortf'] = sortf;
    if (did != null) data['did'] = did;
    if (tmpls != null) data['tmpls'] = tmpls!.map((i) => i.toJson()).toList();
    if (flds != null) data['flds'] = flds!.map((i) => i.toJson()).toList();
    if (css != null) data['css'] = css;
    if (latexPre != null) data['latexPre'] = latexPre;
    if (latexPost != null) data['latexPost'] = latexPost;
    if (latexsvg != null) data['latexsvg'] = latexsvg;
    if (req != null) data['req'] = req;
    if (originalStockKind != null)
      data['originalStockKind'] = originalStockKind;
    return data;
  }
}

class ModelFieldFontsResponseFront {
  final String? font;
  final int? size;
  ModelFieldFontsResponseFront({this.font, this.size});
  factory ModelFieldFontsResponseFront.fromJson(Map<String, dynamic> json) {
    return ModelFieldFontsResponseFront(font: json['font'], size: json['size']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (font != null) data['font'] = font;
    if (size != null) data['size'] = size;
    return data;
  }
}

class ModelFieldFontsResponseBack {
  final String? font;
  final int? size;
  ModelFieldFontsResponseBack({this.font, this.size});
  factory ModelFieldFontsResponseBack.fromJson(Map<String, dynamic> json) {
    return ModelFieldFontsResponseBack(font: json['font'], size: json['size']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (font != null) data['font'] = font;
    if (size != null) data['size'] = size;
    return data;
  }
}

class ModelFieldFontsResponse {
  final ModelFieldFontsResponseFront? Front;
  final ModelFieldFontsResponseBack? Back;
  ModelFieldFontsResponse({this.Front, this.Back});
  factory ModelFieldFontsResponse.fromJson(Map<String, dynamic> json) {
    return ModelFieldFontsResponse(
      Front: json['Front'] != null
          ? ModelFieldFontsResponseFront.fromJson(json['Front'])
          : null,
      Back: json['Back'] != null
          ? ModelFieldFontsResponseBack.fromJson(json['Back'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front!.toJson();
    if (Back != null) data['Back'] = Back!.toJson();
    return data;
  }
}

class ModelFieldsOnTemplatesResponse {
  ModelFieldsOnTemplatesResponse();
  factory ModelFieldsOnTemplatesResponse.fromJson(Map<String, dynamic> json) {
    return ModelFieldsOnTemplatesResponse();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}

class CreateModelCardtemplatesItem {
  final String? Name;
  final String? Front;
  final String? Back;
  CreateModelCardtemplatesItem({this.Name, this.Front, this.Back});
  factory CreateModelCardtemplatesItem.fromJson(Map<String, dynamic> json) {
    return CreateModelCardtemplatesItem(
      Name: json['Name'],
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Name != null) data['Name'] = Name;
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class CreateModelResponseFldsItem {
  final String? name;
  final int? ord;
  final bool? sticky;
  final bool? rtl;
  final String? font;
  final int? size;
  final List<dynamic>? media;
  CreateModelResponseFldsItem({
    this.name,
    this.ord,
    this.sticky,
    this.rtl,
    this.font,
    this.size,
    this.media,
  });
  factory CreateModelResponseFldsItem.fromJson(Map<String, dynamic> json) {
    return CreateModelResponseFldsItem(
      name: json['name'],
      ord: json['ord'],
      sticky: json['sticky'],
      rtl: json['rtl'],
      font: json['font'],
      size: json['size'],
      media: json['media'] != null ? List<dynamic>.from(json['media']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (sticky != null) data['sticky'] = sticky;
    if (rtl != null) data['rtl'] = rtl;
    if (font != null) data['font'] = font;
    if (size != null) data['size'] = size;
    if (media != null) data['media'] = media;
    return data;
  }
}

class CreateModelResponseTmplsItem {
  final String? name;
  final int? ord;
  final String? qfmt;
  final String? afmt;
  final dynamic? did;
  final String? bqfmt;
  final String? bafmt;
  CreateModelResponseTmplsItem({
    this.name,
    this.ord,
    this.qfmt,
    this.afmt,
    this.did,
    this.bqfmt,
    this.bafmt,
  });
  factory CreateModelResponseTmplsItem.fromJson(Map<String, dynamic> json) {
    return CreateModelResponseTmplsItem(
      name: json['name'],
      ord: json['ord'],
      qfmt: json['qfmt'],
      afmt: json['afmt'],
      did: json['did'],
      bqfmt: json['bqfmt'],
      bafmt: json['bafmt'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (ord != null) data['ord'] = ord;
    if (qfmt != null) data['qfmt'] = qfmt;
    if (afmt != null) data['afmt'] = afmt;
    if (did != null) data['did'] = did;
    if (bqfmt != null) data['bqfmt'] = bqfmt;
    if (bafmt != null) data['bafmt'] = bafmt;
    return data;
  }
}

class CreateModelResponse {
  final int? sortf;
  final int? did;
  final String? latexPre;
  final String? latexPost;
  final int? mod;
  final int? usn;
  final List<dynamic>? vers;
  final int? type;
  final String? css;
  final String? name;
  final List<CreateModelResponseFldsItem>? flds;
  final List<CreateModelResponseTmplsItem>? tmpls;
  final List<dynamic>? tags;
  final int? id;
  final List<List<int>>? req;
  CreateModelResponse({
    this.sortf,
    this.did,
    this.latexPre,
    this.latexPost,
    this.mod,
    this.usn,
    this.vers,
    this.type,
    this.css,
    this.name,
    this.flds,
    this.tmpls,
    this.tags,
    this.id,
    this.req,
  });
  factory CreateModelResponse.fromJson(Map<String, dynamic> json) {
    return CreateModelResponse(
      sortf: json['sortf'],
      did: json['did'],
      latexPre: json['latexPre'],
      latexPost: json['latexPost'],
      mod: json['mod'],
      usn: json['usn'],
      vers: json['vers'] != null ? List<dynamic>.from(json['vers']) : null,
      type: json['type'],
      css: json['css'],
      name: json['name'],
      flds: json['flds'] != null
          ? (json['flds'] as List)
                .map((i) => CreateModelResponseFldsItem.fromJson(i))
                .toList()
          : null,
      tmpls: json['tmpls'] != null
          ? (json['tmpls'] as List)
                .map((i) => CreateModelResponseTmplsItem.fromJson(i))
                .toList()
          : null,
      tags: json['tags'] != null ? List<dynamic>.from(json['tags']) : null,
      id: json['id'],
      req: json['req'] != null ? List<List<int>>.from(json['req']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (sortf != null) data['sortf'] = sortf;
    if (did != null) data['did'] = did;
    if (latexPre != null) data['latexPre'] = latexPre;
    if (latexPost != null) data['latexPost'] = latexPost;
    if (mod != null) data['mod'] = mod;
    if (usn != null) data['usn'] = usn;
    if (vers != null) data['vers'] = vers;
    if (type != null) data['type'] = type;
    if (css != null) data['css'] = css;
    if (name != null) data['name'] = name;
    if (flds != null) data['flds'] = flds!.map((i) => i.toJson()).toList();
    if (tmpls != null) data['tmpls'] = tmpls!.map((i) => i.toJson()).toList();
    if (tags != null) data['tags'] = tags;
    if (id != null) data['id'] = id;
    if (req != null) data['req'] = req;
    return data;
  }
}

class ModelTemplatesResponseCard1 {
  final String? Front;
  final String? Back;
  ModelTemplatesResponseCard1({this.Front, this.Back});
  factory ModelTemplatesResponseCard1.fromJson(Map<String, dynamic> json) {
    return ModelTemplatesResponseCard1(
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class ModelTemplatesResponseCard2 {
  final String? Front;
  final String? Back;
  ModelTemplatesResponseCard2({this.Front, this.Back});
  factory ModelTemplatesResponseCard2.fromJson(Map<String, dynamic> json) {
    return ModelTemplatesResponseCard2(
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class ModelTemplatesResponse {
  ModelTemplatesResponse();
  factory ModelTemplatesResponse.fromJson(Map<String, dynamic> json) {
    return ModelTemplatesResponse();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}

class ModelStylingResponse {
  final String? css;
  ModelStylingResponse({this.css});
  factory ModelStylingResponse.fromJson(Map<String, dynamic> json) {
    return ModelStylingResponse(css: json['css']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (css != null) data['css'] = css;
    return data;
  }
}

class UpdateModelTemplatesModelTemplatesCard1 {
  final String? Front;
  final String? Back;
  UpdateModelTemplatesModelTemplatesCard1({this.Front, this.Back});
  factory UpdateModelTemplatesModelTemplatesCard1.fromJson(
    Map<String, dynamic> json,
  ) {
    return UpdateModelTemplatesModelTemplatesCard1(
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class UpdateModelTemplatesModelTemplates {
  UpdateModelTemplatesModelTemplates();
  factory UpdateModelTemplatesModelTemplates.fromJson(
    Map<String, dynamic> json,
  ) {
    return UpdateModelTemplatesModelTemplates();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    return data;
  }
}

class UpdateModelTemplatesModel {
  final String? name;
  final UpdateModelTemplatesModelTemplates? templates;
  UpdateModelTemplatesModel({this.name, this.templates});
  factory UpdateModelTemplatesModel.fromJson(Map<String, dynamic> json) {
    return UpdateModelTemplatesModel(
      name: json['name'],
      templates: json['templates'] != null
          ? UpdateModelTemplatesModelTemplates.fromJson(json['templates'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (templates != null) data['templates'] = templates!.toJson();
    return data;
  }
}

class UpdateModelStylingModel {
  final String? name;
  final String? css;
  UpdateModelStylingModel({this.name, this.css});
  factory UpdateModelStylingModel.fromJson(Map<String, dynamic> json) {
    return UpdateModelStylingModel(name: json['name'], css: json['css']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (name != null) data['name'] = name;
    if (css != null) data['css'] = css;
    return data;
  }
}

class FindAndReplaceInModelsModel {
  final String? modelName;
  final String? findText;
  final String? replaceText;
  final bool? front;
  final bool? back;
  final bool? css;
  FindAndReplaceInModelsModel({
    this.modelName,
    this.findText,
    this.replaceText,
    this.front,
    this.back,
    this.css,
  });
  factory FindAndReplaceInModelsModel.fromJson(Map<String, dynamic> json) {
    return FindAndReplaceInModelsModel(
      modelName: json['modelName'],
      findText: json['findText'],
      replaceText: json['replaceText'],
      front: json['front'],
      back: json['back'],
      css: json['css'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (modelName != null) data['modelName'] = modelName;
    if (findText != null) data['findText'] = findText;
    if (replaceText != null) data['replaceText'] = replaceText;
    if (front != null) data['front'] = front;
    if (back != null) data['back'] = back;
    if (css != null) data['css'] = css;
    return data;
  }
}

class ModelTemplateAddTemplate {
  final String? Name;
  final String? Front;
  final String? Back;
  ModelTemplateAddTemplate({this.Name, this.Front, this.Back});
  factory ModelTemplateAddTemplate.fromJson(Map<String, dynamic> json) {
    return ModelTemplateAddTemplate(
      Name: json['Name'],
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Name != null) data['Name'] = Name;
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class AddNotesNotesItemFields {
  final String? Front;
  final String? Back;
  AddNotesNotesItemFields({this.Front, this.Back});
  factory AddNotesNotesItemFields.fromJson(Map<String, dynamic> json) {
    return AddNotesNotesItemFields(Front: json['Front'], Back: json['Back']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class AddNotesNotesItem {
  final String? deckName;
  final String? modelName;
  final AddNotesNotesItemFields? fields;
  AddNotesNotesItem({this.deckName, this.modelName, this.fields});
  factory AddNotesNotesItem.fromJson(Map<String, dynamic> json) {
    return AddNotesNotesItem(
      deckName: json['deckName'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? AddNotesNotesItemFields.fromJson(json['fields'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    return data;
  }
}

class CanAddNotesNotesItemFields {
  final String? Front;
  final String? Back;
  CanAddNotesNotesItemFields({this.Front, this.Back});
  factory CanAddNotesNotesItemFields.fromJson(Map<String, dynamic> json) {
    return CanAddNotesNotesItemFields(Front: json['Front'], Back: json['Back']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class CanAddNotesNotesItem {
  final String? deckName;
  final String? modelName;
  final CanAddNotesNotesItemFields? fields;
  final List<String>? tags;
  CanAddNotesNotesItem({this.deckName, this.modelName, this.fields, this.tags});
  factory CanAddNotesNotesItem.fromJson(Map<String, dynamic> json) {
    return CanAddNotesNotesItem(
      deckName: json['deckName'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? CanAddNotesNotesItemFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    return data;
  }
}

class CanAddNotesWithErrorDetailNotesItemFields {
  final String? Front;
  final String? Back;
  CanAddNotesWithErrorDetailNotesItemFields({this.Front, this.Back});
  factory CanAddNotesWithErrorDetailNotesItemFields.fromJson(
    Map<String, dynamic> json,
  ) {
    return CanAddNotesWithErrorDetailNotesItemFields(
      Front: json['Front'],
      Back: json['Back'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class CanAddNotesWithErrorDetailNotesItem {
  final String? deckName;
  final String? modelName;
  final CanAddNotesWithErrorDetailNotesItemFields? fields;
  final List<String>? tags;
  CanAddNotesWithErrorDetailNotesItem({
    this.deckName,
    this.modelName,
    this.fields,
    this.tags,
  });
  factory CanAddNotesWithErrorDetailNotesItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return CanAddNotesWithErrorDetailNotesItem(
      deckName: json['deckName'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? CanAddNotesWithErrorDetailNotesItemFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (deckName != null) data['deckName'] = deckName;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    return data;
  }
}

class CanAddNotesWithErrorDetailResponseItem {
  final bool? canAdd;
  final String? error;
  CanAddNotesWithErrorDetailResponseItem({this.canAdd, this.error});
  factory CanAddNotesWithErrorDetailResponseItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return CanAddNotesWithErrorDetailResponseItem(
      canAdd: json['canAdd'],
      error: json['error'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (canAdd != null) data['canAdd'] = canAdd;
    if (error != null) data['error'] = error;
    return data;
  }
}

class UpdateNoteFieldsNoteFields {
  final String? Front;
  final String? Back;
  UpdateNoteFieldsNoteFields({this.Front, this.Back});
  factory UpdateNoteFieldsNoteFields.fromJson(Map<String, dynamic> json) {
    return UpdateNoteFieldsNoteFields(Front: json['Front'], Back: json['Back']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class UpdateNoteFieldsNoteAudioItem {
  final String? url;
  final String? filename;
  final String? skipHash;
  final List<String>? fields;
  UpdateNoteFieldsNoteAudioItem({
    this.url,
    this.filename,
    this.skipHash,
    this.fields,
  });
  factory UpdateNoteFieldsNoteAudioItem.fromJson(Map<String, dynamic> json) {
    return UpdateNoteFieldsNoteAudioItem(
      url: json['url'],
      filename: json['filename'],
      skipHash: json['skipHash'],
      fields: json['fields'] != null ? List<String>.from(json['fields']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (url != null) data['url'] = url;
    if (filename != null) data['filename'] = filename;
    if (skipHash != null) data['skipHash'] = skipHash;
    if (fields != null) data['fields'] = fields;
    return data;
  }
}

class UpdateNoteFieldsNote {
  final int? id;
  final UpdateNoteFieldsNoteFields? fields;
  final List<UpdateNoteFieldsNoteAudioItem>? audio;
  UpdateNoteFieldsNote({this.id, this.fields, this.audio});
  factory UpdateNoteFieldsNote.fromJson(Map<String, dynamic> json) {
    return UpdateNoteFieldsNote(
      id: json['id'],
      fields: json['fields'] != null
          ? UpdateNoteFieldsNoteFields.fromJson(json['fields'])
          : null,
      audio: json['audio'] != null
          ? (json['audio'] as List)
                .map((i) => UpdateNoteFieldsNoteAudioItem.fromJson(i))
                .toList()
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) data['id'] = id;
    if (fields != null) data['fields'] = fields!.toJson();
    if (audio != null) data['audio'] = audio!.map((i) => i.toJson()).toList();
    return data;
  }
}

class UpdateNoteNoteFields {
  final String? Front;
  final String? Back;
  UpdateNoteNoteFields({this.Front, this.Back});
  factory UpdateNoteNoteFields.fromJson(Map<String, dynamic> json) {
    return UpdateNoteNoteFields(Front: json['Front'], Back: json['Back']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front;
    if (Back != null) data['Back'] = Back;
    return data;
  }
}

class UpdateNoteNote {
  final int? id;
  final UpdateNoteNoteFields? fields;
  final List<String>? tags;
  UpdateNoteNote({this.id, this.fields, this.tags});
  factory UpdateNoteNote.fromJson(Map<String, dynamic> json) {
    return UpdateNoteNote(
      id: json['id'],
      fields: json['fields'] != null
          ? UpdateNoteNoteFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) data['id'] = id;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    return data;
  }
}

class UpdateNoteModelNoteFields {
  final String? NewField1;
  final String? NewField2;
  final String? NewField3;
  UpdateNoteModelNoteFields({this.NewField1, this.NewField2, this.NewField3});
  factory UpdateNoteModelNoteFields.fromJson(Map<String, dynamic> json) {
    return UpdateNoteModelNoteFields(
      NewField1: json['NewField1'],
      NewField2: json['NewField2'],
      NewField3: json['NewField3'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (NewField1 != null) data['NewField1'] = NewField1;
    if (NewField2 != null) data['NewField2'] = NewField2;
    if (NewField3 != null) data['NewField3'] = NewField3;
    return data;
  }
}

class UpdateNoteModelNote {
  final int? id;
  final String? modelName;
  final UpdateNoteModelNoteFields? fields;
  final List<String>? tags;
  UpdateNoteModelNote({this.id, this.modelName, this.fields, this.tags});
  factory UpdateNoteModelNote.fromJson(Map<String, dynamic> json) {
    return UpdateNoteModelNote(
      id: json['id'],
      modelName: json['modelName'],
      fields: json['fields'] != null
          ? UpdateNoteModelNoteFields.fromJson(json['fields'])
          : null,
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (id != null) data['id'] = id;
    if (modelName != null) data['modelName'] = modelName;
    if (fields != null) data['fields'] = fields!.toJson();
    if (tags != null) data['tags'] = tags;
    return data;
  }
}

class NotesInfoResponseItemFieldsFront {
  final String? value;
  final int? order;
  NotesInfoResponseItemFieldsFront({this.value, this.order});
  factory NotesInfoResponseItemFieldsFront.fromJson(Map<String, dynamic> json) {
    return NotesInfoResponseItemFieldsFront(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class NotesInfoResponseItemFieldsBack {
  final String? value;
  final int? order;
  NotesInfoResponseItemFieldsBack({this.value, this.order});
  factory NotesInfoResponseItemFieldsBack.fromJson(Map<String, dynamic> json) {
    return NotesInfoResponseItemFieldsBack(
      value: json['value'],
      order: json['order'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (value != null) data['value'] = value;
    if (order != null) data['order'] = order;
    return data;
  }
}

class NotesInfoResponseItemFields {
  final NotesInfoResponseItemFieldsFront? Front;
  final NotesInfoResponseItemFieldsBack? Back;
  NotesInfoResponseItemFields({this.Front, this.Back});
  factory NotesInfoResponseItemFields.fromJson(Map<String, dynamic> json) {
    return NotesInfoResponseItemFields(
      Front: json['Front'] != null
          ? NotesInfoResponseItemFieldsFront.fromJson(json['Front'])
          : null,
      Back: json['Back'] != null
          ? NotesInfoResponseItemFieldsBack.fromJson(json['Back'])
          : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (Front != null) data['Front'] = Front!.toJson();
    if (Back != null) data['Back'] = Back!.toJson();
    return data;
  }
}

class NotesInfoResponseItem {
  final int? noteId;
  final String? profile;
  final String? modelName;
  final List<String>? tags;
  final NotesInfoResponseItemFields? fields;
  final int? mod;
  final List<int>? cards;
  NotesInfoResponseItem({
    this.noteId,
    this.profile,
    this.modelName,
    this.tags,
    this.fields,
    this.mod,
    this.cards,
  });
  factory NotesInfoResponseItem.fromJson(Map<String, dynamic> json) {
    return NotesInfoResponseItem(
      noteId: json['noteId'],
      profile: json['profile'],
      modelName: json['modelName'],
      tags: json['tags'] != null ? List<String>.from(json['tags']) : null,
      fields: json['fields'] != null
          ? NotesInfoResponseItemFields.fromJson(json['fields'])
          : null,
      mod: json['mod'],
      cards: json['cards'] != null ? List<int>.from(json['cards']) : null,
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (noteId != null) data['noteId'] = noteId;
    if (profile != null) data['profile'] = profile;
    if (modelName != null) data['modelName'] = modelName;
    if (tags != null) data['tags'] = tags;
    if (fields != null) data['fields'] = fields!.toJson();
    if (mod != null) data['mod'] = mod;
    if (cards != null) data['cards'] = cards;
    return data;
  }
}

class NotesModTimeResponseItem {
  final int? noteId;
  final int? mod;
  NotesModTimeResponseItem({this.noteId, this.mod});
  factory NotesModTimeResponseItem.fromJson(Map<String, dynamic> json) {
    return NotesModTimeResponseItem(noteId: json['noteId'], mod: json['mod']);
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (noteId != null) data['noteId'] = noteId;
    if (mod != null) data['mod'] = mod;
    return data;
  }
}

class AnkiConnect {
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
    request.add(
      utf8.encode(
        json.encode({
          'action': action,
          'version': apiVersion,
          'params': _toJson(params ?? {}),
        }),
      ),
    );
    final response = await request.close();
    final responseBody = await response.transform(utf8.decoder).join();
    final data = json.decode(responseBody);

    if (data['error'] != null) {
      throw Exception(data['error']);
    }
    return data['result'];
  }

  Future<List<int>> getEaseFactors(List<int> cards) async {
    var res = await invoke('getEaseFactors', {'cards': cards});
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<List<bool>> setEaseFactors(
    List<int> cards,
    List<int> easeFactors,
  ) async {
    var res = await invoke('setEaseFactors', {
      'cards': cards,
      'easeFactors': easeFactors,
    });
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<List<bool>> setSpecificValueOfCard(
    int card,
    List<String> keys,
    List<String> newValues,
  ) async {
    var res = await invoke('setSpecificValueOfCard', {
      'card': card,
      'keys': keys,
      'newValues': newValues,
    });
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<bool> suspend(List<int> cards) async {
    var res = await invoke('suspend', {'cards': cards});
    return res;
  }

  Future<bool> unsuspend(List<int> cards) async {
    var res = await invoke('unsuspend', {'cards': cards});
    return res;
  }

  Future<bool> suspended(int card) async {
    var res = await invoke('suspended', {'card': card});
    return res;
  }

  Future<List<bool>> areSuspended(List<int> cards) async {
    var res = await invoke('areSuspended', {'cards': cards});
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<List<bool>> areDue(List<int> cards) async {
    var res = await invoke('areDue', {'cards': cards});
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<List<int>> getIntervals(List<int> cards) async {
    var res = await invoke('getIntervals', {'cards': cards});
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<List<int>> findCards(String query) async {
    var res = await invoke('findCards', {'query': query});
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<List<int>> cardsToNotes(List<int> cards) async {
    var res = await invoke('cardsToNotes', {'cards': cards});
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<List<CardsModTimeResponseItem>> cardsModTime(List<int> cards) async {
    var res = await invoke('cardsModTime', {'cards': cards});
    if (res == null) return [];
    return (res as List)
        .map((i) => CardsModTimeResponseItem.fromJson(i))
        .toList();
  }

  Future<List<CardsInfoResponseItem>> cardsInfo(List<int> cards) async {
    var res = await invoke('cardsInfo', {'cards': cards});
    if (res == null) return [];
    return (res as List).map((i) => CardsInfoResponseItem.fromJson(i)).toList();
  }

  Future<dynamic> forgetCards(List<int> cards) async {
    var res = await invoke('forgetCards', {'cards': cards});
    return res;
  }

  Future<dynamic> relearnCards(List<int> cards) async {
    var res = await invoke('relearnCards', {'cards': cards});
    return res;
  }

  Future<List<bool>> answerCards(List<AnswerCardsAnswersItem> answers) async {
    var res = await invoke('answerCards', {'answers': answers});
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<bool> setDueDate(List<int> cards, String days) async {
    var res = await invoke('setDueDate', {'cards': cards, 'days': days});
    return res;
  }

  Future<List<String>> deckNames() async {
    var res = await invoke('deckNames');
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<DeckNamesAndIdsResponse> deckNamesAndIds() async {
    var res = await invoke('deckNamesAndIds');
    return DeckNamesAndIdsResponse.fromJson(res);
  }

  Future<GetDecksResponse> getDecks(List<int> cards) async {
    var res = await invoke('getDecks', {'cards': cards});
    return GetDecksResponse.fromJson(res);
  }

  Future<int> createDeck(String deck) async {
    var res = await invoke('createDeck', {'deck': deck});
    return res;
  }

  Future<dynamic> changeDeck(List<int> cards, String deck) async {
    var res = await invoke('changeDeck', {'cards': cards, 'deck': deck});
    return res;
  }

  Future<dynamic> deleteDecks(List<String> decks, bool cardsToo) async {
    var res = await invoke('deleteDecks', {
      'decks': decks,
      'cardsToo': cardsToo,
    });
    return res;
  }

  Future<GetDeckConfigResponse> getDeckConfig(String deck) async {
    var res = await invoke('getDeckConfig', {'deck': deck});
    return GetDeckConfigResponse.fromJson(res);
  }

  Future<bool> saveDeckConfig(SaveDeckConfigConfig config) async {
    var res = await invoke('saveDeckConfig', {'config': config});
    return res;
  }

  Future<bool> setDeckConfigId(List<String> decks, int configId) async {
    var res = await invoke('setDeckConfigId', {
      'decks': decks,
      'configId': configId,
    });
    return res;
  }

  Future<int> cloneDeckConfigId(String name, int cloneFrom) async {
    var res = await invoke('cloneDeckConfigId', {
      'name': name,
      'cloneFrom': cloneFrom,
    });
    return res;
  }

  Future<bool> removeDeckConfigId(int configId) async {
    var res = await invoke('removeDeckConfigId', {'configId': configId});
    return res;
  }

  Future<Map<String, dynamic>> getDeckStats(List<String> decks) async {
    var res = await invoke('getDeckStats', {'decks': decks});
    return res;
  }

  Future<List<int>> guiBrowse(
    String query,
    GuiBrowseReordercards reorderCards,
  ) async {
    var res = await invoke('guiBrowse', {
      'query': query,
      'reorderCards': reorderCards,
    });
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<bool> guiSelectCard(int card) async {
    var res = await invoke('guiSelectCard', {'card': card});
    return res;
  }

  Future<List<int>> guiSelectedNotes() async {
    var res = await invoke('guiSelectedNotes');
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<int> guiAddCards(GuiAddCardsNote note) async {
    var res = await invoke('guiAddCards', {'note': note});
    return res;
  }

  Future<dynamic> guiEditNote(int note) async {
    var res = await invoke('guiEditNote', {'note': note});
    return res;
  }

  Future<bool> guiAddNoteSetData(GuiAddNoteSetDataNote note) async {
    var res = await invoke('guiAddNoteSetData', {'note': note});
    return res;
  }

  Future<GuiCurrentCardResponse> guiCurrentCard() async {
    var res = await invoke('guiCurrentCard');
    return GuiCurrentCardResponse.fromJson(res);
  }

  Future<bool> guiStartCardTimer() async {
    var res = await invoke('guiStartCardTimer');
    return res;
  }

  Future<bool> guiShowQuestion() async {
    var res = await invoke('guiShowQuestion');
    return res;
  }

  Future<bool> guiShowAnswer() async {
    var res = await invoke('guiShowAnswer');
    return res;
  }

  Future<bool> guiAnswerCard(int ease) async {
    var res = await invoke('guiAnswerCard', {'ease': ease});
    return res;
  }

  Future<bool> guiUndo() async {
    var res = await invoke('guiUndo');
    return res;
  }

  Future<bool> guiDeckOverview(String name) async {
    var res = await invoke('guiDeckOverview', {'name': name});
    return res;
  }

  Future<dynamic> guiDeckBrowser() async {
    var res = await invoke('guiDeckBrowser');
    return res;
  }

  Future<bool> guiDeckReview(String name) async {
    var res = await invoke('guiDeckReview', {'name': name});
    return res;
  }

  Future<dynamic> guiImportFile(String path) async {
    var res = await invoke('guiImportFile', {'path': path});
    return res;
  }

  Future<dynamic> guiExitAnki() async {
    var res = await invoke('guiExitAnki');
    return res;
  }

  Future<bool> guiCheckDatabase() async {
    var res = await invoke('guiCheckDatabase');
    return res;
  }

  Future<bool> guiPlayAudio() async {
    var res = await invoke('guiPlayAudio');
    return res;
  }

  Future<String> storeMediaFile(String filename, String data) async {
    var res = await invoke('storeMediaFile', {
      'filename': filename,
      'data': data,
    });
    return res;
  }

  Future<String> retrieveMediaFile(String filename) async {
    var res = await invoke('retrieveMediaFile', {'filename': filename});
    return res;
  }

  Future<List<String>> getMediaFilesNames(String pattern) async {
    var res = await invoke('getMediaFilesNames', {'pattern': pattern});
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<String> getMediaDirPath() async {
    var res = await invoke('getMediaDirPath');
    return res;
  }

  Future<dynamic> deleteMediaFile(String filename) async {
    var res = await invoke('deleteMediaFile', {'filename': filename});
    return res;
  }

  Future<RequestPermissionResponse> requestPermission() async {
    var res = await invoke('requestPermission');
    return RequestPermissionResponse.fromJson(res);
  }

  Future<int> version() async {
    var res = await invoke('version');
    return res;
  }

  Future<ApiReflectResponse> apiReflect(
    List<String> scopes,
    List<String> actions,
  ) async {
    var res = await invoke('apiReflect', {
      'scopes': scopes,
      'actions': actions,
    });
    return ApiReflectResponse.fromJson(res);
  }

  Future<dynamic> sync() async {
    var res = await invoke('sync');
    return res;
  }

  Future<List<String>> getProfiles() async {
    var res = await invoke('getProfiles');
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<String> getActiveProfile() async {
    var res = await invoke('getActiveProfile');
    return res;
  }

  Future<bool> loadProfile(String name) async {
    var res = await invoke('loadProfile', {'name': name});
    return res;
  }

  Future<List<List<String>>> multi(List<MultiActionsItem> actions) async {
    var res = await invoke('multi', {'actions': actions});
    if (res == null) return [];
    return List<List<String>>.from(res);
  }

  Future<bool> exportPackage(
    String deck,
    String path,
    bool includeSched,
  ) async {
    var res = await invoke('exportPackage', {
      'deck': deck,
      'path': path,
      'includeSched': includeSched,
    });
    return res;
  }

  Future<bool> importPackage(String path) async {
    var res = await invoke('importPackage', {'path': path});
    return res;
  }

  Future<dynamic> reloadCollection() async {
    var res = await invoke('reloadCollection');
    return res;
  }

  Future<List<String>> modelNames() async {
    var res = await invoke('modelNames');
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<ModelNamesAndIdsResponse> modelNamesAndIds() async {
    var res = await invoke('modelNamesAndIds');
    return ModelNamesAndIdsResponse.fromJson(res);
  }

  Future<List<FindModelsByIdResponseItem>> findModelsById(
    List<int> modelIds,
  ) async {
    var res = await invoke('findModelsById', {'modelIds': modelIds});
    if (res == null) return [];
    return (res as List)
        .map((i) => FindModelsByIdResponseItem.fromJson(i))
        .toList();
  }

  Future<List<FindModelsByNameResponseItem>> findModelsByName(
    List<String> modelNames,
  ) async {
    var res = await invoke('findModelsByName', {'modelNames': modelNames});
    if (res == null) return [];
    return (res as List)
        .map((i) => FindModelsByNameResponseItem.fromJson(i))
        .toList();
  }

  Future<List<String>> modelFieldNames(String modelName) async {
    var res = await invoke('modelFieldNames', {'modelName': modelName});
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<List<String>> modelFieldDescriptions(String modelName) async {
    var res = await invoke('modelFieldDescriptions', {'modelName': modelName});
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<ModelFieldFontsResponse> modelFieldFonts(String modelName) async {
    var res = await invoke('modelFieldFonts', {'modelName': modelName});
    return ModelFieldFontsResponse.fromJson(res);
  }

  Future<ModelFieldsOnTemplatesResponse> modelFieldsOnTemplates(
    String modelName,
  ) async {
    var res = await invoke('modelFieldsOnTemplates', {'modelName': modelName});
    return ModelFieldsOnTemplatesResponse.fromJson(res);
  }

  Future<CreateModelResponse> createModel(
    String modelName,
    List<String> inOrderFields,
    String css,
    bool isCloze,
    List<CreateModelCardtemplatesItem> cardTemplates,
  ) async {
    var res = await invoke('createModel', {
      'modelName': modelName,
      'inOrderFields': inOrderFields,
      'css': css,
      'isCloze': isCloze,
      'cardTemplates': cardTemplates,
    });
    return CreateModelResponse.fromJson(res);
  }

  Future<ModelTemplatesResponse> modelTemplates(String modelName) async {
    var res = await invoke('modelTemplates', {'modelName': modelName});
    return ModelTemplatesResponse.fromJson(res);
  }

  Future<ModelStylingResponse> modelStyling(String modelName) async {
    var res = await invoke('modelStyling', {'modelName': modelName});
    return ModelStylingResponse.fromJson(res);
  }

  Future<dynamic> updateModelTemplates(UpdateModelTemplatesModel model) async {
    var res = await invoke('updateModelTemplates', {'model': model});
    return res;
  }

  Future<dynamic> updateModelStyling(UpdateModelStylingModel model) async {
    var res = await invoke('updateModelStyling', {'model': model});
    return res;
  }

  Future<int> findAndReplaceInModels(FindAndReplaceInModelsModel model) async {
    var res = await invoke('findAndReplaceInModels', {'model': model});
    return res;
  }

  Future<dynamic> modelTemplateRename(
    String modelName,
    String oldTemplateName,
    String newTemplateName,
  ) async {
    var res = await invoke('modelTemplateRename', {
      'modelName': modelName,
      'oldTemplateName': oldTemplateName,
      'newTemplateName': newTemplateName,
    });
    return res;
  }

  Future<dynamic> modelTemplateReposition(
    String modelName,
    String templateName,
    int index,
  ) async {
    var res = await invoke('modelTemplateReposition', {
      'modelName': modelName,
      'templateName': templateName,
      'index': index,
    });
    return res;
  }

  Future<dynamic> modelTemplateAdd(
    String modelName,
    ModelTemplateAddTemplate template,
  ) async {
    var res = await invoke('modelTemplateAdd', {
      'modelName': modelName,
      'template': template,
    });
    return res;
  }

  Future<dynamic> modelTemplateRemove(
    String modelName,
    String templateName,
  ) async {
    var res = await invoke('modelTemplateRemove', {
      'modelName': modelName,
      'templateName': templateName,
    });
    return res;
  }

  Future<dynamic> modelFieldRename(
    String modelName,
    String oldFieldName,
    String newFieldName,
  ) async {
    var res = await invoke('modelFieldRename', {
      'modelName': modelName,
      'oldFieldName': oldFieldName,
      'newFieldName': newFieldName,
    });
    return res;
  }

  Future<dynamic> modelFieldReposition(
    String modelName,
    String fieldName,
    int index,
  ) async {
    var res = await invoke('modelFieldReposition', {
      'modelName': modelName,
      'fieldName': fieldName,
      'index': index,
    });
    return res;
  }

  Future<dynamic> modelFieldAdd(
    String modelName,
    String fieldName,
    int index,
  ) async {
    var res = await invoke('modelFieldAdd', {
      'modelName': modelName,
      'fieldName': fieldName,
      'index': index,
    });
    return res;
  }

  Future<dynamic> modelFieldRemove(String modelName, String fieldName) async {
    var res = await invoke('modelFieldRemove', {
      'modelName': modelName,
      'fieldName': fieldName,
    });
    return res;
  }

  Future<dynamic> modelFieldSetFont(
    String modelName,
    String fieldName,
    String font,
  ) async {
    var res = await invoke('modelFieldSetFont', {
      'modelName': modelName,
      'fieldName': fieldName,
      'font': font,
    });
    return res;
  }

  Future<dynamic> modelFieldSetFontSize(
    String modelName,
    String fieldName,
    int fontSize,
  ) async {
    var res = await invoke('modelFieldSetFontSize', {
      'modelName': modelName,
      'fieldName': fieldName,
      'fontSize': fontSize,
    });
    return res;
  }

  Future<bool> modelFieldSetDescription(
    String modelName,
    String fieldName,
    String description,
  ) async {
    var res = await invoke('modelFieldSetDescription', {
      'modelName': modelName,
      'fieldName': fieldName,
      'description': description,
    });
    return res;
  }

  Future<int> addNote() async {
    var res = await invoke('addNote');
    return res;
  }

  Future<dynamic> addNotes(List<AddNotesNotesItem> notes) async {
    var res = await invoke('addNotes', {'notes': notes});
    return res;
  }

  Future<List<bool>> canAddNotes(List<CanAddNotesNotesItem> notes) async {
    var res = await invoke('canAddNotes', {'notes': notes});
    if (res == null) return [];
    return List<bool>.from(res);
  }

  Future<List<CanAddNotesWithErrorDetailResponseItem>>
  canAddNotesWithErrorDetail(
    List<CanAddNotesWithErrorDetailNotesItem> notes,
  ) async {
    var res = await invoke('canAddNotesWithErrorDetail', {'notes': notes});
    if (res == null) return [];
    return (res as List)
        .map((i) => CanAddNotesWithErrorDetailResponseItem.fromJson(i))
        .toList();
  }

  Future<dynamic> updateNoteFields(UpdateNoteFieldsNote note) async {
    var res = await invoke('updateNoteFields', {'note': note});
    return res;
  }

  Future<dynamic> updateNote(UpdateNoteNote note) async {
    var res = await invoke('updateNote', {'note': note});
    return res;
  }

  Future<dynamic> updateNoteModel(UpdateNoteModelNote note) async {
    var res = await invoke('updateNoteModel', {'note': note});
    return res;
  }

  Future<dynamic> updateNoteTags(int note, List<String> tags) async {
    var res = await invoke('updateNoteTags', {'note': note, 'tags': tags});
    return res;
  }

  Future<List<String>> getNoteTags(int note) async {
    var res = await invoke('getNoteTags', {'note': note});
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<dynamic> addTags(List<int> notes, String tags) async {
    var res = await invoke('addTags', {'notes': notes, 'tags': tags});
    return res;
  }

  Future<dynamic> removeTags(List<int> notes, String tags) async {
    var res = await invoke('removeTags', {'notes': notes, 'tags': tags});
    return res;
  }

  Future<List<String>> getTags() async {
    var res = await invoke('getTags');
    if (res == null) return [];
    return List<String>.from(res);
  }

  Future<dynamic> clearUnusedTags() async {
    var res = await invoke('clearUnusedTags');
    return res;
  }

  Future<dynamic> replaceTags(
    List<int> notes,
    String tag_to_replace,
    String replace_with_tag,
  ) async {
    var res = await invoke('replaceTags', {
      'notes': notes,
      'tag_to_replace': tag_to_replace,
      'replace_with_tag': replace_with_tag,
    });
    return res;
  }

  Future<dynamic> replaceTagsInAllNotes(
    String tag_to_replace,
    String replace_with_tag,
  ) async {
    var res = await invoke('replaceTagsInAllNotes', {
      'tag_to_replace': tag_to_replace,
      'replace_with_tag': replace_with_tag,
    });
    return res;
  }

  Future<List<int>> findNotes(String query) async {
    var res = await invoke('findNotes', {'query': query});
    if (res == null) return [];
    return List<int>.from(res);
  }

  Future<List<NotesInfoResponseItem>> notesInfo(List<int> notes) async {
    var res = await invoke('notesInfo', {'notes': notes});
    if (res == null) return [];
    return (res as List).map((i) => NotesInfoResponseItem.fromJson(i)).toList();
  }

  Future<List<NotesModTimeResponseItem>> notesModTime(List<int> notes) async {
    var res = await invoke('notesModTime', {'notes': notes});
    if (res == null) return [];
    return (res as List)
        .map((i) => NotesModTimeResponseItem.fromJson(i))
        .toList();
  }

  Future<dynamic> deleteNotes(List<int> notes) async {
    var res = await invoke('deleteNotes', {'notes': notes});
    return res;
  }

  Future<dynamic> removeEmptyNotes() async {
    var res = await invoke('removeEmptyNotes');
    return res;
  }

  Future<int> getNumCardsReviewedToday() async {
    var res = await invoke('getNumCardsReviewedToday');
    return res;
  }

  Future<List<List<String>>> getNumCardsReviewedByDay() async {
    var res = await invoke('getNumCardsReviewedByDay');
    if (res == null) return [];
    return List<List<String>>.from(res);
  }

  Future<String> getCollectionStatsHTML(bool wholeCollection) async {
    var res = await invoke('getCollectionStatsHTML', {
      'wholeCollection': wholeCollection,
    });
    return res;
  }

  Future<List<List<int>>> cardReviews(String deck, int startID) async {
    var res = await invoke('cardReviews', {'deck': deck, 'startID': startID});
    if (res == null) return [];
    return List<List<int>>.from(res);
  }

  Future<Map<String, dynamic>> getReviewsOfCards(List<String> cards) async {
    var res = await invoke('getReviewsOfCards', {'cards': cards});
    return res;
  }

  Future<int> getLatestReviewID(String deck) async {
    var res = await invoke('getLatestReviewID', {'deck': deck});
    return res;
  }

  Future<dynamic> insertReviews(List<List<int>> reviews) async {
    var res = await invoke('insertReviews', {'reviews': reviews});
    return res;
  }
}
