package com.smbc.messageBoxes
{
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.SortingFunctions;
   import com.smbc.characters.*;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.SoundNames;
   import com.smbc.graphics.CharacterPortrait;
   import com.smbc.graphics.PortraitSelector;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.interfaces.ISingleton;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.text.TextFormatAlign;
   import flash.utils.Dictionary;
   
   public class CharacterSelectBox extends MessageBox implements ISingleton, IKeyPressable
   {
      
      public static var instance:CharacterSelectBox;
      
      public static var lastChosenInd:int = 0;
      
      private static const PORTRAIT_SIZE:int = 52;
      
      private static const SPACE_BETWEEN_PORTRAITS:int = 4;
      
      private static const SN_REVIVE_CHARACTER:String = SoundNames.SFX_GAME_POWER_UP;
      
      private static const Y_POS:int = 160;
      
      private static const AXIS_HORZ:String = "x";
      
      private static const AXIS_VERT:String = "y";
      
      private static var TOP_ROW_Y:int;
      
      private static var BOT_ROW_Y:int;
      
      private static const NAME_BOX_WIDTH:int = 400;
      
      private static const NAME_BOX_HEIGHT:int = 150;
      
      public static const NAME_BOX_Y_POS:int = 290;
      
      private static const MIN_LIVES_FOR_ALLOW_REVIVAL:int = 1;
      
      public static const RANDOM_CHAR_NUM:int = -1;
      
      public static const MAP_SKIN_CHAR_NUM:int = -2;
      
      public static const FL_RANDOM:String = "random";
      
      public static const RANDOM_CHAR_NAME:String = "Random";
      
      public static const MAP_SKIN_CHAR_NAME:String = "Change Map Skin";
      
      public static const MODE_REVIVE:String = "revive";
      
      public static const MODE_CHARACTER_SELECT:String = "characterSelect";
      
      private static const SELECT0R_OFS:int = 0;
      
      private static const PS_FALLEN:int = Character.PS_FALLEN;
      
      private static const SELECTOR_SND_STR:String = SoundNames.SFX_GAME_CHARACTER_SELECT_CURSOR;
      
      private static const DIR_UP:String = "up";
      
      private static const DIR_DOWN:String = "down";
      
      private static const DIR_LEFT:String = "left";
      
      private static const DIR_RIGHT:String = "right";
      
      private static const DIR_NEUTRAL:String = "neutral";
      
      private static const NUM_PORTS_PER_ROW_ARR:Array = [6,6];
      
      private static const C_SEL_MIN:int = 0;
      
      private static const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      private static const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
       
      
      private var unpauseGameOnDestroy:Boolean;
      
      private const ORDER_VEC:Vector.<int> = Vector.<int>([Mario.CHAR_NUM,Luigi.CHAR_NUM,Link.CHAR_NUM,Samus.CHAR_NUM,Simon.CHAR_NUM,MAP_SKIN_CHAR_NUM,MegaMan.CHAR_NUM,Bass.CHAR_NUM,Bill.CHAR_NUM,Ryu.CHAR_NUM,Sophia.CHAR_NUM,RANDOM_CHAR_NUM]);
      
      private const CS_SCRN:CharacterSelect = CharacterSelect.instance;
      
      public var cCharNum:int;
      
      private var PORT_VEC:Vector.<CharacterPortrait>;
      
      private var PORT_DCT:Dictionary;
      
      private var CHAR_NUM_DCT:Dictionary;
      
      private var SELECTOR:PortraitSelector;
      
      private var SELECTABLE_CHARS_VEC:Vector.<int>;
      
      private var selectableCharsRowArr:Array;
      
      private const C_SEL_MAX:int = this.ORDER_VEC.length - 1;
      
      private var randomPortInd:int;
      
      private var mapSkinPortInd:int;
      
      private var sortDir:String;
      
      private var cSelInd:int;
      
      private var cSelPort:CharacterPortrait;
      
      private var cRow:int;
      
      private var NUM_ROWS:int;
      
      private const ROW_Y_POS:Vector.<int> = new Vector.<int>(this.NUM_ROWS,true);
      
      private var nameBox:CharNameBox;
      
      public var mode:String;
      
      private const LEVEL:Level = Level.levelInstance;
      
      private var allowRevival:Boolean;
      
      private var survivalMode:Boolean;
      
      private var lastY:Number;
      
      private var selectCharNumOnStart:int;
      
      public var portContainer:Sprite;
      
      public function CharacterSelectBox(param1:Boolean = false, param2:int = -1)
      {
         this.PORT_VEC = new Vector.<CharacterPortrait>(this.ORDER_VEC.length,true);
         this.PORT_DCT = new Dictionary();
         this.CHAR_NUM_DCT = new Dictionary();
         this.SELECTOR = new PortraitSelector();
         this.SELECTABLE_CHARS_VEC = new Vector.<int>();
         this.selectableCharsRowArr = [];
         this.randomPortInd = this.ORDER_VEC.length - 1;
         this.mapSkinPortInd = this.randomPortInd - NUM_PORTS_PER_ROW_ARR[NUM_PORTS_PER_ROW_ARR.length - 1];
         this.cSelInd = lastChosenInd;
         this.NUM_ROWS = NUM_PORTS_PER_ROW_ARR.length;
         this.selectCharNumOnStart = param2;
         super();
         this.allowRevival = param1;
         endYPos = Y_POS;
         this.ORDER_VEC.fixed = true;
         var _loc3_:int = 0;
         while(_loc3_ < this.NUM_ROWS)
         {
            this.selectableCharsRowArr.push([]);
            _loc3_++;
         }
         if(this.CS_SCRN)
         {
            instantGrow = true;
         }
      }
      
      override public function initiate() : void
      {
         var _loc1_:PlainMessageBox = null;
         super.initiate();
         instance = this;
         this.nameBox = new CharNameBox("test\\ntest",NAME_BOX_WIDTH,NaN,NAME_BOX_Y_POS,TextFormatAlign.CENTER,instantGrow);
         this.nameBox.initiate();
         this.setAllIconVisibility(GameSettings.charSelIconsVisible);
         if(GameSettings.campaignMode === CampaignModes.SURVIVAL)
         {
            this.survivalMode = true;
         }
         if(this.survivalMode && this.allowRevival && STAT_MNGR.numLives >= MIN_LIVES_FOR_ALLOW_REVIVAL)
         {
            this.changeMode(MODE_REVIVE);
            if(this.mode == MODE_REVIVE && !STAT_MNGR.checkPStateVecForAllZeroes())
            {
               _loc1_ = new PlainMessageBox(MessageBoxMessages.YOU_CAN_NOW_REVIVE);
               _loc1_.nextMsgBxToFocus = this;
               _loc1_.initiate();
            }
         }
         else
         {
            if(this.isDisableMenu && this.selectCharNumOnStart >= 0)
            {
               this.cSelInd = this.convCharNumToInd(this.selectCharNumOnStart);
            }
            this.changeMode(MODE_CHARACTER_SELECT);
         }
      }
      
      override protected function setUpText() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:CharacterPortrait = null;
         this.portContainer = new Sprite();
         var _loc1_:int = int(this.ORDER_VEC.length);
         while(_loc3_ < _loc1_)
         {
            _loc4_ = this.ORDER_VEC[_loc3_];
            _loc5_ = new CharacterPortrait(_loc4_);
            if(_loc4_ >= 0)
            {
               _loc5_.setIconPState(STAT_MNGR.getCharPState(_loc4_));
            }
            this.CHAR_NUM_DCT[_loc4_] = _loc3_;
            this.PORT_VEC[_loc3_] = _loc5_;
            this.PORT_DCT[_loc5_] = _loc3_;
            _loc5_.x = _loc2_ * PORTRAIT_SIZE + _loc2_ * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
            _loc5_.y = this.cRow * PORTRAIT_SIZE + this.cRow * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
            this.ROW_Y_POS[this.cRow] = _loc5_.y;
            _loc2_++;
            if(_loc2_ == NUM_PORTS_PER_ROW_ARR[this.cRow])
            {
               _loc2_ = 0;
               ++this.cRow;
            }
            this.portContainer.addChild(_loc5_);
            _loc3_++;
         }
         TOP_ROW_Y = this.ROW_Y_POS[0];
         BOT_ROW_Y = this.ROW_Y_POS[1];
         TXT_CONT.addChild(this.portContainer);
         this.portContainer.addChild(this.SELECTOR);
         TXT_CONT.x = CONTAINER_PADDING;
         TXT_CONT.y = CONTAINER_PADDING;
      }
      
      private function alignPortraits(param1:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:CharacterPortrait = null;
         var _loc2_:int = int(this.PORT_VEC.length);
         var _loc4_:Vector.<CharacterPortrait> = new Vector.<CharacterPortrait>();
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc10_ = this.PORT_VEC[_loc5_];
            if(this.SELECTABLE_CHARS_VEC.indexOf(_loc5_) != -1 || _loc5_ == this.randomPortInd && this.CS_SCRN != null)
            {
               this.portContainer.addChildAt(_loc10_,this.portContainer.getChildIndex(this.SELECTOR) - 1);
               _loc4_[_loc3_] = _loc10_;
               _loc3_++;
            }
            else if(this.portContainer.contains(_loc10_))
            {
               this.portContainer.removeChild(_loc10_);
            }
            _loc5_++;
         }
         _loc2_ = _loc3_;
         if(this.mode != MODE_REVIVE)
         {
            _loc2_++;
         }
         if(_loc2_ % 2 == 0)
         {
            _loc7_ = _loc6_ = _loc2_ / 2;
         }
         else
         {
            _loc7_ = _loc6_ = Math.ceil(_loc2_ / 2);
            if(this.mode == MODE_REVIVE)
            {
               _loc6_--;
               _loc7_++;
            }
         }
         if(this.mode != MODE_REVIVE)
         {
            _loc2_--;
         }
         _loc9_ = 0;
         _loc5_ = 0;
         while(_loc5_ < _loc2_)
         {
            (_loc10_ = _loc4_[_loc5_]).x = _loc8_ * PORTRAIT_SIZE + _loc8_ * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
            _loc10_.y = _loc9_ * PORTRAIT_SIZE + _loc9_ * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
            _loc8_++;
            if(_loc9_ == 0 && (_loc8_ == _loc6_ && this.CS_SCRN || _loc8_ == _loc6_ - 1 && (this.CS_SCRN == null || StatManager.enabledSkinSetCount == 1)))
            {
               if(this.mode != MODE_REVIVE && this.CS_SCRN != null && StatManager.enabledSkinSetCount > 1)
               {
                  _loc10_ = this.getMapSkinPortrait();
                  _loc8_--;
                  _loc10_.x = _loc8_ * PORTRAIT_SIZE + _loc8_ * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
                  _loc10_.y = _loc9_ * PORTRAIT_SIZE + _loc9_ * SPACE_BETWEEN_PORTRAITS + SPACE_BETWEEN_PORTRAITS;
                  this.portContainer.addChildAt(_loc10_,this.portContainer.getChildIndex(this.SELECTOR) - 1);
                  _loc5_--;
               }
               _loc8_ = 0;
               _loc9_++;
            }
            _loc5_++;
         }
         if(param1 && this.SELECTABLE_CHARS_VEC.indexOf(this.cSelInd) != -1)
         {
            this.setSelection(this.cSelInd);
         }
         else
         {
            this.setSelection(this.getNearestPortrait(DIR_NEUTRAL));
         }
         resizeBox(true,false,4);
      }
      
      private function getMapSkinPortrait() : CharacterPortrait
      {
         return this.convIndToPort(this.convCharNumToInd(MAP_SKIN_CHAR_NUM));
      }
      
      private function getChooseRandomPortrait() : CharacterPortrait
      {
         return this.convIndToPort(this.convCharNumToInd(RANDOM_CHAR_NUM));
      }
      
      private function changeMode(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:TutorialManager = null;
         var _loc8_:int = 0;
         this.mode = param1;
         this.clearSelectableChars();
         var _loc3_:Vector.<int> = STAT_MNGR.pStateVec;
         var _loc4_:int = int(_loc3_.length);
         if(this.mode == MODE_CHARACTER_SELECT)
         {
            this.SELECTOR.gotoAndStop(PortraitSelector.FL_NORMAL_START);
            while(_loc5_ < _loc4_)
            {
               _loc6_ = _loc3_[_loc5_];
               if(_loc6_ != PS_FALLEN && (this.CS_SCRN == null || StatManager.characterIsEnabled(_loc5_)))
               {
                  this.addSelectableChar(this.convCharNumToInd(_loc5_),true);
                  if(this.isCharacterDisableScreen && !StatManager.characterIsEnabled(_loc5_))
                  {
                     this.markPortraitFallen(this.PORT_VEC[this.convCharNumToInd(_loc5_)]);
                  }
               }
               _loc5_++;
            }
            if(this.CS_SCRN != null)
            {
               this.addSelectableChar(this.randomPortInd,true);
            }
            this.setSelection(this.cSelInd);
            _loc7_ = TutorialManager.TUT_MNGR;
            _loc7_.checkTutorial(_loc7_.CHARACTER_SELECT,true);
         }
         else if(this.mode == MODE_REVIVE)
         {
            this.SELECTOR.gotoAndStop(PortraitSelector.FL_REVIVE_START);
            while(_loc5_ < _loc4_)
            {
               _loc6_ = _loc3_[_loc5_];
               if(!STAT_MNGR.charIsFullyUpgraded(_loc5_) && StatManager.characterIsEnabled(_loc5_))
               {
                  this.addSelectableChar(this.convCharNumToInd(_loc5_),true);
               }
               _loc5_++;
            }
            if(!this.SELECTABLE_CHARS_VEC.length)
            {
               this.changeMode(MODE_CHARACTER_SELECT);
               return;
            }
            _loc4_ = int(this.SELECTABLE_CHARS_VEC.length);
            _loc5_ = 0;
            while(_loc5_ < _loc4_)
            {
               _loc8_ = this.SELECTABLE_CHARS_VEC[_loc5_];
               _loc6_ = _loc3_[this.convIndToCharNum(_loc8_)];
               if(_loc6_ == PS_FALLEN)
               {
                  this.markPortraitFallen(this.PORT_VEC[_loc8_]);
               }
               _loc5_++;
            }
            this.addSelectableChar(this.randomPortInd,true);
            this.setSelection(this.cSelInd);
            if(this.PORT_VEC.indexOf(this.cSelInd) == -1)
            {
               this.setSelection(this.getNearestPortrait(DIR_NEUTRAL));
            }
         }
         this.alignPortraits(true);
      }
      
      private function setAllIconVisibility(param1:Boolean) : void
      {
         var _loc4_:CharacterPortrait = null;
         var _loc2_:int = int(this.PORT_VEC.length);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = this.PORT_VEC[_loc3_];
            _loc4_.setIconVisibility(param1);
            _loc3_++;
         }
      }
      
      private function setSelection(param1:Object, param2:Boolean = false) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(param1 is int)
         {
            this.cSelPort = this.PORT_DCT[int(param1)];
            this.cSelInd = int(param1);
         }
         else
         {
            this.cSelPort = param1 as CharacterPortrait;
            this.cSelInd = this.convPortToInd(this.cSelPort);
         }
         if(this.cSelInd < C_SEL_MIN)
         {
            this.cSelInd = this.C_SEL_MAX;
         }
         else if(this.cSelInd > this.C_SEL_MAX)
         {
            this.cSelInd = C_SEL_MIN;
         }
         this.cRow = this.getIndRowNum(this.cSelInd);
         this.cCharNum = this.convIndToCharNum(this.cSelInd);
         this.cSelPort = this.PORT_VEC[this.cSelInd];
         this.SELECTOR.x = this.cSelPort.x + SELECT0R_OFS;
         this.SELECTOR.y = this.cSelPort.y + SELECT0R_OFS;
         if(this.CS_SCRN != null)
         {
            this.CS_SCRN.setSelection(this.cCharNum);
         }
         this.changeNameBoxText();
         if(param2)
         {
            SND_MNGR.playSoundNow(SELECTOR_SND_STR);
         }
      }
      
      private function markPortraitFallen(param1:CharacterPortrait) : void
      {
         var _loc2_:Sprite = param1.getPortraitBmpSprite();
         if(_loc2_)
         {
            this.desaturate(_loc2_);
         }
      }
      
      private function unmarkPortraitFallen(param1:CharacterPortrait) : void
      {
         if(param1.recoloredSprite)
         {
            param1.recoloredSprite.filters = [];
         }
      }
      
      private function reviveCharacter(param1:int) : void
      {
         var _loc7_:int = 0;
         STAT_MNGR.loseLife();
         if(this.cSelInd == this.randomPortInd)
         {
            this.setSelection(param1,false);
            this.setSelection(this.randomPortInd,false);
         }
         var _loc2_:int = this.convIndToCharNum(param1);
         var _loc3_:int = STAT_MNGR.getCharPState(_loc2_);
         var _loc4_:CharacterPortrait = this.PORT_VEC[param1];
         var _loc5_:Boolean = false;
         var _loc6_:int = Character.PS_NORMAL;
         if(_loc3_ != PS_FALLEN)
         {
            Character.hitRandomUpgrade(_loc2_,false);
            Character.hitRandomUpgrade(_loc2_,false);
            _loc5_ = true;
            if(Boolean(this.CS_SCRN) && Boolean(this.CS_SCRN.player))
            {
               this.CS_SCRN.player.revivalBoost();
            }
            _loc4_.update();
         }
         if(_loc3_ != _loc6_)
         {
            STAT_MNGR.updatePStateVec(_loc2_,_loc6_);
            this.unmarkPortraitFallen(_loc4_);
         }
         if(_loc5_ && STAT_MNGR.charIsFullyUpgraded(_loc2_))
         {
            _loc7_ = int(this.SELECTABLE_CHARS_VEC.indexOf(param1));
            if(_loc7_ != -1)
            {
               this.removeSelectableChar(_loc7_);
            }
         }
         if(this.cSelInd != this.randomPortInd)
         {
            this.setSelection(this.cSelInd);
         }
         SND_MNGR.playSoundNow(SN_REVIVE_CHARACTER);
         if(STAT_MNGR.numLives < MIN_LIVES_FOR_ALLOW_REVIVAL || this.SELECTABLE_CHARS_VEC.length == 1)
         {
            this.changeMode(MODE_CHARACTER_SELECT);
         }
      }
      
      public function desaturate(param1:Sprite) : void
      {
         var _loc2_:Array = [];
         _loc2_ = _loc2_.concat([0.3,0.59,0.11,0,-10]);
         _loc2_ = _loc2_.concat([0.3,0.59,0.11,0,-10]);
         _loc2_ = _loc2_.concat([0.3,0.59,0.11,0,-10]);
         _loc2_ = _loc2_.concat([0,0,0,1,0]);
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         param1.filters = [_loc3_];
      }
      
      private function changeNameBoxText() : void
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         if(this.cCharNum >= 0)
         {
            _loc1_ = CharacterInfo.CHAR_ARR[this.cCharNum];
            _loc2_ = _loc1_[CharacterInfo.IND_CHAR_NAME_FULL];
            _loc3_ = STAT_MNGR.getSkinName(true);
            _loc4_ = Game(_loc1_[CharacterInfo.IND_GAMES][0]).fullName;
         }
         else if(this.cCharNum == MAP_SKIN_CHAR_NUM)
         {
            _loc2_ = MAP_SKIN_CHAR_NAME;
         }
         else
         {
            _loc2_ = RANDOM_CHAR_NAME;
         }
         if(this.mode == MODE_REVIVE)
         {
            if(this.cCharNum != RANDOM_CHAR_NUM && this.cCharNum != MAP_SKIN_CHAR_NUM)
            {
               if(STAT_MNGR.getCharPState(this.cCharNum) == PS_FALLEN)
               {
                  _loc3_ = "Revive";
               }
               else
               {
                  _loc3_ = "Power up";
               }
            }
            _loc5_ = STAT_MNGR.numLives;
            if(_loc5_ > 1)
            {
               _loc4_ = _loc5_ + " lives remaining";
            }
            else
            {
               _loc4_ = _loc5_ + " life remaining";
            }
         }
         this.nameBox.changeText(_loc2_,_loc4_,_loc3_);
      }
      
      private function convCharNumToInd(param1:int) : int
      {
         return this.CHAR_NUM_DCT[param1];
      }
      
      private function convIndToCharNum(param1:int) : int
      {
         return this.ORDER_VEC[param1];
      }
      
      private function getRandomCharInd() : int
      {
         var _loc1_:int = int(Math.random() * (this.SELECTABLE_CHARS_VEC.length - 1));
         return this.SELECTABLE_CHARS_VEC[_loc1_];
      }
      
      public function getPortraitArr() : Array
      {
         var _loc2_:CharacterPortrait = null;
         var _loc3_:CustomMovieClip = null;
         var _loc4_:DisplayObjectContainer = null;
         var _loc1_:Array = [];
         for each(_loc2_ in this.PORT_VEC)
         {
            _loc3_ = _loc2_.portrait;
            if(_loc3_)
            {
               _loc4_ = _loc3_.parent;
            }
            if(_loc4_)
            {
               _loc1_.push(_loc4_);
            }
         }
         return _loc1_;
      }
      
      private function addSelectableChar(param1:int, param2:Boolean = false) : void
      {
         this.SELECTABLE_CHARS_VEC.push(param1);
         var _loc3_:int = int(this.SELECTABLE_CHARS_VEC.length);
         var _loc4_:Array = this.selectableCharsRowArr[this.getIndRowNum(param1)];
         _loc4_.push(this.convGlobalIndToRowInd(param1));
         _loc4_.sort(Array.NUMERIC);
         this.SELECTABLE_CHARS_VEC.sort(SortingFunctions.sortNums);
         if(!param2)
         {
            this.alignPortraits();
         }
      }
      
      private function removeSelectableChar(param1:int, param2:Boolean = false) : void
      {
         this.SELECTABLE_CHARS_VEC.splice(param1,1);
         var _loc3_:Array = this.selectableCharsRowArr[this.getIndRowNum(param1)];
         var _loc4_:int = int(_loc3_.indexOf(this.convGlobalIndToRowInd(param1)));
         _loc3_.splice(_loc4_,1);
         if(!param2)
         {
            this.alignPortraits();
         }
      }
      
      private function clearSelectableChars() : void
      {
         var _loc2_:Array = null;
         this.SELECTABLE_CHARS_VEC.length = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.NUM_ROWS)
         {
            _loc2_ = this.selectableCharsRowArr[_loc1_];
            _loc2_.length = 0;
            _loc1_++;
         }
      }
      
      override public function pressAtkBtn() : void
      {
         var _loc1_:Vector.<String> = null;
         var _loc2_:PlainMessageMenuBox = null;
         if(this.mode == MODE_CHARACTER_SELECT && this.CS_SCRN == null)
         {
            this.cancel();
            this.nameBox.cancel();
            SND_MNGR.playSoundNow(SoundNames.SFX_GAME_HIT_CEILING);
         }
         else if(this.mode == MODE_REVIVE && !STAT_MNGR.checkPStateVecForAllZeroes())
         {
            _loc1_ = new Vector.<String>();
            _loc1_.push(MenuBoxItems.NO);
            _loc1_.push(MenuBoxItems.YES);
            _loc2_ = new PlainMessageMenuBox(MessageBoxMessages.CANCEL_REVIVE,_loc1_);
            _loc2_.nextMsgBxToFocus = this;
            _loc2_.initiate();
         }
      }
      
      public function confirmCancelRevive() : void
      {
         this.changeMode(MODE_CHARACTER_SELECT);
      }
      
      override public function pressJmpBtn() : void
      {
         this.pressedSelectCharacterButton(false);
      }
      
      override public function pressSpcBtn() : void
      {
         if(this.CS_SCRN != null && this.cSelInd != this.mapSkinPortInd)
         {
            this.pressedSelectCharacterButton(true);
         }
      }
      
      private function pressedSelectCharacterButton(param1:Boolean) : void
      {
         if(this.mode == MODE_CHARACTER_SELECT)
         {
            if(this.CS_SCRN != null)
            {
               lastChosenInd = this.cSelInd;
            }
            if(this.cSelInd == this.mapSkinPortInd)
            {
               if(GameSettings.randomMapSkin)
               {
                  nextMsgBxToCreate = new PlainMessageBox(MessageBoxMessages.CANNOT_CHANGE_MAP_SKIN);
                  nextMsgBxToCreate.nextMsgBxToCreate = new CharacterSelectBox();
               }
               else
               {
                  nextMsgBxToCreate = new MapSkinMenu();
               }
               SND_MNGR.playSound(SoundNames.SFX_GAME_COIN);
            }
            else if(this.cSelInd == this.randomPortInd)
            {
               this.cSelInd = this.getRandomCharInd();
               this.setSelection(this.cSelInd,false);
               if(this.CS_SCRN)
               {
                  if(param1)
                  {
                     GraphicsManager.INSTANCE.changeCharacterSkin(this.CS_SCRN.player,GraphicsManager.CHAR_SKIN_NUM_RANDOM);
                  }
                  this.CS_SCRN.chooseCharacter(this.cCharNum);
               }
            }
            else if(this.CS_SCRN != null)
            {
               if(StatManager.getEnabledCharacterSkinCount(this.cCharNum) == 1 || param1)
               {
                  if(param1)
                  {
                     GraphicsManager.INSTANCE.changeCharacterSkin(this.CS_SCRN.player,GraphicsManager.CHAR_SKIN_NUM_RANDOM);
                  }
                  this.CS_SCRN.chooseCharacter(this.cCharNum);
               }
               else
               {
                  nextMsgBxToCreate = new CharacterSkinMenu(this.cCharNum,this.isCharacterSkinDisableScreen);
                  SND_MNGR.playSoundNow(SoundNames.SFX_GAME_COIN);
               }
            }
            else if(this.isCharacterSkinDisableScreen)
            {
               nextMsgBxToCreate = new CharacterSkinMenu(this.cCharNum,this.isCharacterSkinDisableScreen);
               SND_MNGR.playSoundNow(SoundNames.SFX_GAME_COIN);
            }
            else
            {
               if(StatManager.characterIsEnabled(this.cCharNum) && StatManager.enabledCharacterCount <= StatManager.MINIMUM_ENABLED_CHARACTER_COUNT)
               {
                  return;
               }
               StatManager.toggleCharacterIsEnabled(this.cCharNum);
               if(StatManager.characterIsEnabled(this.cCharNum))
               {
                  this.unmarkPortraitFallen(this.cSelPort);
               }
               else
               {
                  this.markPortraitFallen(this.cSelPort);
               }
               SND_MNGR.playSoundNow(SoundNames.SFX_GAME_COIN);
            }
            if(!this.isCharacterDisableScreen)
            {
               this.cancel();
               this.nameBox.cancel();
            }
         }
         else if(this.mode == MODE_REVIVE)
         {
            if(this.cSelInd == this.randomPortInd)
            {
               this.reviveCharacter(this.getRandomCharInd());
            }
            else
            {
               this.reviveCharacter(this.cSelInd);
            }
         }
      }
      
      private function get isDisableMenu() : Boolean
      {
         return this.CS_SCRN == null;
      }
      
      private function get isCharacterDisableScreen() : Boolean
      {
         return this.CS_SCRN == null && nextMsgBxToCreate is GeneralOptions;
      }
      
      private function get isCharacterSkinDisableScreen() : Boolean
      {
         return this.CS_SCRN == null && nextMsgBxToCreate is DisableSkinsMenu;
      }
      
      override public function pressUpBtn() : void
      {
         this.setSelection(this.getNearestPortrait(DIR_UP),true);
         this.lastY = this.ROW_Y_POS[this.cRow];
      }
      
      override public function pressDwnBtn() : void
      {
         this.setSelection(this.getNearestPortrait(DIR_DOWN),true);
         this.lastY = this.ROW_Y_POS[this.cRow];
      }
      
      private function getIndRowNum(param1:int) : int
      {
         var _loc2_:int = 0;
         var _loc4_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this.NUM_ROWS)
         {
            _loc4_ = int(NUM_PORTS_PER_ROW_ARR[_loc3_]);
            _loc2_ += _loc4_;
            if(param1 < _loc2_)
            {
               return _loc3_;
            }
            _loc3_++;
         }
         return -1;
      }
      
      override public function cancel() : void
      {
         var _loc1_:Character = null;
         super.cancel();
         if(this.isCharacterSkinDisableScreen && !(Level is TitleLevel))
         {
            _loc1_ = this.LEVEL.player;
            if(!GraphicsManager.INSTANCE.skinIsActive(_loc1_.currentBmdSkin))
            {
               GraphicsManager.INSTANCE.changeCharacterSkin(_loc1_);
            }
         }
      }
      
      private function convGlobalIndToRowInd(param1:int) : int
      {
         var _loc5_:int = 0;
         var _loc2_:int = this.getIndRowNum(param1);
         var _loc3_:int = param1;
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc5_ = int(NUM_PORTS_PER_ROW_ARR[_loc4_]);
            _loc3_ -= _loc5_;
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function convRowIndToGlobal(param1:int, param2:int = -1) : int
      {
         var _loc5_:int = 0;
         var _loc3_:int = param1;
         if(param2 == -1)
         {
            param2 = this.cRow;
         }
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc5_ = int(NUM_PORTS_PER_ROW_ARR[_loc4_]);
            _loc3_ += _loc5_;
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function getNearestPortrait(param1:String, param2:int = -1, param3:int = -1) : CharacterPortrait
      {
         var _loc4_:CharacterPortrait = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc15_:CharacterPortrait = null;
         var _loc11_:Point = new Point(this.SELECTOR.x - SELECT0R_OFS,this.SELECTOR.y - SELECT0R_OFS);
         if(param1 == DIR_UP || param1 == DIR_DOWN)
         {
            _loc7_ = AXIS_VERT;
            _loc8_ = AXIS_HORZ;
            _loc5_ = _loc11_.x;
            if(_loc11_.y == TOP_ROW_Y)
            {
               _loc6_ = BOT_ROW_Y;
            }
            else
            {
               _loc6_ = TOP_ROW_Y;
            }
         }
         else
         {
            _loc7_ = AXIS_HORZ;
            _loc8_ = AXIS_VERT;
            _loc6_ = _loc11_.y;
         }
         var _loc12_:Vector.<CharacterPortrait> = new Vector.<CharacterPortrait>();
         var _loc13_:int = int(this.PORT_VEC.length);
         var _loc14_:int = 0;
         while(_loc14_ < _loc13_)
         {
            _loc15_ = this.PORT_VEC[_loc14_];
            if(_loc15_.parent)
            {
               if(_loc11_.x == _loc15_.x && _loc11_.y == _loc15_.y)
               {
                  _loc4_ = _loc15_;
               }
               if(_loc7_ == AXIS_HORZ && _loc15_.y == _loc6_)
               {
                  _loc12_.push(_loc15_);
               }
               else if(_loc7_ == AXIS_VERT && _loc15_.y == _loc6_)
               {
                  _loc12_.push(_loc15_);
               }
            }
            _loc14_++;
         }
         _loc13_ = int(_loc12_.length);
         if(!_loc4_ || _loc7_ == AXIS_VERT)
         {
            _loc14_ = 0;
            while(_loc14_ < _loc13_)
            {
               _loc15_ = _loc12_[_loc14_];
               if(_loc7_ == AXIS_HORZ)
               {
                  if(_loc14_ == 0)
                  {
                     _loc10_ = _loc15_.x;
                  }
                  else if(_loc14_ == _loc13_ - 1)
                  {
                     _loc9_ = _loc15_.x;
                  }
               }
               else if(_loc15_.x == _loc4_.x)
               {
                  return _loc15_;
               }
               _loc14_++;
            }
            if(_loc7_ != AXIS_HORZ)
            {
               return _loc12_[_loc13_ - 1];
            }
            if(x < _loc10_)
            {
               _loc4_ = _loc12_[0];
            }
            else if(x > _loc10_)
            {
               _loc4_ = _loc12_[_loc13_ - 1];
            }
         }
         else if(_loc7_ == AXIS_HORZ)
         {
            _loc12_.sort(this.sortByX);
         }
         if(param1 == DIR_NEUTRAL)
         {
            return _loc4_;
         }
         return this.determineSelection(param1,_loc12_,_loc4_);
      }
      
      private function determineSelection(param1:String, param2:Vector.<CharacterPortrait>, param3:CharacterPortrait) : CharacterPortrait
      {
         var _loc4_:int = int(param2.indexOf(param3));
         var _loc5_:int = 0;
         var _loc6_:int = int(param2.length - 1);
         if(param1 == DIR_LEFT)
         {
            if(--_loc4_ < _loc5_)
            {
               _loc4_ = _loc6_;
            }
         }
         else if(param1 == DIR_RIGHT)
         {
            _loc4_++;
            if(_loc4_ > _loc6_)
            {
               _loc4_ = _loc5_;
            }
         }
         return param2[_loc4_];
      }
      
      private function setOppositeLastY() : void
      {
         if(this.lastY == this.ROW_Y_POS[0])
         {
            this.lastY = this.ROW_Y_POS[1];
         }
         else
         {
            this.lastY = this.ROW_Y_POS[0];
         }
      }
      
      private function sortSeparateRows(param1:Vector.<CharacterPortrait>) : Vector.<CharacterPortrait>
      {
         var sortRows:Function = null;
         var port:CharacterPortrait = null;
         var vec:Vector.<CharacterPortrait> = param1;
         sortRows = function(param1:CharacterPortrait, param2:CharacterPortrait):int
         {
            var _loc3_:Number = param1.x;
            var _loc4_:Number = param2.x;
            if(_loc3_ < _loc4_)
            {
               return -1;
            }
            if(_loc3_ > _loc4_)
            {
               return 1;
            }
            return 0;
         };
         vec = vec.concat();
         var cRowVec:Vector.<CharacterPortrait> = new Vector.<CharacterPortrait>();
         var oRowVec:Vector.<CharacterPortrait> = new Vector.<CharacterPortrait>();
         var n:int = int(vec.length);
         var i:int = 0;
         while(i < n)
         {
            port = vec[i];
            if(port.y == this.cSelPort.y)
            {
               cRowVec.push(port);
            }
            else
            {
               oRowVec.push(port);
            }
            i++;
         }
         cRowVec.sort(sortRows);
         oRowVec.sort(sortRows);
         if(this.sortDir == DIR_RIGHT)
         {
            return cRowVec.concat(oRowVec);
         }
         return oRowVec.concat(cRowVec);
      }
      
      private function sortByX(param1:CharacterPortrait, param2:CharacterPortrait) : int
      {
         var _loc3_:Number = param1.x;
         var _loc4_:Number = param2.x;
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      private function sortPortVecHorz(param1:CharacterPortrait, param2:CharacterPortrait) : int
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this.sortDir == DIR_LEFT || this.sortDir == DIR_RIGHT)
         {
            _loc3_ = param1.x;
            _loc4_ = param2.x;
         }
         if(this.sortDir == DIR_LEFT || this.sortDir == DIR_RIGHT)
         {
            _loc3_ = param1.x;
            _loc4_ = param2.x;
         }
         else if(this.sortDir == DIR_DOWN || this.sortDir == DIR_UP)
         {
            _loc3_ = param1.y;
            _loc4_ = param2.y;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(this.sortDir == DIR_LEFT || this.sortDir == DIR_RIGHT)
         {
            if(param1.y == this.lastY)
            {
               if(this.sortDir == DIR_RIGHT)
               {
                  return -1;
               }
               return 1;
            }
            if(this.sortDir == DIR_RIGHT)
            {
               return 1;
            }
            return -1;
         }
         var _loc5_:Number = this.getDistance(this.cSelPort.x,this.cSelPort.y,param1.x,param1.y);
         var _loc6_:Number = this.getDistance(this.cSelPort.x,this.cSelPort.y,param2.x,param2.y);
         if(this.sortDir == DIR_RIGHT || this.sortDir == DIR_DOWN)
         {
            _loc3_ = _loc5_;
            _loc4_ = _loc6_;
         }
         else if(this.sortDir == DIR_LEFT || this.sortDir == DIR_UP)
         {
            _loc3_ = _loc6_;
            _loc4_ = _loc5_;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         return 0;
      }
      
      private function getDistance(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
      
      private function getNextRow() : int
      {
         if(this.cRow == 0)
         {
            return 1;
         }
         return 0;
      }
      
      private function convIndToPort(param1:int) : CharacterPortrait
      {
         return this.PORT_VEC[param1];
      }
      
      private function convPortToInd(param1:CharacterPortrait) : int
      {
         return this.PORT_DCT[param1];
      }
      
      private function getLowestRowIndLocal(param1:int = -1) : int
      {
         if(param1 == -1)
         {
            param1 = this.cRow;
         }
         return this.selectableCharsRowArr[param1][0];
      }
      
      private function getHighestRowIndLocal(param1:int = -1) : int
      {
         if(param1 == -1)
         {
            param1 = this.cRow;
         }
         var _loc2_:Array = this.selectableCharsRowArr[param1];
         return _loc2_[_loc2_.length - 1];
      }
      
      override public function pressLftBtn() : void
      {
         this.setSelection(this.getNearestPortrait(DIR_LEFT),true);
      }
      
      override public function pressRhtBtn() : void
      {
         this.setSelection(this.getNearestPortrait(DIR_RIGHT),true);
      }
      
      override public function pressPseBtn() : void
      {
         if(this.CS_SCRN)
         {
            SND_MNGR.pauseResumeBgm();
         }
         else if(GameStateManager.GS_MNGR.gameState == GameStates.PAUSE)
         {
            this.cancel();
            this.nameBox.cancel();
            nextMsgBxToCreate = null;
            this.unpauseGameOnDestroy = true;
         }
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         instance = null;
         if(this.unpauseGameOnDestroy)
         {
            EVENT_MNGR.unpauseGame();
         }
      }
   }
}
