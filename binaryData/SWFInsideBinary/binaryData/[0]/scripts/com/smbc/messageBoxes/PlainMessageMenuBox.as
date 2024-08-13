package com.smbc.messageBoxes
{
   import com.explodingRabbit.utils.KeyCodeToString;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.OnlineData;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.MushroomSelector;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.interfaces.IMessageBoxSelectable;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.text.*;
   
   public class PlainMessageMenuBox extends PlainMessageBox implements IMessageBoxSelectable
   {
      
      public static const SET_BUTTONS_START_NAME:String = "setButtonsStart";
      
      public static const SET_BUTTONS_END_NAME:String = "setButtonsEnd";
      
      public static const BLANK_PAGE:String = "_blank";
       
      
      private var strVec:Vector.<String>;
      
      private const ITEM_VEC:Vector.<TextFieldContainer> = new Vector.<TextFieldContainer>();
      
      protected const SPACE_BTWN_ITEMS:int = 12;
      
      protected const LEFT_MARGIN:int = 15;
      
      protected const ITEM_TXT_TOP_PADDING:int = 30;
      
      protected const SELECTOR_LEFT_MARGIN:int = 8;
      
      protected const SELECTOR_BOTTOM_MARGIN:int = 8;
      
      protected const SELECTOR_RIGHT_PADDING:int = 10;
      
      protected const SELECTOR:Sprite = new MushroomSelector();
      
      protected const GAMEPAD_INFO_URL:String = "http://www.explodingrabbit.com/games/super-mario-bros-crossover/how-to-play-with-a-gamepad";
      
      protected const VISIT_WEBSITE_URL:String = "http://www.explodingrabbit.com";
      
      protected const VIEW_WIKI:String = "http://www.explodingrabbit.com/wiki/Super_Mario_Bros._Crossover";
      
      protected const SUPER_RETRO_SQUAD_URL:String = "http://www.explodingrabbit.com/games/super-retro-squad";
      
      protected const SN_CHANGE_SELECTION:String = MessageBoxSounds.SN_CHANGE_SELECTION;
      
      protected var cSelNum:int;
      
      protected var C_SEL_NUM_MIN:int = 0;
      
      protected var cSelNumMax:int;
      
      protected var itemVecLen:int;
      
      private const COLOR_WHITE:uint = 4294967295;
      
      private const COLOR_PINK:uint = 4294954695;
      
      private const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      private var madeFirstSelection:Boolean;
      
      public function PlainMessageMenuBox(param1:String, param2:Vector.<String>, param3:int = 0)
      {
         this.strVec = new Vector.<String>();
         this.strVec = param2.concat();
         super(param1);
         this.cSelNum = param3;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.setUpSelector();
      }
      
      override protected function setUpText() : void
      {
         var n:int;
         var txtForm:TextFormat;
         var i:int;
         var txtStr:String = null;
         var txtFld:TextFieldContainer = null;
         if(mbName == SET_BUTTONS_START_NAME)
         {
            this.replaceButtonStrings(false);
         }
         else if(mbName == SET_BUTTONS_END_NAME)
         {
            this.replaceButtonStrings(true);
         }
         super.setUpText();
         n = int(this.strVec.length);
         txtForm = GlobVars.TF_MAIN;
         i = 0;
         while(i < n)
         {
            txtStr = this.strVec[i];
            txtFld = new TextFieldContainer(FontCharMenu.FONT_NUM);
            with(txtFld)
            {
               
               defaultTextFormat = txtForm;
               selectable = false;
               embedFonts = true;
               multiline = false;
               autoSize = TextFieldAutoSize.LEFT;
               wordWrap = false;
               text = txtStr;
               if(i == 0)
               {
                  x = MSG_TXT.width * 0.25 - width / 2;
               }
               else if(i == 1)
               {
                  x = MSG_TXT.width * 0.75 - width / 2;
               }
               y = MSG_TXT.y + MSG_TXT.height + ITEM_TXT_TOP_PADDING;
            }
            TXT_CONT.addChild(txtFld);
            this.ITEM_VEC.push(txtFld);
            i++;
         }
         this.strVec = null;
         this.ITEM_VEC.fixed = true;
         this.itemVecLen = this.ITEM_VEC.length;
         this.cSelNumMax = this.itemVecLen - 1;
      }
      
      protected function setUpSelector() : void
      {
         this.SELECTOR.y = this.ITEM_VEC[0].y + this.SELECTOR_BOTTOM_MARGIN;
         TXT_CONT.addChild(this.SELECTOR);
         this.setNewSelection(this.cSelNum);
         this.madeFirstSelection = true;
      }
      
      protected function setNewSelection(param1:int) : void
      {
         var _loc3_:TextFieldContainer = null;
         var _loc2_:TextFieldContainer = this.ITEM_VEC[this.cSelNum];
         _loc2_.changeType(FontCharMenu.TYPE_NORMAL);
         this.cSelNum = param1;
         _loc3_ = this.ITEM_VEC[this.cSelNum];
         this.SELECTOR.x = _loc3_.x - this.SELECTOR_RIGHT_PADDING;
         _loc3_.changeType(FontCharMenu.TYPE_SELECTED);
         if(this.madeFirstSelection)
         {
            this.SND_MNGR.playSoundNow(this.SN_CHANGE_SELECTION);
         }
      }
      
      protected function chooseItem(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:StatManager = StatManager.STAT_MNGR;
         if(param1 == MenuBoxItems.OKAY || param1 == MenuBoxItems.YES || param1 == MenuBoxItems.SAVE)
         {
            _loc2_ = true;
         }
         switch(_msgStr)
         {
            case MessageBoxMessages.GAME_PAD_INFO_MSG_1:
               if(_loc2_)
               {
                  navigateToURL(new URLRequest(this.GAMEPAD_INFO_URL),BLANK_PAGE);
               }
               break;
            case MessageBoxMessages.VISIT_WEBSITE_MSG_1:
               if(_loc2_)
               {
                  navigateToURL(new URLRequest(this.VISIT_WEBSITE_URL),BLANK_PAGE);
               }
               break;
            case MessageBoxMessages.VIEW_WIKI_MSG:
               if(_loc2_)
               {
                  navigateToURL(new URLRequest(this.VIEW_WIKI),BLANK_PAGE);
               }
               break;
            case MessageBoxMessages.NEW_VERSION_AVAILABLE:
               if(_loc2_)
               {
                  navigateToURL(new URLRequest(OnlineData.gameUrl),BLANK_PAGE);
                  nextMsgBxToCreate = null;
               }
               else if(nextMsgBxToCreate == null && _loc4_.fileRef == null)
               {
                  _loc4_.loadSaveData();
               }
               break;
            case MessageBoxMessages.FULL_SCREEN_ONLY_AVAILABLE_ON_DEVELOPER_WEBSITE:
               if(_loc2_)
               {
                  navigateToURL(new URLRequest(OnlineData.gameUrl),BLANK_PAGE);
               }
               break;
            case MessageBoxMessages.CANCEL_REVIVE:
               if(_loc2_)
               {
                  CharacterSelectBox.instance.confirmCancelRevive();
               }
               break;
            case MessageBoxMessages.LOAD_SAVE_MSG:
               if(_loc2_)
               {
                  if(_loc4_.fileRef == null)
                  {
                     _loc4_.saveData();
                  }
               }
               else if(_loc4_.fileRef == null)
               {
                  _loc4_.loadSaveData();
               }
               _loc3_ = true;
               break;
            case MessageBoxMessages.QUIT_GAME_CONFIRM:
               if(_loc2_)
               {
                  EVENT_MNGR.restartGame();
                  nextMsgBxToCreate = null;
               }
               else
               {
                  MSG_BX_MNGR.writeNextMainMenu(this);
               }
               break;
            case MessageBoxMessages.TUTORIALS_ARE_ON:
               if(!_loc2_)
               {
                  GameSettings.changeTutorials(0);
                  _loc3_ = true;
               }
               cancel();
               dispatchEvent(new Event(CustomEvents.MSG_BX_CHOOSE_ITEM + param1));
               if(GameSettings.campaignMode != CampaignModes.SINGLE_CHARACTER_RANDOM)
               {
                  ScreenManager.SCRN_MNGR.forceShowCharacterSelectScreen = true;
               }
               EVENT_MNGR.startNewGame();
               return;
            default:
               if(mbName == SET_BUTTONS_START_NAME)
               {
                  if(_loc2_)
                  {
                     nextMsgBxToCreate = MSG_BX_MNGR.setBtnsDct[MessageBoxMessages.SET_BUTTONS_LFT];
                     BTN_MNGR.setButtons = true;
                  }
               }
               else if(mbName == SET_BUTTONS_END_NAME)
               {
                  nextMsgBxToCreate = new OptionsMenu();
                  if(_loc2_)
                  {
                     BTN_MNGR.writeNewButtons();
                  }
                  else
                  {
                     BTN_MNGR.discardTempButtons();
                  }
               }
         }
         if(_loc2_ || _loc3_)
         {
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CHOOSE_ITEM);
         }
         else
         {
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CANCEL_ITEM);
         }
         dispatchEvent(new Event(CustomEvents.MSG_BX_CHOOSE_ITEM + param1));
         cancel();
      }
      
      private function replaceButtonStrings(param1:Boolean) : void
      {
         if(param1)
         {
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_LFT_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.lftBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_RHT_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.rhtBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_UP_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.upBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_DWN_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.dwnBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_JMP_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.jmpBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_ATK_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.atkBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_SPC_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.spcBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_PSE_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.pseBtnKeyCodeTemp));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_SEL_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.selBtnKeyCodeTemp));
         }
         else
         {
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_LFT_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.lftBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_RHT_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.rhtBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_UP_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.upBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_DWN_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.dwnBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_JMP_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.jmpBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_ATK_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.atkBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_SPC_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.spcBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_PSE_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.pseBtnKeyCode));
            _msgStr = _msgStr.replace(MessageBoxMessages.SET_BUTTONS_SEL_REPLACE_STR,KeyCodeToString.convertKeyCode(BTN_MNGR.selBtnKeyCode));
         }
      }
      
      override public function pressLftBtn() : void
      {
         if(this.cSelNum == 0)
         {
            this.setNewSelection(1);
         }
         else if(this.cSelNum == 1)
         {
            this.setNewSelection(0);
         }
      }
      
      override public function pressRhtBtn() : void
      {
         if(this.cSelNum == 0)
         {
            this.setNewSelection(1);
         }
         else if(this.cSelNum == 1)
         {
            this.setNewSelection(0);
         }
      }
      
      override public function pressJmpBtn() : void
      {
         var _loc1_:String = this.ITEM_VEC[this.cSelNum].text;
         this.chooseItem(_loc1_);
      }
      
      override public function pressAtkBtn() : void
      {
         if(nextMsgBxToCreate)
         {
            cancel();
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CANCEL_ITEM);
         }
      }
      
      override public function pressPseBtn() : void
      {
      }
      
      override public function pressSpcBtn() : void
      {
      }
   }
}
