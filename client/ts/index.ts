export interface CardsModTimeResponseItem {
  cardId?: number;
  mod?: number;
}

export interface CardsInfoResponseItemFieldsFront {
  value?: string;
  order?: number;
}

export interface CardsInfoResponseItemFieldsBack {
  value?: string;
  order?: number;
}

export interface CardsInfoResponseItemFields {
  Front?: CardsInfoResponseItemFieldsFront;
  Back?: CardsInfoResponseItemFieldsBack;
}

export interface CardsInfoResponseItem {
  answer?: string;
  question?: string;
  deckName?: string;
  modelName?: string;
  fieldOrder?: number;
  fields?: CardsInfoResponseItemFields;
  css?: string;
  cardId?: number;
  interval?: number;
  note?: number;
  ord?: number;
  type?: number;
  queue?: number;
  due?: number;
  reps?: number;
  lapses?: number;
  left?: number;
  mod?: number;
}

export interface AnswerCardsAnswersItem {
  cardId?: number;
  ease?: number;
  time?: number;
}

export interface DeckNamesAndIdsResponse {
  Default?: number;
}

export interface GetDecksResponse {
  Default?: number[];
  'Japanese::JLPT N3'?: number[];
}

export interface GetDeckConfigResponseLapse {
  leechFails?: number;
  delays?: number[];
  minInt?: number;
  leechAction?: number;
  mult?: number;
}

export interface GetDeckConfigResponseNew {
  bury?: boolean;
  order?: number;
  initialFactor?: number;
  perDay?: number;
  delays?: number[];
  separate?: boolean;
  ints?: number[];
}

export interface GetDeckConfigResponseRev {
  bury?: boolean;
  ivlFct?: number;
  ease4?: number;
  maxIvl?: number;
  perDay?: number;
  minSpace?: number;
  fuzz?: number;
}

export interface GetDeckConfigResponse {
  lapse?: GetDeckConfigResponseLapse;
  dyn?: boolean;
  autoplay?: boolean;
  mod?: number;
  id?: number;
  maxTaken?: number;
  new?: GetDeckConfigResponseNew;
  name?: string;
  rev?: GetDeckConfigResponseRev;
  timer?: number;
  replayq?: boolean;
  usn?: number;
}

export interface SaveDeckConfigConfigLapse {
  leechFails?: number;
  delays?: number[];
  minInt?: number;
  leechAction?: number;
  mult?: number;
}

export interface SaveDeckConfigConfigNew {
  bury?: boolean;
  order?: number;
  initialFactor?: number;
  perDay?: number;
  delays?: number[];
  separate?: boolean;
  ints?: number[];
}

export interface SaveDeckConfigConfigRev {
  bury?: boolean;
  ivlFct?: number;
  ease4?: number;
  maxIvl?: number;
  perDay?: number;
  minSpace?: number;
  fuzz?: number;
}

export interface SaveDeckConfigConfig {
  lapse?: SaveDeckConfigConfigLapse;
  dyn?: boolean;
  autoplay?: boolean;
  mod?: number;
  id?: number;
  maxTaken?: number;
  new?: SaveDeckConfigConfigNew;
  name?: string;
  rev?: SaveDeckConfigConfigRev;
  timer?: number;
  replayq?: boolean;
  usn?: number;
}

export interface GuiBrowseReordercards {
  order?: string;
  columnId?: string;
}

export interface GuiAddCardsNoteFields {
  Text?: string;
  Extra?: string;
}

export interface GuiAddCardsNotePictureItem {
  url?: string;
  filename?: string;
  fields?: string[];
}

export interface GuiAddCardsNote {
  deckName?: string;
  modelName?: string;
  fields?: GuiAddCardsNoteFields;
  tags?: string[];
  picture?: GuiAddCardsNotePictureItem[];
}

export interface GuiAddNoteSetDataNoteFields {
  Front?: string;
  Back?: string;
}

export interface GuiAddNoteSetDataNote {
  deckName?: string;
  modelName?: string;
  fields?: GuiAddNoteSetDataNoteFields;
  tags?: string[];
}

