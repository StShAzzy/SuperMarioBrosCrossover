package com.smbc.screens
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.MusicType;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.MushroomSelector;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TextManager;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.messageBoxes.MessageBoxSounds;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   
   public class InformativeBlackScreen extends Sprite implements IKeyPressable
   {
      
      public static const SCREEN_TYPE_GAME_OVER:String = "gameOver";
      
      public static const SCREEN_TYPE_PRE_LEVEL:String = "preLevel";
      
      public static const SCREEN_TYPE_TIME_UP:String = "timeUp";
      
      private static const PRELEVEL_DEFAULT_ALL_CHARS:int = 2000;
      
      private static const END_DUR_GAME_OVER_SOPHIA:int = 4500;
      
      public static var instance:InformativeBlackScreen;
      
      private static const TIMES_TFC_PNT:Point = new Point(242,224);
      
      private static const LIVES_TFC_PNT:Point = new Point(269,225);
       
      
      private const DUR_TMR_DUR_DEFAULT_GAME_OVER:int = 3000;
      
      private const DUR_TMR_PRE_LEVEL_DEFAULT:int = 2500;
      
      private const DUR_TMR_DUR_TIME_UP:int = 2500;
      
      private const END_DUR_PRELEVEL_BILL:int = 2200;
      
      private const END_DUR_PRELEVEL_LINK:int = 1800;
      
      private const END_DUR_PRELEVEL_MARIO:int = 2000;
      
      private const END_DUR_PRELEVEL_MEGA_MAN:int = 2000;
      
      private const END_DUR_PRELEVEL_RYU:int = 1500;
      
      private const END_DUR_PRELEVEL_SAMUS:int = 2000;
      
      private const END_DUR_PRELEVEL_SIMON:int = 2000;
      
      private const END_DUR_PRELEVEL_SOPHIA:int = 2500;
      
      private const END_DUR_GAME_OVER_BILL:int = 6000;
      
      private const END_DUR_GAME_OVER_LINK:int = 3000;
      
      private const END_DUR_GAME_OVER_MARIO:int = 4500;
      
      private const END_DUR_GAME_OVER_MEGA_MAN:int = 3000;
      
      private const END_DUR_GAME_OVER_RYU:int = 4000;
      
      private const END_DUR_GAME_OVER_SAMUS:int = 3000;
      
      private const END_DUR_GAME_OVER_SIMON:int = 4000;
      
      private var durTmr:CustomTimer;
      
      private var _screenType:String;
      
      private const GAME:SuperMarioBrosCrossover = SuperMarioBrosCrossover.game;
      
      private const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      private const SCRN_MNGR:ScreenManager = ScreenManager.SCRN_MNGR;
      
      private const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      private const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      private const GS_CONTINUE_SELECT:String = "continueSelect";
      
      private const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      private const SELECTOR_BOTTOM_MARGIN:int = 6;
      
      private const SELECTOR_X_POS:int = 196;
      
      private var selectingYes:Boolean;
      
      public var tsTxtStg:TopScreenText;
      
      public var continueTxtStg:TextField;
      
      public var gameOverTxtStg:TextField;
      
      public var noTxtStg:TextField;
      
      private var selector:MushroomSelector;
      
      public var yesTxtStg:TextField;
      
      public var livesDispTxtStg:TextField;
      
      public var worldDispTxtStg:TextField;
      
      public var timesSymbolStg:Sprite;
      
      public var timeUpTxtStg:TextField;
      
      private var continueTfc:TextFieldContainer;
      
      private var gameOverTfc:TextFieldContainer;
      
      private var noTfc:TextFieldContainer;
      
      private var yesTfc:TextFieldContainer;
      
      private var livesDispTfc:TextFieldContainer;
      
      private var timeUpTfc:TextFieldContainer;
      
      private var worldDispTfc:TextFieldContainer;
      
      private var timesTfc:TextFieldContainer;
      
      private const COLOR_PINK:uint = 4.294954695E9;
      
      private const COLOR_WHITE:uint = 4.294967295E9;
      
      private var txtMngr:TextManager;
      
      public function InformativeBlackScreen(param1:String)
      {
         this.txtMngr = TextManager.INSTANCE;
         super();
         if(instance != null)
         {
            throw new SingletonError();
         }
         instance = this;
         this._screenType = param1;
         if(this.tsTxtStg && contains(this.tsTxtStg))
         {
            removeChild(this.tsTxtStg);
         }
         if(this._screenType == SCREEN_TYPE_GAME_OVER)
         {
            this.clearPreLevelElements();
            this.clearTimeUpElements();
            this.continueTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_CREDITS);
            this.txtMngr.replaceStageTextField(this.continueTxtStg,this.continueTfc,this);
            this.continueTxtStg = null;
            this.gameOverTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.gameOverTxtStg,this.gameOverTfc,this);
            this.gameOverTxtStg = null;
            this.noTfc = new TextFieldContainer(FontCharMenu.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.noTxtStg,this.noTfc,this);
            this.noTxtStg = null;
            this.yesTfc = new TextFieldContainer(FontCharMenu.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.yesTxtStg,this.yesTfc,this);
            this.yesTxtStg = null;
         }
         else if(this._screenType == SCREEN_TYPE_PRE_LEVEL)
         {
            this.clearGameOverElements();
            this.clearTimeUpElements();
            this.livesDispTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.livesDispTxtStg,this.livesDispTfc,this);
            this.livesDispTxtStg = null;
            this.worldDispTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.worldDispTxtStg,this.worldDispTfc,this);
            this.worldDispTxtStg = null;
         }
         else if(this._screenType == SCREEN_TYPE_TIME_UP)
         {
            this.clearGameOverElements();
            this.clearPreLevelElements();
            this.timeUpTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            this.txtMngr.replaceStageTextField(this.timeUpTxtStg,this.timeUpTfc,this);
            this.timeUpTxtStg = null;
         }
         addChild(TopScreenText.instance);
         TopScreenText.instance.initiateBlackScreen();
      }
      
      public function initiate() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:Vector.<CustomMovieClip> = null;
         var _loc6_:CustomMovieClip = null;
         var _loc7_:Rectangle = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         this.GS_MNGR.lockGameState = false;
         if(this.GS_MNGR.gameState != GameStates.BLACK_SCREEN)
         {
            this.GS_MNGR.gameState = GameStates.BLACK_SCREEN;
         }
         this.GAME.addChild(this);
         if(this._screenType == SCREEN_TYPE_GAME_OVER)
         {
            removeChild(this.continueTfc);
            removeChild(this.yesTfc);
            removeChild(this.noTfc);
            if(this.selector && contains(this.selector))
            {
               removeChild(this.selector);
            }
            _loc1_ = this.DUR_TMR_DUR_DEFAULT_GAME_OVER;
            this.SND_MNGR.changeMusic(MusicType.GAME_OVER);
            switch(this.SND_MNGR.getMusicCharName())
            {
               case Bill.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_BILL;
                  break;
               case Link.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_LINK;
                  break;
               case Mario.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_MARIO;
                  break;
               case MegaMan.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_MEGA_MAN;
                  break;
               case Ryu.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_RYU;
                  break;
               case Samus.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_SAMUS;
                  break;
               case Simon.CHAR_NAME_CAPS:
                  _loc1_ = this.END_DUR_GAME_OVER_SIMON;
                  break;
               case Sophia.CHAR_NAME_CAPS:
                  _loc1_ = END_DUR_GAME_OVER_SOPHIA;
            }
            this.durTmr = new CustomTimer(_loc1_,1);
            this.durTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrLsr,false,0,true);
            this.durTmr.start();
         }
         else if(this._screenType == SCREEN_TYPE_PRE_LEVEL)
         {
            _loc2_ = this.STAT_MNGR.curCharNum;
            _loc3_ = this.STAT_MNGR.convNumToName(_loc2_);
            _loc4_ = PRELEVEL_DEFAULT_ALL_CHARS;
            TopScreenText.instance.updNameDispTxt();
            if(GameSettings.campaignMode == CampaignModes.SINGLE_CHARACTER)
            {
               _loc4_ = this.DUR_TMR_PRE_LEVEL_DEFAULT;
            }
            else
            {
               this.SND_MNGR.curMusicPlayer.fadeOut(_loc4_ - 500,500);
            }
            this.timesTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            this.timesTfc.text = "*";
            addChild(this.timesTfc);
            this.timesTfc.x = TIMES_TFC_PNT.x;
            this.timesTfc.y = TIMES_TFC_PNT.y;
            this.livesDispTfc.x = LIVES_TFC_PNT.x;
            this.livesDispTfc.y = LIVES_TFC_PNT.y;
            if(GameSettings.DEBUG_MODE && GameSettings.noLoading)
            {
               _loc4_ = 1;
            }
            this.durTmr = new CustomTimer(_loc4_,1);
            this.durTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrLsr,false,0,true);
            this.durTmr.start();
            (_loc6_ = (_loc5_ = Character.getSkinPreviews(this.STAT_MNGR.curCharNum))[this.STAT_MNGR.getCharSkinNum(this.STAT_MNGR.curCharNum)]).gotoAndStop(this.STAT_MNGR.curCharNum + 1);
            _loc7_ = MessageBox.getVisibleBounds(_loc6_);
            _loc6_.x = 206 - _loc6_.width / 2;
            _loc6_.y = 232 - _loc6_.height + _loc7_.height / 2;
            addChild(_loc6_);
            this.worldDispTfc.text = "WORLD " + this.STAT_MNGR.curFullLevStr.substr(0,3);
            _loc8_ = this.STAT_MNGR.numLives;
            if(GameSettings.campaignMode == CampaignModes.SURVIVAL)
            {
               _loc8_ = 1;
            }
            if(_loc8_ < 10)
            {
               _loc9_ = " " + _loc8_.toString();
            }
            else
            {
               _loc9_ = _loc8_.toString();
            }
            this.livesDispTfc.text = _loc9_;
            this.EVENT_MNGR.preLevelStart();
         }
         else if(this._screenType == SCREEN_TYPE_TIME_UP)
         {
            this.durTmr = new CustomTimer(this.DUR_TMR_DUR_TIME_UP,1);
            this.durTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrLsr,false,0,true);
            this.durTmr.start();
         }
      }
      
      private function durTmrLsr(param1:TimerEvent) : void
      {
         this.durTmr.stop();
         this.durTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrLsr);
         this.durTmr = null;
         if(this._screenType == SCREEN_TYPE_GAME_OVER)
         {
            removeChild(this.gameOverTfc);
            this.gameOverTfc = null;
            addChild(this.continueTfc);
            addChild(this.yesTfc);
            addChild(this.noTfc);
            this.selector = new MushroomSelector();
            addChild(this.selector);
            this.selector.y = this.yesTfc.y + this.SELECTOR_BOTTOM_MARGIN;
            this.selector.x = this.SELECTOR_X_POS;
            this.yesTfc.changeType(FontCharMenu.TYPE_SELECTED);
            this.noTfc.changeType(FontCharMenu.TYPE_NORMAL);
            this.selectingYes = true;
            this.GS_MNGR.gameState = this.GS_CONTINUE_SELECT;
         }
         else if(this._screenType == SCREEN_TYPE_PRE_LEVEL)
         {
            this.cleanUp();
            this.SCRN_MNGR.preLevelScreenFinished();
         }
         else if(this._screenType == SCREEN_TYPE_TIME_UP)
         {
            this.cleanUp();
            this.SCRN_MNGR.timeUpScreenFinished();
         }
      }
      
      private function clearGameOverElements() : void
      {
         removeChild(this.continueTxtStg);
         this.continueTxtStg = null;
         removeChild(this.gameOverTxtStg);
         this.gameOverTxtStg = null;
         removeChild(this.yesTxtStg);
         this.yesTxtStg = null;
         removeChild(this.noTxtStg);
         this.noTxtStg = null;
         if(this.selector)
         {
            removeChild(this.selector);
         }
         this.selector = null;
      }
      
      private function clearPreLevelElements() : void
      {
         removeChild(this.livesDispTxtStg);
         this.livesDispTxtStg = null;
         removeChild(this.timesSymbolStg);
         this.timesSymbolStg = null;
         removeChild(this.worldDispTxtStg);
         this.worldDispTxtStg = null;
      }
      
      private function clearTimeUpElements() : void
      {
         removeChild(this.timeUpTxtStg);
         this.timeUpTxtStg = null;
      }
      
      private function setNewSelection() : void
      {
         if(this.selectingYes)
         {
            this.selector.y = this.noTfc.y + this.SELECTOR_BOTTOM_MARGIN;
            this.noTfc.changeType(FontCharMenu.TYPE_SELECTED);
            this.yesTfc.changeType(FontCharMenu.TYPE_NORMAL);
            this.selectingYes = false;
         }
         else
         {
            this.selector.y = this.yesTfc.y + this.SELECTOR_BOTTOM_MARGIN;
            this.yesTfc.changeType(FontCharMenu.TYPE_SELECTED);
            this.noTfc.changeType(FontCharMenu.TYPE_NORMAL);
            this.selectingYes = true;
         }
         this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CHANGE_SELECTION);
      }
      
      private function makeSelection() : void
      {
         this.GS_MNGR.lockGameState = false;
         this.GS_MNGR.gameState = GameStates.LOADING;
         this.cleanUp();
         if(this.selectingYes)
         {
            this.EVENT_MNGR.continueAfterDying();
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_START_NEW_GAME);
         }
         else
         {
            this.EVENT_MNGR.restartGame();
            this.SND_MNGR.playSoundNow(MessageBoxSounds.SN_CANCEL_ITEM);
         }
      }
      
      public function pressUpBtn() : void
      {
         if(this.GS_MNGR.gameState == this.GS_CONTINUE_SELECT)
         {
            this.setNewSelection();
         }
      }
      
      public function pressDwnBtn() : void
      {
         if(this.GS_MNGR.gameState == this.GS_CONTINUE_SELECT)
         {
            this.setNewSelection();
         }
      }
      
      public function pressLftBtn() : void
      {
      }
      
      public function pressRhtBtn() : void
      {
      }
      
      public function pressJmpBtn() : void
      {
         if(this.GS_MNGR.gameState == this.GS_CONTINUE_SELECT)
         {
            this.makeSelection();
         }
      }
      
      public function pressAtkBtn() : void
      {
      }
      
      public function pressSpcBtn() : void
      {
      }
      
      public function pressPseBtn() : void
      {
         if(this.GS_MNGR.gameState == this.GS_CONTINUE_SELECT)
         {
            this.makeSelection();
         }
      }
      
      public function cleanUp() : void
      {
         if(this.durTmr && this.durTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.durTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrLsr);
         }
         if(parent == this.GAME)
         {
            this.GAME.removeChild(this);
         }
         instance = null;
      }
      
      public function get screenType() : String
      {
         return this._screenType;
      }
   }
}
