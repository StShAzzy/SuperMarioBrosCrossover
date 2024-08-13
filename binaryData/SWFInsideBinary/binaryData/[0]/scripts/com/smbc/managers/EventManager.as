package com.smbc.managers
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.LevelID;
   import com.smbc.data.SoundNames;
   import com.smbc.errors.SingletonError;
   import com.smbc.interfaces.IManager;
   import com.smbc.level.FakeLevel;
   import com.smbc.level.TitleLevel;
   import com.smbc.messageBoxes.MenuBox;
   import com.smbc.messageBoxes.PauseMenu;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public final class EventManager extends MainManager
   {
      
      public static const EVENT_MNGR:EventManager = new EventManager();
      
      private static var instantiated:Boolean;
       
      
      private const MNGR_DCT:CustomDictionary = MainManager.MNGR_DCT;
      
      private var dieTmr:CustomTimer;
      
      private var gsMsg:String;
      
      private const SFX_GAME_FLAG_POLE:String = SoundNames.SFX_GAME_FLAG_POLE;
      
      private var levelTransferDelTmr:Timer;
      
      private var levelToLoadArr:Array;
      
      public function EventManager()
      {
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      public function getLevelVars() : void
      {
         var _loc1_:IManager = null;
         for each(_loc1_ in this.MNGR_DCT)
         {
            _loc1_.updateLevelRefs();
         }
      }
      
      public function characterSelectStart() : void
      {
         sndMngr.removeAllSounds();
         if(GameSettings.tutorials)
         {
            tutMngr.characterSelect();
         }
         statMngr.characterSelectStartHandler();
         btnMngr.characterSelectStartHandler();
      }
      
      public function selectedCharacter(param1:int) : void
      {
         statMngr.curCharNum = param1;
         scrnMngr.selectedCharacterHandler();
      }
      
      public function titleLevelInitiate() : void
      {
         btnMngr.titleLevelInitiateHandler();
      }
      
      public function titleLevelDestroy() : void
      {
         btnMngr.titleLevelDestroyHandler();
      }
      
      public function preLevelStart() : void
      {
      }
      
      public function playerDie() : void
      {
         statMngr.stopTimeLeft();
         if(gsMngr.lockGameState)
         {
            gsMngr.lockGameState = false;
         }
         gsMngr.gameState = "watch";
         gsMngr.lockGameState = true;
         sndMngr.removeAllSounds();
      }
      
      public function startDieTmr(param1:int) : void
      {
         if(this.dieTmr)
         {
            this.dieTmr.stop();
            this.dieTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.dieDurTmrLsr);
            this.dieTmr = null;
         }
         this.dieTmr = new CustomTimer(param1,1);
         this.dieTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.dieDurTmrLsr,false,0,true);
         this.dieTmr.start();
         statMngr.stopTimeLeft();
      }
      
      private function dieDurTmrLsr(param1:TimerEvent) : void
      {
         this.dieTmr.stop();
         this.dieTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.dieDurTmrLsr);
         this.dieTmr = null;
         statMngr.playerDie();
         if(statMngr.showTimeUpScrn)
         {
            scrnMngr.showTimeUpScreen();
         }
         else
         {
            this.checkGameOver();
         }
      }
      
      public function checkGameOver() : void
      {
         var _loc1_:int = GameSettings.campaignMode;
         var _loc2_:int = CampaignModes.SURVIVAL;
         if(_loc1_ != _loc2_ && statMngr.numLives > statMngr.NUM_LIVES_GAME_OVER || _loc1_ == _loc2_ && !statMngr.checkPStateVecForAllZeroes())
         {
            level.reloadLevel();
         }
         else
         {
            this.gameOver();
         }
      }
      
      public function gameOver() : void
      {
         scrnMngr.gameOver();
      }
      
      public function continueAfterDying() : void
      {
         statMngr.continueAfterDyingHandler();
         var _loc1_:LevelID = statMngr.currentLevelID;
         game.addChild(new FakeLevel());
         scrnMngr.createLevel(_loc1_);
      }
      
      public function startNewGame() : void
      {
         TitleLevel.allowRestart = false;
         tutMngr.startNewGameHandler();
         statMngr.startNewGameHandler();
         scrnMngr.startNewGameHandler();
      }
      
      public function destroyLevel() : void
      {
         var _loc1_:IManager = null;
         for each(_loc1_ in this.MNGR_DCT)
         {
            _loc1_.clearLevelRefs();
         }
      }
      
      public function levelTransfer(param1:String, param2:int, param3:int = 0) : void
      {
         if(param3)
         {
            this.levelToLoadArr = [param1,param2];
            this.levelTransferDelTmr = new CustomTimer(param3,1);
            this.levelTransferDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.levelTransferDelTmrHandler,false,0,true);
            this.levelTransferDelTmr.start();
            return;
         }
         if(param1.length == 1)
         {
            level.areaToLoadArr = [param1,param2];
         }
         else
         {
            statMngr.passedHw = false;
            statMngr.warpPipeHandler();
            level.levelIDToLoad = LevelID.Create(param1);
         }
      }
      
      private function levelTransferDelTmrHandler(param1:TimerEvent) : void
      {
         if(this.levelTransferDelTmr)
         {
            this.levelTransferDelTmr.stop();
            this.levelTransferDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.levelTransferDelTmrHandler);
            this.levelTransferDelTmr = null;
         }
         if(this.levelToLoadArr == null)
         {
            return;
         }
         this.levelTransfer(this.levelToLoadArr[0],this.levelToLoadArr[1]);
         this.levelToLoadArr = null;
      }
      
      public function pauseGame() : void
      {
         level.pauseGame();
         msgBxMngr.resetLastMenuPosition();
         var _loc1_:PauseMenu = new PauseMenu();
         _loc1_.initiate();
         sndMngr.pauseGame();
      }
      
      public function beatGame() : void
      {
         statMngr.beatGameHandler();
      }
      
      public function beatLevel(param1:int, param2:int) : void
      {
         statMngr.beatLevelHandler(param1,param2);
      }
      
      public function unpauseGame() : void
      {
         level.resumeGame();
         sndMngr.resumeGame();
      }
      
      public function secondsLeftIntro() : void
      {
         sndMngr.changeMusic(SoundNames.BGM_GAME_SECONDS_LEFT_INTRO);
         statMngr.secondsLeft = true;
      }
      
      public function secondsLeftStart() : void
      {
      }
      
      public function loadGame() : void
      {
         var _loc1_:MenuBox = null;
         _loc1_ = MenuBox.activeMenu;
         if(_loc1_)
         {
            _loc1_.nextMsgBxToCreate = null;
            _loc1_.cancel();
         }
         TitleLevel.allowRestart = false;
         if(level)
         {
            level.destroyLevel();
         }
         sndMngr.removeAllSounds();
         game.addChild(new FakeLevel());
         statMngr.newLev = true;
         statMngr.passedHw = false;
         scrnMngr.createLevel(statMngr.currentLevelID);
      }
      
      public function restartGame() : void
      {
         if(level)
         {
            level.destroyLevel();
         }
         sndMngr.removeAllSounds();
         statMngr.resetAllStats();
         statMngr.numContinuesUsed = 0;
         scrnMngr.restartGame();
      }
      
      public function enterLevelExit() : void
      {
         if(level.flagPole != null)
         {
            statMngr.convertTimeToScore();
         }
      }
      
      public function getCoin() : void
      {
         statMngr.addCoin();
      }
      
      public function addPoints(param1:uint) : void
      {
         statMngr.addPoints(param1);
      }
      
      public function touchedFlagPole() : void
      {
         gsMngr.lockGameState = false;
         gsMngr.gameState = GameStates.WATCH;
         gsMngr.lockGameState = true;
         level.destroyAllEnemiesAndProjectilesOnScreen();
         level.startBackupTouchLevelExitTmr();
         level.flagPole.touchPlayer(player);
         player.slideDownFlagPole();
         if(!(level is TitleLevel))
         {
            sndMngr.removeAllSounds();
         }
         sndMngr.playSound(this.SFX_GAME_FLAG_POLE);
         statMngr.touchFlag();
      }
      
      public function getAxe() : void
      {
         level.startBackupTouchLevelExitTmr();
      }
      
      public function cleanUp() : void
      {
         if(Boolean(this.dieTmr) && this.dieTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.dieTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.dieDurTmrLsr);
         }
      }
   }
}