export interface GuiCurrentCardResponseFieldsFront {
  value?: string;
  order?: number;
}

export interface GuiCurrentCardResponseFieldsBack {
  value?: string;
  order?: number;
}

export interface GuiCurrentCardResponseFields {
  Front?: GuiCurrentCardResponseFieldsFront;
  Back?: GuiCurrentCardResponseFieldsBack;
}

export interface GuiCurrentCardResponse {
  answer?: string;
  question?: string;
  deckName?: string;
  modelName?: string;
  fieldOrder?: number;
  fields?: GuiCurrentCardResponseFields;
  template?: string;
  cardId?: number;
  buttons?: number[];
  nextReviews?: string[];
}

export interface RequestPermissionResponse {
  permission?: string;
  requireApiKey?: boolean;
  version?: number;
}

export interface ApiReflectResponse {
  scopes?: string[];
  actions?: string[];
}

export interface MultiActionsItem {
  action?: string;
}

export interface ModelNamesAndIdsResponse {
  Basic?: number;
  'Basic (and reversed card)'?: number;
  'Basic (optional reversed card)'?: number;
  Cloze?: number;
}

export interface FindModelsByIdResponseItemTmplsItem {
  name?: string;
  ord?: number;
  qfmt?: string;
  afmt?: string;
  bqfmt?: string;
  bafmt?: string;
  did?: any;
  bfont?: string;
  bsize?: number;
  id?: number;
}

export interface FindModelsByIdResponseItemFldsItem {
  name?: string;
  ord?: number;
  sticky?: boolean;
  rtl?: boolean;
  font?: string;
  size?: number;
  description?: string;
  plainText?: boolean;
  collapsed?: boolean;
  excludeFromSearch?: boolean;
  id?: number;
  tag?: any;
  preventDeletion?: boolean;
}

export interface FindModelsByIdResponseItem {
  id?: number;
  name?: string;
  type?: number;
  mod?: number;
  usn?: number;
  sortf?: number;
  did?: any;
  tmpls?: FindModelsByIdResponseItemTmplsItem[];
  flds?: FindModelsByIdResponseItemFldsItem[];
  css?: string;
  latexPre?: string;
  latexPost?: string;
  latexsvg?: boolean;
  req?: number[][];
  originalStockKind?: number;
}

export interface FindModelsByNameResponseItemTmplsItem {
  name?: string;
  ord?: number;
  qfmt?: string;
  afmt?: string;
  bqfmt?: string;
  bafmt?: string;
  did?: any;
  bfont?: string;
  bsize?: number;
  id?: number;
}

export interface FindModelsByNameResponseItemFldsItem {
  name?: string;
  ord?: number;
  sticky?: boolean;
  rtl?: boolean;
  font?: string;
  size?: number;
  description?: string;
  plainText?: boolean;
  collapsed?: boolean;
  excludeFromSearch?: boolean;
  id?: number;
  tag?: any;
  preventDeletion?: boolean;
}

export interface FindModelsByNameResponseItem {
  id?: number;
  name?: string;
  type?: number;
  mod?: number;
  usn?: number;
  sortf?: number;
  did?: any;
  tmpls?: FindModelsByNameResponseItemTmplsItem[];
  flds?: FindModelsByNameResponseItemFldsItem[];
  css?: string;
  latexPre?: string;
  latexPost?: string;
  latexsvg?: boolean;
  req?: number[][];
  originalStockKind?: number;
}

export interface ModelFieldFontsResponseFront {
  font?: string;
  size?: number;
}

export interface ModelFieldFontsResponseBack {
  font?: string;
  size?: number;
}

export interface ModelFieldFontsResponse {
  Front?: ModelFieldFontsResponseFront;
  Back?: ModelFieldFontsResponseBack;
}

export interface ModelFieldsOnTemplatesResponse {
  'Card 1'?: string[][];
  'Card 2'?: string[][];
}

export interface CreateModelCardtemplatesItem {
  Name?: string;
  Front?: string;
  Back?: string;
}

