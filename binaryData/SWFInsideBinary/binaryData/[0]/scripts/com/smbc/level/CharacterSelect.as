package com.smbc.level
{
   import com.smbc.characters.Character;
   import com.smbc.characters.Jason;
   import com.smbc.characters.Mario;
   import com.smbc.characters.Sophia;
   import com.smbc.data.GameStates;
   import com.smbc.data.LevelID;
   import com.smbc.data.LevelTypes;
   import com.smbc.data.MapPack;
   import com.smbc.data.MusicType;
   import com.smbc.data.SoundNames;
   import com.smbc.graphics.Scenery;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.LevelDataManager;
   import com.smbc.messageBoxes.CharacterSelectBox;
   import com.smbc.text.TextFieldContainer;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.text.TextField;
   
   public class CharacterSelect extends Level implements IKeyPressable
   {
      
      public static var instance:CharacterSelect;
      
      public static const FULL_LEVEL_STR:String = "9-1a";
      
      public static const PLAYER_X_POS:Number = GLOB_STG_RHT / 2;
      
      public static const BGM_STR:String = SoundNames.BGM_GAME_CHARACTER_SELECT;
      
      public static var lastChosenChar:String = Mario.CHAR_NAME;
      
      private static const SN_REVIVE_CHARACTER:String = SoundNames.SFX_GAME_POWER_UP;
      
      private static const WALK_SPEED:int = 90;
      
      private static const FL_SELECTOR_REVIVE:String = "revive";
      
      private static const FL_SELECTOR_STRENGTHEN_START:String = "strengthenStart";
      
      private static const FL_SELECTOR_STRENGTHEN_END:String = "strengthenEnd";
      
      private static const FL_SELECTOR_SELECT:String = "select";
      
      private static const PS_FALLEN:int = Character.PS_FALLEN;
      
      private static const MODE_REVIVE:String = "revive";
      
      private static const MODE_CHARACTER_SELECT:String = "characterSelect";
      
      private static const SOPHIA_CHAR_NUM:int = Sophia.CHAR_NUM;
      
      private static const CHAR_NUM_MIN:int = Character.CHAR_NUM_MIN;
      
      private static const END_TMR_DUR_VAR_NAME:String = "CHAR_SEL_END_DUR";
       
      
      public var numLives:Sprite;
      
      public var livesTxt:TextField;
      
      public var selector:MovieClip;
      
      private const LIVES_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      private const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      private const STAGE_HEIGHT:int = 480;
      
      private const STAGE_WIDTH:int = 512;
      
      private const STAGE:Stage = GlobVars.STAGE;
      
      private const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      private var fakeKeyPress:Boolean;
      
      private var cSel:String;
      
      public var choseChar:int;
      
      private var endTmr:GameLoopTimer;
      
      private var teamSurvival:Boolean;
      
      private var allowRevival:Boolean;
      
      private var mode:String = "characterSelect";
      
      private var SELECTABLE_CHARS_VEC:Vector.<MovieClip>;
      
      private var selBox:CharacterSelectBox;
      
      public var levelIdForTheme:LevelID;
      
      public var levTypeForTheme:String;
      
      public var lockPlayerPosition:Point;
      
      public function CharacterSelect(param1:Boolean)
      {
         this.choseChar = CHAR_NUM_MIN - 1;
         this.SELECTABLE_CHARS_VEC = new Vector.<MovieClip>();
         super(LevelID.Create(FULL_LEVEL_STR),LevelDataManager.getLevelData(MapPack.Smb),[],true);
         instance = this;
         this.allowRevival = param1;
      }
      
      public function setCurLevStr() : void
      {
         var _loc1_:String = LevelDataManager.currentLevelData.getMainArea(STAT_MNGR.currentLevelID);
         this.levelIdForTheme = LevelID.Create(STAT_MNGR.currentLevelID.nameWithoutArea + _loc1_);
         this.levTypeForTheme = LevelDataManager.currentLevelData.getType(this.levelIdForTheme);
         if(this.levTypeForTheme == LevelTypes.WATER)
         {
            this.addWaterToTop();
         }
      }
      
      private function addWaterToTop() : void
      {
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Scenery = null;
         _loc1_ = GLOB_STG_TOP + TILE_SIZE * 2;
         var _loc2_:String = Scenery.WAVE_BASE_STR;
         _loc3_ = GLOB_STG_LFT;
         while(_loc3_ < GLOB_STG_RHT)
         {
            (_loc4_ = new Scenery(_loc2_)).x = _loc3_;
            _loc4_.originalX = _loc3_;
            _loc4_.y = _loc1_;
            addToLevel(_loc4_);
            _loc3_ += TILE_SIZE;
         }
         addObj();
      }
      
      override public function initiateLevel() : void
      {
         super.initiateLevel();
         this.selBox = new CharacterSelectBox(this.allowRevival);
         this.selBox.initiate();
         this.GS_MNGR.gameState = GameStates.CHARACTER_SELECT;
         player.charSelectInitiate();
         this.EVENT_MNGR.characterSelectStart();
         SND_MNGR.changeMusic(MusicType.CHAR_SEL);
      }
      
      public function setSelection(param1:int) : void
      {
         this.choseChar = CHAR_NUM_MIN - 1;
         if(param1 == CharacterSelectBox.RANDOM_CHAR_NUM || param1 == CharacterSelectBox.MAP_SKIN_CHAR_NUM)
         {
            player.visible = false;
         }
         else
         {
            player.visible = true;
            player.changeChar(param1);
            player.charSelectInitiate();
            if(STAT_MNGR.getCharPState(param1) == Character.PS_FALLEN)
            {
               this.markCharacterFallen(player);
               player.fallenCharSelScrn();
            }
         }
      }
      
      private function markCharacterFallen(param1:Character) : void
      {
         this.selBox.desaturate(param1);
      }
      
      private function unmarkCharacterFallen(param1:Character) : void
      {
         param1.filters = [];
      }
      
      override protected function gameLoop(param1:TimerEvent) : void
      {
         var _loc2_:Jason = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         super.gameLoop(param1);
         if(this.choseChar < CHAR_NUM_MIN)
         {
            if(this.lockPlayerPosition != null)
            {
               player.x = this.lockPlayerPosition.x;
               player.y = this.lockPlayerPosition.y;
               player.onGround = true;
            }
            else if(player.x > PLAYER_X_POS)
            {
               this.resetPlayerPosition();
            }
         }
         else if(this.choseChar == SOPHIA_CHAR_NUM)
         {
            _loc2_ = Sophia(player).jason;
            _loc3_ = getChildIndex(player);
            _loc4_ = getChildIndex(_loc2_);
            if(_loc4_ < _loc3_)
            {
               swapChildren(player,_loc2_);
            }
         }
         if(this.choseChar >= CHAR_NUM_MIN && !this.endTmr.running)
         {
            this.destroyLevel();
         }
      }
      
      public function resetPlayerPosition() : void
      {
         player.x = PLAYER_X_POS;
         player.y = GLOB_STG_BOT - TILE_SIZE * 2;
         player.nx = player.x;
         player.ny = player.y;
      }
      
      public function chooseCharacter(param1:int) : void
      {
         this.choseChar = param1;
         player.relRhtBtn();
         player.chooseCharacter();
         var _loc2_:int = int(player.classObj[END_TMR_DUR_VAR_NAME]);
         SND_MNGR.changeMusic(MusicType.CHOOSE_CHARACTER);
         this.endTmr = new GameLoopTimer(_loc2_,1);
         this.endTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.endTmrHandler);
         this.endTmr.start();
      }
      
      private function endTmrHandler(param1:TimerEvent) : void
      {
         this.endTmr.stop();
      }
      
      override public function destroyLevel() : void
      {
         super.destroyLevel();
         if(this.endTmr)
         {
            this.endTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.endTmrHandler);
         }
         instance = null;
         this.EVENT_MNGR.selectedCharacter(player.charNum);
      }
      
      override protected function removeAllSounds() : void
      {
      }
      
      public function pressAtkBtn() : void
      {
      }
      
      public function pressJmpBtn() : void
      {
      }
      
      public function pressUpBtn() : void
      {
      }
      
      public function pressDwnBtn() : void
      {
      }
      
      public function pressLftBtn() : void
      {
      }
      
      public function pressRhtBtn() : void
      {
      }
      
      public function pressPseBtn() : void
      {
      }
      
      public function pressSpcBtn() : void
      {
      }
   }
}
