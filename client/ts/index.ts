

export class AnkiConnect {
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

  async getEaseFactors(): Promise<any> {
    return this.invoke('getEaseFactors');
  }

  async setEaseFactors(): Promise<any> {
    return this.invoke('setEaseFactors');
  }

  async setSpecificValueOfCard(): Promise<any> {
    return this.invoke('setSpecificValueOfCard');
  }

  async suspend(): Promise<any> {
    return this.invoke('suspend');
  }

  async unsuspend(): Promise<any> {
    return this.invoke('unsuspend');
  }

  async suspended(): Promise<any> {
    return this.invoke('suspended');
  }

  async areSuspended(): Promise<any> {
    return this.invoke('areSuspended');
  }

  async areDue(): Promise<any> {
    return this.invoke('areDue');
  }

  async getIntervals(): Promise<any> {
    return this.invoke('getIntervals');
  }

  async findCards(): Promise<any> {
    return this.invoke('findCards');
  }

  async cardsToNotes(): Promise<any> {
    return this.invoke('cardsToNotes');
  }

  async cardsModTime(): Promise<any> {
    return this.invoke('cardsModTime');
  }

  async cardsInfo(): Promise<any> {
    return this.invoke('cardsInfo');
  }

  async forgetCards(): Promise<any> {
    return this.invoke('forgetCards');
  }

  async relearnCards(): Promise<any> {
    return this.invoke('relearnCards');
  }

  async answerCards(): Promise<any> {
    return this.invoke('answerCards');
  }

  async setDueDate(): Promise<any> {
    return this.invoke('setDueDate');
  }

  async deckNames(): Promise<any> {
    return this.invoke('deckNames');
  }

  async deckNamesAndIds(): Promise<any> {
    return this.invoke('deckNamesAndIds');
  }

  async getDecks(): Promise<any> {
    return this.invoke('getDecks');
  }

  async createDeck(): Promise<any> {
    return this.invoke('createDeck');
  }

  async changeDeck(): Promise<any> {
    return this.invoke('changeDeck');
  }

  async deleteDecks(): Promise<any> {
    return this.invoke('deleteDecks');
  }

  async getDeckConfig(): Promise<any> {
    return this.invoke('getDeckConfig');
  }

  async saveDeckConfig(): Promise<any> {
    return this.invoke('saveDeckConfig');
  }

  async setDeckConfigId(): Promise<any> {
    return this.invoke('setDeckConfigId');
  }

  async cloneDeckConfigId(): Promise<any> {
    return this.invoke('cloneDeckConfigId');
  }

  async removeDeckConfigId(): Promise<any> {
    return this.invoke('removeDeckConfigId');
  }

  async getDeckStats(): Promise<any> {
    return this.invoke('getDeckStats');
  }

  async guiBrowse(): Promise<any> {
    return this.invoke('guiBrowse');
  }

  async guiSelectCard(): Promise<any> {
    return this.invoke('guiSelectCard');
  }

  async guiSelectedNotes(): Promise<any> {
    return this.invoke('guiSelectedNotes');
  }

  async guiAddCards(): Promise<any> {
    return this.invoke('guiAddCards');
  }

  async guiEditNote(): Promise<any> {
    return this.invoke('guiEditNote');
  }

  async guiAddNoteSetData(): Promise<any> {
    return this.invoke('guiAddNoteSetData');
  }

  async guiCurrentCard(): Promise<any> {
    return this.invoke('guiCurrentCard');
  }

  async guiStartCardTimer(): Promise<any> {
    return this.invoke('guiStartCardTimer');
  }

  async guiShowQuestion(): Promise<any> {
    return this.invoke('guiShowQuestion');
  }

  async guiShowAnswer(): Promise<any> {
    return this.invoke('guiShowAnswer');
  }

  async guiAnswerCard(): Promise<any> {
    return this.invoke('guiAnswerCard');
  }

  async guiUndo(): Promise<any> {
    return this.invoke('guiUndo');
  }

  async guiDeckOverview(): Promise<any> {
    return this.invoke('guiDeckOverview');
  }

  async guiDeckBrowser(): Promise<any> {
    return this.invoke('guiDeckBrowser');
  }

  async guiDeckReview(): Promise<any> {
    return this.invoke('guiDeckReview');
  }

  async guiImportFile(): Promise<any> {
    return this.invoke('guiImportFile');
  }

  async guiExitAnki(): Promise<any> {
    return this.invoke('guiExitAnki');
  }

  async guiCheckDatabase(): Promise<any> {
    return this.invoke('guiCheckDatabase');
  }

  async guiPlayAudio(): Promise<any> {
    return this.invoke('guiPlayAudio');
  }

  async storeMediaFile(): Promise<any> {
    return this.invoke('storeMediaFile');
  }

  async retrieveMediaFile(): Promise<any> {
    return this.invoke('retrieveMediaFile');
  }

  async getMediaFilesNames(): Promise<any> {
    return this.invoke('getMediaFilesNames');
  }

  async getMediaDirPath(): Promise<any> {
    return this.invoke('getMediaDirPath');
  }

  async deleteMediaFile(): Promise<any> {
    return this.invoke('deleteMediaFile');
  }

  async requestPermission(): Promise<any> {
    return this.invoke('requestPermission');
  }

  async version(): Promise<any> {
    return this.invoke('version');
  }

  async apiReflect(): Promise<any> {
    return this.invoke('apiReflect');
  }

  async sync(): Promise<any> {
    return this.invoke('sync');
  }

  async getProfiles(): Promise<any> {
    return this.invoke('getProfiles');
  }

  async getActiveProfile(): Promise<any> {
    return this.invoke('getActiveProfile');
  }