export interface CreateModelResponseFldsItem {
  name?: string;
  ord?: number;
  sticky?: boolean;
  rtl?: boolean;
  font?: string;
  size?: number;
  media?: any[];
}

export interface CreateModelResponseTmplsItem {
  name?: string;
  ord?: number;
  qfmt?: string;
  afmt?: string;
  did?: any;
  bqfmt?: string;
  bafmt?: string;
}

export interface CreateModelResponse {
  sortf?: number;
  did?: number;
  latexPre?: string;
  latexPost?: string;
  mod?: number;
  usn?: number;
  vers?: any[];
  type?: number;
  css?: string;
  name?: string;
  flds?: CreateModelResponseFldsItem[];
  tmpls?: CreateModelResponseTmplsItem[];
  tags?: any[];
  id?: number;
  req?: number[][];
}

export interface ModelTemplatesResponseCard1 {
  Front?: string;
  Back?: string;
}

export interface ModelTemplatesResponseCard2 {
  Front?: string;
  Back?: string;
}

export interface ModelTemplatesResponse {
  'Card 1'?: ModelTemplatesResponseCard1;
  'Card 2'?: ModelTemplatesResponseCard2;
}

export interface ModelStylingResponse {
  css?: string;
}

export interface UpdateModelTemplatesModelTemplatesCard1 {
  Front?: string;
  Back?: string;
}

export interface UpdateModelTemplatesModelTemplates {
  'Card 1'?: UpdateModelTemplatesModelTemplatesCard1;
}

export interface UpdateModelTemplatesModel {
  name?: string;
  templates?: UpdateModelTemplatesModelTemplates;
}

export interface UpdateModelStylingModel {
  name?: string;
  css?: string;
}

export interface FindAndReplaceInModelsModel {
  modelName?: string;
  findText?: string;
  replaceText?: string;
  front?: boolean;
  back?: boolean;
  css?: boolean;
}

export interface ModelTemplateAddTemplate {
  Name?: string;
  Front?: string;
  Back?: string;
}

export interface AddNotesNotesItemFields {
  Front?: string;
  Back?: string;
}

export interface AddNotesNotesItem {
  deckName?: string;
  modelName?: string;
  fields?: AddNotesNotesItemFields;
}

export interface CanAddNotesNotesItemFields {
  Front?: string;
  Back?: string;
}

export interface CanAddNotesNotesItem {
  deckName?: string;
  modelName?: string;
  fields?: CanAddNotesNotesItemFields;
  tags?: string[];
}

export interface CanAddNotesWithErrorDetailNotesItemFields {
  Front?: string;
  Back?: string;
}

export interface CanAddNotesWithErrorDetailNotesItem {
  deckName?: string;
  modelName?: string;
  fields?: CanAddNotesWithErrorDetailNotesItemFields;
  tags?: string[];
}

export interface CanAddNotesWithErrorDetailResponseItem {
  canAdd?: boolean;
  error?: string;
}

export interface UpdateNoteFieldsNoteFields {
  Front?: string;
  Back?: string;
}

export interface UpdateNoteFieldsNoteAudioItem {
  url?: string;
  filename?: string;
  skipHash?: string;
  fields?: string[];
}

export interface UpdateNoteFieldsNote {
  id?: number;
  fields?: UpdateNoteFieldsNoteFields;
  audio?: UpdateNoteFieldsNoteAudioItem[];
}

export interface UpdateNoteNoteFields {
  Front?: string;
  Back?: string;
}

export interface UpdateNoteNote {
  id?: number;
  fields?: UpdateNoteNoteFields;
  tags?: string[];
}

export interface UpdateNoteModelNoteFields {
  NewField1?: string;
  NewField2?: string;
  NewField3?: string;
}

export interface UpdateNoteModelNote {
  id?: number;
  modelName?: string;
  fields?: UpdateNoteModelNoteFields;
  tags?: string[];
}

export interface NotesInfoResponseItemFieldsFront {
  value?: string;
  order?: number;
}

export interface NotesInfoResponseItemFieldsBack {
  value?: string;
  order?: number;
}

