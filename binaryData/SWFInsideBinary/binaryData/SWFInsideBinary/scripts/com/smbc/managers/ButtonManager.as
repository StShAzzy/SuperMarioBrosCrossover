package com.smbc.managers
{
   import com.gme.GameMusicEmu;
   import com.smbc.characters.Character;
   import com.smbc.characters.Sophia;
   import com.smbc.data.Cheats;
   import com.smbc.data.GameSettings;
   import com.smbc.errors.SingletonError;
   import com.smbc.interfaces.IMessageBoxSelectable;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.*;
   import com.smbc.messageBoxes.CharacterSelectBox;
   import com.smbc.messageBoxes.MenuBox;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.messageBoxes.MessageBoxMessages;
   import com.smbc.messageBoxes.MessageBoxSounds;
   import com.smbc.messageBoxes.MessageBoxTitleContainer;
   import com.smbc.messageBoxes.PlainMessageBox;
   import com.smbc.messageBoxes.StatsMessageBox;
   import com.smbc.screens.InformativeBlackScreen;
   import com.smbc.utils.CharacterSequencer;
   import flash.display.Stage;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import nl.stroep.utils.ImageSaver;
   
   public final class ButtonManager extends MainManager
   {
      
      public static const BTN_MNGR:ButtonManager = new ButtonManager();
      
      private static var instantiated:Boolean;
      
      private static const RECORD_KEY:int = Keyboard.SPACE;
      
      private static const EXPORT_RECORDING_KEY:int = Keyboard.BACKSPACE;
       
      
      private const STAGE:Stage = GlobVars.STAGE;
      
      private var lftBtn:Boolean;
      
      private var rhtBtn:Boolean;
      
      private var upBtn:Boolean;
      
      private var dwnBtn:Boolean;
      
      private var jmpBtn:Boolean;
      
      private var atkBtn:Boolean;
      
      private var spcBtn:Boolean;
      
      private var selBtn:Boolean;
      
      private var pseBtn:Boolean;
      
      private var _lftBtnKeyCode:int = 37;
      
      private var _rhtBtnKeyCode:int = 39;
      
      private var _upBtnKeyCode:int = 38;
      
      private var _dwnBtnKeyCode:int = 40;
      
      private var _jmpBtnKeyCode:int = 90;
      
      private var _atkBtnKeyCode:int = 88;
      
      private var _spcBtnKeyCode:int = 67;
      
      private var _pseBtnKeyCode:int = 13;
      
      private var _selBtnKeyCode:int = 65;
      
      private var _lftBtnKeyCodeTemp:int = -1;
      
      private var _rhtBtnKeyCodeTemp:int = -1;
      
      private var _upBtnKeyCodeTemp:int = -1;
      
      private var _dwnBtnKeyCodeTemp:int = -1;
      
      private var _jmpBtnKeyCodeTemp:int = -1;
      
      private var _atkBtnKeyCodeTemp:int = -1;
      
      private var _spcBtnKeyCodeTemp:int = -1;
      
      private var _pseBtnKeyCodeTemp:int = -1;
      
      private var _selBtnKeyCodeTemp:int = -1;
      
      private const UP_ARROW_KEY_CODE:int = 38;
      
      private const DOWN_ARROW_KEY_CODE:int = 40;
      
      private const LEFT_ARROW_KEY_CODE:int = 37;
      
      private const RIGHT_ARROW_KEY_CODE:int = 39;
      
      private const ENTER_KEY_CODE:int = 13;
      
      private const ESCAPE_KEY_CODE:int = 27;
      
      private const ADD_UPGRADE_KEY_CODE:int = 80;
      
      private const CHANGE_CHARACTER_BTN_KEY_CODE:int = 81;
      
      private const CHANGE_CHAR_SKIN_KEY_CODE:int = 221;
      
      private const CHANGE_MAP_SKIN_KEY_CODE:int = 220;
      
      private const CHANGE_INTERFACE_SKIN_KEY_CODE:int = 219;
      
      private const CHANGE_MUSIC_TYPE_KEY_CODE:int = 192;
      
      private const SWAP_FLASH_PALETTE:int = 186;
      
      private const CHANGE_GB_PALETTE_KEY_CODE:int = 222;
      
      private const TAKE_NO_DAMAGE_BTN_KEY_CODE:int = 73;
      
      private const MAX_AMMO_KEY:int = 191;
      
      private const REMOVE_MISSILE_BTN_KEY_CODE:int = 188;
      
      private const TOGGLE_FULL_SCREEN_KEY_CODE:int = 70;
      
      private const NEXT_FRAME:int = 187;
      
      private const PAUSE_GAME_LOOP:int = 189;
      
      private const TOGGLE_SCREEN_SCROLL_BTN_KEY_CODE:int = 57;
      
      private const SPC_PORT_1_INC:int = 49;
      
      private const SPC_PORT_2_INC:int = 50;
      
      private const SPC_PORT_3_INC:int = 51;
      
      private const SPC_PORT_4_INC:int = 52;
      
      private const SPC_RESET_PORTS:int = 48;
      
      public var keyCodesVec:Vector.<int>;
      
      private var cs:CharacterSelect;
      
      private var tl:TitleLevel;
      
      public var activeMsgBx:MessageBox;
      
      public var menuBx:MenuBox;
      
      public var setButtons:Boolean;
      
      private const GS_CHAR_SEL:String = "characterSelect";
      
      private const GS_PAUSE:String = "pause";
      
      private const GS_PLAY:String = "play";
      
      private const GS_MENU:String = "menu";
      
      private const GS_CONTINUE_SELECT:String = "continueSelect";
      
      private const DEBUG_MODE:Boolean = false;
      
      private var recordSeq:CharacterSequencer;
      
      public function ButtonManager()
      {
         this.keyCodesVec = new Vector.<int>(9,true);
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.updateKeyCodesVec();
         if(this.STAGE.hasEventListener(KeyboardEvent.KEY_DOWN))
         {
            throw new Error("stage already has keyDownLsr");
         }
         if(this.STAGE.hasEventListener(KeyboardEvent.KEY_UP))
         {
            throw new Error("stage already has keyUpLsr");
         }
         this.STAGE.addEventListener(KeyboardEvent.KEY_DOWN,this.keyDownLsr);
         this.STAGE.addEventListener(KeyboardEvent.KEY_UP,this.keyUpLsr);
      }
      
      private function keyDownLsr(param1:KeyboardEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:ImageSaver = null;
         var _loc6_:GameMusicEmu = null;
         var _loc2_:String = gsMngr.gameState;
         var _loc3_:Boolean = false;
         if(level is CharacterSelect && !this.activeMsgBx)
         {
            this.activeMsgBx = CharacterSelectBox.instance;
         }
         if(this.activeMsgBx && this.activeMsgBx.interactive)
         {
            _loc3_ = true;
            if(this.setButtons)
            {
               this.setButtonKeyCode(param1.keyCode);
               return;
            }
            if(this.activeMsgBx is PlainMessageBox && !(this.activeMsgBx is IMessageBoxSelectable) && !(this.activeMsgBx is MessageBoxTitleContainer) && !(this.activeMsgBx is StatsMessageBox))
            {
               this.activeMsgBx.pressJmpBtn();
               return;
            }
         }
         else if(this.tl)
         {
            this.tl.pressJmpBtn();
         }
         switch(param1.keyCode)
         {
            case this._lftBtnKeyCode:
               if(this.lftBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressLftBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressLftBtn,"pressLftBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressLftBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressLftBtn();
               }
               this.lftBtn = true;
               break;
            case this._rhtBtnKeyCode:
               if(this.rhtBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressRhtBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressRhtBtn,"pressRhtBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressRhtBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressRhtBtn();
               }
               this.rhtBtn = true;
               break;
            case this._upBtnKeyCode:
               if(this.upBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressUpBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressUpBtn,"pressUpBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressUpBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressUpBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressUpBtn();
               }
               this.upBtn = true;
               break;
            case this._dwnBtnKeyCode:
               if(this.dwnBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressDwnBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressDwnBtn,"pressDwnBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressDwnBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressDwnBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressDwnBtn();
               }
               this.dwnBtn = true;
               break;
            case this._jmpBtnKeyCode:
               if(this.jmpBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressJmpBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressJmpBtn,"pressJmpBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressJmpBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressJmpBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressJmpBtn();
               }
               this.jmpBtn = true;
               break;
            case this._atkBtnKeyCode:
               if(this.atkBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressAtkBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressAtkBtn,"pressAtkBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressAtkBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressAtkBtn();
               }
               this.atkBtn = true;
               break;
            case this._spcBtnKeyCode:
               if(this.spcBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressSpcBtn();
               }
               else if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressSpcBtn,"pressSpcBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressSpcBtn();
               }
               this.spcBtn = true;
               break;
            case this._selBtnKeyCode:
               if(this.selBtn)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.pressSelBtn,"pressSelBtn");
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressSpcBtn();
               }
               this.selBtn = true;
               break;
            case this._pseBtnKeyCode:
               if(this.pseBtn)
               {
                  break;
               }
               if(this.tl)
               {
                  this.tl.pressPseBtn();
               }
               else if(scrnMngr.creditsAreRolling)
               {
                  scrnMngr.fastForwardCredits();
               }
               else if(_loc2_ == this.GS_PLAY)
               {
                  eventMngr.pauseGame();
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressPseBtn();
               }
               else if(_loc2_ == this.GS_CHAR_SEL)
               {
                  this.cs.pressPseBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressPseBtn();
               }
               this.pseBtn = true;
               if(this.DEBUG_MODE && GameSettings.recordCharSeq)
               {
                  if(_loc2_ == this.GS_PAUSE && !this.recordSeq)
                  {
                     this.recordSeq = new CharacterSequencer();
                     this.recordSeq.recordStart(player);
                  }
                  else if(_loc2_ == this.GS_PLAY && this.recordSeq)
                  {
                     this.recordSeq.recordEnd();
                     this.recordSeq = null;
                  }
               }
               break;
            case this.UP_ARROW_KEY_CODE:
               if(this.upBtn)
               {
                  return;
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressUpBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressUpBtn();
               }
               break;
            case this.DOWN_ARROW_KEY_CODE:
               if(this.dwnBtn)
               {
                  return;
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressDwnBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressDwnBtn();
               }
               break;
            case this.LEFT_ARROW_KEY_CODE:
               if(this.lftBtn)
               {
                  return;
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressLftBtn();
               }
               break;
            case this.RIGHT_ARROW_KEY_CODE:
               if(this.rhtBtn)
               {
                  return;
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressRhtBtn();
               }
               break;
            case this.ENTER_KEY_CODE:
               if(this.jmpBtn)
               {
                  return;
               }
               if(_loc3_)
               {
                  this.activeMsgBx.pressJmpBtn();
               }
               else if(_loc2_ == this.GS_CONTINUE_SELECT)
               {
                  InformativeBlackScreen.instance.pressJmpBtn();
               }
               break;
         }
         if(!this.DEBUG_MODE)
         {
            return;
         }
         switch(param1.keyCode)
         {
            case this.ADD_UPGRADE_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  Character.hitRandomUpgrade(statMngr.curCharNum,false);
               }
               break;
            case this.CHANGE_CHARACTER_BTN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.changeChar();
               }
               break;
            case this.CHANGE_CHAR_SKIN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  GraphicsManager.INSTANCE.changeCharacterSkin(player);
               }
               break;
            case this.CHANGE_MAP_SKIN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  GameSettings.changeMapSkin(-1,false);
               }
               break;
            case this.TOGGLE_FULL_SCREEN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               scrnMngr.enterFullScreen();
               break;
            case this.TAKE_NO_DAMAGE_BTN_KEY_CODE:
               _loc4_ = !Cheats.invincible;
               Cheats.invincible = _loc4_;
               if(level && level.player)
               {
                  if(_loc4_)
                  {
                     level.player.forceTakeNoDamage();
                  }
                  else
                  {
                     level.player.forceTakeDamage();
                  }
               }
               break;
            case this.CHANGE_INTERFACE_SKIN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  GameSettings.changeInterfaceSkin(GameSettings.INCREASE_SETTING_NUM);
               }
               break;
            case this.SWAP_FLASH_PALETTE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  player.flashPaletteSwap();
               }
               break;
            case this.CHANGE_GB_PALETTE_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  GameSettings.changeMapPalette(GameSettings.INCREASE_SETTING_NUM);
               }
               break;
            case this.CHANGE_MUSIC_TYPE_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  if(!GameSettings.muteMusic)
                  {
                     GameSettings.changeMusicType(GameSettings.INCREASE_SETTING_NUM);
                  }
                  else
                  {
                     GameSettings.changeMuteMusic();
                     sndMngr.changeMusic();
                  }
               }
               break;
            case this.PAUSE_GAME_LOOP:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  level.manualGameLoop = !level.manualGameLoop;
               }
               break;
            case this.NEXT_FRAME:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  level.manualGameLoopNextFrame = true;
               }
               break;
            case this.TOGGLE_SCREEN_SCROLL_BTN_KEY_CODE:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY)
               {
                  level.toggleScreenScroll();
               }
               break;
            case this.MAX_AMMO_KEY:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(player)
               {
                  player.setAllAmmoToMax();
               }
               break;
            case RECORD_KEY:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if((_loc5_ = ImageSaver.INSTANCE).recording)
               {
                  _loc5_.stopRecording();
               }
               else
               {
                  _loc5_.startRecording();
               }
               break;
            case EXPORT_RECORDING_KEY:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(this.jmpBtn)
               {
                  ImageSaver.INSTANCE.clearStoredImages();
               }
               else
               {
                  ImageSaver.INSTANCE.saveAll();
               }
               break;
            case this.SPC_PORT_1_INC:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  ++sndMngr.musicPlayerMain.port1;
                  sndMngr.musicPlayerMain.setSpcPorts();
                  sndMngr.changeMusic();
               }
               break;
            case this.SPC_PORT_2_INC:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  ++sndMngr.musicPlayerMain.port2;
                  sndMngr.musicPlayerMain.setSpcPorts();
                  sndMngr.changeMusic();
               }
               break;
            case this.SPC_PORT_3_INC:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  ++sndMngr.musicPlayerMain.port3;
                  sndMngr.musicPlayerMain.setSpcPorts();
                  sndMngr.changeMusic();
               }
               break;
            case this.SPC_PORT_4_INC:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  ++sndMngr.musicPlayerMain.port4;
                  sndMngr.musicPlayerMain.setSpcPorts();
                  sndMngr.changeMusic();
               }
               break;
            case this.SPC_RESET_PORTS:
               if(!this.DEBUG_MODE)
               {
                  break;
               }
               if(_loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  (_loc6_ = sndMngr.musicPlayerMain).port1 = -1;
                  _loc6_.port2 = -1;
                  _loc6_.port3 = -1;
                  _loc6_.port4 = -1;
                  _loc6_.setSpcPorts();
                  sndMngr.changeMusic();
               }
               break;
         }
      }
      
      private function keyUpLsr(param1:KeyboardEvent) : void
      {
         var _loc2_:String = gsMngr.gameState;
         switch(param1.keyCode)
         {
            case this._lftBtnKeyCode:
               if(!this.lftBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relLftBtn,"relLftBtn");
               }
               this.lftBtn = false;
               break;
            case this._rhtBtnKeyCode:
               if(!this.rhtBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relRhtBtn,"relRhtBtn");
               }
               this.rhtBtn = false;
               break;
            case this._upBtnKeyCode:
               if(!this.upBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relUpBtn,"relUpBtn");
               }
               this.upBtn = false;
               break;
            case this._dwnBtnKeyCode:
               if(!this.dwnBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relDwnBtn,"relDwnBtn");
               }
               this.dwnBtn = false;
               break;
            case this._jmpBtnKeyCode:
               if(!this.jmpBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relJmpBtn,"relJmpBtn");
               }
               this.jmpBtn = false;
               break;
            case this._atkBtnKeyCode:
               if(!this.atkBtn)
               {
                  break;
               }
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relAtkBtn,"relAtkBtn");
               }
               this.atkBtn = false;
               break;
            case this._spcBtnKeyCode:
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relSpcBtn,"relSpcBtn");
               }
               this.spcBtn = false;
               break;
            case this._selBtnKeyCode:
               if(!this.tl && _loc2_ == this.GS_PLAY && !player.disableInput)
               {
                  player.storeButton(player.relSelBtn,"relSelBtn");
               }
               this.selBtn = false;
               break;
            case this._pseBtnKeyCode:
               if(!this.pseBtn)
               {
                  break;
               }
               this.pseBtn = false;
               break;
         }
      }
      
      private function updateKeyCodesVec() : void
      {
         this.keyCodesVec[0] = this._lftBtnKeyCode;
         this.keyCodesVec[1] = this._rhtBtnKeyCode;
         this.keyCodesVec[2] = this._upBtnKeyCode;
         this.keyCodesVec[3] = this._dwnBtnKeyCode;
         this.keyCodesVec[4] = this._jmpBtnKeyCode;
         this.keyCodesVec[5] = this._atkBtnKeyCode;
         this.keyCodesVec[6] = this._spcBtnKeyCode;
         this.keyCodesVec[7] = this._pseBtnKeyCode;
         this.keyCodesVec[8] = this._selBtnKeyCode;
      }
      
      public function writeKeyCodesFromVec() : void
      {
         this._lftBtnKeyCode = this.keyCodesVec[0];
         this._rhtBtnKeyCode = this.keyCodesVec[1];
         this._upBtnKeyCode = this.keyCodesVec[2];
         this._dwnBtnKeyCode = this.keyCodesVec[3];
         this._jmpBtnKeyCode = this.keyCodesVec[4];
         this._atkBtnKeyCode = this.keyCodesVec[5];
         this._spcBtnKeyCode = this.keyCodesVec[6];
         this._pseBtnKeyCode = this.keyCodesVec[7];
         this._selBtnKeyCode = this.keyCodesVec[8];
         this.relBtns();
      }
      
      public function updateVars() : void
      {
         level = GlobVars.level;
         player = level.player;
      }
      
      public function characterSelectStartHandler() : void
      {
         this.cs = CharacterSelect.instance;
      }
      
      public function titleLevelInitiateHandler() : void
      {
         this.tl = TitleLevel.instance;
      }
      
      public function titleLevelDestroyHandler() : void
      {
         this.tl = null;
      }
      
      public function relBtns() : void
      {
         this.upBtn = false;
         this.dwnBtn = false;
         this.lftBtn = false;
         this.rhtBtn = false;
         this.atkBtn = false;
         this.jmpBtn = false;
         this.spcBtn = false;
         this.pseBtn = false;
      }
      
      private function setButtonKeyCode(param1:uint) : void
      {
         switch((this.activeMsgBx as PlainMessageBox).msgStr)
         {
            case MessageBoxMessages.SET_BUTTONS_LFT:
               if(this.checkNewKeyCode(param1))
               {
                  this._lftBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_LEFT);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_RHT:
               if(this.checkNewKeyCode(param1))
               {
                  this._rhtBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_RIGHT);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_UP:
               if(this.checkNewKeyCode(param1))
               {
                  this._upBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_UP);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_DWN:
               if(this.checkNewKeyCode(param1))
               {
                  this._dwnBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_DOWN);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_JMP:
               if(this.checkNewKeyCode(param1))
               {
                  this._jmpBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_JUMP);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_ATK:
               if(this.checkNewKeyCode(param1))
               {
                  this._atkBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_ATTACK);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_SPC:
               if(this.checkNewKeyCode(param1))
               {
                  this._spcBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_SPECIAL);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_PSE:
               if(this.checkNewKeyCode(param1))
               {
                  this._pseBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_PAUSE);
               }
               else
               {
                  this.recallButtonMessageBox();
               }
               break;
            case MessageBoxMessages.SET_BUTTONS_SEL:
               if(this.checkNewKeyCode(param1))
               {
                  this._selBtnKeyCodeTemp = param1;
                  sndMngr.playSoundNow(MessageBoxSounds.SN_SB_PAUSE);
                  this.setButtons = false;
               }
               else
               {
                  this.recallButtonMessageBox();
               }
         }
         this.activeMsgBx.cancel();
      }
      
      private function recallButtonMessageBox() : void
      {
         var _loc1_:MessageBox = this.activeMsgBx.nextMsgBxToCreate;
         this.activeMsgBx.nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.SET_BUTTONS_ERROR);
         this.activeMsgBx.nextMsgBxToCreate.nextMsgBxToCreate = new PlainMessageBox((this.activeMsgBx as PlainMessageBox).msgStr);
         this.activeMsgBx.nextMsgBxToCreate.nextMsgBxToCreate.nextMsgBxToCreate = _loc1_;
         sndMngr.playSoundNow(MessageBoxSounds.SN_CANCEL_ITEM);
      }
      
      public function writeNewButtons() : void
      {
         this._lftBtnKeyCode = this._lftBtnKeyCodeTemp;
         this._rhtBtnKeyCode = this._rhtBtnKeyCodeTemp;
         this._upBtnKeyCode = this._upBtnKeyCodeTemp;
         this._dwnBtnKeyCode = this._dwnBtnKeyCodeTemp;
         this._jmpBtnKeyCode = this._jmpBtnKeyCodeTemp;
         this._atkBtnKeyCode = this._atkBtnKeyCodeTemp;
         this._spcBtnKeyCode = this._spcBtnKeyCodeTemp;
         this._pseBtnKeyCode = this._pseBtnKeyCodeTemp;
         this._selBtnKeyCode = this._selBtnKeyCodeTemp;
         this.updateKeyCodesVec();
         msgBxMngr.setBtnsDct = null;
         this.discardTempButtons();
      }
      
      public function discardTempButtons() : void
      {
         this._lftBtnKeyCodeTemp = -1;
         this._rhtBtnKeyCodeTemp = -1;
         this._upBtnKeyCodeTemp = -1;
         this._dwnBtnKeyCodeTemp = -1;
         this._jmpBtnKeyCodeTemp = -1;
         this._atkBtnKeyCodeTemp = -1;
         this._spcBtnKeyCodeTemp = -1;
         this._pseBtnKeyCodeTemp = -1;
         this._selBtnKeyCodeTemp = -1;
         msgBxMngr.setBtnsDct = null;
      }
      
      private function checkNewKeyCode(param1:uint) : Boolean
      {
         switch(param1)
         {
            case this._lftBtnKeyCodeTemp:
               return false;
            case this._rhtBtnKeyCodeTemp:
               return false;
            case this._upBtnKeyCodeTemp:
               return false;
            case this._dwnBtnKeyCodeTemp:
               return false;
            case this._jmpBtnKeyCodeTemp:
               return false;
            case this._atkBtnKeyCodeTemp:
               return false;
            case this._spcBtnKeyCodeTemp:
               return false;
            case this._pseBtnKeyCodeTemp:
               return false;
            case this._selBtnKeyCodeTemp:
               return false;
            default:
               return true;
         }
      }
      
      public function relPlyrBtns() : void
      {
         if(player.upBtn)
         {
            player.relUpBtn();
         }
         if(player.dwnBtn)
         {
            player.relDwnBtn();
         }
         if(player.rhtBtn)
         {
            player.relRhtBtn();
         }
         if(player.lftBtn)
         {
            player.relLftBtn();
         }
         if(player.atkBtn)
         {
            player.relAtkBtn();
         }
         if(player.jmpBtn)
         {
            player.relJmpBtn();
         }
         if(player.spcBtn)
         {
            player.relSpcBtn();
         }
      }
      
      public function sendPlayerBtns() : void
      {
         if(gsMngr.gameState != this.GS_PLAY)
         {
            return;
         }
         player.upBtn = this.upBtn;
         player.dwnBtn = this.dwnBtn;
         player.rhtBtn = this.rhtBtn;
         player.lftBtn = this.lftBtn;
         player.spcBtn = this.spcBtn;
         player.jmpBtn = this.jmpBtn;
         player.atkBtn = this.atkBtn;
         if(player is Sophia)
         {
            if(this.upBtn)
            {
               player.pressUpBtn();
            }
            if(this.lftBtn)
            {
               player.pressLftBtn();
            }
            if(this.rhtBtn)
            {
               player.pressRhtBtn();
            }
            if(this.dwnBtn)
            {
               player.pressDwnBtn();
            }
         }
      }
      
      public function cleanUp() : void
      {
         this.removeLsrs();
      }
      
      private function removeLsrs() : void
      {
         if(this.STAGE.hasEventListener(KeyboardEvent.KEY_DOWN))
         {
            this.STAGE.removeEventListener(KeyboardEvent.KEY_DOWN,this.keyDownLsr);
         }
         if(this.STAGE.hasEventListener(KeyboardEvent.KEY_UP))
         {
            this.STAGE.removeEventListener(KeyboardEvent.KEY_UP,this.keyUpLsr);
         }
      }
      
      public function get lftBtnKeyCode() : uint
      {
         return this._lftBtnKeyCode;
      }
      
      public function get rhtBtnKeyCode() : uint
      {
         return this._rhtBtnKeyCode;
      }
      
      public function get upBtnKeyCode() : uint
      {
         return this._upBtnKeyCode;
      }
      
      public function get dwnBtnKeyCode() : uint
      {
         return this._dwnBtnKeyCode;
      }
      
      public function get jmpBtnKeyCode() : uint
      {
         return this._jmpBtnKeyCode;
      }
      
      public function get atkBtnKeyCode() : uint
      {
         return this._atkBtnKeyCode;
      }
      
      public function get spcBtnKeyCode() : uint
      {
         return this._spcBtnKeyCode;
      }
      
      public function get pseBtnKeyCode() : uint
      {
         return this._pseBtnKeyCode;
      }
      
      public function get selBtnKeyCode() : uint
      {
         return this._selBtnKeyCode;
      }
      
      public function get lftBtnKeyCodeTemp() : int
      {
         return this._lftBtnKeyCodeTemp;
      }
      
      public function get rhtBtnKeyCodeTemp() : int
      {
         return this._rhtBtnKeyCodeTemp;
      }
      
      public function get upBtnKeyCodeTemp() : int
      {
         return this._upBtnKeyCodeTemp;
      }
      
      public function get dwnBtnKeyCodeTemp() : int
      {
         return this._dwnBtnKeyCodeTemp;
      }
      
      public function get jmpBtnKeyCodeTemp() : int
      {
         return this._jmpBtnKeyCodeTemp;
      }
      
      public function get atkBtnKeyCodeTemp() : int
      {
         return this._atkBtnKeyCodeTemp;
      }
      
      public function get spcBtnKeyCodeTemp() : int
      {
         return this._spcBtnKeyCodeTemp;
      }
      
      public function get pseBtnKeyCodeTemp() : int
      {
         return this._pseBtnKeyCodeTemp;
      }
      
      public function get selBtnKeyCodeTemp() : int
      {
         return this._selBtnKeyCodeTemp;
      }
   }
}
