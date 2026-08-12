from typing import List, Dict, Any, Optional

from dataclasses import dataclass, asdict

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

    def getEaseFactors(self) -> Any:
        res = self.invoke('getEaseFactors')
        return res

    def setEaseFactors(self) -> Any:
        res = self.invoke('setEaseFactors')
        return res

    def setSpecificValueOfCard(self) -> Any:
        res = self.invoke('setSpecificValueOfCard')
        return res

    def suspend(self) -> Any:
        res = self.invoke('suspend')
        return res

    def unsuspend(self) -> Any:
        res = self.invoke('unsuspend')
        return res

    def suspended(self) -> Any:
        res = self.invoke('suspended')
        return res

    def areSuspended(self) -> Any:
        res = self.invoke('areSuspended')
        return res

    def areDue(self) -> Any:
        res = self.invoke('areDue')
        return res

    def getIntervals(self) -> Any:
        res = self.invoke('getIntervals')
        return res

    def findCards(self) -> Any:
        res = self.invoke('findCards')
        return res

    def cardsToNotes(self) -> Any:
        res = self.invoke('cardsToNotes')
        return res

    def cardsModTime(self) -> Any:
        res = self.invoke('cardsModTime')
        return res

    def cardsInfo(self) -> Any:
        res = self.invoke('cardsInfo')
        return res

    def forgetCards(self) -> Any:
        res = self.invoke('forgetCards')
        return res

    def relearnCards(self) -> Any:
        res = self.invoke('relearnCards')
        return res

    def answerCards(self) -> Any:
        res = self.invoke('answerCards')
        return res

    def setDueDate(self) -> Any:
        res = self.invoke('setDueDate')
        return res

    def deckNames(self) -> Any:
        res = self.invoke('deckNames')
        return res

    def deckNamesAndIds(self) -> Any:
        res = self.invoke('deckNamesAndIds')
        return res

    def getDecks(self) -> Any:
        res = self.invoke('getDecks')
        return res

    def createDeck(self) -> Any:
        res = self.invoke('createDeck')
        return res

    def changeDeck(self) -> Any:
        res = self.invoke('changeDeck')
        return res

    def deleteDecks(self) -> Any:
        res = self.invoke('deleteDecks')
        return res

    def getDeckConfig(self) -> Any:
        res = self.invoke('getDeckConfig')
        return res

    def saveDeckConfig(self) -> Any:
        res = self.invoke('saveDeckConfig')
        return res

    def setDeckConfigId(self) -> Any:
        res = self.invoke('setDeckConfigId')
        return res

    def cloneDeckConfigId(self) -> Any:
        res = self.invoke('cloneDeckConfigId')
        return res

    def removeDeckConfigId(self) -> Any:
        res = self.invoke('removeDeckConfigId')
        return res

    def getDeckStats(self) -> Any:
        res = self.invoke('getDeckStats')
        return res

    def guiBrowse(self) -> Any:
        res = self.invoke('guiBrowse')
        return res

    def guiSelectCard(self) -> Any:
        res = self.invoke('guiSelectCard')
        return res

    def guiSelectedNotes(self) -> Any:
        res = self.invoke('guiSelectedNotes')
        return res

    def guiAddCards(self) -> Any:
        res = self.invoke('guiAddCards')
        return res

    def guiEditNote(self) -> Any:
        res = self.invoke('guiEditNote')
        return res

    def guiAddNoteSetData(self) -> Any:
        res = self.invoke('guiAddNoteSetData')
        return res

    def guiCurrentCard(self) -> Any:
        res = self.invoke('guiCurrentCard')
        return res

    def guiStartCardTimer(self) -> Any:
        res = self.invoke('guiStartCardTimer')
        return res

    def guiShowQuestion(self) -> Any:
        res = self.invoke('guiShowQuestion')
        return res

    def guiShowAnswer(self) -> Any:
        res = self.invoke('guiShowAnswer')
        return res

    def guiAnswerCard(self) -> Any:
        res = self.invoke('guiAnswerCard')
        return res

    def guiUndo(self) -> Any:
        res = self.invoke('guiUndo')
        return res

    def guiDeckOverview(self) -> Any:
        res = self.invoke('guiDeckOverview')
        return res

    def guiDeckBrowser(self) -> Any:
        res = self.invoke('guiDeckBrowser')
        return res

    def guiDeckReview(self) -> Any:
        res = self.invoke('guiDeckReview')
        return res

    def guiImportFile(self) -> Any:
        res = self.invoke('guiImportFile')
        return res

    def guiExitAnki(self) -> Any:
        res = self.invoke('guiExitAnki')
        return res

    def guiCheckDatabase(self) -> Any:
        res = self.invoke('guiCheckDatabase')
        return res

    def guiPlayAudio(self) -> Any:
        res = self.invoke('guiPlayAudio')
        return res

    def storeMediaFile(self) -> Any:
        res = self.invoke('storeMediaFile')
        return res

    def retrieveMediaFile(self) -> Any:
        res = self.invoke('retrieveMediaFile')
        return res

    def getMediaFilesNames(self) -> Any:
        res = self.invoke('getMediaFilesNames')
        return res

    def getMediaDirPath(self) -> Any:
        res = self.invoke('getMediaDirPath')
        return res

    def deleteMediaFile(self) -> Any:
        res = self.invoke('deleteMediaFile')
        return res

    def requestPermission(self) -> Any:
        res = self.invoke('requestPermission')
        return res

    def version(self) -> Any:
        res = self.invoke('version')
        return res

    def apiReflect(self) -> Any:
        res = self.invoke('apiReflect')
        return res

    def sync(self) -> Any:
        res = self.invoke('sync')
        return res

    def getProfiles(self) -> Any:
        res = self.invoke('getProfiles')
        return res

    def getActiveProfile(self) -> Any:
        res = self.invoke('getActiveProfile')
        return res

    def loadProfile(self) -> Any:
        res = self.invoke('loadProfile')
        return res

    def multi(self) -> Any:
        res = self.invoke('multi')
        return res

    def exportPackage(self) -> Any:
        res = self.invoke('exportPackage')
        return res

    def importPackage(self) -> Any:
        res = self.invoke('importPackage')
        return res

    def reloadCollection(self) -> Any:
        res = self.invoke('reloadCollection')
        return res

    def modelNames(self) -> Any:
        res = self.invoke('modelNames')
        return res

    def modelNamesAndIds(self) -> Any:
        res = self.invoke('modelNamesAndIds')
        return res

    def findModelsById(self) -> Any:
        res = self.invoke('findModelsById')
        return res

    def findModelsByName(self) -> Any:
        res = self.invoke('findModelsByName')
        return res

    def modelFieldNames(self) -> Any:
        res = self.invoke('modelFieldNames')
        return res

    def modelFieldDescriptions(self) -> Any:
        res = self.invoke('modelFieldDescriptions')
        return res

    def modelFieldFonts(self) -> Any:
        res = self.invoke('modelFieldFonts')
        return res

    def modelFieldsOnTemplates(self) -> Any:
        res = self.invoke('modelFieldsOnTemplates')
        return res

    def createModel(self) -> Any:
        res = self.invoke('createModel')
        return res

    def modelTemplates(self) -> Any:
        res = self.invoke('modelTemplates')
        return res

    def modelStyling(self) -> Any:
        res = self.invoke('modelStyling')
        return res

    def updateModelTemplates(self) -> Any:
        res = self.invoke('updateModelTemplates')
        return res

    def updateModelStyling(self) -> Any:
        res = self.invoke('updateModelStyling')
        return res

    def findAndReplaceInModels(self) -> Any:
        res = self.invoke('findAndReplaceInModels')
        return res

    def modelTemplateRename(self) -> Any:
        res = self.invoke('modelTemplateRename')
        return res

    def modelTemplateReposition(self) -> Any:
        res = self.invoke('modelTemplateReposition')
        return res

    def modelTemplateAdd(self) -> Any:
        res = self.invoke('modelTemplateAdd')
        return res

    def modelTemplateRemove(self) -> Any:
        res = self.invoke('modelTemplateRemove')
        return res

    def modelFieldRename(self) -> Any:
        res = self.invoke('modelFieldRename')
        return res

    def modelFieldReposition(self) -> Any:
        res = self.invoke('modelFieldReposition')
        return res

    def modelFieldAdd(self) -> Any:
        res = self.invoke('modelFieldAdd')
        return res

    def modelFieldRemove(self) -> Any:
        res = self.invoke('modelFieldRemove')
        return res

    def modelFieldSetFont(self) -> Any:
        res = self.invoke('modelFieldSetFont')
        return res

    def modelFieldSetFontSize(self) -> Any:
        res = self.invoke('modelFieldSetFontSize')
        return res

    def modelFieldSetDescription(self) -> Any:
        res = self.invoke('modelFieldSetDescription')
        return res

    def addNote(self) -> Any:
        res = self.invoke('addNote')
        return res

    def addNotes(self) -> Any:
        res = self.invoke('addNotes')
        return res

    def canAddNotes(self) -> Any:
        res = self.invoke('canAddNotes')
        return res

    def canAddNotesWithErrorDetail(self) -> Any:
        res = self.invoke('canAddNotesWithErrorDetail')
        return res

    def updateNoteFields(self) -> Any:
        res = self.invoke('updateNoteFields')
        return res

    def updateNote(self) -> Any:
        res = self.invoke('updateNote')
        return res

    def updateNoteModel(self) -> Any:
        res = self.invoke('updateNoteModel')
        return res

    def updateNoteTags(self) -> Any:
        res = self.invoke('updateNoteTags')
        return res

    def getNoteTags(self) -> Any:
        res = self.invoke('getNoteTags')
        return res

    def addTags(self) -> Any:
        res = self.invoke('addTags')
        return res

    def removeTags(self) -> Any:
        res = self.invoke('removeTags')
        return res

    def getTags(self) -> Any:
        res = self.invoke('getTags')
        return res

    def clearUnusedTags(self) -> Any:
        res = self.invoke('clearUnusedTags')
        return res

    def replaceTags(self) -> Any:
        res = self.invoke('replaceTags')
        return res

    def replaceTagsInAllNotes(self) -> Any:
        res = self.invoke('replaceTagsInAllNotes')
        return res

    def findNotes(self) -> Any:
        res = self.invoke('findNotes')
        return res

    def notesInfo(self) -> Any:
        res = self.invoke('notesInfo')
        return res

    def notesModTime(self) -> Any:
        res = self.invoke('notesModTime')
        return res

    def deleteNotes(self) -> Any:
        res = self.invoke('deleteNotes')
        return res

    def removeEmptyNotes(self) -> Any:
        res = self.invoke('removeEmptyNotes')
        return res

    def getNumCardsReviewedToday(self) -> Any:
        res = self.invoke('getNumCardsReviewedToday')
        return res

    def getNumCardsReviewedByDay(self) -> Any:
        res = self.invoke('getNumCardsReviewedByDay')
        return res

    def getCollectionStatsHTML(self) -> Any:
        res = self.invoke('getCollectionStatsHTML')
        return res

    def cardReviews(self) -> Any:
        res = self.invoke('cardReviews')
        return res

    def getReviewsOfCards(self) -> Any:
        res = self.invoke('getReviewsOfCards')
        return res

    def getLatestReviewID(self) -> Any:
        res = self.invoke('getLatestReviewID')
        return res

    def insertReviews(self) -> Any:
        res = self.invoke('insertReviews')
        return res