export interface NotesInfoResponseItemFields {
  Front?: NotesInfoResponseItemFieldsFront;
  Back?: NotesInfoResponseItemFieldsBack;
}

export interface NotesInfoResponseItem {
  noteId?: number;
  profile?: string;
  modelName?: string;
  tags?: string[];
  fields?: NotesInfoResponseItemFields;
  mod?: number;
  cards?: number[];
}

export interface NotesModTimeResponseItem {
  noteId?: number;
  mod?: number;
}

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

  async getEaseFactors(cards: number[]): Promise<number[]> {
    return this.invoke('getEaseFactors', { cards });
  }

  async setEaseFactors(cards: number[], easeFactors: number[]): Promise<boolean[]> {
    return this.invoke('setEaseFactors', { cards, easeFactors });
  }

  async setSpecificValueOfCard(card: number, keys: string[], newValues: string[]): Promise<boolean[]> {
    return this.invoke('setSpecificValueOfCard', { card, keys, newValues });
  }

  async suspend(cards: number[]): Promise<boolean> {
    return this.invoke('suspend', { cards });
  }

  async unsuspend(cards: number[]): Promise<boolean> {
    return this.invoke('unsuspend', { cards });
  }

  async suspended(card: number): Promise<boolean> {
    return this.invoke('suspended', { card });
  }

  async areSuspended(cards: number[]): Promise<boolean[]> {
    return this.invoke('areSuspended', { cards });
  }

  async areDue(cards: number[]): Promise<boolean[]> {
    return this.invoke('areDue', { cards });
  }

  async getIntervals(cards: number[]): Promise<number[]> {
    return this.invoke('getIntervals', { cards });
  }

  async findCards(query: string): Promise<number[]> {
    return this.invoke('findCards', { query });
  }

  async cardsToNotes(cards: number[]): Promise<number[]> {
    return this.invoke('cardsToNotes', { cards });
  }

  async cardsModTime(cards: number[]): Promise<CardsModTimeResponseItem[]> {
    return this.invoke('cardsModTime', { cards });
  }

  async cardsInfo(cards: number[]): Promise<CardsInfoResponseItem[]> {
    return this.invoke('cardsInfo', { cards });
  }

  async forgetCards(cards: number[]): Promise<any> {
    return this.invoke('forgetCards', { cards });
  }

  async relearnCards(cards: number[]): Promise<any> {
    return this.invoke('relearnCards', { cards });
  }

  async answerCards(answers: AnswerCardsAnswersItem[]): Promise<boolean[]> {
    return this.invoke('answerCards', { answers });
  }

  async setDueDate(cards: number[], days: string): Promise<boolean> {
    return this.invoke('setDueDate', { cards, days });
  }

  async deckNames(): Promise<string[]> {
    return this.invoke('deckNames');
  }

  async deckNamesAndIds(): Promise<DeckNamesAndIdsResponse> {
    return this.invoke('deckNamesAndIds');
  }

  async getDecks(cards: number[]): Promise<GetDecksResponse> {
    return this.invoke('getDecks', { cards });
  }

  async createDeck(deck: string): Promise<number> {
    return this.invoke('createDeck', { deck });
  }

  async changeDeck(cards: number[], deck: string): Promise<any> {
    return this.invoke('changeDeck', { cards, deck });
  }

  async deleteDecks(decks: string[], cardsToo: boolean): Promise<any> {
    return this.invoke('deleteDecks', { decks, cardsToo });
  }

  async getDeckConfig(deck: string): Promise<GetDeckConfigResponse> {
    return this.invoke('getDeckConfig', { deck });
  }

  async saveDeckConfig(config: SaveDeckConfigConfig): Promise<boolean> {
    return this.invoke('saveDeckConfig', { config });
  }

  async setDeckConfigId(decks: string[], configId: number): Promise<boolean> {
    return this.invoke('setDeckConfigId', { decks, configId });
  }

  async cloneDeckConfigId(name: string, cloneFrom: number): Promise<number> {
    return this.invoke('cloneDeckConfigId', { name, cloneFrom });
  }

  async removeDeckConfigId(configId: number): Promise<boolean> {
    return this.invoke('removeDeckConfigId', { configId });
  }

  async getDeckStats(decks: string[]): Promise<{ [key: string]: any }> {
    return this.invoke('getDeckStats', { decks });
  }

  async guiBrowse(query: string, reorderCards: GuiBrowseReordercards): Promise<number[]> {
    return this.invoke('guiBrowse', { query, reorderCards });
  }

  async guiSelectCard(card: number): Promise<boolean> {
    return this.invoke('guiSelectCard', { card });
  }

  async guiSelectedNotes(): Promise<number[]> {
    return this.invoke('guiSelectedNotes');
  }

  async guiAddCards(note: GuiAddCardsNote): Promise<number> {
    return this.invoke('guiAddCards', { note });
  }

  async guiEditNote(note: number): Promise<any> {
    return this.invoke('guiEditNote', { note });
  }

  async guiAddNoteSetData(note: GuiAddNoteSetDataNote): Promise<boolean> {
    return this.invoke('guiAddNoteSetData', { note });
  }

  async guiCurrentCard(): Promise<GuiCurrentCardResponse> {
    return this.invoke('guiCurrentCard');
  }

  async guiStartCardTimer(): Promise<boolean> {
    return this.invoke('guiStartCardTimer');
  }

  async guiShowQuestion(): Promise<boolean> {
    return this.invoke('guiShowQuestion');
  }

  async guiShowAnswer(): Promise<boolean> {
    return this.invoke('guiShowAnswer');
  }

  async guiAnswerCard(ease: number): Promise<boolean> {
    return this.invoke('guiAnswerCard', { ease });
  }

  async guiUndo(): Promise<boolean> {
    return this.invoke('guiUndo');
  }

  async guiDeckOverview(name: string): Promise<boolean> {
    return this.invoke('guiDeckOverview', { name });
  }

  async guiDeckBrowser(): Promise<any> {
    return this.invoke('guiDeckBrowser');
  }

  async guiDeckReview(name: string): Promise<boolean> {
    return this.invoke('guiDeckReview', { name });
  }

  async guiImportFile(path: string): Promise<any> {
    return this.invoke('guiImportFile', { path });
  }

  async guiExitAnki(): Promise<any> {
    return this.invoke('guiExitAnki');
  }

  async guiCheckDatabase(): Promise<boolean> {
    return this.invoke('guiCheckDatabase');
  }

  async guiPlayAudio(): Promise<boolean> {
    return this.invoke('guiPlayAudio');
  }

  async storeMediaFile(filename: string, data: string): Promise<string> {
    return this.invoke('storeMediaFile', { filename, data });
  }

  async retrieveMediaFile(filename: string): Promise<string> {
    return this.invoke('retrieveMediaFile', { filename });
  }

  async getMediaFilesNames(pattern: string): Promise<string[]> {
    return this.invoke('getMediaFilesNames', { pattern });
  }

  async getMediaDirPath(): Promise<string> {
    return this.invoke('getMediaDirPath');
  }

  async deleteMediaFile(filename: string): Promise<any> {
    return this.invoke('deleteMediaFile', { filename });
  }

  async requestPermission(): Promise<RequestPermissionResponse> {
    return this.invoke('requestPermission');
  }

  async version(): Promise<number> {
    return this.invoke('version');
  }

  async apiReflect(scopes: string[], actions: string[]): Promise<ApiReflectResponse> {
    return this.invoke('apiReflect', { scopes, actions });
  }

  async sync(): Promise<any> {
    return this.invoke('sync');
  }

  async getProfiles(): Promise<string[]> {
    return this.invoke('getProfiles');
  }

  async getActiveProfile(): Promise<string> {
    return this.invoke('getActiveProfile');
  }

  async loadProfile(name: string): Promise<boolean> {
    return this.invoke('loadProfile', { name });
  }

  async multi(actions: MultiActionsItem[]): Promise<string[][]> {
    return this.invoke('multi', { actions });
  }

  async exportPackage(deck: string, path: string, includeSched: boolean): Promise<boolean> {
    return this.invoke('exportPackage', { deck, path, includeSched });
  }

  async importPackage(path: string): Promise<boolean> {
    return this.invoke('importPackage', { path });
  }

  async reloadCollection(): Promise<any> {
    return this.invoke('reloadCollection');
  }

  async modelNames(): Promise<string[]> {
    return this.invoke('modelNames');
  }

  async modelNamesAndIds(): Promise<ModelNamesAndIdsResponse> {
    return this.invoke('modelNamesAndIds');
  }

  async findModelsById(modelIds: number[]): Promise<FindModelsByIdResponseItem[]> {
    return this.invoke('findModelsById', { modelIds });
  }

  async findModelsByName(modelNames: string[]): Promise<FindModelsByNameResponseItem[]> {
    return this.invoke('findModelsByName', { modelNames });
  }

  async modelFieldNames(modelName: string): Promise<string[]> {
    return this.invoke('modelFieldNames', { modelName });
  }

  async modelFieldDescriptions(modelName: string): Promise<string[]> {
    return this.invoke('modelFieldDescriptions', { modelName });
  }

  async modelFieldFonts(modelName: string): Promise<ModelFieldFontsResponse> {
    return this.invoke('modelFieldFonts', { modelName });
  }

  async modelFieldsOnTemplates(modelName: string): Promise<ModelFieldsOnTemplatesResponse> {
    return this.invoke('modelFieldsOnTemplates', { modelName });
  }

  async createModel(modelName: string, inOrderFields: string[], css: string, isCloze: boolean, cardTemplates: CreateModelCardtemplatesItem[]): Promise<CreateModelResponse> {
    return this.invoke('createModel', { modelName, inOrderFields, css, isCloze, cardTemplates });
  }

  async modelTemplates(modelName: string): Promise<ModelTemplatesResponse> {
    return this.invoke('modelTemplates', { modelName });
  }

  async modelStyling(modelName: string): Promise<ModelStylingResponse> {
    return this.invoke('modelStyling', { modelName });
  }

  async updateModelTemplates(model: UpdateModelTemplatesModel): Promise<any> {
    return this.invoke('updateModelTemplates', { model });
  }

  async updateModelStyling(model: UpdateModelStylingModel): Promise<any> {
    return this.invoke('updateModelStyling', { model });
  }

  async findAndReplaceInModels(model: FindAndReplaceInModelsModel): Promise<number> {
    return this.invoke('findAndReplaceInModels', { model });
  }

  async modelTemplateRename(modelName: string, oldTemplateName: string, newTemplateName: string): Promise<any> {
    return this.invoke('modelTemplateRename', { modelName, oldTemplateName, newTemplateName });
  }

  async modelTemplateReposition(modelName: string, templateName: string, index: number): Promise<any> {
    return this.invoke('modelTemplateReposition', { modelName, templateName, index });
  }

  async modelTemplateAdd(modelName: string, template: ModelTemplateAddTemplate): Promise<any> {
    return this.invoke('modelTemplateAdd', { modelName, template });
  }

  async modelTemplateRemove(modelName: string, templateName: string): Promise<any> {
    return this.invoke('modelTemplateRemove', { modelName, templateName });
  }

  async modelFieldRename(modelName: string, oldFieldName: string, newFieldName: string): Promise<any> {
    return this.invoke('modelFieldRename', { modelName, oldFieldName, newFieldName });
  }

  async modelFieldReposition(modelName: string, fieldName: string, index: number): Promise<any> {
    return this.invoke('modelFieldReposition', { modelName, fieldName, index });
  }

  async modelFieldAdd(modelName: string, fieldName: string, index: number): Promise<any> {
    return this.invoke('modelFieldAdd', { modelName, fieldName, index });
  }

  async modelFieldRemove(modelName: string, fieldName: string): Promise<any> {
    return this.invoke('modelFieldRemove', { modelName, fieldName });
  }

  async modelFieldSetFont(modelName: string, fieldName: string, font: string): Promise<any> {
    return this.invoke('modelFieldSetFont', { modelName, fieldName, font });
  }

  async modelFieldSetFontSize(modelName: string, fieldName: string, fontSize: number): Promise<any> {
    return this.invoke('modelFieldSetFontSize', { modelName, fieldName, fontSize });
  }

  async modelFieldSetDescription(modelName: string, fieldName: string, description: string): Promise<boolean> {
    return this.invoke('modelFieldSetDescription', { modelName, fieldName, description });
  }

  async addNote(): Promise<number> {
    return this.invoke('addNote');
  }

  async addNotes(notes: AddNotesNotesItem[]): Promise<any> {
    return this.invoke('addNotes', { notes });
  }

  async canAddNotes(notes: CanAddNotesNotesItem[]): Promise<boolean[]> {
    return this.invoke('canAddNotes', { notes });
  }

  async canAddNotesWithErrorDetail(notes: CanAddNotesWithErrorDetailNotesItem[]): Promise<CanAddNotesWithErrorDetailResponseItem[]> {
    return this.invoke('canAddNotesWithErrorDetail', { notes });
  }

  async updateNoteFields(note: UpdateNoteFieldsNote): Promise<any> {
    return this.invoke('updateNoteFields', { note });
  }

  async updateNote(note: UpdateNoteNote): Promise<any> {
    return this.invoke('updateNote', { note });
  }

  async updateNoteModel(note: UpdateNoteModelNote): Promise<any> {
    return this.invoke('updateNoteModel', { note });
  }

  async updateNoteTags(note: number, tags: string[]): Promise<any> {
    return this.invoke('updateNoteTags', { note, tags });
  }

  async getNoteTags(note: number): Promise<string[]> {
    return this.invoke('getNoteTags', { note });
  }

  async addTags(notes: number[], tags: string): Promise<any> {
    return this.invoke('addTags', { notes, tags });
  }

  async removeTags(notes: number[], tags: string): Promise<any> {
    return this.invoke('removeTags', { notes, tags });
  }

  async getTags(): Promise<string[]> {
    return this.invoke('getTags');
  }

  async clearUnusedTags(): Promise<any> {
    return this.invoke('clearUnusedTags');
  }

  async replaceTags(notes: number[], tag_to_replace: string, replace_with_tag: string): Promise<any> {
    return this.invoke('replaceTags', { notes, tag_to_replace, replace_with_tag });
  }

  async replaceTagsInAllNotes(tag_to_replace: string, replace_with_tag: string): Promise<any> {
    return this.invoke('replaceTagsInAllNotes', { tag_to_replace, replace_with_tag });
  }

  async findNotes(query: string): Promise<number[]> {
    return this.invoke('findNotes', { query });
  }

  async notesInfo(notes: number[]): Promise<NotesInfoResponseItem[]> {
    return this.invoke('notesInfo', { notes });
  }

  async notesModTime(notes: number[]): Promise<NotesModTimeResponseItem[]> {
    return this.invoke('notesModTime', { notes });
  }

  async deleteNotes(notes: number[]): Promise<any> {
    return this.invoke('deleteNotes', { notes });
  }

  async removeEmptyNotes(): Promise<any> {
    return this.invoke('removeEmptyNotes');
  }

  async getNumCardsReviewedToday(): Promise<number> {
    return this.invoke('getNumCardsReviewedToday');
  }

  async getNumCardsReviewedByDay(): Promise<string[][]> {
    return this.invoke('getNumCardsReviewedByDay');
  }

  async getCollectionStatsHTML(wholeCollection: boolean): Promise<string> {
    return this.invoke('getCollectionStatsHTML', { wholeCollection });
  }

  async cardReviews(deck: string, startID: number): Promise<number[][]> {
    return this.invoke('cardReviews', { deck, startID });
  }

  async getReviewsOfCards(cards: string[]): Promise<{ [key: string]: any }> {
    return this.invoke('getReviewsOfCards', { cards });
  }

  async getLatestReviewID(deck: string): Promise<number> {
    return this.invoke('getLatestReviewID', { deck });
  }

  async insertReviews(reviews: number[][]): Promise<any> {
    return this.invoke('insertReviews', { reviews });
  }
}