  async loadProfile(): Promise<any> {
    return this.invoke('loadProfile');
  }

  async multi(): Promise<any> {
    return this.invoke('multi');
  }

  async exportPackage(): Promise<any> {
    return this.invoke('exportPackage');
  }

  async importPackage(): Promise<any> {
    return this.invoke('importPackage');
  }

  async reloadCollection(): Promise<any> {
    return this.invoke('reloadCollection');
  }

  async modelNames(): Promise<any> {
    return this.invoke('modelNames');
  }

  async modelNamesAndIds(): Promise<any> {
    return this.invoke('modelNamesAndIds');
  }

  async findModelsById(): Promise<any> {
    return this.invoke('findModelsById');
  }

  async findModelsByName(): Promise<any> {
    return this.invoke('findModelsByName');
  }

  async modelFieldNames(): Promise<any> {
    return this.invoke('modelFieldNames');
  }

  async modelFieldDescriptions(): Promise<any> {
    return this.invoke('modelFieldDescriptions');
  }

  async modelFieldFonts(): Promise<any> {
    return this.invoke('modelFieldFonts');
  }

  async modelFieldsOnTemplates(): Promise<any> {
    return this.invoke('modelFieldsOnTemplates');
  }

  async createModel(): Promise<any> {
    return this.invoke('createModel');
  }

  async modelTemplates(): Promise<any> {
    return this.invoke('modelTemplates');
  }

  async modelStyling(): Promise<any> {
    return this.invoke('modelStyling');
  }

  async updateModelTemplates(): Promise<any> {
    return this.invoke('updateModelTemplates');
  }

  async updateModelStyling(): Promise<any> {
    return this.invoke('updateModelStyling');
  }

  async findAndReplaceInModels(): Promise<any> {
    return this.invoke('findAndReplaceInModels');
  }

  async modelTemplateRename(): Promise<any> {
    return this.invoke('modelTemplateRename');
  }

  async modelTemplateReposition(): Promise<any> {
    return this.invoke('modelTemplateReposition');
  }

  async modelTemplateAdd(): Promise<any> {
    return this.invoke('modelTemplateAdd');
  }

  async modelTemplateRemove(): Promise<any> {
    return this.invoke('modelTemplateRemove');
  }

  async modelFieldRename(): Promise<any> {
    return this.invoke('modelFieldRename');
  }

  async modelFieldReposition(): Promise<any> {
    return this.invoke('modelFieldReposition');
  }

  async modelFieldAdd(): Promise<any> {
    return this.invoke('modelFieldAdd');
  }

  async modelFieldRemove(): Promise<any> {
    return this.invoke('modelFieldRemove');
  }

  async modelFieldSetFont(): Promise<any> {
    return this.invoke('modelFieldSetFont');
  }

  async modelFieldSetFontSize(): Promise<any> {
    return this.invoke('modelFieldSetFontSize');
  }

  async modelFieldSetDescription(): Promise<any> {
    return this.invoke('modelFieldSetDescription');
  }

  async addNote(): Promise<any> {
    return this.invoke('addNote');
  }

  async addNotes(): Promise<any> {
    return this.invoke('addNotes');
  }

  async canAddNotes(): Promise<any> {
    return this.invoke('canAddNotes');
  }

  async canAddNotesWithErrorDetail(): Promise<any> {
    return this.invoke('canAddNotesWithErrorDetail');
  }

  async updateNoteFields(): Promise<any> {
    return this.invoke('updateNoteFields');
  }

  async updateNote(): Promise<any> {
    return this.invoke('updateNote');
  }

  async updateNoteModel(): Promise<any> {
    return this.invoke('updateNoteModel');
  }

  async updateNoteTags(): Promise<any> {
    return this.invoke('updateNoteTags');
  }

  async getNoteTags(): Promise<any> {
    return this.invoke('getNoteTags');
  }

  async addTags(): Promise<any> {
    return this.invoke('addTags');
  }

  async removeTags(): Promise<any> {
    return this.invoke('removeTags');
  }

  async getTags(): Promise<any> {
    return this.invoke('getTags');
  }

  async clearUnusedTags(): Promise<any> {
    return this.invoke('clearUnusedTags');
  }

  async replaceTags(): Promise<any> {
    return this.invoke('replaceTags');
  }

  async replaceTagsInAllNotes(): Promise<any> {
    return this.invoke('replaceTagsInAllNotes');
  }

  async findNotes(): Promise<any> {
    return this.invoke('findNotes');
  }

  async notesInfo(): Promise<any> {
    return this.invoke('notesInfo');
  }

  async notesModTime(): Promise<any> {
    return this.invoke('notesModTime');
  }

  async deleteNotes(): Promise<any> {
    return this.invoke('deleteNotes');
  }

  async removeEmptyNotes(): Promise<any> {
    return this.invoke('removeEmptyNotes');
  }

  async getNumCardsReviewedToday(): Promise<any> {
    return this.invoke('getNumCardsReviewedToday');
  }

  async getNumCardsReviewedByDay(): Promise<any> {
    return this.invoke('getNumCardsReviewedByDay');
  }

  async getCollectionStatsHTML(): Promise<any> {
    return this.invoke('getCollectionStatsHTML');
  }

  async cardReviews(): Promise<any> {
    return this.invoke('cardReviews');
  }

  async getReviewsOfCards(): Promise<any> {
    return this.invoke('getReviewsOfCards');
  }

  async getLatestReviewID(): Promise<any> {
    return this.invoke('getLatestReviewID');
  }

  async insertReviews(): Promise<any> {
    return this.invoke('insertReviews');
  }
}
