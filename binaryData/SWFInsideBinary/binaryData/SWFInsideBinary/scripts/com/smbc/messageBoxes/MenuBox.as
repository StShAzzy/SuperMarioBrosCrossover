package com.smbc.messageBoxes
{
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.OnlineData;
   import com.smbc.graphics.MushroomSelector;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.interfaces.IMessageBoxSelectable;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.text.TextFieldContainer;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class MenuBox extends MessageBox implements IMessageBoxSelectable
   {
      
      public static var activeMenu:MenuBox;
      
      public static const MAX_HEIGHT:int = 300;
      
      public static const LEFT_MARGIN:int = 20;
      
      protected static var numItemsThatFitOnScreen:int = 9;
      
      public static const SELECTOR_LEFT_MARGIN:int = 8;
      
      private static const SELECTOR_X_OFS_CENTER_TEXT:int = -40;
      
      public static const SELECTOR_BOTTOM_MARGIN:int = 8;
       
      
      protected const IND_ARR_VEC_NAME:int = 0;
      
      protected const IND_ARR_VEC_VALUE:int = 1;
      
      protected const IND_ARR_VEC_TEXT_FIELD:int = 2;
      
      protected const ARR_VEC:Vector.<Array> = new Vector.<Array>();
      
      protected const ITEM_TXT_TOP_PADDING:int = 30;
      
      protected const SPACE_BTWN_ITEMS:int = 34;
      
      protected const VALUE_SEP:String = ":  ";
      
      protected const ON_STR:String = "on";
      
      protected const OFF_STR:String = "off";
      
      protected const EMPTY_STR:String = "";
      
      protected const SPACE_STR:String = " ";
      
      protected const SELECTOR:MushroomSelector = new MushroomSelector();
      
      protected var selectorStartIndex:int;
      
      protected var _cSelNum:int;
      
      protected var C_SEL_NUM_MIN:int = 0;
      
      protected var cSelNumMax:int;
      
      protected var numItems:int;
      
      private var txtContStartY:Number;
      
      private var resumeGame:Boolean;
      
      protected const COLOR_WHITE:uint = 4.294967295E9;
      
      protected const COLOR_PINK:uint = 4.294954695E9;
      
      protected const COLOR_GRAY:uint = 4.28937489E9;
      
      protected const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      protected const TUT_MNGR:TutorialManager = TutorialManager.TUT_MNGR;
      
      protected const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      protected var madeFirstSelection:Boolean;
      
      protected const SN_CHOOSE_ITEM:String = MessageBoxSounds.SN_CHOOSE_ITEM;
      
      protected const SN_CANCEL_ITEM:String = MessageBoxSounds.SN_CANCEL_ITEM;
      
      private var preTxtStr:String;
      
      private var level:Level;
      
      private var dscTxt:TextFieldContainer;
      
      private var centerChoices:Boolean;
      
      public function MenuBox(param1:Array, param2:int = 0, param3:Number = NaN, param4:Boolean = false, param5:String = null)
      {
         var _loc7_:int = 0;
         this.level = Level.levelInstance;
         this.selectorStartIndex = param2;
         if(!isNaN(param3))
         {
            this.txtContStartY = param3;
         }
         var _loc6_:int = param1.length;
         while(_loc7_ < _loc6_)
         {
            this.ARR_VEC[_loc7_] = param1[_loc7_];
            _loc7_++;
         }
         this.ARR_VEC.fixed = true;
         this.preTxtStr = param5;
         this.centerChoices = param4;
         super();
         maxHeight = MAX_HEIGHT;
      }
      
      override public function initiate() : void
      {
         activeMenu = this;
         super.initiate();
         this.setNewSelection(this._cSelNum);
         this.madeFirstSelection = true;
         MSG_BX_MNGR.mainMenu = this;
      }
      
      private function setUpPreTxt() : void
      {
         var txtForm:TextFormat = GlobVars.TF_MAIN;
         txtForm.leading = TXT_LEADING;
         this.dscTxt = new TextFieldContainer(FontCharMenu.FONT_NUM);
         with(this.dscTxt)
         {
            selectable = false;
            multiline = true;
            text = preTxtStr;
         }
         TXT_CONT.addChild(this.dscTxt);
      }
      
      override protected function setUpText() : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:TextFieldContainer = null;
         if(this.preTxtStr)
         {
            this.setUpPreTxt();
         }
         var _loc1_:int = this.ARR_VEC.length;
         var _loc2_:TextFormat = GlobVars.TF_MAIN;
         var _loc3_:Boolean = false;
         var _loc4_:String = MenuBoxItems.NEW_GAME;
         var _loc5_:String = MenuBoxItems.LOAD_GAME;
         var _loc6_:int = 0;
         while(_loc6_ < _loc1_)
         {
            _loc8_ = (_loc7_ = this.ARR_VEC[_loc6_])[this.IND_ARR_VEC_NAME];
            _loc9_ = _loc7_[this.IND_ARR_VEC_VALUE];
            if((_loc10_ = _loc7_[this.IND_ARR_VEC_TEXT_FIELD]) != null)
            {
               _loc8_ = _loc10_;
            }
            if(_loc10_ == null && _loc9_ != null)
            {
               if(_loc9_ === GlobVars.TRUE_STR)
               {
                  _loc8_ += this.VALUE_SEP + this.ON_STR;
               }
               else if(_loc9_ === GlobVars.FALSE_STR)
               {
                  _loc8_ += this.VALUE_SEP + this.OFF_STR;
               }
               else
               {
                  _loc8_ += this.VALUE_SEP + _loc9_;
               }
            }
            (_loc11_ = new TextFieldContainer(FontCharMenu.FONT_NUM)).text = _loc8_;
            _loc11_.y = this.SPACE_BTWN_ITEMS * _loc6_;
            if(this.dscTxt)
            {
               _loc11_.y += this.dscTxt.height + this.ITEM_TXT_TOP_PADDING;
            }
            if(this.centerChoices)
            {
               _loc11_.x = TXT_CONT.width * 0.3;
            }
            else
            {
               _loc11_.x = LEFT_MARGIN;
            }
            if(_loc3_ && (_loc8_ == _loc4_ || _loc8_ == _loc5_) || _loc8_ == MenuBoxItems.HIDDEN_CHEAT)
            {
               _loc11_.changeType(FontCharMenu.TYPE_DISABLED);
            }
            TXT_CONT.addChild(_loc11_);
            _loc7_[this.IND_ARR_VEC_TEXT_FIELD] = _loc11_;
            _loc6_++;
         }
         this.numItems = this.ARR_VEC.length;
         this.cSelNumMax = this.numItems - 1;
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
         this.setUpSelector();
      }
      
      protected function setUpSelector() : void
      {
         this.SELECTOR.x = SELECTOR_LEFT_MARGIN;
         TXT_CONT.addChild(this.SELECTOR);
         this._cSelNum = this.selectorStartIndex;
         if(!isNaN(this.txtContStartY))
         {
            TXT_CONT.y = this.txtContStartY;
         }
      }
      
      protected function setNewSelection(param1:int) : void
      {
         var _loc2_:Array = this.ARR_VEC[this._cSelNum];
         var _loc3_:TextFieldContainer = _loc2_[this.IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         if(_loc3_.text == MenuBoxItems.HIDDEN_CHEAT)
         {
            _loc3_.changeType(FontCharMenu.TYPE_DISABLED);
         }
         else
         {
            _loc3_.changeType(FontCharMenu.TYPE_NORMAL);
         }
         this._cSelNum = param1;
         _loc2_ = this.ARR_VEC[this._cSelNum];
         var _loc4_:TextFieldContainer = _loc2_[this.IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         this.SELECTOR.y = _loc4_.y + SELECTOR_BOTTOM_MARGIN;
         if(this.centerChoices)
         {
            this.SELECTOR.x = _loc4_.x - 14;
         }
         _loc4_.changeType(FontCharMenu.TYPE_SELECTED);
         if(this.madeFirstSelection)
         {
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CHANGE_SELECTION);
         }
         else if(!isNaN(this.txtContStartY))
         {
            TXT_CONT.y = this.txtContStartY;
         }
         var _loc5_:Number = this.SELECTOR.localToGlobal(GlobVars.ZERO_PT).y;
         var _loc6_:Number = 0;
         if(this.dscTxt)
         {
            _loc6_ = this.dscTxt.height + this.ITEM_TXT_TOP_PADDING;
         }
         if(contentMaskRect && _loc5_ > y + contentMaskRect.height + 10)
         {
            if(this._cSelNum == this.numItems - 1)
            {
               TXT_CONT.y = -(this.numItems - numItemsThatFitOnScreen) * this.SPACE_BTWN_ITEMS + txtContDefY;
            }
            else
            {
               TXT_CONT.y -= this.SPACE_BTWN_ITEMS;
            }
         }
         else if(_loc5_ < y)
         {
            if(this._cSelNum == 0)
            {
               TXT_CONT.y = txtContDefY;
            }
            else
            {
               TXT_CONT.y += this.SPACE_BTWN_ITEMS;
            }
         }
      }
      
      protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:Vector.<String> = null;
         if(this.checkChoseLockedCheat(param1,param3.text))
         {
            return;
         }
         switch(param1)
         {
            case MenuBoxItems.QUICK_PLAY:
               if(GameSettings.tutorials)
               {
                  GameSettings.changeTutorials(0);
               }
               GameSettings.changeCampaignMode(CampaignModes.ALL_CHARACTERS);
               cancel();
               EVENT_MNGR.startNewGame();
               break;
            case MenuBoxItems.GAME_PAD_INFO:
               (_loc5_ = new Vector.<String>()).push(MenuBoxItems.CANCEL);
               _loc5_.push(MenuBoxItems.OKAY);
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.GAME_PAD_INFO_MSG_1,_loc5_);
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.LOAD_GAME:
               if(OnlineData.newVersionAvailable && !GameSettings.showedNewVersionAvailableMessage && !OnlineData.onOfficialWebsite)
               {
                  GameSettings.showedNewVersionAvailableMessage = true;
                  nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.NEW_VERSION_AVAILABLE,Vector.<String>([MenuBoxItems.NO,MenuBoxItems.YES]),1);
                  cancel();
               }
               else if(this.STAT_MNGR.fileRef == null)
               {
                  this.STAT_MNGR.loadSaveData();
               }
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.NEW_GAME:
               if(OnlineData.newVersionAvailable && !GameSettings.showedNewVersionAvailableMessage)
               {
                  GameSettings.showedNewVersionAvailableMessage = true;
                  nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.NEW_VERSION_AVAILABLE,Vector.<String>([MenuBoxItems.NO,MenuBoxItems.YES]),1);
                  nextMsgBxToCreate.nextMsgBxToCreate = new NewGameOptionsMenu();
               }
               else
               {
                  nextMsgBxToCreate = new NewGameOptionsMenu();
               }
               cancel();
               this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_START_NEW_GAME);
               break;
            case MenuBoxItems.RESUME_GAME:
               this.pressPseBtn();
               break;
            case MenuBoxItems.LOAD_SAVE_GAME:
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.LOAD_SAVE_MSG,Vector.<String>([MenuBoxItems.LOAD,MenuBoxItems.SAVE]));
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.QUIT_GAME:
               (_loc5_ = new Vector.<String>()).push(MenuBoxItems.CANCEL);
               _loc5_.push(MenuBoxItems.OKAY);
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.QUIT_GAME_CONFIRM,_loc5_);
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.PLAY_NEW_VERSION:
               (_loc5_ = new Vector.<String>()).push(MenuBoxItems.CANCEL);
               _loc5_.push(MenuBoxItems.OKAY);
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.VISIT_WEBSITE_MSG_1,_loc5_);
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.VIEW_WIKI:
               (_loc5_ = new Vector.<String>()).push(MenuBoxItems.CANCEL);
               _loc5_.push(MenuBoxItems.OKAY);
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.VIEW_WIKI_MSG,_loc5_);
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.SUPER_RETRO_SQUAD:
               (_loc5_ = new Vector.<String>()).push(MenuBoxItems.CANCEL);
               _loc5_.push(MenuBoxItems.OKAY);
               nextMsgBxToCreate = new PlainMessageMenuBox(MessageBoxMessages.SUPER_RETRO_SQUAD_MSG,_loc5_);
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.LINKS:
               nextMsgBxToCreate = new LinksMenu();
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.OPTIONS:
               nextMsgBxToCreate = new OptionsMenu();
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.VIEW_STATS:
               nextMsgBxToCreate = new StatsMessageBox();
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.CHEATS:
               nextMsgBxToCreate = new CheatMenu();
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
               break;
            case MenuBoxItems.LEVEL_SELECT:
               nextMsgBxToCreate = new LevelSelectMenu();
               MSG_BX_MNGR.writeNextMainMenu(nextMsgBxToCreate);
               cancel();
               this.SND_MNGR.playSoundNow(this.SN_CHOOSE_ITEM);
         }
      }
      
      private function checkChoseLockedCheat(param1:String, param2:String) : Boolean
      {
         if(param2 != MenuBoxItems.HIDDEN_CHEAT)
         {
            return false;
         }
         return false;
      }
      
      override public function pressUpBtn() : void
      {
         var _loc1_:int = this._cSelNum;
         _loc1_--;
         if(_loc1_ < this.C_SEL_NUM_MIN)
         {
            _loc1_ = this.cSelNumMax;
         }
         this.setNewSelection(_loc1_);
      }
      
      override public function pressDwnBtn() : void
      {
         var _loc1_:int = this._cSelNum;
         _loc1_++;
         if(_loc1_ > this.cSelNumMax)
         {
            _loc1_ = this.C_SEL_NUM_MIN;
         }
         this.setNewSelection(_loc1_);
      }
      
      override public function pressJmpBtn() : void
      {
         var _loc1_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_NAME];
         var _loc2_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_VALUE];
         var _loc3_:TextFieldContainer = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         this.chooseItem(_loc1_,_loc2_,_loc3_,GameSettings.INCREASE_SETTING_NUM);
      }
      
      override public function pressLftBtn() : void
      {
         var _loc1_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_NAME];
         var _loc2_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_VALUE];
         var _loc3_:TextFieldContainer = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         if(_loc2_ && _loc3_ && _loc3_.text != MenuBoxItems.HIDDEN_CHEAT)
         {
            this.chooseItem(_loc1_,_loc2_,_loc3_,GameSettings.DECREASE_SETTING_NUM);
         }
      }
      
      override public function pressRhtBtn() : void
      {
         var _loc1_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_NAME];
         var _loc2_:String = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_VALUE];
         var _loc3_:TextFieldContainer = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_TEXT_FIELD] as TextFieldContainer;
         if(_loc2_ && _loc3_ && _loc3_.text != MenuBoxItems.HIDDEN_CHEAT)
         {
            this.pressJmpBtn();
         }
      }
      
      override public function pressPseBtn() : void
      {
         if(GameStateManager.GS_MNGR.gameState == GameStates.PAUSE)
         {
            this.resumeGame = true;
            nextMsgBxToCreate = null;
            cancel();
         }
      }
      
      override protected function reachedMaxSize() : void
      {
         super.reachedMaxSize();
         _interactive = true;
      }
      
      public function changeTextToWhite() : void
      {
         var _loc2_:TextField = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.numItems)
         {
            _loc2_ = this.ARR_VEC[_loc1_][this.IND_ARR_VEC_TEXT_FIELD] as TextField;
            if(_loc2_.text == MenuBoxItems.LOAD_GAME || _loc2_.text == MenuBoxItems.NEW_GAME)
            {
               _loc2_.textColor = this.COLOR_WHITE;
            }
            _loc1_++;
         }
         _loc2_ = this.ARR_VEC[this._cSelNum][this.IND_ARR_VEC_TEXT_FIELD] as TextField;
         if(_loc2_.text == MenuBoxItems.LOAD_GAME || _loc2_.text == MenuBoxItems.NEW_GAME)
         {
            _loc2_.textColor = this.COLOR_PINK;
         }
      }
      
      override protected function destroy() : void
      {
         activeMenu = null;
         super.destroy();
         this.SELECTOR.cleanUp();
         MSG_BX_MNGR.mainMenu = null;
         if(this.resumeGame)
         {
            EVENT_MNGR.unpauseGame();
         }
      }
      
      public function get cSelNum() : int
      {
         return this._cSelNum;
      }
   }
}
