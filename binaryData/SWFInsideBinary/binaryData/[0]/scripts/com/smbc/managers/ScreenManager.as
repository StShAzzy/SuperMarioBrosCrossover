package com.smbc.managers
{
   import com.customClasses.TDCalculator;
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Sophia;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.LevelID;
   import com.smbc.data.MusicType;
   import com.smbc.data.OnlineData;
   import com.smbc.errors.*;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.graphics.ExplodingRabbitLogo;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.*;
   import com.smbc.main.GlobVars;
   import com.smbc.messageBoxes.NotConnectedMessageBox;
   import com.smbc.screens.InformativeBlackScreen;
   import com.smbc.text.GameTextMessages;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageDisplayState;
   import flash.events.Event;
   import flash.events.FullScreenEvent;
   import flash.events.TimerEvent;
   import flash.geom.Rectangle;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import flash.utils.getTimer;
   
   public final class ScreenManager extends MainManager
   {
      
      public static const SCRN_MNGR:ScreenManager = new ScreenManager();
      
      private static var instantiated:Boolean;
      
      private static const LOGO_TIME_BETWEEN_TRANSITIONS:int = 2500;
       
      
      private var newAreaStatsArr:Array;
      
      private var addTxtTmr:CustomTimer;
      
      private const ADD_TXT_TMR_DUR:int = 1500;
      
      private var thankTxt:TextFieldContainer;
      
      private const THANK_TXT_Y:int = 150;
      
      private var creditsTxt:TextFieldContainer;
      
      private var creditsTailTxt:TextFieldContainer;
      
      private var castleTxt:TextFieldContainer;
      
      private const CASTLE_TXT_Y:int = 220;
      
      private const CASTLE_TXT_QUEST_IS_OVER_Y:int = 200;
      
      private const CASTLE_TXT_WIDTH:int = 360;
      
      private const CASTLE_TXT_QUEST_IS_OVER_WIDTH:int = 300;
      
      private const CASTLE_TXT_LEADING:int = 12;
      
      private const CREDITS_TXT_WIDTH:int = 450;
      
      private var restartGameTmr:CustomTimer;
      
      private const RESTART_GAME_TMR_DUR:int = 6500;
      
      private var startMoveCreditsTmr:CustomTimer;
      
      private const START_MOVE_CREDITS_TMR_DUR:int = 2500;
      
      private const STAGE_HEIGHT:int = 480;
      
      private var moveCreditsLoopTmr:CustomTimer;
      
      private const MOVE_CREDITS_LOOP_TMR_INT:Number = 16.666666666666668;
      
      private const CREDITS_SPEED:int = 40;
      
      private const CREDITS_SPEED_FAST:int = 400;
      
      private var speedUpCredits:Boolean;
      
      private const CREDITS_VISIBLE_END_Y:int = 64;
      
      private const CREDITS_VISIBLE_START_Y:int = 416;
      
      private const DT_MAX:Number = 0.045;
      
      private var dt:Number = 0.045;
      
      private const TD_CALC:TDCalculator = GlobVars.TD_CALC;
      
      private const GLOB_STG_TOP:int = 0;
      
      private var erLogo:ExplodingRabbitLogo;
      
      private const LOGO_NUM_FADE_INTS:int = 66;
      
      private const LOGO_SCALE_INC:Number = 7;
      
      private var logoTmr:CustomTimer;
      
      public var forceShowCharacterSelectScreen:Boolean;
      
      private var logoCanChangeSize:Boolean;
      
      private var logoFullStartTime:int;
      
      public var creditsAreRolling:Boolean;
      
      private var blackRect:Sprite;
      
      private var blackRectBg:Sprite;
      
      public function ScreenManager()
      {
         this.newAreaStatsArr = [];
         this.logoTmr = new CustomTimer(15,4500 / 15);
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      override public function initiate() : void
      {
         var _loc2_:String = null;
         super.initiate();
         GameSettings.changeLockFrameRate(int(GameSettings.lockFrameRate));
         var _loc1_:Boolean = GameSettings.DEBUG_MODE;
         if(!_loc1_ || !GameSettings.SKIP_FAKE_LEVEL)
         {
            game.addChild(new FakeLevel());
         }
         if(_loc1_ && GameSettings.skipTitleScreen)
         {
            eventMngr.startNewGame();
         }
         else if(!_loc1_ || !GameSettings.skipLogos)
         {
            this.showOpeningLogos();
         }
         else
         {
            this.restartGame();
         }
         GlobVars.STAGE.fullScreenSourceRect = new Rectangle(0,0,512,480);
      }
      
      public function enterFullScreen() : Boolean
      {
         var stage:Stage = GlobVars.STAGE;
         try
         {
            if(!this.fullScreenIsEnabled && OnlineData.onOfficialWebsite)
            {
               stage.displayState = StageDisplayState.FULL_SCREEN_INTERACTIVE;
            }
         }
         catch(error:Error)
         {
         }
         return this.fullScreenIsEnabled;
      }
      
      public function get fullScreenIsEnabled() : Boolean
      {
         var _loc1_:Stage = GlobVars.STAGE;
         return _loc1_.displayState == StageDisplayState.FULL_SCREEN || _loc1_.displayState == StageDisplayState.FULL_SCREEN_INTERACTIVE;
      }
      
      protected function fullScreenEventHandler(param1:FullScreenEvent) : void
      {
         var _loc2_:Stage = GlobVars.STAGE;
         if(!param1.fullScreen)
         {
            _loc2_.displayState = StageDisplayState.FULL_SCREEN;
         }
      }
      
      private function showOpeningLogos() : void
      {
         if(!OnlineData.loaded && !GameSettings.DEBUG_MODE)
         {
            new NotConnectedMessageBox().initiate();
            return;
         }
         gsMngr.lockGameState = false;
         gsMngr.gameState = GameStates.LOGOS;
         this.erLogo = new ExplodingRabbitLogo();
         game.addChild(this.erLogo);
         this.erLogo.scaleX = 0;
         this.erLogo.scaleY = 0;
         this.erLogo.x = GlobVars.STAGE_WIDTH / 2 + 20;
         this.erLogo.y = GlobVars.STAGE_HEIGHT / 2;
         this.logoTmr.addEventListener(TimerEvent.TIMER,this.logoTmrHandler,false,0,true);
         this.logoTmr.start();
         this.logoCanChangeSize = true;
         game.graphics.beginFill(4278190080);
         game.graphics.drawRect(0,0,GlobVars.STAGE_WIDTH,GlobVars.STAGE_HEIGHT);
         game.graphics.endFill();
      }
      
      private function logoTmrHandler(param1:TimerEvent) : void
      {
         if(this.logoCanChangeSize && this.logoTmr.currentCount < this.LOGO_NUM_FADE_INTS)
         {
            this.erLogo.scaleX += this.LOGO_SCALE_INC * this.dt;
            this.erLogo.scaleY = this.erLogo.scaleX;
            if(this.erLogo.scaleX > 1)
            {
               this.logoCanChangeSize = false;
               this.logoTmr.pause();
               this.erLogo.scaleX = 1;
               this.erLogo.scaleY = 1;
               game.stage.addEventListener(Event.RENDER,this.renderHandler,false,0,true);
               game.stage.invalidate();
            }
         }
      }
      
      public function openingLogosEnd() : void
      {
         if(this.logoTmr != null)
         {
            this.logoTmr.stop();
            this.logoTmr.removeEventListener(TimerEvent.TIMER,this.logoTmrHandler);
         }
         this.erLogo.parent.removeChild(this.erLogo);
         this.erLogo = null;
         GameSettings.setTitleMapSkin();
         ScreenManager.SCRN_MNGR.restartGame();
      }
      
      protected function renderHandler(param1:Event) : void
      {
         game.stage.removeEventListener(Event.RENDER,this.renderHandler);
         game.stage.addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
      }
      
      protected function enterFrameHandler(param1:Event) : void
      {
         game.stage.removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
         this.logoFullStartTime = getTimer();
         sndMngr.recordSoundsPhase1();
      }
      
      public function logoCanExit() : void
      {
         this.logoTmr.resume();
      }
      
      public function restartGame() : void
      {
         TitleLevel.allowRestart = true;
         var _loc1_:TitleLevel = new TitleLevel();
         if(Boolean(this.blackRect) && Boolean(this.blackRect.parent))
         {
            this.blackRect.parent.removeChild(this.blackRect);
         }
         if(Boolean(this.blackRectBg) && Boolean(this.blackRectBg.parent))
         {
            this.blackRectBg.parent.removeChild(this.blackRectBg);
         }
         game.addChild(_loc1_);
      }
      
      public function startNewGameHandler() : void
      {
         var _loc1_:TitleLevel = TitleLevel.instance;
         if(_loc1_)
         {
            _loc1_.destroyLevel();
         }
         game.addChild(new FakeLevel(FakeLevel.DEFAULT_CHANGE_TO_SKIN_NUM,true));
         this.createLevel(statMngr.currentLevelID);
      }
      
      public function createLevel(param1:LevelID) : void
      {
         var _loc2_:int = 0;
         var _loc3_:CharacterSelect = null;
         statMngr.currentLevelID = param1;
         gsMngr.lockGameState = false;
         if(statMngr.newLev)
         {
            _loc2_ = GameSettings.campaignMode;
            if(_loc2_ != CampaignModes.SINGLE_CHARACTER && _loc2_ != CampaignModes.SINGLE_CHARACTER_RANDOM || this.forceShowCharacterSelectScreen)
            {
               this.forceShowCharacterSelectScreen = false;
               _loc3_ = new CharacterSelect(statMngr.allowCharacterRevival);
               game.addChild(_loc3_);
            }
            else
            {
               if(_loc2_ == CampaignModes.SINGLE_CHARACTER_RANDOM)
               {
                  statMngr.setRandomCharNum();
                  game.addChild(new FakeLevel(GraphicsManager.CHAR_SKIN_NUM_RANDOM));
               }
               eventMngr.selectedCharacter(statMngr.curCharNum);
            }
         }
         else
         {
            this.initiateLevel();
         }
      }
      
      public function selectedCharacterHandler() : void
      {
         gsMngr.gameState = GameStates.BLACK_SCREEN;
         var _loc1_:InformativeBlackScreen = new InformativeBlackScreen(InformativeBlackScreen.SCREEN_TYPE_PRE_LEVEL);
         _loc1_.initiate();
      }
      
      public function preLevelScreenFinished() : void
      {
         gsMngr.gameState = "buildLevel";
         this.initiateLevel();
      }
      
      public function gameOver() : void
      {
         level.destroyLevel();
         if(gsMngr.lockGameState)
         {
            gsMngr.lockGameState = false;
         }
         gsMngr.gameState = GameStates.BLACK_SCREEN;
         var _loc1_:InformativeBlackScreen = new InformativeBlackScreen(InformativeBlackScreen.SCREEN_TYPE_GAME_OVER);
         _loc1_.initiate();
      }
      
      public function showTimeUpScreen() : void
      {
         level.pauseMainTmrs();
         var _loc1_:InformativeBlackScreen = new InformativeBlackScreen(InformativeBlackScreen.SCREEN_TYPE_TIME_UP);
         _loc1_.initiate();
      }
      
      public function timeUpScreenFinished() : void
      {
         eventMngr.checkGameOver();
      }
      
      public function displayThankYouText() : void
      {
         var _loc1_:String = player.charNameTxt;
         var _loc2_:String = statMngr.getSkinName();
         var _loc3_:int = statMngr.getCharSkinNum(statMngr.curCharNum);
         if(_loc2_)
         {
            _loc1_ = _loc2_;
         }
         if(player is Sophia)
         {
            if(_loc3_ == Sophia.SKIN_SOPHIA_III_NES || _loc3_ == Sophia.SKIN_SOPHIA_III_SNES || _loc3_ == Sophia.SKIN_SOPHIA_III_GB || _loc3_ == Sophia.SKIN_SOPHIA_III_16B)
            {
               _loc1_ = "Jason";
            }
            else if(_loc3_ == Sophia.SKIN_SOPHIA_J7_NES || _loc3_ == Sophia.SKIN_SOPHIA_J7_SNES || _loc3_ == Sophia.SKIN_SOPHIA_J7_GB)
            {
               _loc1_ = "Roddy";
            }
            else if(_loc3_ == Sophia.SKIN_TETRIMINO_NES || _loc3_ == Sophia.SKIN_TETRIMINO_SNES)
            {
               _loc1_ = "Mino";
            }
         }
         var _loc4_:String = GameTextMessages.THANK_YOU.replace(GameTextMessages.THANK_YOU_REPLACE_STR,_loc1_);
         this.thankTxt = new TextFieldContainer(FontCharHud.FONT_NUM);
         this.thankTxt.text = _loc4_;
         this.thankTxt.x = GlobVars.STAGE_WIDTH / 2 - this.thankTxt.width / 2;
         this.thankTxt.y = this.THANK_TXT_Y;
         game.addChildAt(this.thankTxt,game.getChildIndex(level));
         this.addTxtTmr = new CustomTimer(this.ADD_TXT_TMR_DUR,1);
         this.addTxtTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.addTxtTmrHandler,false,0,true);
         this.addTxtTmr.start();
      }
      
      private function addTxtTmrHandler(param1:TimerEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc2_:TextFormat = GlobVars.TF_MAIN;
         _loc2_.leading = this.CASTLE_TXT_LEADING;
         this.addTxtTmr.stop();
         this.addTxtTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.addTxtTmrHandler);
         this.addTxtTmr = null;
         this.castleTxt = new TextFieldContainer(FontCharHud.FONT_NUM);
         if(level.worldNum != LevelDataManager.currentLevelData.worldCount)
         {
            this.castleTxt.multiline = true;
            this.castleTxt.textBlockWidth = this.CASTLE_TXT_WIDTH;
            _loc3_ = GameTextMessages.ANOTHER_CASTLE;
            _loc4_ = statMngr.getCurrentBmc().namesArr;
            if(_loc4_ != null)
            {
               _loc5_ = _loc4_[BmdSkinCont.IND_NAME_ARR_PRINCESS];
               if(_loc5_ != null)
               {
                  _loc3_ = _loc3_.replace(GameTextMessages.PRINCESS_REPLACE_STR,_loc5_);
               }
            }
            this.castleTxt.text = _loc3_;
            this.castleTxt.y = this.CASTLE_TXT_Y;
            level.startDungeonEndTmr();
         }
         else
         {
            this.castleTxt.multiline = false;
            this.castleTxt.text = GameTextMessages.QUEST_IS_OVER;
            this.castleTxt.y = this.CASTLE_TXT_QUEST_IS_OVER_Y;
            this.startMoveCreditsTmr = new CustomTimer(this.START_MOVE_CREDITS_TMR_DUR,1);
            this.startMoveCreditsTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.startMoveCreditsTmrHandler,false,0,true);
            this.startMoveCreditsTmr.start();
         }
         this.castleTxt.x = GlobVars.STAGE_WIDTH / 2 - this.castleTxt.width / 2;
         game.addChildAt(this.castleTxt,game.getChildIndex(level));
      }
      
      private function startMoveCreditsTmrHandler(param1:TimerEvent) : void
      {
         this.startMoveCreditsTmr.stop();
         this.startMoveCreditsTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.startMoveCreditsTmrHandler);
         this.startMoveCreditsTmr = null;
         sndMngr.changeMusic(MusicType.CREDITS);
         var _loc2_:TextFormat = GlobVars.TF_MAIN;
         _loc2_.leading = this.CASTLE_TXT_LEADING;
         _loc2_.align = TextFormatAlign.CENTER;
         var _loc3_:int = FontCharMenu.TYPE_CREDITS;
         this.creditsTxt = new TextFieldContainer(FontCharMenu.FONT_NUM,_loc3_);
         this.creditsTxt.multiline = true;
         this.creditsTxt.textBlockWidth = this.CREDITS_TXT_WIDTH;
         this.creditsTxt.text = GameTextMessages.CREDITS_BEFORE_GAMES + Games.creditsGameList + GameTextMessages.CREDITS_AFTER_GAMES;
         this.creditsTxt.x = GlobVars.STAGE_WIDTH / 2 - this.creditsTxt.width / 2;
         this.creditsTxt.y = this.STAGE_HEIGHT;
         this.creditsTxt.center();
         this.creditsTailTxt = new TextFieldContainer(FontCharMenu.FONT_NUM,_loc3_);
         this.creditsTailTxt.multiline = true;
         this.creditsTailTxt.textBlockWidth = this.CREDITS_TXT_WIDTH;
         this.creditsTailTxt.text = GameTextMessages.CREDITS_TAIL;
         this.creditsTailTxt.x = GlobVars.STAGE_WIDTH / 2 - this.creditsTailTxt.width / 2;
         this.creditsTailTxt.y = this.creditsTxt.y + this.creditsTxt.height;
         this.blackRect = new Sprite();
         this.blackRect.graphics.beginFill(0);
         this.blackRect.graphics.drawRect(0,0,GlobVars.STAGE_WIDTH,GlobVars.TILE_SIZE * 2);
         this.blackRect.graphics.endFill();
         var _loc4_:int = GlobVars.TILE_SIZE;
         this.blackRectBg = new Sprite();
         this.blackRectBg.graphics.beginFill(0);
         this.blackRectBg.graphics.drawRect(0,_loc4_ * 3,GlobVars.STAGE_WIDTH,_loc4_ * 12);
         this.blackRectBg.graphics.endFill();
         game.addChildAt(this.blackRectBg,game.getChildIndex(level));
         game.addChildAt(this.creditsTxt,game.getChildIndex(level));
         game.addChildAt(this.creditsTailTxt,game.getChildIndex(level));
         game.addChildAt(this.blackRect,game.getChildIndex(level));
         this.moveCreditsLoopTmr = new CustomTimer(this.MOVE_CREDITS_LOOP_TMR_INT);
         this.moveCreditsLoopTmr.addEventListener(TimerEvent.TIMER,this.moveCreditsLoopTmrHandler,false,0,true);
         this.moveCreditsLoopTmr.start();
         this.creditsAreRolling = true;
         this.speedUpCredits = false;
      }
      
      private function moveCreditsLoopTmrHandler(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         this.dt = this.TD_CALC.getTD();
         if(this.dt > this.DT_MAX)
         {
            this.dt = this.DT_MAX;
         }
         var _loc2_:Number = this.CREDITS_SPEED * this.dt;
         if(this.speedUpCredits)
         {
            _loc2_ = this.CREDITS_SPEED_FAST * this.dt;
         }
         if(this.thankTxt)
         {
            this.thankTxt.y -= _loc2_;
         }
         if(this.castleTxt)
         {
            this.castleTxt.y -= _loc2_;
         }
         if(this.creditsTxt)
         {
            this.creditsTxt.y -= _loc2_;
         }
         if(this.creditsTailTxt.y + this.creditsTailTxt.height / 2 > this.STAGE_HEIGHT / 2)
         {
            this.creditsTailTxt.y = this.creditsTxt.y + this.creditsTxt.height;
         }
         else if(!this.restartGameTmr)
         {
            _loc3_ = this.RESTART_GAME_TMR_DUR;
            if(this.speedUpCredits)
            {
               _loc3_ /= 4;
            }
            this.restartGameTmr = new CustomTimer(_loc3_,1);
            this.restartGameTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.restartGameTmrHandler,false,0,true);
            this.restartGameTmr.start();
         }
         if(Boolean(this.thankTxt) && this.thankTxt.y + this.thankTxt.height < this.CREDITS_VISIBLE_END_Y)
         {
            game.removeChild(this.thankTxt);
            this.thankTxt = null;
         }
         else if(Boolean(this.castleTxt) && this.castleTxt.y + this.castleTxt.height < this.CREDITS_VISIBLE_END_Y)
         {
            game.removeChild(this.castleTxt);
            this.castleTxt = null;
         }
         else if(Boolean(this.creditsTxt) && this.creditsTxt.y + this.creditsTxt.height < this.CREDITS_VISIBLE_END_Y)
         {
            game.removeChild(this.creditsTxt);
            this.creditsTxt = null;
            this.moveCreditsLoopTmr.stop();
            this.moveCreditsLoopTmr.removeEventListener(TimerEvent.TIMER,this.moveCreditsLoopTmrHandler);
            this.moveCreditsLoopTmr = null;
         }
      }
      
      public function fastForwardCredits() : void
      {
         this.speedUpCredits = true;
      }
      
      private function restartGameTmrHandler(param1:TimerEvent) : void
      {
         this.restartGameTmr.stop();
         this.restartGameTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.restartGameTmrHandler);
         this.restartGameTmr = null;
         this.creditsAreRolling = false;
         eventMngr.beatGame();
      }
      
      private function initiateLevel() : void
      {
         level = new Level(statMngr.currentLevelID,LevelDataManager.currentLevelData,this.newAreaStatsArr,statMngr.newLev);
         game.addChild(level);
         if(this.thankTxt != null)
         {
            if(this.thankTxt.parent)
            {
               this.thankTxt.parent.removeChild(this.thankTxt);
            }
            this.thankTxt = null;
         }
         if(this.castleTxt != null)
         {
            if(this.castleTxt.parent)
            {
               this.castleTxt.parent.removeChild(this.castleTxt);
            }
            this.castleTxt = null;
         }
         if(this.creditsTxt != null)
         {
            if(this.creditsTxt.parent)
            {
               this.creditsTxt.parent.removeChild(this.creditsTxt);
            }
            this.creditsTxt = null;
         }
         if(this.creditsTailTxt != null)
         {
            if(this.creditsTailTxt.parent)
            {
               this.creditsTailTxt.parent.removeChild(this.creditsTailTxt);
            }
            this.creditsTailTxt = null;
         }
      }
      
      public function loadNewArea(param1:String, param2:String, param3:String, param4:Array) : void
      {
         if(param3.length != 1)
         {
            throw new StringError("trying to load invalid area");
         }
         this.newAreaStatsArr = statMngr.saveAreaStats(param1,param2,param3,param4);
         statMngr.newLev = false;
         this.createLevel(LevelID.Create(param1 + param3));
      }
      
      public function resetAreaStats() : void
      {
         this.newAreaStatsArr = [];
      }
      
      public function loadNewLevel(param1:LevelID) : void
      {
         statMngr.resetLevelStats();
         this.newAreaStatsArr = [];
         statMngr.newLev = true;
         this.createLevel(param1);
      }
   }
}
