import 'dart:convert';
import 'dart:io';



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

  Future<dynamic> getEaseFactors() async {
    var res = await invoke('getEaseFactors');
    return res;
  }

  Future<dynamic> setEaseFactors() async {
    var res = await invoke('setEaseFactors');
    return res;
  }

  Future<dynamic> setSpecificValueOfCard() async {
    var res = await invoke('setSpecificValueOfCard');
    return res;
  }

  Future<dynamic> suspend() async {
    var res = await invoke('suspend');
    return res;
  }

  Future<dynamic> unsuspend() async {
    var res = await invoke('unsuspend');
    return res;
  }

  Future<dynamic> suspended() async {
    var res = await invoke('suspended');
    return res;
  }

  Future<dynamic> areSuspended() async {
    var res = await invoke('areSuspended');
    return res;
  }

  Future<dynamic> areDue() async {
    var res = await invoke('areDue');
    return res;
  }

  Future<dynamic> getIntervals() async {
    var res = await invoke('getIntervals');
    return res;
  }

  Future<dynamic> findCards() async {
    var res = await invoke('findCards');
    return res;
  }

  Future<dynamic> cardsToNotes() async {
    var res = await invoke('cardsToNotes');
    return res;
  }

  Future<dynamic> cardsModTime() async {
    var res = await invoke('cardsModTime');
    return res;
  }

  Future<dynamic> cardsInfo() async {
    var res = await invoke('cardsInfo');
    return res;
  }

  Future<dynamic> forgetCards() async {
    var res = await invoke('forgetCards');
    return res;
  }

  Future<dynamic> relearnCards() async {
    var res = await invoke('relearnCards');
    return res;
  }

  Future<dynamic> answerCards() async {
    var res = await invoke('answerCards');
    return res;
  }

  Future<dynamic> setDueDate() async {
    var res = await invoke('setDueDate');
    return res;
  }

  Future<dynamic> deckNames() async {
    var res = await invoke('deckNames');
    return res;
  }

  Future<dynamic> deckNamesAndIds() async {
    var res = await invoke('deckNamesAndIds');
    return res;
  }

  Future<dynamic> getDecks() async {
    var res = await invoke('getDecks');
    return res;
  }

  Future<dynamic> createDeck() async {
    var res = await invoke('createDeck');
    return res;
  }

  Future<dynamic> changeDeck() async {
    var res = await invoke('changeDeck');
    return res;
  }

  Future<dynamic> deleteDecks() async {
    var res = await invoke('deleteDecks');
    return res;
  }

  Future<dynamic> getDeckConfig() async {
    var res = await invoke('getDeckConfig');
    return res;
  }

  Future<dynamic> saveDeckConfig() async {
    var res = await invoke('saveDeckConfig');
    return res;
  }

  Future<dynamic> setDeckConfigId() async {
    var res = await invoke('setDeckConfigId');
    return res;
  }

  Future<dynamic> cloneDeckConfigId() async {
    var res = await invoke('cloneDeckConfigId');
    return res;
  }

  Future<dynamic> removeDeckConfigId() async {
    var res = await invoke('removeDeckConfigId');
    return res;
  }

  Future<dynamic> getDeckStats() async {
    var res = await invoke('getDeckStats');
    return res;
  }

  Future<dynamic> guiBrowse() async {
    var res = await invoke('guiBrowse');
    return res;
  }

  Future<dynamic> guiSelectCard() async {
    var res = await invoke('guiSelectCard');
    return res;
  }

  Future<dynamic> guiSelectedNotes() async {
    var res = await invoke('guiSelectedNotes');
    return res;
  }

  Future<dynamic> guiAddCards() async {
    var res = await invoke('guiAddCards');
    return res;
  }

  Future<dynamic> guiEditNote() async {
    var res = await invoke('guiEditNote');
    return res;
  }

  Future<dynamic> guiAddNoteSetData() async {
    var res = await invoke('guiAddNoteSetData');
    return res;
  }

  Future<dynamic> guiCurrentCard() async {
    var res = await invoke('guiCurrentCard');
    return res;
  }

  Future<dynamic> guiStartCardTimer() async {
    var res = await invoke('guiStartCardTimer');
    return res;
  }

  Future<dynamic> guiShowQuestion() async {
    var res = await invoke('guiShowQuestion');
    return res;
  }

  Future<dynamic> guiShowAnswer() async {
    var res = await invoke('guiShowAnswer');
    return res;
  }

  Future<dynamic> guiAnswerCard() async {
    var res = await invoke('guiAnswerCard');
    return res;
  }

  Future<dynamic> guiUndo() async {
    var res = await invoke('guiUndo');
    return res;
  }

  Future<dynamic> guiDeckOverview() async {
    var res = await invoke('guiDeckOverview');
    return res;
  }

  Future<dynamic> guiDeckBrowser() async {
    var res = await invoke('guiDeckBrowser');
    return res;
  }

  Future<dynamic> guiDeckReview() async {
    var res = await invoke('guiDeckReview');
    return res;
  }

  Future<dynamic> guiImportFile() async {
    var res = await invoke('guiImportFile');
    return res;
  }

  Future<dynamic> guiExitAnki() async {
    var res = await invoke('guiExitAnki');
    return res;
  }

  Future<dynamic> guiCheckDatabase() async {
    var res = await invoke('guiCheckDatabase');
    return res;
  }

  Future<dynamic> guiPlayAudio() async {
    var res = await invoke('guiPlayAudio');
    return res;
  }

  Future<dynamic> storeMediaFile() async {
    var res = await invoke('storeMediaFile');
    return res;
  }

  Future<dynamic> retrieveMediaFile() async {
    var res = await invoke('retrieveMediaFile');
    return res;
  }

  Future<dynamic> getMediaFilesNames() async {
    var res = await invoke('getMediaFilesNames');
    return res;
  }

  Future<dynamic> getMediaDirPath() async {
    var res = await invoke('getMediaDirPath');
    return res;
  }

  Future<dynamic> deleteMediaFile() async {
    var res = await invoke('deleteMediaFile');
    return res;
  }

  Future<dynamic> requestPermission() async {
    var res = await invoke('requestPermission');
    return res;
  }

  Future<dynamic> version() async {
    var res = await invoke('version');
    return res;
  }

  Future<dynamic> apiReflect() async {
    var res = await invoke('apiReflect');
    return res;
  }

  Future<dynamic> sync() async {
    var res = await invoke('sync');
    return res;
  }

  Future<dynamic> getProfiles() async {
    var res = await invoke('getProfiles');
    return res;
  }

  Future<dynamic> getActiveProfile() async {
    var res = await invoke('getActiveProfile');
    return res;
  }

  Future<dynamic> loadProfile() async {
    var res = await invoke('loadProfile');
    return res;
  }

  Future<dynamic> multi() async {
    var res = await invoke('multi');
    return res;
  }

  Future<dynamic> exportPackage() async {
    var res = await invoke('exportPackage');
    return res;
  }

  Future<dynamic> importPackage() async {
    var res = await invoke('importPackage');
    return res;
  }

  Future<dynamic> reloadCollection() async {
    var res = await invoke('reloadCollection');
    return res;
  }

  Future<dynamic> modelNames() async {
    var res = await invoke('modelNames');
    return res;
  }

  Future<dynamic> modelNamesAndIds() async {
    var res = await invoke('modelNamesAndIds');
    return res;
  }

  Future<dynamic> findModelsById() async {
    var res = await invoke('findModelsById');
    return res;
  }

  Future<dynamic> findModelsByName() async {
    var res = await invoke('findModelsByName');
    return res;
  }

  Future<dynamic> modelFieldNames() async {
    var res = await invoke('modelFieldNames');
    return res;
  }

  Future<dynamic> modelFieldDescriptions() async {
    var res = await invoke('modelFieldDescriptions');
    return res;
  }

  Future<dynamic> modelFieldFonts() async {
    var res = await invoke('modelFieldFonts');
    return res;
  }

  Future<dynamic> modelFieldsOnTemplates() async {
    var res = await invoke('modelFieldsOnTemplates');
    return res;
  }

  Future<dynamic> createModel() async {
    var res = await invoke('createModel');
    return res;
  }

  Future<dynamic> modelTemplates() async {
    var res = await invoke('modelTemplates');
    return res;
  }

  Future<dynamic> modelStyling() async {
    var res = await invoke('modelStyling');
    return res;
  }

  Future<dynamic> updateModelTemplates() async {
    var res = await invoke('updateModelTemplates');
    return res;
  }

  Future<dynamic> updateModelStyling() async {
    var res = await invoke('updateModelStyling');
    return res;
  }

  Future<dynamic> findAndReplaceInModels() async {
    var res = await invoke('findAndReplaceInModels');
    return res;
  }

  Future<dynamic> modelTemplateRename() async {
    var res = await invoke('modelTemplateRename');
    return res;
  }

  Future<dynamic> modelTemplateReposition() async {
    var res = await invoke('modelTemplateReposition');
    return res;
  }

  Future<dynamic> modelTemplateAdd() async {
    var res = await invoke('modelTemplateAdd');
    return res;
  }

  Future<dynamic> modelTemplateRemove() async {
    var res = await invoke('modelTemplateRemove');
    return res;
  }

  Future<dynamic> modelFieldRename() async {
    var res = await invoke('modelFieldRename');
    return res;
  }

  Future<dynamic> modelFieldReposition() async {
    var res = await invoke('modelFieldReposition');
    return res;
  }

  Future<dynamic> modelFieldAdd() async {
    var res = await invoke('modelFieldAdd');
    return res;
  }

  Future<dynamic> modelFieldRemove() async {
    var res = await invoke('modelFieldRemove');
    return res;
  }

  Future<dynamic> modelFieldSetFont() async {
    var res = await invoke('modelFieldSetFont');
    return res;
  }

  Future<dynamic> modelFieldSetFontSize() async {
    var res = await invoke('modelFieldSetFontSize');
    return res;
  }

  Future<dynamic> modelFieldSetDescription() async {
    var res = await invoke('modelFieldSetDescription');
    return res;
  }

  Future<dynamic> addNote() async {
    var res = await invoke('addNote');
    return res;
  }

  Future<dynamic> addNotes() async {
    var res = await invoke('addNotes');
    return res;
  }

  Future<dynamic> canAddNotes() async {
    var res = await invoke('canAddNotes');
    return res;
  }

  Future<dynamic> canAddNotesWithErrorDetail() async {
    var res = await invoke('canAddNotesWithErrorDetail');
    return res;
  }

  Future<dynamic> updateNoteFields() async {
    var res = await invoke('updateNoteFields');
    return res;
  }

  Future<dynamic> updateNote() async {
    var res = await invoke('updateNote');
    return res;
  }

  Future<dynamic> updateNoteModel() async {
    var res = await invoke('updateNoteModel');
    return res;
  }

  Future<dynamic> updateNoteTags() async {
    var res = await invoke('updateNoteTags');
    return res;
  }

  Future<dynamic> getNoteTags() async {
    var res = await invoke('getNoteTags');
    return res;
  }

  Future<dynamic> addTags() async {
    var res = await invoke('addTags');
    return res;
  }

  Future<dynamic> removeTags() async {
    var res = await invoke('removeTags');
    return res;
  }

  Future<dynamic> getTags() async {
    var res = await invoke('getTags');
    return res;
  }

  Future<dynamic> clearUnusedTags() async {
    var res = await invoke('clearUnusedTags');
    return res;
  }

  Future<dynamic> replaceTags() async {
    var res = await invoke('replaceTags');
    return res;
  }

  Future<dynamic> replaceTagsInAllNotes() async {
    var res = await invoke('replaceTagsInAllNotes');
    return res;
  }

  Future<dynamic> findNotes() async {
    var res = await invoke('findNotes');
    return res;
  }

  Future<dynamic> notesInfo() async {
    var res = await invoke('notesInfo');
    return res;
  }

  Future<dynamic> notesModTime() async {
    var res = await invoke('notesModTime');
    return res;
  }

  Future<dynamic> deleteNotes() async {
    var res = await invoke('deleteNotes');
    return res;
  }

  Future<dynamic> removeEmptyNotes() async {
    var res = await invoke('removeEmptyNotes');
    return res;
  }

  Future<dynamic> getNumCardsReviewedToday() async {
    var res = await invoke('getNumCardsReviewedToday');
    return res;
  }

  Future<dynamic> getNumCardsReviewedByDay() async {
    var res = await invoke('getNumCardsReviewedByDay');
    return res;
  }

  Future<dynamic> getCollectionStatsHTML() async {
    var res = await invoke('getCollectionStatsHTML');
    return res;
  }

  Future<dynamic> cardReviews() async {
    var res = await invoke('cardReviews');
    return res;
  }

  Future<dynamic> getReviewsOfCards() async {
    var res = await invoke('getReviewsOfCards');
    return res;
  }

  Future<dynamic> getLatestReviewID() async {
    var res = await invoke('getLatestReviewID');
    return res;
  }

  Future<dynamic> insertReviews() async {
    var res = await invoke('insertReviews');
    return res;
  }
}
