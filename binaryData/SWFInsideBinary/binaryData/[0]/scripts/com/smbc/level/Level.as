package com.smbc.level
{
   import com.customClasses.MCAnimator;
   import com.customClasses.TDCalculator;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.*;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.Cheats;
   import com.smbc.data.Difficulties;
   import com.smbc.data.FireworkLocations;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.HitTester;
   import com.smbc.data.LevelDataTranscoder;
   import com.smbc.data.LevelID;
   import com.smbc.data.LevelTypes;
   import com.smbc.data.MapDifficulty;
   import com.smbc.data.MusicType;
   import com.smbc.data.ScreenSize;
   import com.smbc.enemies.*;
   import com.smbc.enums.GoombaReplacementType;
   import com.smbc.enums.PiranhaSpawnType;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.*;
   import com.smbc.ground.*;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.managers.ButtonManager;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.MessageBoxManager;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.messageBoxes.MenuBoxItems;
   import com.smbc.pickups.*;
   import com.smbc.projectiles.*;
   import com.smbc.sound.RepeatingSilenceOverrideSnd;
   import com.smbc.utils.AnimatedObjectSortableDictionary;
   import com.smbc.utils.GameLoopTimer;
   import com.smbc.utils.GroundNestedColumnDictionary;
   import com.smbc.utils.GroundNestedRowDictionary;
   import com.smbc.utils.SceneryNestedColumnDictionary;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import nl.stroep.utils.ImageSaver;
   
   public class Level extends Sprite
   {
      
      public static var levelInstance:Level;
      
      public static const LOOP_TMR_INT:Number = 1000 / 60;
      
      private static const GAME_LOOP_END_EVENT:Event = new Event(CustomEvents.GAME_LOOP_END);
      
      protected static const AP_PASSTHROUGH_ALWAYS:String = StatusProperty.TYPE_PASS_THROUGH_ALWAYS_AGG;
      
      protected static const AP_PASSTHROUGH_DEFEAT:String = StatusProperty.TYPE_PASS_THROUGH_DEFEAT_AGG;
      
      public static const GLOB_STG_TOP:int = 0;
      
      public static const GLOB_STG_BOT:int = ScreenSize.SCREEN_HEIGHT;
      
      public static const GLOB_STG_RHT:int = ScreenSize.SCREEN_WIDTH;
      
      public static const GLOB_STG_LFT:int = 0;
      
      public static const PROP_SEP:String = "&&";
      
      public static const PROP_EQUALS:String = "=";
      
      public static const PROP_OBJECT_SEP:String = "()";
      
      public static const PROP_CHAR_HORZ:String = "charHorz";
      
      public static const VISIBILITY_HIDE:String = "Hide";
      
      public static const VISIBILITY_SHOW:String = "Show";
      
      public static const PROP_CHAR_VERT:String = "charVert";
      
      public static const PROP_BAD_SWIMMER:String = "BadSwimmer";
      
      public static const PROP_WIDE_CHARACTER:String = "WideCharacter";
      
      public static const PROP_CONTAINED_ITEM:String = "ContainedItem";
      
      public static const PROP_INVISIBLE:String = "Invisible";
      
      public static const PROP_POOR_BOWSER_FIGHTER:String = "poorBowserFighter";
      
      public static const PROP_HIDE_ON_DIFFICULTIES:String = "HideOnDifficulties";
      
      public static const PROP_P_TRANS_DEST:String = "pTransDest";
      
      public static const PROP_TYPE:String = "type";
      
      public static const PROP_WIDTH:String = "width";
      
      public static const PROP_NUMBER:String = "number";
      
      public static const PROP_BOWSER_TYPE:String = "BowserType";
      
      private static const HIDE_ON_DIFFICULTY_EASY:String = "easy";
      
      private static const HIDE_ON_DIFFICULTY_NORMAL:String = "normal";
      
      private static const HIDE_ON_DIFFICULTY_HARD:String = "hard";
      
      private static const AREA_STATS_ARR_IND_BOWSER_FIREBALL_X:int = 6;
      
      private static const BACKUP_TOUCH_LEVEL_EXIT_TMR_DEL:int = 6000;
      
      public static const SCROLL_SPEED_AUTO:int = 100;
      
      private static const SOUNDS_TO_PLAY_DCT:CustomDictionary = SoundManager.SND_MNGR.SOUNDS_TO_PLAY_DCT;
       
      
      internal var onGround:Boolean;
      
      public var bgmType:int;
      
      public var player:Character;
      
      public const TOP_LFT_PT:Point = new Point(GLOB_STG_LFT,GLOB_STG_TOP);
      
      public const BOTTOM_RHT_PT:Point = new Point(GLOB_STG_RHT,GLOB_STG_BOT);
      
      public const SCREEN_WIDTH:int = 512;
      
      public const SCROLL_SPEED_BEAT_DUNGEON:int = 150;
      
      public const SCROLL_SPEED_MARIO_FLAG_POLE_FIX:int = 50;
      
      protected var screenScrollsLeft:Boolean;
      
      public var forceScreenScrollLeft:Boolean;
      
      public const ZERO_PT:Point = new Point();
      
      public const ANIMATOR:MCAnimator = GlobVars.ANIMATOR;
      
      public const TILE_SIZE:int = 32;
      
      public const HALF_TILE_SIZE:int = 16;
      
      private const STAGE:Stage = GlobVars.STAGE;
      
      private const BLANK_TILE:String = "0";
      
      public const PROP_SHIFT_RIGHT:String = "shiftRight";
      
      public const PROP_SHIFT_UP:String = "shiftUp";
      
      protected const GS_PLAY:String = "play";
      
      private const GS_WATCH:String = "watch";
      
      public var locStgTop:Number = 0;
      
      public var locStgRht:Number = 512;
      
      public var locStgLft:Number = 0;
      
      public var locStgBot:Number = 480;
      
      private var lftTilePos:int;
      
      private var rhtTilePos:int;
      
      public var GAME:SuperMarioBrosCrossover;
      
      public const LOOP_TMR:CustomTimer = new CustomTimer(1000 / 60);
      
      public const ANIM_TMR_FLASHING_ITEM:CustomTimer = GlobVars.ANIM_TMR_FOR_FLASING_ITEMS;
      
      public const ANIM_SUPER_SLOWEST_TMR:CustomTimer = AnimationTimers.ANIM_SUPER_SLOWEST_TMR;
      
      public const ANIM_VERY_SLOW_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      public const ANIM_SLOW_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      public const ANIM_MODERATE_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      public const ANIM_MIN_FAST_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      public const ANIM_FAST_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const ACTIVE_ANIM_TMRS_DCT:CustomDictionary = new CustomDictionary();
      
      public const ALL_ANIM_TMRS_DCT:CustomDictionary = new CustomDictionary();
      
      private const CHANGE_COLOR_OBJS_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const RECOLOR_OBJS_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var fastAnim:Boolean;
      
      private var mainAnim:Boolean;
      
      private const SCROLL_EDGE_DIST:Number = 256;
      
      private const DEFAULT_LEFT_SCROLL_POS:Number = 256;
      
      private const DEFAULT_RIGHT_SCROLL_POS:Number = 256;
      
      private const DEFAULT_RIGHT_SCROLL_POS_NO_LEFT_SCROLL:Number = 240;
      
      private var rightScrollPos:Number;
      
      private var leftScrollPos:Number;
      
      public var rightScrollPosOvRd:Number;
      
      public var leftScrollPosOvRd:Number;
      
      private const SCREEN_MAX_LEFT_SCROLL:int = 0;
      
      public var manualGameLoop:Boolean;
      
      public var manualGameLoopNextFrame:Boolean;
      
      private var screenMaxRightScroll:Number;
      
      private const SCREEN_UNWALKABLE_BUFFER:int = 6;
      
      public var offScreenScrollShift:Number = 128;
      
      public var keepPlayerOnRight:Boolean;
      
      public var playerUncentered:Boolean;
      
      private const PLAYER_ON_RIGHT_EDGE_BUFFER:int = 6;
      
      private var tileRightEdge:Number;
      
      private var tileLeftEdge:Number;
      
      private var totalTileWidth:Number;
      
      private var levMap:Array;
      
      private var levPickups:Array;
      
      public const PROJ_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const PLAYER_PROJ_DCT:CustomDictionary = new CustomDictionary(true);
      
      public var gHitArr:Array;
      
      public var gBounceArr:Array;
      
      public const ALWAYS_ANIM_DCT:CustomDictionary = new CustomDictionary(true);
      
      public var bbVec:Vector.<BowserBridge>;
      
      public const SCENERY_DCT:SceneryNestedColumnDictionary = new SceneryNestedColumnDictionary();
      
      private var testPlayer:DisplayObject;
      
      public var background:LevelBackground;
      
      public var foreground:LevelForeground;
      
      private const TD_CALC:TDCalculator = GlobVars.TD_CALC;
      
      public var dt:Number = 0.03;
      
      protected var levData:LevelData;
      
      private var playerX:Number;
      
      private var playerY:Number;
      
      private const ADD_DCT:CustomDictionary = new CustomDictionary();
      
      public const DESTROY_DCT:CustomDictionary = new CustomDictionary();
      
      private var ht:HitTester;
      
      public var numHorzTiles:int;
      
      public var numVertTiles:int;
      
      public var mapWidth:int;
      
      private var ldt:Number;
      
      private var offsetDT:Boolean;
      
      private var gArrLength:int;
      
      private var numLevChildren:int;
      
      private const DT_MAX:Number = 0.045;
      
      private var soundPlayArr:Array;
      
      public var projHitArr:Array;
      
      private var addedPiranha:Boolean;
      
      public var bfbX:Number;
      
      public var bowser:Bowser;
      
      public var bowserAxe:BowserAxe;
      
      public var bbChain:Scenery;
      
      public var fcStartX:Number;
      
      public var bulBillGraySpawnZoneStart:Number;
      
      public var bulBillGraySpawnZoneEnd:Number;
      
      public var bulBillBlackSpawnZoneStart:Number;
      
      public var bulBillBlackSpawnZoneEnd:Number;
      
      public var lakSpawnZoneStart:Number;
      
      public const ENEMY_SPAWNER_DCT:CustomDictionary = new CustomDictionary();
      
      public var waterLevel:Boolean;
      
      private var _initialWaterLevel:Boolean;
      
      public var pitVacVec:Vector.<PitVacuum>;
      
      public var pullyCornerVec:Vector.<Scenery>;
      
      public var pullyPlatVec:Vector.<Platform>;
      
      public var platVec:Vector.<Platform>;
      
      public var teleDataVec:Vector.<Array>;
      
      public var teleVec:Vector.<Teleporter>;
      
      public var checkPtClonesVec:Vector.<Teleporter>;
      
      public var disableScreenScroll:Boolean;
      
      private const TMR_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const P_TMR_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var vecsVec:Vector.<Vector>;
      
      public var pTransVec:Vector.<PipeTransporter>;
      
      private var _id:LevelID;
      
      private var _levNum:int;
      
      private var _worldNum:int;
      
      private var _areaStr:String;
      
      private var _plyrStatsArr:Array;
      
      private var areaStatsArr:Array;
      
      private var disarm:Boolean;
      
      private var _flagPole:FlagPole;
      
      private var flag:Scenery;
      
      protected var _beatLevel:Boolean;
      
      public var watchModeOverride:Boolean;
      
      protected const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      protected const BTN_MNGR:ButtonManager = ButtonManager.BTN_MNGR;
      
      private const SV_EARN_NEW_LIFE_NUM_VAL:int = 0;
      
      public var areaToLoadArr:Array;
      
      public var levelIDToLoad:LevelID;
      
      public var tsTxt:TopScreenText;
      
      public var resetStats:Boolean;
      
      private var _hwArea:String;
      
      private var _timeLeftTot:uint;
      
      private var _newLev:Boolean;
      
      public var scorePopVec:CustomDictionary;
      
      private const MOVE_PTS_TMR_INT:Number = this.LOOP_TMR.delay;
      
      private var _moveDuringFreezeTmr:CustomTimer;
      
      private const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      public const GROUND_DCT:GroundNestedColumnDictionary = new GroundNestedColumnDictionary();
      
      public const AO_DCT:CustomDictionary = new CustomDictionary();
      
      public const ANIM_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const UPDATE_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const AO_STG_DCT:AnimatedObjectSortableDictionary = new AnimatedObjectSortableDictionary();
      
      public const GROUND_STG_DCT:GroundNestedRowDictionary = new GroundNestedRowDictionary();
      
      public const LEV_OBJ_FINAL_CHECK:CustomDictionary = new CustomDictionary(true);
      
      public var sortedGroundVec:Vector.<Ground>;
      
      private var sortedGroundVecLen:int;
      
      private const AO_ORDER_STG_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const GROUND_ORDER_STG_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const PLAT_STG_DCT:CustomDictionary = new CustomDictionary(true);
      
      public const SCENERY_STG_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const AO_BOTTOM_STG_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var BEHIND_GROUND_STG_DCT:CustomDictionary;
      
      private var COIN_STG_DCT:CustomDictionary;
      
      private var AFTER_GROUND_STG_DCT:CustomDictionary;
      
      private var TOP_STG_DCT:CustomDictionary;
      
      public var lgpx:Number;
      
      private var cgpx:Number;
      
      private var pExInt:int;
      
      private const SCRN_MNGR:ScreenManager = ScreenManager.SCRN_MNGR;
      
      private const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      private const SND_NAME_PREFIX:String = "Snd";
      
      protected const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      private var winEndTmr:CustomTimer;
      
      private var winEndTmrMusic:CustomTimer;
      
      private const WIN_END_TMR_NORMAL_DUR:int = 2000;
      
      private const WIN_END_TMR_FIREWORKS_DUR:int = 1000;
      
      private const WIN_END_TMR_DUNGEON_DUR:int = 3500;
      
      public var watchModeOverrideVine:Boolean;
      
      public var playerGraphic:Bitmap;
      
      private var castleFlag:CastleFlag;
      
      private var castleFlagEndPosition:int;
      
      private var fireworkPivotY:int;
      
      private const TUT_MNGR:TutorialManager = TutorialManager.TUT_MNGR;
      
      private var raiseCastleFlag:Boolean;
      
      private const RAISE_CASTLE_FLAG_INT:int = 90;
      
      private const WIN_MUSIC_TAIL:int = 1000;
      
      public var fireworksRemaining:int;
      
      private var fwPosArr:Array;
      
      private const DEFAULT_MAX_HIT_TEST_DISTANCE:int = 125;
      
      private const BOWSER_AXE_SCREEN_SCROLL_OFFSET:int = 8;
      
      private var hwPnt:Point;
      
      private const HW_ENEMY_REMOVAL_DIST:Number = 192;
      
      public var previouslyVisitedArea:Boolean;
      
      private const AREA_STATS_ARR_IND_AREA_STR:int = 0;
      
      private const AREA_STATS_ARR_IND_AO_DCT:int = 1;
      
      private const AREA_STATS_ARR_IND_GROUND_DCT:int = 2;
      
      private const AREA_STATS_ARR_IND_SCENERY_DCT:int = 3;
      
      private const AREA_STATS_ARR_IND_HW_PNT:int = 4;
      
      private const AREA_STATS_ARR_IND_ENEMY_SPAWNER_DCT:int = 5;
      
      private const ENTER_FRAME_EVENT:String = "enterFrame";
      
      private var maxDist:Number = 125;
      
      private var aoVecHt:Vector.<AnimatedObject>;
      
      private var aoVecHtLen:int;
      
      private var winEndTmrComplete:Boolean;
      
      private const PO_PLAYER:String = Projectile.SOURCE_TYPE_PLAYER;
      
      private const PO_ENEMY:String = Projectile.SOURCE_TYPE_ENEMY;
      
      private var groundRowDcts:CustomDictionary;
      
      private var groundRowDctsLen:int;
      
      private var groundColDcts:CustomDictionary;
      
      private var sceneryColDcts:CustomDictionary;
      
      private const SCENERY_DCT_NON_GRID_ITEM_KEY:String = "nonGridItem";
      
      private var sceneryVec:Vector.<Vector.<Scenery>>;
      
      public var bgColor:int;
      
      private const LD_TC:LevelDataTranscoder = new LevelDataTranscoder();
      
      public var checkAllObjectsOnScreen:Boolean;
      
      public var forceShiftScreenToFollowPlayer:Boolean;
      
      public const GAME_LOOP_TMRS_DCT:CustomDictionary = new CustomDictionary(false);
      
      private var backupTouchLevelExitTmr:Timer;
      
      private var editor:LevelEditor;
      
      private var _autoScroll:Boolean;
      
      public var charDct:CustomDictionary;
      
      private var _type:String;
      
      private var captureFrame:Boolean;
      
      private var barrelSpawner:BarrelSpawner;
      
      public function Level(param1:LevelID, param2:LevelData, param3:Array, param4:Boolean)
      {
         this.screenScrollsLeft = !Cheats.classicScreenScroll;
         this.GAME = SuperMarioBrosCrossover.game;
         this.levMap = [];
         this.levPickups = [];
         this.gHitArr = [];
         this.gBounceArr = [];
         this.scorePopVec = new CustomDictionary(true);
         this.sortedGroundVec = new Vector.<Ground>();
         this.BEHIND_GROUND_STG_DCT = new CustomDictionary(true);
         this.COIN_STG_DCT = new CustomDictionary(true);
         this.AFTER_GROUND_STG_DCT = new CustomDictionary(true);
         this.TOP_STG_DCT = new CustomDictionary(true);
         this.sceneryVec = new Vector.<Vector.<Scenery>>();
         super();
         if(levelInstance)
         {
            throw new Error("there can only be one level at a time.");
         }
         GlobVars.level = this;
         levelInstance = this;
         this._plyrStatsArr = this.STAT_MNGR.plyrStatsArr.concat();
         this.areaStatsArr = param3;
         this.ht = new HitTester();
         this._id = param1;
         if(param1.fullName == CharacterSelect.FULL_LEVEL_STR && !(this is FakeLevel) && !(this is CharacterSelect))
         {
            param1 = LevelID.Create(GameSettings.FIRST_LEVEL);
            this.STAT_MNGR.currentLevelID = this._id;
         }
         this._newLev = param4;
         this.levData = param2;
         this._worldNum = this._id.world;
         this._levNum = this._id.stage;
         this._areaStr = this._id.area;
         this.addEventListener(Event.ADDED_TO_STAGE,this.addedListener);
      }
      
      public static function ExtractLevelDataProperty(param1:String, param2:String, param3:Boolean = false) : String
      {
         var _loc4_:int = int(param1.indexOf(param2));
         if(_loc4_ == -1)
         {
            return null;
         }
         if(param3)
         {
            _loc4_ = param1.indexOf(PROP_EQUALS,_loc4_) + 1;
            if(_loc4_ == 0)
            {
               throw new Error("Value does not exist");
            }
         }
         var _loc5_:int = int(param1.indexOf(PROP_SEP,_loc4_));
         if(_loc5_ == -1)
         {
            _loc5_ = int.MAX_VALUE;
         }
         return param1.substring(_loc4_,_loc5_);
      }
      
      public static function RemoveProperties(param1:String) : String
      {
         var _loc2_:int = int(param1.indexOf(PROP_SEP));
         if(_loc2_ == -1)
         {
            return param1;
         }
         return param1.substring(0,_loc2_);
      }
      
      public function get autoScroll() : Boolean
      {
         return this._autoScroll;
      }
      
      private function addedListener(param1:Event) : void
      {
         this.removeEventListener(Event.ADDED_TO_STAGE,this.addedListener);
         this.GAME = parent as SuperMarioBrosCrossover;
         this.STAGE.addEventListener(Event.RENDER,this.renderLsr);
         this.setUpAnimTmrs();
         if(this.levData.id == null || this.levData.id.fullName != this._id.fullName)
         {
            this.levData.getCurrentLevel(this._id);
         }
         this.getLevelDataInfo();
         this.STAT_MNGR.pitTransArr = null;
         if(this.areaStatsArr.length)
         {
            this.rebuildLevel();
         }
         else
         {
            this.createCharacter();
            this.buildLevel();
         }
      }
      
      private function createCharacter() : void
      {
         var _loc1_:Class = null;
         if(this._plyrStatsArr.length)
         {
            _loc1_ = CharacterInfo.getCharClassFromNum(this.STAT_MNGR.curCharNum);
            this.player = new _loc1_();
            this.player.pState = this.STAT_MNGR.pStateVec[this.player.charNum];
            this.pExInt = this._plyrStatsArr[2];
            this._plyrStatsArr = null;
            this.EVENT_MNGR.getLevelVars();
         }
         else
         {
            this.player = new Mario();
            this.EVENT_MNGR.getLevelVars();
         }
      }
      
      protected function getLevelDataInfo() : void
      {
         this.levMap = this.levData.getMap();
         this.levPickups = this.levData.getPickups();
         this._hwArea = this.levData.hwArea;
         this._timeLeftTot = this.levData.gettimeLeftTot();
         this._type = this.levData.getType();
         this.background = new LevelBackground(this);
         this.foreground = new LevelForeground(this);
         this.bgmType = this.levData.getMusic();
         this.waterLevel = Cheats.waterMode;
         if(this._type == LevelTypes.WATER)
         {
            this.waterLevel = true;
            this._initialWaterLevel = true;
         }
         this.numHorzTiles = this.levMap[0].length;
         this.numVertTiles = this.levMap.length;
         this.mapWidth = this.numHorzTiles * this.TILE_SIZE;
         this.GROUND_STG_DCT.prepLevDcts(this.numVertTiles,this.TILE_SIZE);
         this.GROUND_DCT.prepLevDcts(this.numHorzTiles,this.TILE_SIZE);
         this.SCENERY_DCT.prepLevDcts(this.numHorzTiles,this.TILE_SIZE);
         this.groundRowDcts = this.GROUND_STG_DCT.ROW_DCTS;
         this.groundRowDctsLen = this.numVertTiles - 1;
         this.groundColDcts = this.GROUND_DCT.COL_DCTS;
         this.sceneryColDcts = this.SCENERY_DCT.COL_DCTS;
      }
      
      public function clickLsr(param1:MouseEvent) : void
      {
         var _loc2_:Point = null;
         var _loc3_:Ground = null;
         if(this.GS_MNGR.gameState == "play")
         {
            _loc2_ = this.getCurrentGrid(mouseX,mouseY);
            _loc3_ = this.getGroundAt(_loc2_.x,_loc2_.y);
            if(Boolean(_loc3_) && _loc3_ is Brick)
            {
               Brick(_loc3_).breakBrick();
            }
            else if(this.player)
            {
               this.player.vx = 0;
               this.player.vy = 0;
               this.player.nx = mouseX;
               this.player.ny = mouseY;
               this.player.changeChar(this.player.charNum);
            }
         }
      }
      
      private function setUpAnimTmrs() : void
      {
         this.ANIM_TMR_FLASHING_ITEM.addEventListener(TimerEvent.TIMER,this.animTmrFlashingItemHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_TMR_FLASHING_ITEM);
         this.ANIM_SUPER_SLOWEST_TMR.addEventListener(TimerEvent.TIMER,this.animSuperSlowestTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_SUPER_SLOWEST_TMR);
         this.ANIM_VERY_SLOW_TMR.addEventListener(TimerEvent.TIMER,this.animVerySlowTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_VERY_SLOW_TMR);
         this.ANIM_SLOW_TMR.addEventListener(TimerEvent.TIMER,this.animSlowTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_SLOW_TMR);
         this.ANIM_MODERATE_TMR.addEventListener(TimerEvent.TIMER,this.animModerateTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_MODERATE_TMR);
         this.ANIM_MIN_FAST_TMR.addEventListener(TimerEvent.TIMER,this.animMinFastTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_MIN_FAST_TMR);
         this.ANIM_FAST_TMR.addEventListener(TimerEvent.TIMER,this.animFastTmrHandler,false,0,true);
         this.ALL_ANIM_TMRS_DCT.addItem(this.ANIM_FAST_TMR);
      }
      
      private function rebuildLevel() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Character = null;
         var _loc3_:LevelExit = null;
         var _loc5_:AnimatedObject = null;
         var _loc6_:CustomDictionary = null;
         var _loc7_:Ground = null;
         var _loc8_:CustomDictionary = null;
         var _loc9_:Scenery = null;
         var _loc10_:CustomDictionary = null;
         var _loc11_:EnemySpawner = null;
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:Boolean = false;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:int = 0;
         var _loc21_:String = null;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         this.previouslyVisitedArea = true;
         this.createCharacter();
         this.AO_DCT.addItem(this.player);
         var _loc4_:CustomDictionary = this.areaStatsArr[this.AREA_STATS_ARR_IND_AO_DCT];
         for each(_loc5_ in _loc4_)
         {
            this.AO_DCT.addItem(_loc5_);
            _loc5_.rearm();
            if(_loc5_ is PipeTransporter && (_loc5_ as PipeTransporter).ptType == "globalEnd")
            {
               if(this.pTransVec)
               {
                  this.pTransVec.push(_loc5_);
               }
               else
               {
                  this.pTransVec = new Vector.<PipeTransporter>();
                  this.pTransVec.push(_loc5_);
               }
            }
            else if(_loc5_ is FlagPole)
            {
               this._flagPole = _loc5_ as FlagPole;
            }
            else if(_loc5_ is LevelExit)
            {
               _loc3_ = _loc5_ as LevelExit;
            }
         }
         _loc6_ = this.areaStatsArr[this.AREA_STATS_ARR_IND_GROUND_DCT];
         for each(_loc7_ in _loc6_)
         {
            this.GROUND_DCT.addItem(_loc7_);
            _loc7_.rearm();
            if(_loc7_ is Platform)
            {
               if(this.platVec)
               {
                  this.platVec.push(_loc7_);
               }
               else
               {
                  this.platVec = new Vector.<Platform>();
                  this.platVec.push(_loc7_);
               }
               if(Platform(_loc7_).platType == Platform.PT_PULLY)
               {
                  if(this.pullyPlatVec)
                  {
                     this.pullyPlatVec.push(_loc7_);
                  }
                  else
                  {
                     this.pullyPlatVec = new Vector.<Platform>();
                     this.pullyPlatVec.push(_loc7_);
                  }
               }
            }
         }
         _loc8_ = this.areaStatsArr[this.AREA_STATS_ARR_IND_SCENERY_DCT];
         for each(_loc9_ in _loc8_)
         {
            this.SCENERY_DCT.addItem(_loc9_);
            _loc9_.level = this;
            if(_loc9_.mainAnimTmr)
            {
               _loc9_.setUpAnimation();
            }
            addChild(_loc9_);
            _loc12_ = _loc9_.currentLabel;
            if(_loc12_ != null)
            {
               if(_loc12_.indexOf("flag") != -1 && _loc12_.indexOf("Pole") == -1)
               {
                  this.flag = _loc9_;
                  if(_loc3_ != null)
                  {
                     this.castleFlag = new CastleFlag();
                     this.castleFlag.x = _loc3_.x - this.TILE_SIZE * 1.5;
                     this.castleFlag.y = GLOB_STG_BOT - this.TILE_SIZE * 7;
                     this.castleFlagEndPosition = this.castleFlag.y - this.TILE_SIZE * 0.85;
                     this.fireworkPivotY = this.castleFlag.y - this.TILE_SIZE;
                  }
               }
               else if(_loc12_.indexOf("bridgeChain") != -1)
               {
                  this.bbChain = _loc9_;
               }
            }
         }
         this.hwPnt = this.areaStatsArr[this.AREA_STATS_ARR_IND_HW_PNT];
         this.bfbX = this.areaStatsArr[AREA_STATS_ARR_IND_BOWSER_FIREBALL_X];
         _loc10_ = this.areaStatsArr[this.AREA_STATS_ARR_IND_ENEMY_SPAWNER_DCT];
         for each(_loc11_ in _loc10_)
         {
            _loc11_.rearm();
            this.ENEMY_SPAWNER_DCT.addItem(_loc11_);
         }
         this.areaStatsArr = null;
         this.GS_MNGR.gameState = "cleanUp";
         _loc1_ = 0;
         while(_loc1_ < this.numVertTiles)
         {
            _loc13_ = 0;
            while(_loc13_ < this.numHorzTiles)
            {
               _loc14_ = this.levMap[_loc1_][_loc13_] as String;
               _loc15_ = _loc1_ * this.TILE_SIZE;
               _loc16_ = _loc13_ * this.TILE_SIZE;
               _loc17_ = false;
               _loc20_ = int(_loc14_.indexOf(PROP_SEP));
               if(_loc14_.indexOf("&&shiftRight") != -1)
               {
                  _loc17_ = true;
               }
               if(_loc14_.indexOf("playerStart") != -1)
               {
                  this.player.x = _loc16_ + this.TILE_SIZE * 0.5;
                  this.player.y = _loc15_ + this.TILE_SIZE;
                  if(_loc17_)
                  {
                     this.player.x += this.TILE_SIZE * 0.5;
                  }
                  this.player.initiate();
               }
               else if(_loc14_.indexOf("pitTransferStart") != -1)
               {
                  _loc22_ = _loc14_.indexOf("&&pTransDest=") + 13;
                  _loc23_ = int(_loc14_.indexOf("&&",_loc22_));
                  if(_loc23_ == -1)
                  {
                     _loc23_ = _loc14_.length;
                  }
                  _loc21_ = _loc14_.substring(_loc22_,_loc23_);
                  this.player.getPitTransfer(_loc21_);
               }
               _loc13_++;
            }
            _loc1_++;
         }
         this.initiateLevel();
      }
      
      private function getPropertyVisibility(param1:String, param2:String, param3:Boolean) : Boolean
      {
         if(ExtractLevelDataProperty(param1,param2,true) == VISIBILITY_HIDE && param3)
         {
            return false;
         }
         if(ExtractLevelDataProperty(param1,param2,true) == VISIBILITY_SHOW && !param3)
         {
            return false;
         }
         return true;
      }
      
      private function determineHelperVisibility(param1:String, param2:Boolean, param3:Boolean) : Boolean
      {
         if(ExtractLevelDataProperty(param1,PROP_CHAR_HORZ,true) == VISIBILITY_HIDE && param2)
         {
            return false;
         }
         if(ExtractLevelDataProperty(param1,PROP_CHAR_VERT,true) == VISIBILITY_HIDE && param3)
         {
            return false;
         }
         var _loc4_:* = ExtractLevelDataProperty(param1,PROP_CHAR_HORZ,true) == VISIBILITY_SHOW;
         var _loc5_:* = ExtractLevelDataProperty(param1,PROP_CHAR_VERT,true) == VISIBILITY_SHOW;
         if(_loc4_ && _loc5_)
         {
            return param2 || param3;
         }
         if(_loc5_)
         {
            return param3;
         }
         if(_loc4_)
         {
            return param2;
         }
         return true;
      }
      
      public function buildLevel() : void
      {
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = false;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:DisplayObject = null;
         var _loc23_:Boolean = false;
         var _loc24_:Boolean = false;
         var _loc25_:String = null;
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = false;
         var _loc28_:int = 0;
         var _loc29_:GridTile = null;
         var _loc30_:int = 0;
         var _loc31_:String = null;
         var _loc32_:Boolean = false;
         var _loc33_:int = 0;
         var _loc34_:String = null;
         var _loc35_:Number = NaN;
         var _loc36_:Number = NaN;
         var _loc37_:String = null;
         var _loc38_:int = 0;
         var _loc39_:int = 0;
         var _loc40_:DummyGround = null;
         var _loc1_:int = GameSettings.difficulty;
         var _loc2_:int = Difficulties.VERY_HARD;
         var _loc3_:int = Difficulties.HARD;
         var _loc4_:Object = LevelDataTranscoder.MAP_SHORT_TO_LONG;
         var _loc5_:Object = LevelDataTranscoder.PICKUP_SHORT_TO_LONG;
         var _loc6_:Boolean = Cheats.allHammerBros;
         var _loc7_:PiranhaSpawnType = GameSettings.piranhaSpawnType;
         var _loc8_:GoombaReplacementType = GameSettings.goombaReplacementType;
         if(this == TitleLevel.instance)
         {
            _loc7_ = PiranhaSpawnType.SomePipes;
            _loc8_ = GoombaReplacementType.Goomba;
         }
         var _loc9_:int = 0;
         while(_loc9_ < this.numVertTiles)
         {
            _loc10_ = 0;
            while(_loc10_ < this.numHorzTiles)
            {
               _loc11_ = this.levMap[_loc9_][_loc10_] as String;
               _loc12_ = _loc11_.split(PROP_OBJECT_SEP);
               _loc13_ = _loc9_ * this.TILE_SIZE;
               _loc14_ = _loc10_ * this.TILE_SIZE;
               _loc15_ = false;
               _loc16_ = false;
               for each(_loc17_ in _loc12_)
               {
                  _loc23_ = false;
                  _loc24_ = false;
                  _loc25_ = null;
                  _loc26_ = false;
                  _loc27_ = false;
                  _loc28_ = int(_loc17_.indexOf(PROP_SEP));
                  _loc29_ = null;
                  _loc30_ = GameSettings.mapDifficulty;
                  if(this is TitleLevel)
                  {
                     _loc30_ = MapDifficulty.NORMAL;
                  }
                  _loc31_ = ExtractLevelDataProperty(_loc17_,PROP_HIDE_ON_DIFFICULTIES,true);
                  if(_loc17_ == this.BLANK_TILE)
                  {
                     if(!(this._initialWaterLevel && _loc13_ == GLOB_STG_BOT - this.TILE_SIZE && _loc17_ == this.BLANK_TILE))
                     {
                        continue;
                     }
                     _loc22_ = new PitVacuum();
                     if(this.pitVacVec)
                     {
                        this.pitVacVec.push(_loc22_);
                     }
                     else
                     {
                        this.pitVacVec = new Vector.<PitVacuum>();
                        this.pitVacVec.push(_loc22_);
                     }
                     this.AO_DCT.addItem(_loc22_);
                  }
                  else if(!this.determineHelperVisibility(_loc17_,this.player.usesHorzObjs,this.player.usesVertObjs) || !this.getPropertyVisibility(_loc17_,PROP_BAD_SWIMMER,!this.player.isGoodSwimmer) || !this.getPropertyVisibility(_loc17_,PROP_WIDE_CHARACTER,this.player.isWideCharacter) || !this.player.poorBowserFighter && _loc17_.indexOf(PROP_POOR_BOWSER_FIGHTER) != -1 || _loc30_ == MapDifficulty.EASY && _loc31_ != null && _loc31_.indexOf(HIDE_ON_DIFFICULTY_EASY) != -1 || _loc30_ == MapDifficulty.NORMAL && _loc31_ != null && _loc31_.indexOf(HIDE_ON_DIFFICULTY_NORMAL) != -1 || _loc30_ == MapDifficulty.HARD && _loc31_ != null && _loc31_.indexOf(HIDE_ON_DIFFICULTY_HARD) != -1)
                  {
                     continue;
                  }
                  if(_loc17_.indexOf(this.PROP_SHIFT_RIGHT) != -1)
                  {
                     _loc26_ = true;
                  }
                  if(_loc17_.indexOf(this.PROP_SHIFT_UP) != -1)
                  {
                     _loc27_ = true;
                  }
                  if(_loc17_.indexOf("ground") != -1 || _loc17_.indexOf("block") != -1 || _loc17_.indexOf("cloudFace") != -1 || _loc17_.indexOf("platform") != -1 || _loc17_.indexOf("box") != -1)
                  {
                     if(_loc17_.indexOf("BillBlaster") == -1)
                     {
                        if(_loc17_.indexOf("UnbreakableBrick") == -1)
                        {
                           if(!Cheats.allGroundIsBricks || _loc17_.indexOf("Pipe") != -1 || this.flag != null && _loc14_ >= this.flag.x || this.bowserAxe != null && _loc14_ >= this.bowserAxe.x - this.TILE_SIZE)
                           {
                              _loc22_ = new SimpleGround(_loc17_);
                           }
                           else
                           {
                              _loc22_ = new Brick(this.getSpawnedBrickItem(_loc14_,_loc13_));
                           }
                           if(_loc7_ == PiranhaSpawnType.AllPipes || _loc7_ == PiranhaSpawnType.GreenAllPipes || _loc7_ == PiranhaSpawnType.RedAllPipes)
                           {
                              if(_loc17_.indexOf("PipeTopLeft") != -1)
                              {
                                 this.addPiranhaAtLocationIfNotThere(_loc14_ + this.TILE_SIZE,_loc13_,false);
                              }
                              else if(_loc17_.indexOf("PipeBottomLeft") != -1)
                              {
                                 this.addPiranhaAtLocationIfNotThere(_loc14_ + this.TILE_SIZE,_loc13_ + this.TILE_SIZE,true);
                              }
                           }
                        }
                        else
                        {
                           _loc22_ = new Brick(_loc17_);
                        }
                     }
                     else if(_loc17_.indexOf("Top") != -1)
                     {
                        _loc22_ = new Canon();
                     }
                     else
                     {
                        _loc22_ = new SimpleGround(_loc17_);
                     }
                  }
                  else if(_loc17_.indexOf("pipe") != -1 && _loc17_.indexOf("ground") == -1 && _loc17_.indexOf("Transporter") == -1)
                  {
                     _loc22_ = new Pipe(_loc17_);
                  }
                  else if(_loc17_.indexOf("brick") != -1)
                  {
                     _loc22_ = new Brick(_loc17_);
                  }
                  else if(_loc17_.indexOf("itemBlock") != -1)
                  {
                     _loc22_ = new ItemBlock(_loc17_);
                  }
                  else if(_loc17_.indexOf("bowserBridge") != -1)
                  {
                     _loc22_ = new BowserBridge(_loc17_);
                  }
                  else if(_loc17_.indexOf("spring") != -1)
                  {
                     if(_loc17_.indexOf("Red") != -1)
                     {
                        _loc22_ = new SpringRed();
                     }
                     else if(_loc17_.indexOf("Green") != -1)
                     {
                        _loc22_ = new SpringGreen();
                     }
                  }
                  else if(_loc17_.indexOf("enemy") != -1)
                  {
                     if(_loc6_ && _loc17_.indexOf("Bowser") == -1)
                     {
                        _loc22_ = new HammerBro(_loc17_);
                     }
                     else if(_loc17_.indexOf("Goomba") != -1)
                     {
                        switch(_loc8_)
                        {
                           case GoombaReplacementType.Goomba:
                              _loc22_ = new Goomba(_loc17_);
                              break;
                           case GoombaReplacementType.BuzzyBeetle:
                              _loc22_ = new Beetle(_loc17_);
                              break;
                           case GoombaReplacementType.Spiney:
                              _loc22_ = new Spiney();
                              break;
                           case GoombaReplacementType.SpikeTop:
                              _loc22_ = new SpikeTop(_loc17_);
                        }
                     }
                     else if(_loc17_.indexOf("Koopa") != -1)
                     {
                        if(_loc17_.indexOf("Red") == -1)
                        {
                           _loc22_ = new KoopaGreen(_loc17_);
                        }
                        else
                        {
                           _loc22_ = new KoopaRed(_loc17_);
                        }
                     }
                     else if(_loc17_.indexOf("Piranha") != -1)
                     {
                        _loc32_ = false;
                        if(_loc17_.indexOf(PiranhaGreen.UPSIDE_DOWN_STR) != -1)
                        {
                           _loc32_ = true;
                        }
                        if(!(!_loc32_ && this.piranhaExistsAtLocation(_loc14_ + this.TILE_SIZE,_loc13_,false) || _loc32_ && this.piranhaExistsAtLocation(_loc14_ + this.TILE_SIZE,_loc13_ + this.TILE_SIZE,true)))
                        {
                           if(this.forcePiranhaType() == PiranhaGreen.RED || this.forcePiranhaType() == null && _loc17_.indexOf(PiranhaGreen.RED) != -1)
                           {
                              _loc22_ = new PiranhaRed(_loc17_);
                           }
                           else
                           {
                              _loc22_ = new PiranhaGreen(_loc17_);
                           }
                        }
                     }
                     else if(_loc17_.indexOf("Beetle") != -1)
                     {
                        _loc22_ = new Beetle(_loc17_);
                     }
                     else if(_loc17_.indexOf("Cheep") != -1)
                     {
                        if(Math.random() > 0.5)
                        {
                           _loc22_ = new CheepFast("enemyCheepRed");
                        }
                        else
                        {
                           _loc22_ = new CheepSlow("enemyCheepGreen");
                        }
                     }
                     else if(_loc17_.indexOf("Blooper") != -1)
                     {
                        _loc22_ = new Bloopa();
                     }
                     else if(_loc17_.indexOf("HamBro") != -1)
                     {
                        _loc22_ = new HammerBro(_loc17_);
                     }
                     else if(_loc17_.indexOf("Bowser") != -1)
                     {
                        if(_loc17_.indexOf("Fake") != -1)
                        {
                           _loc22_ = new BowserFake(_loc17_);
                        }
                        else
                        {
                           _loc22_ = new Bowser(_loc17_);
                        }
                     }
                     else if(_loc17_.indexOf("SpikeTop") != -1)
                     {
                        _loc22_ = new SpikeTop(_loc17_);
                     }
                     else if(_loc17_.indexOf("Spiney") != -1)
                     {
                        _loc22_ = new Spiney();
                     }
                     else if(_loc17_.indexOf("Barrel") != -1)
                     {
                        _loc22_ = new Barrel(_loc17_);
                     }
                     else if(_loc17_.indexOf("Crab") != -1)
                     {
                        _loc22_ = new Crab(_loc17_);
                     }
                     else if(_loc17_.indexOf("FireEnemy") != -1)
                     {
                        _loc22_ = new FireEnemy(_loc17_);
                     }
                     else if(_loc17_.indexOf("Fly") != -1)
                     {
                        _loc22_ = new Fly(_loc17_);
                     }
                     else if(_loc17_.indexOf("Icicle") != -1)
                     {
                        _loc22_ = new Icicle(_loc17_);
                     }
                  }
                  else if(_loc17_.indexOf("teleporter") != -1)
                  {
                     _loc33_ = int(_loc17_.charAt(_loc17_.indexOf("&&number=") + 9));
                     _loc35_ = _loc14_ + this.TILE_SIZE * 0.5;
                     _loc36_ = _loc13_ + this.TILE_SIZE;
                     if(_loc17_.indexOf("Start") != -1)
                     {
                        if(_loc17_.indexOf("One") != -1)
                        {
                           _loc34_ = "startOne";
                        }
                        else
                        {
                           _loc34_ = "start";
                        }
                     }
                     else if(_loc17_.indexOf("CheckPoint") != -1)
                     {
                        _loc34_ = "checkPoint";
                     }
                     else if(_loc17_.indexOf("End") != -1)
                     {
                        _loc34_ = "end";
                     }
                     if(this.teleDataVec)
                     {
                        this.teleDataVec.push([_loc34_,_loc33_,_loc35_,_loc36_]);
                     }
                     else
                     {
                        this.teleDataVec = new Vector.<Array>();
                        this.teleDataVec.push([_loc34_,_loc33_,_loc35_,_loc36_]);
                     }
                  }
                  else if(_loc17_.indexOf("vineStart") != -1)
                  {
                     _loc22_ = new Vine(_loc17_);
                  }
                  else if(_loc17_.indexOf("pitTransfer") != -1)
                  {
                     if(_loc17_.indexOf("Start") != -1)
                     {
                        _loc38_ = _loc17_.indexOf("&&pTransDest=") + 13;
                        _loc39_ = int(_loc17_.indexOf("&&",_loc38_));
                        if(_loc39_ == -1)
                        {
                           _loc39_ = _loc17_.length;
                        }
                        _loc37_ = _loc17_.substring(_loc38_,_loc39_);
                        this.player.getPitTransfer(_loc37_);
                     }
                     else
                     {
                        _loc22_ = new PipeTransporter(_loc17_);
                     }
                  }
                  else if(_loc17_.indexOf("levelExit") != -1)
                  {
                     _loc22_ = new LevelExit();
                     if(this.flag != null || this._flagPole != null)
                     {
                        this.castleFlag = new CastleFlag();
                        this.castleFlag.x = _loc14_ - this.TILE_SIZE;
                        this.castleFlag.y = _loc13_ - this.TILE_SIZE * 4;
                        this.castleFlagEndPosition = _loc13_ - this.TILE_SIZE * 4.85;
                        this.fireworkPivotY = _loc13_ - this.TILE_SIZE * 5;
                     }
                  }
                  else if(_loc17_.indexOf("pipeTransporter") != -1)
                  {
                     _loc22_ = new PipeTransporter(_loc17_);
                     if(_loc17_.indexOf("GlobalVertEnd") != -1)
                     {
                        if(this.pTransVec)
                        {
                           this.pTransVec.push(_loc22_);
                        }
                        else
                        {
                           this.pTransVec = new Vector.<PipeTransporter>();
                           this.pTransVec.push(_loc22_);
                        }
                     }
                  }
                  else if(_loc17_.indexOf("gameStateWatch") != -1)
                  {
                     this.watchModeOverride = true;
                  }
                  else if(_loc17_.indexOf("halfwayPoint") != -1)
                  {
                     if(_loc26_)
                     {
                        this.hwPnt = new Point(_loc14_ + this.TILE_SIZE / 2,_loc13_ + this.TILE_SIZE);
                     }
                     else
                     {
                        this.hwPnt = new Point(_loc14_,_loc13_ + this.TILE_SIZE);
                     }
                  }
                  else if(_loc17_.indexOf("coin") != -1 && !_loc24_)
                  {
                     _loc22_ = new Coin(_loc17_);
                  }
                  else if(_loc17_.indexOf("movingPlatform") != -1)
                  {
                     _loc22_ = new Platform(_loc17_);
                     this.GROUND_DCT.addItem(_loc22_);
                     if(_loc17_.indexOf(Platform.PT_PULLY) != -1)
                     {
                        Platform(_loc22_).pullyCornerX = _loc14_;
                        if(this.pullyPlatVec)
                        {
                           this.pullyPlatVec.push(_loc22_);
                        }
                        else
                        {
                           this.pullyPlatVec = new Vector.<Platform>();
                           this.pullyPlatVec.push(_loc22_);
                        }
                     }
                  }
                  else if(_loc17_.indexOf("fireBar") != -1)
                  {
                     _loc22_ = new FireBar(_loc17_);
                  }
                  else if(_loc17_.indexOf("bulletBill") != -1)
                  {
                     if(_loc17_.indexOf("Start") != -1)
                     {
                        this.bulBillBlackSpawnZoneStart = _loc14_;
                     }
                     else if(_loc17_.indexOf("End") != -1)
                     {
                        this.bulBillBlackSpawnZoneEnd = _loc14_;
                     }
                  }
                  else if(_loc17_.indexOf("flyingCheepStart") != -1)
                  {
                     this.fcStartX = _loc14_;
                  }
                  else if(_loc17_.indexOf("flyingCheepEnd") != -1)
                  {
                     if(!isNaN(this.fcStartX))
                     {
                        this.ENEMY_SPAWNER_DCT.addItem(new FlyingCheepSpawner(this.fcStartX,_loc14_));
                        this.fcStartX = NaN;
                     }
                  }
                  else if(_loc17_.indexOf("lakituStart") != -1)
                  {
                     this.lakSpawnZoneStart = _loc14_;
                  }
                  else if(_loc17_.indexOf("lakituEnd") != -1)
                  {
                     if(!isNaN(this.lakSpawnZoneStart))
                     {
                        this.ENEMY_SPAWNER_DCT.addItem(new LakituSpawner(this.lakSpawnZoneStart,_loc14_,_loc17_.indexOf("Middle") != -1));
                        this.lakSpawnZoneStart = NaN;
                     }
                  }
                  else if(_loc17_.indexOf("barrelSpawner") != -1)
                  {
                     this.barrelSpawner = new BarrelSpawner(new Point(_loc14_,_loc13_));
                  }
                  else if(_loc17_.indexOf("bowserFireBallStart") != -1)
                  {
                     this.bfbX = _loc14_;
                  }
                  else if(_loc17_.indexOf("bowserAxe") != -1)
                  {
                     _loc22_ = new BowserAxe();
                     this.bowserAxe = BowserAxe(_loc22_);
                  }
                  else if(_loc17_.indexOf("podoboo") != -1)
                  {
                     _loc22_ = new LavaFireBall();
                  }
                  else if(_loc17_.indexOf("playerStart") != -1)
                  {
                     _loc22_ = this.player;
                  }
                  else if(_loc17_ != this.BLANK_TILE)
                  {
                     _loc22_ = new Scenery(_loc17_);
                     if(_loc17_ == "bridgeChain")
                     {
                        this.bbChain = Scenery(_loc22_);
                     }
                     else if(_loc17_.indexOf("pullyCorner") != -1)
                     {
                        if(this.pullyCornerVec)
                        {
                           this.pullyCornerVec.push(_loc22_);
                        }
                        else
                        {
                           this.pullyCornerVec = new Vector.<Scenery>();
                           this.pullyCornerVec.push(_loc22_);
                        }
                     }
                     else if(_loc17_.indexOf("flag") != -1)
                     {
                        if(_loc17_.indexOf("Pole") != -1)
                        {
                           if(!this._flagPole)
                           {
                              this._flagPole = new FlagPole(_loc14_);
                              this.addToLevelNow(this._flagPole);
                           }
                        }
                        else
                        {
                           this.flag = _loc22_ as Scenery;
                        }
                     }
                  }
                  while(_loc22_)
                  {
                     _loc22_.x = _loc14_;
                     _loc22_.y = _loc13_;
                     if(_loc22_ is Platform)
                     {
                        _loc22_.x = _loc14_ + this.TILE_SIZE / 2;
                        if(this.platVec)
                        {
                           this.platVec.push(_loc22_);
                        }
                        else
                        {
                           this.platVec = new Vector.<Platform>();
                           this.platVec.push(_loc22_);
                        }
                     }
                     else if(_loc22_ is Ground)
                     {
                        this.GROUND_DCT.addItem(_loc22_);
                        if(_loc22_ is Brick)
                        {
                           Brick(_loc22_).flag();
                        }
                        else if(_loc22_ is BowserBridge)
                        {
                           if(!this.bbVec)
                           {
                              this.bbVec = new Vector.<BowserBridge>();
                           }
                           this.bbVec.push(_loc22_);
                        }
                        else if(_loc22_ is SpringRed)
                        {
                           (_loc40_ = new DummyGround()).x = _loc14_;
                           _loc40_.y = _loc13_ - this.TILE_SIZE;
                           this.GROUND_DCT.addItem(_loc40_);
                           _loc40_.initiate();
                        }
                     }
                     else if(_loc22_ is Scenery)
                     {
                        if(_loc22_ == this.flag)
                        {
                           _loc22_.y -= this.TILE_SIZE * 2;
                        }
                        this.SCENERY_DCT.addItem(_loc22_);
                        if(_loc26_ && _loc17_.indexOf("sceneryTxt") != -1)
                        {
                           _loc22_.y -= this.TILE_SIZE / 2;
                        }
                        this.AddSceneryToVec(_loc22_ as Scenery);
                     }
                     else if(_loc22_ is Projectile)
                     {
                        _loc22_.y -= this.TILE_SIZE * 0.5;
                     }
                     if(_loc22_ is AnimatedObject)
                     {
                        _loc22_.x = _loc14_ + this.TILE_SIZE / 2;
                        _loc22_.y = _loc13_ + this.TILE_SIZE;
                        this.AO_DCT.addItem(_loc22_);
                     }
                     if(_loc26_)
                     {
                        _loc22_.x += this.TILE_SIZE * 0.5;
                     }
                     if(_loc27_)
                     {
                        _loc22_.y -= this.TILE_SIZE * 0.5;
                     }
                     if(_loc22_ is LevObj)
                     {
                        LevObj(_loc22_).initiate();
                     }
                     if(_loc29_)
                     {
                        _loc29_.addItem(_loc22_);
                     }
                     if(this._initialWaterLevel && _loc13_ == Scenery.WAVE_Y_POS && !(_loc22_ is Scenery))
                     {
                        _loc22_ = null;
                        _loc22_ = new Scenery(Scenery.WAVE_BASE_STR);
                     }
                     else
                     {
                        _loc22_ = null;
                     }
                  }
               }
               _loc10_++;
            }
            _loc9_++;
         }
         this.initiateLevel();
      }
      
      private function getSpawnedBrickItem(param1:Number, param2:Number) : String
      {
         var _loc3_:Ground = this.getGroundAt(param1 + this.TILE_SIZE,param2 - this.TILE_SIZE);
         if(_loc3_ != null && _loc3_.currentLabel == SimpleGround.PIPE_SIDE_BOTTOM)
         {
            return "whatever" + PROP_CONTAINED_ITEM + PROP_EQUALS + Brick.IT_SINGLE_COIN;
         }
         return "whatever";
      }
      
      private function forcePiranhaType() : String
      {
         var _loc1_:PiranhaSpawnType = GameSettings.piranhaSpawnType;
         if(_loc1_ == PiranhaSpawnType.GreenSomePipes || _loc1_ == PiranhaSpawnType.GreenAllPipes)
         {
            return PiranhaGreen.GREEN;
         }
         if(_loc1_ == PiranhaSpawnType.RedSomePipes || _loc1_ == PiranhaSpawnType.RedAllPipes)
         {
            return PiranhaGreen.RED;
         }
         return null;
      }
      
      private function piranhaExistsAtLocation(param1:Number, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:AnimatedObject = null;
         var _loc5_:PiranhaGreen = null;
         for each(_loc4_ in this.AO_DCT)
         {
            if(_loc4_ is PiranhaGreen)
            {
               _loc5_ = _loc4_ as PiranhaGreen;
               if(_loc5_.originalX == param1 && _loc5_.originalY == param2 && _loc5_.upsideDown == param3)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function addPiranhaAtLocationIfNotThere(param1:Number, param2:Number, param3:Boolean) : void
      {
         var _loc4_:PiranhaGreen = null;
         if(this.piranhaExistsAtLocation(param1,param2,param3))
         {
            return;
         }
         var _loc5_:String = "";
         if(param3)
         {
            _loc5_ = PiranhaGreen.UPSIDE_DOWN_STR;
         }
         if(this.forcePiranhaType() == PiranhaGreen.RED)
         {
            _loc4_ = new PiranhaRed(_loc5_);
         }
         else
         {
            _loc4_ = new PiranhaGreen(_loc5_);
         }
         _loc4_.x = param1;
         _loc4_.y = param2;
         this.AO_DCT.addItem(_loc4_);
         _loc4_.initiate();
      }
      
      private function AddSceneryToVec(param1:Scenery) : void
      {
         var _loc3_:Vector.<Scenery> = null;
         var _loc2_:int = int(this.sceneryVec.length);
         _loc3_ = this.sceneryVec[_loc2_ - 1];
         if(_loc2_ == 0 || _loc3_ == null || _loc3_[0].x != param1.x || _loc3_[0].y != param1.y)
         {
            this.sceneryVec.push(new <Scenery>[param1]);
         }
         else
         {
            _loc3_.push(param1);
         }
      }
      
      public function initiateLevel() : void
      {
         var _loc1_:CustomTimer = null;
         var _loc2_:AnimatedObject = null;
         var _loc3_:Ground = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Platform = null;
         if(Boolean(this.bowser) && this.bowser.onScreen)
         {
            this.bowser.onScreen = false;
         }
         if(!this.previouslyVisitedArea)
         {
            for each(_loc3_ in this.GROUND_DCT)
            {
               if(_loc3_ is SimpleGround)
               {
                  SimpleGround(_loc3_).checkNearbyGround();
               }
            }
         }
         this.tsTxt = TopScreenText.instance;
         this.tsTxt.initiateLevelHandler();
         this.background.initiateLevelHandler();
         this.foreground.initiateLevelHandler();
         this.STAT_MNGR.startNewLevel();
         Brick.initiateLevelHandler();
         ItemBlock.initiateLevelHandler();
         Coin.initiateLevelHandler();
         GraphicsManager.INSTANCE.initiateLevelHandler();
         this.replaceScenery();
         if(this._initialWaterLevel)
         {
            this.player.enterWater();
         }
         this.STAGE.addEventListener(this.ENTER_FRAME_EVENT,this.enterFrameHandler,false,0,true);
         this._moveDuringFreezeTmr = new CustomTimer(this.MOVE_PTS_TMR_INT);
         this._moveDuringFreezeTmr.addEventListener(TimerEvent.TIMER,this.moveDuringFreezeTmrHandeler,false,0,true);
         if(Boolean(this.pullyCornerVec) && Boolean(this.pullyPlatVec))
         {
            _loc5_ = int(this.pullyPlatVec.length);
            _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               _loc6_ = this.pullyPlatVec[_loc4_];
               _loc6_.getPartnerStep1();
               _loc4_++;
            }
            _loc4_ = 0;
            while(_loc4_ < _loc5_)
            {
               _loc6_ = this.pullyPlatVec[_loc4_];
               _loc6_.getPartnerStep2();
               _loc4_++;
            }
            this.pullyCornerVec = null;
         }
         if(this.bowserAxe)
         {
            this.bowserAxe.setUpBridge();
         }
         if(Boolean(this.flag) && Boolean(this._flagPole))
         {
            this._flagPole.rcvFlag(this.flag);
         }
         if(this.pitVacVec)
         {
            this.setUpPitVacs();
         }
         if(!isNaN(this.bulBillBlackSpawnZoneStart) && !isNaN(this.bulBillBlackSpawnZoneEnd))
         {
            this.ENEMY_SPAWNER_DCT.addItem(new BulletBillSpawner(this.bulBillBlackSpawnZoneStart,this.bulBillBlackSpawnZoneEnd,BulletBill.COLOR_BLACK));
         }
         if(this.teleDataVec)
         {
            this.setUpTeleporters();
         }
         if(Boolean(this.pExInt) && Boolean(this.pTransVec))
         {
            this.changePlayerLoc();
         }
         else if(Boolean(this.hwPnt) && this.shouldStartAtCheckPoint)
         {
            this.startAtHalfwayPoint();
         }
         this.setUpTiles();
         this.scrollScreen();
         this.checkCollisions(this.player);
         this.player.firstCollisionCheck();
         for each(_loc1_ in this.ALL_ANIM_TMRS_DCT)
         {
            _loc1_.start();
         }
         for each(_loc2_ in this.AO_DCT)
         {
            _loc2_.drawObj();
         }
         if(GameSettings.DEBUG_MODE && !(this is TitleLevel))
         {
            addEventListener(MouseEvent.CLICK,this.clickLsr);
         }
         this.SND_MNGR.startLevel();
         RepeatingSilenceOverrideSnd.instance.playSound();
         this.LOOP_TMR.addEventListener(TimerEvent.TIMER,this.gameLoop);
         this.LOOP_TMR.start();
         this.GS_MNGR.lockGameState = false;
         if(!this.watchModeOverride && !this.watchModeOverrideVine && this.player.cState != Character.ST_PIPE)
         {
            this.GS_MNGR.gameState = this.GS_PLAY;
            this.BTN_MNGR.sendPlayerBtns();
            if(GameSettings.tutorials)
            {
               this.TUT_MNGR.startLevel(this.player);
            }
         }
         else if(this.watchModeOverride)
         {
            this.GS_MNGR.gameState = this.GS_WATCH;
            this.player.activateWatchModeEnterPipe();
            this.tsTxt.hideTime();
         }
         else if(this.watchModeOverrideVine)
         {
            this.GS_MNGR.gameState = this.GS_WATCH;
            this.BTN_MNGR.relPlyrBtns();
            this.player.upBtn = true;
            this.player.visible = false;
            if(this.player.vineToClimb)
            {
               this.player.climbVineStarter(this.player.vineToClimb);
            }
            this.tsTxt.hideTime();
         }
      }
      
      private function get shouldStartAtCheckPoint() : Boolean
      {
         if(this.STAT_MNGR.passedHw && (!this.levData.lockedCheckpoint || Cheats.extraCheckpoints || GameSettings.mapDifficulty == MapDifficulty.HARD || GameSettings.mapDifficulty == MapDifficulty.EASY))
         {
            return true;
         }
         return false;
      }
      
      private function replaceScenery() : void
      {
         var _loc15_:int = 0;
         var _loc16_:Vector.<Scenery> = null;
         var _loc17_:Vector.<Scenery> = null;
         var _loc18_:Vector.<Scenery> = null;
         var _loc19_:Scenery = null;
         var _loc1_:String = "standardPlatformStem";
         var _loc2_:String = "railing";
         var _loc3_:String = "rail";
         var _loc4_:String = "Lft";
         var _loc5_:String = "Mid";
         var _loc6_:String = "Rht";
         var _loc7_:String = "Top";
         var _loc8_:String = "Sin";
         var _loc9_:String = "bushGreen";
         var _loc10_:String = "bushGreenLeft";
         var _loc11_:String = "bushGreenMid";
         var _loc12_:String = "bushGreenRight";
         var _loc13_:String = "bushGreenSmall";
         var _loc14_:int = int(this.sceneryVec.length);
         while(_loc15_ < _loc14_)
         {
            _loc16_ = null;
            _loc17_ = null;
            _loc18_ = null;
            if(_loc15_ != 0)
            {
               _loc16_ = this.sceneryVec[_loc15_ - 1];
            }
            _loc17_ = this.sceneryVec[_loc15_];
            if(_loc15_ < _loc14_ - 1)
            {
               _loc18_ = this.sceneryVec[_loc15_ + 1];
            }
            if(!(_loc17_ == null || Boolean(this.DESTROY_DCT[_loc17_])))
            {
               this.autoDetectScenery(_loc16_,_loc17_,_loc18_,_loc2_,_loc2_ + _loc4_,_loc2_ + _loc5_,_loc2_ + _loc6_,null);
               this.autoDetectScenery(_loc16_,_loc17_,_loc18_,_loc9_,_loc10_,_loc11_,_loc12_,_loc13_);
               _loc19_ = _loc17_[0];
               if(_loc19_ != null && this.getGroundAt(_loc19_.x,_loc19_.y - this.TILE_SIZE) != null)
               {
                  this.autoDetectScenery(_loc16_,_loc17_,_loc18_,_loc1_,_loc1_ + _loc4_ + _loc7_,_loc1_ + _loc5_ + _loc7_,_loc1_ + _loc6_ + _loc7_,_loc1_ + _loc8_ + _loc7_);
               }
               else
               {
                  this.autoDetectScenery(_loc16_,_loc17_,_loc18_,_loc1_,_loc1_ + _loc4_,_loc1_ + _loc5_,_loc1_ + _loc6_,_loc1_ + _loc8_);
               }
            }
            _loc15_++;
         }
         this.destroyObj();
         for each(_loc19_ in this.SCENERY_DCT)
         {
            _loc19_.cloneFromMaster([_loc19_.stopFrame]);
         }
         this.sceneryVec = null;
         this.resizeScenery();
      }
      
      private function autoDetectScenery(param1:Vector.<Scenery>, param2:Vector.<Scenery>, param3:Vector.<Scenery>, param4:String, param5:String, param6:String, param7:String, param8:String) : void
      {
         var _loc9_:Scenery = null;
         for each(_loc9_ in param2)
         {
            if(!(_loc9_ == null || _loc9_.stopFrame != param4 || Boolean(this.DESTROY_DCT[_loc9_])))
            {
               if(this.anyHasString(param1,param4,_loc9_.x - this.TILE_SIZE))
               {
                  if(this.anyHasString(param3,param4,_loc9_.x + this.TILE_SIZE))
                  {
                     _loc9_.gotoAndStop(param6);
                  }
                  else
                  {
                     _loc9_.gotoAndStop(param7);
                  }
               }
               else if(this.anyHasString(param3,param4,_loc9_.x + this.TILE_SIZE))
               {
                  _loc9_.gotoAndStop(param5);
               }
               else
               {
                  _loc9_.gotoAndStop(param8);
               }
            }
         }
      }
      
      private function anyHasString(param1:Vector.<Scenery>, param2:String, param3:Number) : Boolean
      {
         var _loc4_:Scenery = null;
         if(param1 == null || param1.length == 0)
         {
            return false;
         }
         for each(_loc4_ in param1)
         {
            if(_loc4_ != null && _loc4_.stopFrame.indexOf(param2) != -1 && _loc4_.x == param3 && this.DESTROY_DCT[_loc4_] == undefined)
            {
               return true;
            }
         }
         return false;
      }
      
      public function resizeScenery() : void
      {
         var _loc2_:Scenery = null;
         var _loc1_:Dictionary = new Dictionary(true);
         Scenery.mapSkin = GameSettings.getMapSkinLimited();
         for each(_loc2_ in this.SCENERY_DCT)
         {
            if(_loc2_.updateOnSkinChange())
            {
               _loc1_[_loc2_] = _loc2_;
            }
         }
         for each(_loc2_ in _loc1_)
         {
            this.SCENERY_DCT.removeItem(_loc2_);
            this.SCENERY_DCT.addItem(_loc2_);
         }
      }
      
      private function changePlayerLoc() : void
      {
         var _loc3_:PipeTransporter = null;
         var _loc1_:int = int(this.pTransVec.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.pTransVec[_loc2_];
            if(_loc3_.pipeInt == this.pExInt)
            {
               if(this.pExInt > 0)
               {
                  this.player.exitPipeVert(_loc3_);
               }
               else
               {
                  this.player.x = _loc3_.x;
                  this.player.y = _loc3_.y;
                  this.player.nx = this.player.x;
                  this.player.ny = this.player.y;
                  this.player.setHitPoints();
               }
               if(this.autoScroll)
               {
                  this.autoScrollStop();
                  this.scrollScreen();
                  this.autoScrollStart();
               }
               else
               {
                  this.scrollScreen();
               }
               break;
            }
            _loc2_++;
         }
         this.pTransVec = null;
         this.pExInt = 0;
         this.destroyNearbyEnemies(true);
      }
      
      private function applyColorFilter() : void
      {
         var _loc1_:Array = [];
         _loc1_ = _loc1_.concat([0.33,0.33,0.33,0,0]);
         _loc1_ = _loc1_.concat([0.33,0.33,0.33,0,0]);
         _loc1_ = _loc1_.concat([0.33,0.33,0.33,0,0]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         var _loc2_:ColorMatrixFilter = new ColorMatrixFilter(_loc1_);
         this.filters = [_loc2_];
      }
      
      private function calcLocStgPos() : void
      {
         var _loc1_:Point = globalToLocal(this.TOP_LFT_PT);
         var _loc2_:Point = globalToLocal(this.BOTTOM_RHT_PT);
         this.locStgTop = _loc1_.y;
         this.locStgLft = _loc1_.x;
         this.locStgBot = _loc2_.y;
         this.locStgRht = _loc2_.x;
         this.lftTilePos = this.getNearestGrid(this.locStgLft,-1);
      }
      
      public function getNearestGrid(param1:Number, param2:int = 0) : int
      {
         var _loc3_:int = 0;
         if(param1 % this.TILE_SIZE == 0)
         {
            return param1;
         }
         var _loc4_:Number = param1 / this.TILE_SIZE;
         var _loc5_:int = Math.floor(_loc4_) * this.TILE_SIZE;
         var _loc6_:int = _loc5_ + this.TILE_SIZE;
         if(param2 == 1)
         {
            return _loc6_;
         }
         if(param2 == -1)
         {
            return _loc5_;
         }
         var _loc7_:Number = _loc6_ - param1;
         var _loc8_:Number = param1 - _loc5_;
         if(_loc7_ < 0)
         {
            _loc7_ = -_loc7_;
         }
         if(_loc8_ < 0)
         {
            _loc8_ = -_loc8_;
         }
         if(_loc7_ > _loc8_)
         {
            return _loc5_;
         }
         return _loc6_;
      }
      
      public function getCurrentGrid(param1:Number, param2:Number) : Point
      {
         return new Point(this.getNearestGrid(param1,-1),this.getNearestGrid(param2,-1));
      }
      
      private function startAtHalfwayPoint() : void
      {
         this.player.x = this.hwPnt.x;
         this.player.nx = this.player.x;
         this.player.y = this.hwPnt.y;
         this.player.ny = this.player.y;
         this.player.setHitPoints();
         this.player.setLastHitPointsToCurrent();
         this.scrollScreen();
         this.destroyNearbyEnemies();
         this.destroyObj();
         this.STAT_MNGR.passedHw = true;
      }
      
      private function destroyNearbyEnemies(param1:Boolean = false) : void
      {
         var _loc2_:AnimatedObject = null;
         var _loc3_:Number = NaN;
         for each(_loc2_ in this.AO_DCT)
         {
            if(!(!(_loc2_ is Enemy) || _loc2_ is PiranhaGreen && param1))
            {
               _loc3_ = _loc2_.x - this.player.x;
               if(_loc3_ < 0)
               {
                  _loc3_ = -_loc3_;
               }
               if(_loc3_ < this.HW_ENEMY_REMOVAL_DIST)
               {
                  this.destroy(_loc2_);
               }
            }
         }
         this.destroyObj();
      }
      
      private function setUpTiles() : void
      {
         this.numLevChildren = numChildren;
         var _loc1_:int = numChildren;
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            removeChildAt(0);
            _loc2_++;
         }
         addChild(this.player);
         this.updLevTiles(true);
      }
      
      private function setUpPitVacs() : void
      {
         var npv:PitVacuum = null;
         var cpv:PitVacuum = null;
         var pitStartInd:int = 0;
         var pitMidInd:Number = NaN;
         var pitEndInd:int = 0;
         var pitLength:int = 0;
         var cInd:int = 0;
         var i:int = 0;
         var wholeNumber:Boolean = false;
         pitStartInd = 0;
         i = 0;
         this.pitVacVec.forEach(function calcPitVacType(param1:PitVacuum, param2:int, param3:Vector.<PitVacuum>):void
         {
            if(param2 != param3.length - 1)
            {
               npv = param3[param2 + 1];
            }
            else
            {
               npv = null;
            }
            if(npv && param1.x - npv.x < -32 || !npv)
            {
               pitEndInd = param2;
               pitLength = pitEndInd - pitStartInd;
               pitMidInd = (pitStartInd + pitEndInd) / 2;
               i = 0;
               while(i < pitLength + 1)
               {
                  cInd = pitStartInd + i;
                  cpv = param3[cInd];
                  if(cInd < pitMidInd)
                  {
                     cpv.setVacDir("down-right");
                  }
                  else if(cInd == pitMidInd)
                  {
                     cpv.setVacDir("down");
                  }
                  else if(cInd > pitMidInd)
                  {
                     cpv.setVacDir("down-left");
                  }
                  ++i;
               }
               pitStartInd = param2 + 1;
            }
         });
      }
      
      private function setUpTeleporters() : void
      {
         var i:int = 0;
         var ctArr:Array = null;
         var ctType:String = null;
         var ctNum:int = 0;
         var ctx:Number = NaN;
         var cty:Number = NaN;
         var ntArr:Array = null;
         var ntType:String = null;
         var ntNum:int = 0;
         var ntx:Number = NaN;
         var nty:Number = NaN;
         var teleStartInd:int = 0;
         var teleMidInd:Number = NaN;
         var teleEndInd:int = 0;
         var teleLength:int = 0;
         var teleHeight:Number = NaN;
         var teleX:Number = NaN;
         var teleY:Number = NaN;
         var cInd:int = 0;
         var teleporter:Teleporter = null;
         var sortTeleporters:Function = null;
         sortTeleporters = function(param1:Array, param2:Array):int
         {
            var _loc3_:int = sortStrings(param1[0],param2[0]);
            if(_loc3_ != 0)
            {
               return _loc3_;
            }
            var _loc4_:int = sortStrings(param1[1],param2[1]);
            if(_loc4_ != 0)
            {
               return _loc4_;
            }
            var _loc5_:int = sortNums(param1[2],param2[2]);
            if(_loc5_ != 0)
            {
               return _loc5_;
            }
            return sortStrings(param1[3],param2[3]);
         };
         var teleDataVecLen:int = int(this.teleDataVec.length);
         this.teleDataVec = this.teleDataVec.sort(sortTeleporters);
         while(i < teleDataVecLen)
         {
            ctArr = this.teleDataVec[i];
            ctType = ctArr[0];
            ctNum = int(ctArr[1]);
            ctx = Number(ctArr[2]);
            cty = Number(ctArr[3]);
            if(i != teleDataVecLen - 1)
            {
               ntArr = this.teleDataVec[i + 1];
               ntType = ntArr[0];
               ntNum = int(ntArr[1]);
               ntx = Number(ntArr[2]);
               nty = Number(ntArr[3]);
            }
            else
            {
               ntArr = null;
               ntType = null;
               ntNum = NaN;
               ntx = 0;
               nty = 0;
            }
            if(ctType == "checkPoint" || ctType == "start" || ctType == "startOne")
            {
               if(ntArr && ctType != ntType || ctNum != ntNum || ctx != ntx || !ntArr)
               {
                  teleEndInd = i;
                  teleLength = teleEndInd - teleStartInd;
                  teleHeight = cty + this.TILE_SIZE - this.teleDataVec[teleStartInd][3];
                  teleX = Number(this.teleDataVec[teleStartInd][2]);
                  teleY = Number(this.teleDataVec[teleEndInd][3]);
                  teleporter = new Teleporter(ctType,ctNum,teleX,teleY,teleHeight);
                  teleStartInd = i + 1;
               }
            }
            else if(ctType == "end")
            {
               teleporter = new Teleporter(ctType,ctNum,ctx,cty,this.TILE_SIZE);
               teleStartInd = i + 1;
            }
            i++;
         }
         if(this.teleVec)
         {
            this.teleVec.forEach(function tpSetUp(param1:Teleporter, param2:int, param3:Vector.<Teleporter>):void
            {
               param1.getRelationships();
            });
         }
      }
      
      protected function gameLoop(param1:TimerEvent) : void
      {
         var locTopLeftPt:Point;
         var locBottomRightPt:Point;
         var bricksToBounceDct:CustomDictionary;
         var bricksToBreakDct:CustomDictionary;
         var glTmr:GameLoopTimer = null;
         var ao:AnimatedObject = null;
         var levObj:LevObj = null;
         var g:Ground = null;
         var brick:Brick = null;
         var es:EnemySpawner = null;
         var evt:TimerEvent = param1;
         this.ldt = this.dt;
         this.dt = this.TD_CALC.getTD();
         if(this.manualGameLoop && !this.manualGameLoopNextFrame)
         {
            return;
         }
         if(this.offsetDT)
         {
            this.dt = this.ldt;
            this.offsetDT = false;
         }
         if(this.dt > this.DT_MAX)
         {
            this.dt = this.DT_MAX;
         }
         locTopLeftPt = globalToLocal(this.TOP_LFT_PT);
         locBottomRightPt = globalToLocal(this.BOTTOM_RHT_PT);
         this.locStgTop = locTopLeftPt.y;
         this.locStgLft = locTopLeftPt.x;
         this.locStgBot = locBottomRightPt.y;
         this.locStgRht = locBottomRightPt.x;
         this.STAGE.focus = null;
         for each(glTmr in this.GAME_LOOP_TMRS_DCT)
         {
            if(glTmr.running)
            {
               glTmr.update();
            }
         }
         if(this.STAT_MNGR.runTimeLeft)
         {
            this.STAT_MNGR.calcTimeLeft();
         }
         if(this.platVec)
         {
            this.platVec.forEach(function updPlats(param1:Platform, param2:int, param3:Vector.<Platform>):void
            {
               if(param1.onScreen || param1.updateOffScreen)
               {
                  param1.updateGround();
               }
            });
         }
         for each(ao in this.AO_STG_DCT)
         {
            if(this.GS_MNGR.gameState == "cleanUp")
            {
               break;
            }
            if(!ao.stopUpdate && (ao.onScreen || ao.updateOffScreen))
            {
               ao.updateObj();
            }
            else
            {
               ao.updateStatusEffects();
            }
            ao.hitDct.clear();
         }
         if(this.GS_MNGR.gameState == "cleanUp")
         {
            return;
         }
         for each(levObj in this.UPDATE_DCT)
         {
            levObj.updateObj();
            levObj.hitDct.clear();
         }
         if(this.ENEMY_SPAWNER_DCT.length)
         {
            for each(es in this.ENEMY_SPAWNER_DCT)
            {
               if(es.active)
               {
                  es.updateSpawner();
               }
            }
         }
         for each(g in this.GROUND_STG_DCT)
         {
            if(g is Brick || g is SpringRed)
            {
               g.updateGround();
            }
            g.hitDct.clear();
         }
         this.checkCollisions();
         if(this.player.canCrossSmallGaps && !this.player.onGround && this.player.lastOnGround)
         {
            this.checkCrossSmallGap(this.player);
         }
         if(!this.player.onGround && this.player.vy != 0 && (this.player.wallOnRight && this.player.rhtBtn && !this.player.lftBtn || this.player.wallOnLeft && this.player.lftBtn && !this.player.rhtBtn))
         {
            this.checkForceIntoSmallGap(this.player);
         }
         if(Boolean(this._flagPole) && (this._flagPole.onScreen || this._flagPole.updateOffScreen))
         {
            this._flagPole.checkPlayerLoc();
         }
         if(!this.STAT_MNGR.passedHw && this.hwPnt && this.player.nx >= this.hwPnt.x && !this.levelIDToLoad && !this.player.dead)
         {
            this.STAT_MNGR.passHalfwayPoint();
         }
         if(this.pullyPlatVec)
         {
            this.pullyPlatVec.forEach(function updPully(param1:Platform, param2:int, param3:Vector.<Platform>):void
            {
               if(param1.onScreen || param1.updateOffScreen)
               {
                  param1.updatePully();
               }
            });
         }
         for each(ao in this.AO_STG_DCT)
         {
            ao.drawObj();
         }
         this.scrollScreen();
         if(this.ADD_DCT.length)
         {
            this.addObj();
         }
         Brick.bounceAndBreakNow = true;
         bricksToBounceDct = Brick.BRICKS_TO_BOUNCE_DCT;
         if(bricksToBounceDct.length)
         {
            for each(brick in bricksToBounceDct)
            {
               brick.bounce();
               brick.disableThisRoundOnly = false;
            }
         }
         bricksToBreakDct = Brick.BRICKS_TO_BREAK_DCT;
         if(bricksToBreakDct.length)
         {
            for each(brick in bricksToBreakDct)
            {
               brick.breakBrick();
            }
         }
         Brick.bounceAndBreakNow = false;
         if(this.DESTROY_DCT.length)
         {
            this.destroyObj();
         }
         this.updLevTiles(this.checkAllObjectsOnScreen);
         if(this.foreground.SCORE_POP_DCT.length)
         {
            this.foreground.updateScorePops();
         }
         if(this.bfbX && this.bowser && !this.bowser.onScreen)
         {
            if(this.player.nx >= this.bfbX)
            {
               if(!this.bowser.FB_TMR.running && this.bowser.FB_DCT.length < Bowser.MAX_FIREBALLS_ON_SCREEN)
               {
                  this.bowser.startFbTmr();
               }
            }
         }
         if(this.SND_MNGR.readyToPlay)
         {
            this.SND_MNGR.playStoredSounds(SOUNDS_TO_PLAY_DCT);
         }
         if(this.raiseCastleFlag)
         {
            if(this.castleFlag.y > this.castleFlagEndPosition)
            {
               this.castleFlag.y -= this.RAISE_CASTLE_FLAG_INT * this.dt;
            }
            else
            {
               this.castleFlag.y = this.castleFlagEndPosition;
               this.raiseCastleFlag = false;
            }
         }
         if(this._beatLevel)
         {
            this.completeLevel();
         }
         else if(this.areaToLoadArr)
         {
            this.loadArea(this.areaToLoadArr[0],this.areaToLoadArr[1]);
         }
         else if(this.levelIDToLoad)
         {
            this.loadNewLevel(this.levelIDToLoad);
         }
         this.STAGE.invalidate();
         this.manualGameLoopNextFrame = false;
         dispatchEvent(GAME_LOOP_END_EVENT);
      }
      
      public function checkCollisions(param1:AnimatedObject = null) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:AnimatedObject = null;
         this.aoVecHt = this.AO_STG_DCT.AO_VEC;
         this.aoVecHtLen = this.aoVecHt.length;
         if(param1)
         {
            _loc4_ = param1;
            param1.hitDct.clear();
            if((param1.onScreen || param1.updateOffScreen) && !param1.stopHit)
            {
               if(param1.hitDistOver)
               {
                  this.maxDist = param1.hitDistOver;
               }
               this.aoHT(_loc4_,0);
               this.groundHT(_loc4_);
            }
            return;
         }
         _loc4_ = this.player;
         (_loc4_ as Character).curHitDct.clear();
         if(!this.player.stopHit)
         {
            if(this.player.hitDistOver)
            {
               this.maxDist = this.player.hitDistOver;
            }
            this.groundHT(_loc4_);
            if(!(this is CharacterSelect))
            {
               if(this.player.hLft <= this.SCREEN_MAX_LEFT_SCROLL + this.SCREEN_UNWALKABLE_BUFFER)
               {
                  this.player.groundOnSide(null,"left");
                  this.player.nx = this.player.hWidth * 0.5 + this.SCREEN_MAX_LEFT_SCROLL + this.SCREEN_UNWALKABLE_BUFFER;
                  this.player.setHitPoints();
               }
               else if(this.player.hLft <= this.locStgLft + this.SCREEN_UNWALKABLE_BUFFER)
               {
                  this.player.groundOnSide(null,"left");
                  this.player.nx = this.player.hWidth * 0.5 + this.locStgLft + this.SCREEN_UNWALKABLE_BUFFER;
                  this.player.setHitPoints();
               }
               else if(this.player.hRht >= this.screenMaxRightScroll + this.SCREEN_WIDTH - this.SCREEN_UNWALKABLE_BUFFER)
               {
                  this.player.groundOnSide(null,"right");
                  this.player.nx = this.screenMaxRightScroll + this.SCREEN_WIDTH - (this.player.hWidth * 0.5 + this.SCREEN_UNWALKABLE_BUFFER);
                  this.player.setHitPoints();
               }
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < this.aoVecHtLen)
         {
            _loc4_ = this.aoVecHt[_loc5_];
            if(!_loc4_.stopHit)
            {
               this.maxDist = this.DEFAULT_MAX_HIT_TEST_DISTANCE;
               this.aoHT(_loc4_,_loc5_);
               if(_loc4_ != this.player)
               {
                  this.groundHT(_loc4_);
               }
            }
            _loc5_++;
         }
         if(this.gBounceArr.length)
         {
            if(this.gBounceArr.length == 1)
            {
               this.gBounceArr[0].hitCharacterBounceOrBreak();
               this.gBounceArr.pop();
            }
            else if(this.gBounceArr.length > 1 && !this.player.canHitMultipleBricks)
            {
               this.gBounceArr.sortOn("yPenAmt",Array.NUMERIC);
               this.gBounceArr[0].hitCharacterBounceOrBreak();
               this.gBounceArr = [];
            }
            else if(this.player.canHitMultipleBricks)
            {
               _loc3_ = int(this.gBounceArr.length);
               _loc5_ = 0;
               while(_loc5_ < _loc3_)
               {
                  Brick(this.gBounceArr[_loc5_]).hitCharacterBounceOrBreak();
                  _loc5_++;
               }
               this.gBounceArr = [];
            }
         }
      }
      
      private function aoHT(param1:AnimatedObject, param2:int) : void
      {
         var _loc4_:AnimatedObject = null;
         var _loc5_:CustomDictionary = null;
         var _loc6_:CustomDictionary = null;
         var _loc7_:CustomDictionary = null;
         var _loc8_:CustomDictionary = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc3_:int = param2 + 1;
         while(_loc3_ < this.aoVecHtLen)
         {
            _loc4_ = this.aoVecHt[_loc3_];
            if(!(_loc4_.stopHit || param1.stopHit || param2 >= this.aoVecHtLen - 1))
            {
               if(Boolean(param1.hitDistOver) || Boolean(_loc4_.hitDistOver))
               {
                  this.checkMaxDistOver(param1,_loc4_);
               }
               if(this.getDistance(param1.hMidX,param1.hMidY,_loc4_.hMidX,_loc4_.hMidY) <= this.maxDist)
               {
                  _loc5_ = param1.hitTestTypesDct;
                  _loc6_ = _loc4_.hitTestTypesDct;
                  _loc7_ = param1.hitTestAgainstNonGroundDct;
                  _loc8_ = _loc4_.hitTestAgainstNonGroundDct;
                  loop1:
                  for each(_loc9_ in _loc5_)
                  {
                     for each(_loc10_ in _loc6_)
                     {
                        if(Boolean(_loc7_[_loc10_]) && Boolean(_loc8_[_loc9_]))
                        {
                           this.ht.hTest(param1,_loc4_);
                           break loop1;
                        }
                     }
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function checkMaxDistOver(param1:LevObj, param2:LevObj) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1.hitDistOver)
         {
            _loc3_ = param1.hitDistOver;
            if(param2.hitDistOver)
            {
               _loc4_ = param2.hitDistOver;
               if(_loc3_ > _loc4_)
               {
                  this.maxDist = _loc3_;
               }
               else
               {
                  this.maxDist = _loc4_;
               }
            }
            else
            {
               this.maxDist = _loc3_;
            }
         }
         else if(param2.hitDistOver)
         {
            _loc4_ = param2.hitDistOver;
            if(param1.hitDistOver)
            {
               _loc3_ = param1.hitDistOver;
               if(_loc4_ > _loc3_)
               {
                  this.maxDist = _loc4_;
               }
               else
               {
                  this.maxDist = _loc3_;
               }
            }
            else
            {
               this.maxDist = _loc4_;
            }
         }
      }
      
      private function sortStrings(param1:String, param2:String) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      private function sortNums(param1:Number, param2:Number) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      private function sortGround(param1:Ground, param2:Ground) : int
      {
         var _loc3_:int = param1.y;
         var _loc4_:int = param2.y;
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
      
      private function checkForceIntoSmallGap(param1:Character) : void
      {
         var _loc4_:Boolean = false;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc11_:int = 0;
         var _loc2_:int = this.TILE_SIZE * 0.75;
         var _loc3_:Number = param1.ny - param1.ly;
         if(_loc3_ < 0)
         {
            _loc3_ = -_loc3_;
         }
         if(_loc3_ > _loc2_)
         {
            return;
         }
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         if(param1.rhtBtn && !param1.lftBtn)
         {
            _loc5_ = 1;
         }
         if(param1.vy > 0)
         {
            _loc6_ = 1;
         }
         if(_loc5_ < 0)
         {
            _loc7_ = -this.TILE_SIZE;
         }
         if(_loc6_ < 0)
         {
            _loc8_ = -param1.hHeight;
         }
         var _loc9_:Point = this.getCurrentGrid(param1.nx + _loc7_ + param1.hWidth * 0.5 * _loc5_,param1.ny + _loc8_);
         var _loc10_:Ground = this.getGroundAt(_loc9_.x,_loc9_.y);
         if(!_loc10_)
         {
            return;
         }
         _loc9_ = this.getCurrentGrid(_loc9_.x,param1.ly + _loc8_);
         if(this.getGroundAt(_loc9_.x,_loc9_.y))
         {
            return;
         }
         if(param1.hWidth >= this.TILE_SIZE)
         {
            _loc4_ = true;
         }
         else
         {
            _loc11_ = this.TILE_SIZE;
            if(param1.hHeight > this.TILE_SIZE)
            {
               _loc11_ *= 2;
            }
            if(!this.getGroundAt(_loc10_.x,_loc10_.y - (_loc11_ + this.TILE_SIZE) * _loc6_))
            {
               return;
            }
            if(_loc11_ == this.TILE_SIZE * 2 && Boolean(this.getGroundAt(_loc10_.x,_loc10_.y - _loc11_ * _loc6_)))
            {
               return;
            }
         }
         if(param1.vy > 0)
         {
            param1.groundBelow(_loc10_);
         }
         else
         {
            param1.groundAbove(_loc10_);
            _loc10_.hit(param1,HitTester.SIDE_BOTTOM);
         }
         param1.nx += 1 * _loc5_;
         param1.setHitPoints();
      }
      
      private function checkCrossSmallGap(param1:Character) : void
      {
         var _loc9_:Ground = null;
         var _loc10_:Ground = null;
         var _loc2_:int = this.getNearestGrid(this.player.nx,-1);
         var _loc3_:int = _loc2_ - this.TILE_SIZE;
         var _loc4_:int = _loc2_ + this.TILE_SIZE;
         if(_loc3_ <= 0)
         {
            return;
         }
         if(_loc4_ >= this.mapWidth)
         {
            return;
         }
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         var _loc7_:Dictionary = this.groundColDcts[_loc3_];
         var _loc8_:Dictionary = this.groundColDcts[_loc4_];
         var _loc11_:Number = this.player.y;
         for each(_loc9_ in _loc7_)
         {
            if(_loc9_.y == _loc11_ && !(_loc9_ is Platform))
            {
               _loc5_ = true;
               break;
            }
         }
         if(!_loc5_)
         {
            return;
         }
         for each(_loc9_ in _loc8_)
         {
            if(_loc9_.y == _loc11_ && !(_loc9_ is Platform))
            {
               _loc10_ = _loc9_;
               _loc6_ = true;
               break;
            }
         }
         if(!_loc6_)
         {
            return;
         }
         this.player.groundBelow(_loc10_);
         this.player.setHitPoints();
      }
      
      public function addToProjHitArr(param1:Projectile, param2:LevObj) : void
      {
         if(!param1.getProperty(AP_PASSTHROUGH_DEFEAT) && !param1.getProperty(AP_PASSTHROUGH_ALWAYS))
         {
            if(param2 is Brick)
            {
               if(!this.projHitArr)
               {
                  this.projHitArr = [[Brick(param2),param1]];
               }
               else
               {
                  this.projHitArr.push([Brick(param2),param1]);
               }
            }
            else if(param2 is Enemy)
            {
               if(!this.projHitArr)
               {
                  this.projHitArr = [[Enemy(param2),param1]];
               }
               else
               {
                  this.projHitArr.push([Enemy(param2),param1]);
               }
            }
         }
         else if(param2 is Brick)
         {
            Brick(param2).confirmedHitProj(param1);
         }
         else if(param2 is Enemy)
         {
            Enemy(param2).confirmedHitProj(param1);
         }
      }
      
      private function animTmrFlashingItemHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_TMR_FLASHING_ITEM);
         this.STAGE.invalidate();
      }
      
      private function animSuperSlowestTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_SUPER_SLOWEST_TMR);
         this.STAGE.invalidate();
      }
      
      private function animVerySlowTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_VERY_SLOW_TMR);
         this.STAGE.invalidate();
      }
      
      private function animSlowTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_SLOW_TMR);
         this.STAGE.invalidate();
      }
      
      private function animModerateTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_MODERATE_TMR);
         this.STAGE.invalidate();
      }
      
      private function animMinFastTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_MIN_FAST_TMR);
         this.STAGE.invalidate();
      }
      
      private function animFastTmrHandler(param1:TimerEvent) : void
      {
         this.ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_FAST_TMR);
         this.STAGE.invalidate();
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         var _loc2_:Enemy = null;
         if(this.CHANGE_COLOR_OBJS_DCT.length)
         {
            if(this.GS_MNGR.gameState == this.GS_PLAY || this.GS_MNGR.gameState == this.GS_WATCH)
            {
               for each(_loc2_ in this.CHANGE_COLOR_OBJS_DCT)
               {
                  _loc2_.resetColor();
                  _loc2_.changeColorThisCycle = false;
               }
            }
         }
      }
      
      public function captureFrameOnRender() : void
      {
         stage.invalidate();
         this.captureFrame = true;
      }
      
      private function renderLsr(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:CustomMovieClip = null;
         var _loc5_:CustomTimer = null;
         var _loc6_:CustomMovieClip = null;
         var _loc7_:CustomMovieClip = null;
         var _loc8_:Enemy = null;
         var _loc9_:LevObj = null;
         var _loc10_:LevObj = null;
         if(this.manualGameLoop && !this.manualGameLoopNextFrame)
         {
            return;
         }
         for each(_loc4_ in this.AO_STG_DCT)
         {
            if(!(_loc4_ is Coin || _loc4_ is BowserAxe))
            {
               if(this.GS_MNGR.gameState != "freeze")
               {
                  for each(_loc5_ in _loc4_.ACTIVE_ANIM_TMRS_DCT)
                  {
                     if(this.ACTIVE_ANIM_TMRS_DCT[_loc5_])
                     {
                        _loc4_.animate(_loc5_);
                        if(_loc5_ == _loc4_.mainAnimTmr && (!_loc4_.stopAnim || _loc4_.stopAnim && _loc4_.checkFrameDuringStopAnim))
                        {
                           _loc4_.checkFrame();
                        }
                     }
                  }
               }
               else if(_loc4_ == this.player || _loc4_ is FireBar)
               {
                  for each(_loc5_ in _loc4_.ACTIVE_ANIM_TMRS_DCT)
                  {
                     if(this.ACTIVE_ANIM_TMRS_DCT[_loc5_])
                     {
                        _loc4_.animate(_loc5_);
                        if(_loc5_ == _loc4_.mainAnimTmr && (!_loc4_.stopAnim || _loc4_.stopAnim && _loc4_.checkFrameDuringStopAnim))
                        {
                           _loc4_.checkFrame();
                        }
                     }
                  }
               }
            }
         }
         for each(_loc6_ in this.ANIM_DCT)
         {
            if(this.GS_MNGR.gameState != "freeze")
            {
               for each(_loc5_ in _loc6_.ACTIVE_ANIM_TMRS_DCT)
               {
                  if(this.ACTIVE_ANIM_TMRS_DCT[_loc5_])
                  {
                     _loc6_.animate(_loc5_);
                     if(_loc5_ == _loc6_.mainAnimTmr && (!_loc6_.stopAnim || _loc6_.stopAnim && _loc6_.checkFrameDuringStopAnim))
                     {
                        _loc6_.checkFrame();
                     }
                  }
               }
            }
            else if(_loc4_ == this.player || _loc4_ is FireBar)
            {
               for each(_loc5_ in _loc4_.ACTIVE_ANIM_TMRS_DCT)
               {
                  if(this.ACTIVE_ANIM_TMRS_DCT[_loc5_])
                  {
                     _loc4_.animate(_loc5_);
                     if(_loc5_ == _loc4_.mainAnimTmr && (!_loc4_.stopAnim || _loc4_.stopAnim && _loc4_.checkFrameDuringStopAnim))
                     {
                        _loc4_.checkFrame();
                     }
                  }
               }
            }
         }
         for each(_loc7_ in this.ALWAYS_ANIM_DCT)
         {
            for each(_loc5_ in _loc7_.ACTIVE_ANIM_TMRS_DCT)
            {
               if(this.ACTIVE_ANIM_TMRS_DCT[_loc5_])
               {
                  _loc7_.animate(_loc5_);
                  if(_loc5_ == _loc7_.mainAnimTmr)
                  {
                     _loc7_.checkFrame();
                  }
               }
            }
         }
         for each(_loc8_ in this.CHANGE_COLOR_OBJS_DCT)
         {
            if(_loc8_.changeColorThisCycle)
            {
               _loc8_.changeColor();
            }
         }
         for each(_loc9_ in this.RECOLOR_OBJS_DCT)
         {
            _loc9_.initiateRecolor();
            this.RECOLOR_OBJS_DCT.removeItem(_loc9_);
         }
         if(this.ACTIVE_ANIM_TMRS_DCT[TopScreenText.COIN_ANIM_TMR])
         {
            this.tsTxt.animateCoin();
         }
         this.ACTIVE_ANIM_TMRS_DCT.clear();
         for each(_loc10_ in this.LEV_OBJ_FINAL_CHECK)
         {
            _loc10_.finalCheck();
         }
         if(this.manualGameLoop)
         {
            this.manualGameLoopNextFrame = false;
         }
         if(this.captureFrame)
         {
            ImageSaver.INSTANCE.store(this.GAME);
            this.captureFrame = false;
         }
      }
      
      public function addToLevel(param1:DisplayObject) : void
      {
         this.ADD_DCT.addItem(param1);
      }
      
      public function addToLevelNow(param1:DisplayObject) : void
      {
         this.addToLevel(param1);
         this.addObj();
      }
      
      private function updLevTiles(param1:Boolean = false) : void
      {
         if(!param1)
         {
            this.checkStgPositionLocal();
         }
         else
         {
            this.checkStgPositionAll();
         }
         this.sortStgObjIntoDcts();
         this.setIndexOfStgObjs();
         this.checkAllObjectsOnScreen = false;
      }
      
      private function checkStgPositionLocal() : void
      {
         var _loc1_:AnimatedObject = null;
         var _loc2_:Ground = null;
         var _loc3_:Scenery = null;
         var _loc4_:Dictionary = null;
         var _loc5_:CustomDictionary = null;
         var _loc6_:Number = this.locStgLft - this.lftTilePos;
         if(_loc6_ > this.TILE_SIZE)
         {
            this.lftTilePos += this.TILE_SIZE;
         }
         else if(_loc6_ <= 0)
         {
            this.lftTilePos -= this.TILE_SIZE;
         }
         if(this.lftTilePos < 0)
         {
            this.lftTilePos = 0;
         }
         this.rhtTilePos = this.lftTilePos + this.SCREEN_WIDTH;
         var _loc7_:int = this.lftTilePos - this.TILE_SIZE * 2;
         var _loc8_:int = this.rhtTilePos + this.TILE_SIZE * 2;
         var _loc9_:int = this.lftTilePos;
         var _loc10_:int = this.rhtTilePos;
         var _loc11_:int = _loc10_ + this.TILE_SIZE;
         for each(_loc1_ in this.AO_DCT)
         {
            _loc1_.checkStgPos();
         }
         for each(_loc2_ in this.GROUND_STG_DCT)
         {
            _loc2_.checkStgPos();
         }
         if(_loc7_ >= 0)
         {
            _loc4_ = this.groundColDcts[_loc7_];
            for each(_loc2_ in _loc4_)
            {
               _loc2_.checkStgPos();
            }
         }
         if(_loc8_ < this.mapWidth)
         {
            _loc4_ = this.groundColDcts[_loc8_];
            for each(_loc2_ in _loc4_)
            {
               _loc2_.checkStgPos();
            }
         }
         if(this.platVec)
         {
            _loc4_ = this.groundColDcts[this.GROUND_DCT.PLATFORM_KEY];
            for each(_loc2_ in _loc4_)
            {
               _loc2_.checkStgPos();
            }
         }
         for each(_loc3_ in this.SCENERY_STG_DCT)
         {
            _loc3_.checkStgPos();
         }
         if(_loc9_ >= 0)
         {
            _loc4_ = this.sceneryColDcts[_loc9_];
            for each(_loc5_ in _loc4_)
            {
               for each(_loc3_ in _loc5_)
               {
                  _loc3_.checkStgPos();
               }
            }
         }
         if(_loc10_ < this.mapWidth)
         {
            _loc4_ = this.sceneryColDcts[_loc10_];
            for each(_loc5_ in _loc4_)
            {
               for each(_loc3_ in _loc5_)
               {
                  _loc3_.checkStgPos();
               }
            }
            _loc4_ = this.sceneryColDcts[_loc11_];
            for each(_loc5_ in _loc4_)
            {
               for each(_loc3_ in _loc5_)
               {
                  _loc3_.checkStgPos();
               }
            }
         }
         _loc4_ = this.sceneryColDcts[this.SCENERY_DCT_NON_GRID_ITEM_KEY];
         for each(_loc3_ in _loc4_)
         {
            _loc3_.checkStgPos();
         }
      }
      
      private function checkStgPositionAll() : void
      {
         var _loc1_:AnimatedObject = null;
         var _loc2_:Ground = null;
         var _loc3_:Scenery = null;
         this.calcLocStgPos();
         for each(_loc1_ in this.AO_DCT)
         {
            _loc1_.checkStgPos();
         }
         for each(_loc2_ in this.GROUND_DCT)
         {
            _loc2_.checkStgPos();
         }
         for each(_loc3_ in this.SCENERY_DCT)
         {
            _loc3_.checkStgPos();
         }
      }
      
      private function sortStgObjIntoDcts() : void
      {
         var _loc1_:CustomMovieClip = null;
         var _loc2_:AnimatedObject = null;
         var _loc3_:Ground = null;
         for each(_loc1_ in this.ANIM_DCT)
         {
            if(_loc1_ is SimpleAnimatedObject && _loc1_.parent == this)
            {
               this.AO_ORDER_STG_DCT.addItem(_loc1_);
            }
         }
         for each(_loc2_ in this.AO_STG_DCT)
         {
            if(_loc2_.behindGround)
            {
               if(_loc2_ is Coin)
               {
                  this.COIN_STG_DCT.addItem(_loc2_);
               }
               else
               {
                  this.BEHIND_GROUND_STG_DCT.addItem(_loc2_);
               }
            }
            else if(_loc2_.afterGround)
            {
               this.AFTER_GROUND_STG_DCT.addItem(_loc2_);
            }
            else if(_loc2_.bottomAo)
            {
               this.AO_BOTTOM_STG_DCT.addItem(_loc2_);
            }
            else
            {
               this.AO_ORDER_STG_DCT.addItem(_loc2_);
            }
         }
         for each(_loc3_ in this.GROUND_STG_DCT)
         {
            if(!(_loc3_ is Platform))
            {
               if(_loc3_.afterGround)
               {
                  this.AFTER_GROUND_STG_DCT.addItem(_loc3_);
               }
               else
               {
                  this.GROUND_ORDER_STG_DCT.addItem(_loc3_);
               }
            }
            else
            {
               this.PLAT_STG_DCT.addItem(_loc3_);
            }
         }
      }
      
      protected function setIndexOfStgObjs() : void
      {
         var insertInd:int = 0;
         var dispObj:DisplayObject = null;
         var scenery:Scenery = null;
         var setIndex:Function = function(param1:DisplayObject):void
         {
            setChildIndex(param1,insertInd);
            ++insertInd;
         };
         insertInd = 0;
         var backSceneryDct:CustomDictionary = new CustomDictionary(true);
         var normalSceneryDct:CustomDictionary = new CustomDictionary(true);
         var frontSceneryDct:CustomDictionary = new CustomDictionary(true);
         for each(scenery in this.SCENERY_STG_DCT)
         {
            if(scenery.inFrontOfEverything)
            {
               this.TOP_STG_DCT.addItem(scenery);
            }
            else if(scenery.topLayer)
            {
               frontSceneryDct.addItem(scenery);
            }
            else if(scenery.bottomLayer)
            {
               backSceneryDct.addItem(scenery);
            }
            else
            {
               normalSceneryDct.addItem(scenery);
            }
         }
         for each(dispObj in backSceneryDct)
         {
            setIndex(dispObj);
         }
         for each(dispObj in normalSceneryDct)
         {
            setIndex(dispObj);
         }
         if(Boolean(this.flag) && this.contains(this.flag))
         {
            this.setChildIndex(this.flag,insertInd);
         }
         for each(dispObj in frontSceneryDct)
         {
            setIndex(dispObj);
         }
         for each(dispObj in this.COIN_STG_DCT)
         {
            setIndex(dispObj);
            this.COIN_STG_DCT.removeItem(dispObj);
         }
         for each(dispObj in this.BEHIND_GROUND_STG_DCT)
         {
            setIndex(dispObj);
            this.BEHIND_GROUND_STG_DCT.removeItem(dispObj);
         }
         for each(dispObj in this.GROUND_ORDER_STG_DCT)
         {
            setIndex(dispObj);
            this.GROUND_ORDER_STG_DCT.removeItem(dispObj);
         }
         for each(dispObj in this.AFTER_GROUND_STG_DCT)
         {
            setIndex(dispObj);
            this.AFTER_GROUND_STG_DCT.removeItem(dispObj);
         }
         for each(dispObj in this.PLAT_STG_DCT)
         {
            setIndex(dispObj);
            this.PLAT_STG_DCT.removeItem(dispObj);
         }
         if(!contains(this.tsTxt))
         {
            addChild(this.tsTxt);
         }
         setIndex(this.tsTxt);
         for each(dispObj in this.AO_BOTTOM_STG_DCT)
         {
            setIndex(dispObj);
            this.AO_BOTTOM_STG_DCT.removeItem(dispObj);
         }
         for each(dispObj in this.AO_ORDER_STG_DCT)
         {
            setIndex(dispObj);
            this.AO_ORDER_STG_DCT.removeItem(dispObj);
         }
         if(Boolean(this.playerGraphic) && this.contains(this.playerGraphic))
         {
            setChildIndex(this.playerGraphic,numChildren - 1);
         }
         for each(dispObj in this.TOP_STG_DCT)
         {
            setChildIndex(dispObj,numChildren - 1);
            this.TOP_STG_DCT.removeItem(dispObj);
         }
         this.EVENT_MNGR.dispatchEvent(new Event(CustomEvents.LEVEL_SET_INDEXES));
      }
      
      public function toggleScreenScroll() : void
      {
         if(this.disableScreenScroll)
         {
            this.disableScreenScroll = false;
         }
         else
         {
            this.disableScreenScroll = true;
         }
      }
      
      public function autoScrollStart() : void
      {
         this._autoScroll = true;
      }
      
      public function autoScrollStop(param1:Boolean = false) : void
      {
         this.disableScreenScroll = param1;
         this._autoScroll = false;
      }
      
      public function scrollScreen() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Number = NaN;
         if(this.disableScreenScroll)
         {
            return;
         }
         var _loc3_:Number = x;
         if(this.forceShiftScreenToFollowPlayer)
         {
            if(this.screenScrollsLeft)
            {
               this.forceShiftScreenToFollowPlayer = false;
            }
            else
            {
               this.screenScrollsLeft = true;
            }
         }
         this.lgpx = this.cgpx;
         this.cgpx = this.player.localToGlobal(this.ZERO_PT).x;
         if(!isNaN(this.player.screenScrollPosOffset))
         {
            this.cgpx += this.player.screenScrollPosOffset;
         }
         if(this.player.hTop > GLOB_STG_BOT && this.player.dead)
         {
            return;
         }
         if(!this.keepPlayerOnRight)
         {
            if(!this.bowser || this.bowser && !this.bowser.onScreen)
            {
               if(!this.playerUncentered)
               {
                  if(isNaN(this.rightScrollPosOvRd))
                  {
                     this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS;
                  }
                  else
                  {
                     this.rightScrollPos = this.rightScrollPosOvRd;
                  }
                  if(isNaN(this.leftScrollPosOvRd))
                  {
                     this.leftScrollPos = this.DEFAULT_LEFT_SCROLL_POS;
                  }
                  else
                  {
                     this.leftScrollPos = this.leftScrollPosOvRd;
                  }
               }
               else if(this.cgpx < this.DEFAULT_LEFT_SCROLL_POS)
               {
                  this.leftScrollPos += this.SCROLL_SPEED_BEAT_DUNGEON * this.dt;
               }
               else
               {
                  this.leftScrollPos = this.DEFAULT_LEFT_SCROLL_POS;
                  this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS;
                  this.playerUncentered = false;
               }
            }
            else if(this.bowser.onScreen && this.GS_MNGR.gameState == this.GS_PLAY)
            {
               _loc5_ = this.SND_MNGR.curMusicType;
               if(_loc5_ != MusicType.BOSS && _loc5_ != MusicType.FINAL_BOSS)
               {
                  if(this.worldNum == 8 || this.worldNum == 13)
                  {
                     this.SND_MNGR.changeMusic(MusicType.FINAL_BOSS);
                  }
                  else
                  {
                     this.SND_MNGR.changeMusic(MusicType.BOSS);
                  }
               }
               if(this.screenScrollsLeft)
               {
                  this.rightScrollPos = this.SCREEN_WIDTH - this.BOWSER_AXE_SCREEN_SCROLL_OFFSET;
                  this.leftScrollPos = this.SCREEN_WIDTH * 0.1;
                  if(this.cgpx > this.leftScrollPos)
                  {
                     this.x -= this.SCROLL_SPEED_BEAT_DUNGEON * this.dt;
                     _loc2_ = true;
                     if(Math.abs(x) > this.screenMaxRightScroll)
                     {
                        x = -this.screenMaxRightScroll;
                        _loc4_ = 0;
                     }
                     this.cgpx = this.player.localToGlobal(this.ZERO_PT).x;
                  }
                  this.playerUncentered = true;
               }
            }
         }
         else if(this.player.touchedExit && this.player.vx == 0)
         {
            this.rightScrollPos -= this.SCROLL_SPEED_BEAT_DUNGEON * this.dt;
            this.leftScrollPos = this.DEFAULT_LEFT_SCROLL_POS;
            if(this.rightScrollPos < this.leftScrollPos)
            {
               this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS;
               this.keepPlayerOnRight = false;
               this.SCRN_MNGR.displayThankYouText();
               this.LOOP_TMR.stop();
            }
         }
         else
         {
            this.rightScrollPos = GLOB_STG_RHT - this.player.hWidth / 2 - this.BOWSER_AXE_SCREEN_SCROLL_OFFSET;
            this.leftScrollPos = this.DEFAULT_LEFT_SCROLL_POS;
         }
         if(!this.screenScrollsLeft && !this.forceScreenScrollLeft)
         {
            this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS_NO_LEFT_SCROLL;
         }
         if(!this.bowserAxe)
         {
            this.screenMaxRightScroll = this.mapWidth - this.SCREEN_WIDTH;
         }
         else
         {
            this.screenMaxRightScroll = this.bowserAxe.x + this.bowserAxe.width / 2 + this.BOWSER_AXE_SCREEN_SCROLL_OFFSET - this.SCREEN_WIDTH;
         }
         if(this.cgpx > this.rightScrollPos)
         {
            _loc4_ = this.cgpx - this.rightScrollPos;
            this.x -= _loc4_;
            _loc2_ = true;
         }
         else if(this.cgpx < this.leftScrollPos && (this.screenScrollsLeft || this.forceScreenScrollLeft))
         {
            _loc4_ = this.cgpx - this.leftScrollPos;
            this.x -= _loc4_;
            _loc2_ = true;
         }
         if(this.autoScroll)
         {
            x = _loc3_;
            _loc6_ = SCROLL_SPEED_AUTO * this.dt;
            x -= _loc6_;
            x = Math.floor(x);
            this.player.x += _loc6_;
            this.player.x = Math.ceil(this.player.x);
            _loc2_ = true;
         }
         if(_loc2_)
         {
            if(x < -this.screenMaxRightScroll)
            {
               x = -this.screenMaxRightScroll;
               _loc4_ = 0;
               if(this.autoScroll)
               {
                  this.autoScrollStop(true);
               }
            }
            else if(this.x > 0)
            {
               this.x = 0;
               _loc4_ = 0;
            }
         }
         if(this.forceShiftScreenToFollowPlayer)
         {
            this.forceShiftScreenToFollowPlayer = false;
            this.screenScrollsLeft = false;
            this.scrollScreen();
         }
         this.background.scroll();
         this.foreground.scroll();
         this.tsTxt.scroll();
      }
      
      protected function getPreciseCoordinates(param1:Number) : Number
      {
         var _loc2_:String = param1.toString();
         var _loc3_:int = int(_loc2_.indexOf("."));
         if(_loc3_ < 0)
         {
            return param1;
         }
         _loc2_ = _loc2_.substr();
         if(_loc2_.length <= 3)
         {
            return param1;
         }
         return this.correctFloatingPointError(param1);
      }
      
      protected function correctFloatingPointError(param1:Number, param2:int = 5) : Number
      {
         var _loc3_:Number = Math.pow(10,param2);
         return Math.round(_loc3_ * param1) / _loc3_;
      }
      
      public function forceScreenScrollLeftFunction() : void
      {
         this.forceScreenScrollLeft = true;
         this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS;
      }
      
      public function changeScreenScrollsLeftSetting() : void
      {
         this.screenScrollsLeft = !Cheats.classicScreenScroll;
         if(this.screenScrollsLeft)
         {
            this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS;
         }
         else
         {
            this.rightScrollPos = this.DEFAULT_RIGHT_SCROLL_POS_NO_LEFT_SCROLL;
         }
         this.checkAllObjectsOnScreen = true;
      }
      
      public function changeChar(param1:Class) : void
      {
         var _loc5_:Number = NaN;
         var _loc8_:Boolean = false;
         var _loc14_:int = 0;
         var _loc15_:Sophia = null;
         var _loc2_:Number = this.player.nx;
         var _loc3_:Number = this.player.ny;
         var _loc4_:Number = this.player.vx;
         _loc5_ = this.player.vy;
         var _loc6_:Number = this.player.scaleX;
         var _loc7_:int = int(this.player.pState);
         _loc8_ = this.player.upBtn;
         var _loc9_:Boolean = this.player.dwnBtn;
         var _loc10_:Boolean = this.player.lftBtn;
         var _loc11_:Boolean = this.player.rhtBtn;
         var _loc12_:Boolean = this.player.lastOnGround;
         var _loc13_:Boolean = this.player.onGround;
         this.player.cleanUp();
         this.AO_DCT.removeItem(this.player);
         if(this.player.parent)
         {
            this.player.parent.removeChild(this.player);
         }
         this.player = null;
         this.player = new param1();
         this.AO_DCT.addItem(this.player);
         LevObj.updPlayerRef(this.player);
         this.STAT_MNGR.curCharNum = this.player.charNum;
         this.player.x = _loc2_;
         this.player.y = _loc3_;
         this.player.initiate();
         this.player.vx = _loc4_;
         this.player.vy = _loc5_;
         this.player.scaleX = _loc6_;
         this.player.upBtn = _loc8_;
         this.player.dwnBtn = _loc9_;
         this.player.lftBtn = _loc10_;
         this.player.rhtBtn = _loc11_;
         if(this.player is Sophia)
         {
            _loc15_ = this.player as Sophia;
            if(_loc11_)
            {
               _loc15_.pressRhtBtn();
            }
         }
         this.player.onGround = _loc13_;
         this.player.lastOnGround = _loc12_;
         addChild(this.player);
         this.EVENT_MNGR.getLevelVars();
         if(this.GS_MNGR.gameState == this.GS_PLAY)
         {
            this.SND_MNGR.changeMusic();
         }
         this.tsTxt.updNameDispTxt();
         this.tsTxt.updateUpgIcons();
         if(this.GS_MNGR.gameState == this.GS_PLAY)
         {
            this.BTN_MNGR.sendPlayerBtns();
         }
         this.player.changedToThisChar();
      }
      
      public function destroy(param1:DisplayObject) : void
      {
         if(param1 is LevObj)
         {
            LevObj(param1).destroyed = true;
            param1.visible = false;
         }
         this.DESTROY_DCT.addItem(param1);
      }
      
      public function addObj() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:SimpleAnimatedObject = null;
         var _loc3_:DummyGround = null;
         for each(_loc1_ in this.ADD_DCT)
         {
            if(_loc1_ is AnimatedObject)
            {
               if(_loc1_ is Projectile)
               {
                  if((_loc1_ as Projectile).sourceType == Projectile.SOURCE_TYPE_PLAYER)
                  {
                     this.PLAYER_PROJ_DCT.addItem(_loc1_);
                  }
                  else
                  {
                     this.PROJ_DCT.addItem(_loc1_);
                  }
               }
               else if(_loc1_ is Teleporter)
               {
                  if(this.teleVec)
                  {
                     this.teleVec.push(_loc1_);
                  }
                  else
                  {
                     this.teleVec = new Vector.<Teleporter>();
                     this.teleVec.push(_loc1_);
                  }
               }
               this.AO_DCT.addItem(_loc1_);
            }
            else if(_loc1_ is SimpleAnimatedObject)
            {
               _loc2_ = _loc1_ as SimpleAnimatedObject;
               if(!_loc2_.stopAnim)
               {
                  this.ANIM_DCT.addItem(_loc2_);
               }
               if(!_loc2_.stopUpdate)
               {
                  this.UPDATE_DCT.addItem(_loc2_);
               }
            }
            else if(_loc1_ is Scenery)
            {
               this.SCENERY_DCT.addItem(_loc1_);
            }
            else if(_loc1_ is Ground)
            {
               this.GROUND_DCT.addItem(_loc1_);
               if(_loc1_ is BowserBridge)
               {
                  if(!this.bbVec)
                  {
                     this.bbVec = new Vector.<BowserBridge>();
                  }
                  this.bbVec.push(_loc1_);
               }
               else if(_loc1_ is SpringRed)
               {
                  _loc3_ = new DummyGround();
                  _loc3_.x = _loc1_.x;
                  _loc3_.y = _loc1_.y - this.TILE_SIZE;
                  this.GROUND_DCT.addItem(_loc3_);
                  _loc3_.initiate();
               }
               else if(_loc1_ is Brick)
               {
                  Brick(_loc1_).flag();
               }
               else if(_loc1_ is Platform)
               {
                  if(this.platVec)
                  {
                     this.platVec.push(_loc1_);
                  }
                  else
                  {
                     this.platVec = new Vector.<Platform>();
                     this.platVec.push(_loc1_);
                  }
               }
            }
            if(_loc1_ is LevObj)
            {
               LevObj(_loc1_).initiate();
            }
            this.ADD_DCT.removeItem(_loc1_);
         }
      }
      
      private function destroyObj() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this.DESTROY_DCT)
         {
            if(_loc1_.parent == this)
            {
               removeChild(_loc1_);
            }
            if(_loc1_ is Scenery)
            {
               Scenery(_loc1_).cleanUp();
            }
            if(_loc1_ is LevObj)
            {
               LevObj(_loc1_).cleanUp();
            }
            this.DESTROY_DCT.removeItem(_loc1_);
            _loc1_ = null;
         }
      }
      
      public function killAllEnemiesOnScreen() : void
      {
         var _loc1_:AnimatedObject = null;
         var _loc2_:Enemy = null;
         for each(_loc1_ in this.AO_STG_DCT)
         {
            if(_loc1_ is Enemy)
            {
               _loc2_ = _loc1_ as Enemy;
               if(_loc2_.cState != LevObj.ST_DIE)
               {
                  this.scorePop(_loc2_.scoreStar,_loc2_.nx,_loc2_.hTop - Enemy.SP_Y_OFFSET);
                  _loc2_.die();
               }
            }
         }
      }
      
      public function destroyAllEnemiesAndProjectilesOnScreen() : void
      {
         var _loc1_:AnimatedObject = null;
         for each(_loc1_ in this.AO_STG_DCT)
         {
            if(_loc1_ is Enemy || _loc1_ is Projectile)
            {
               this.destroy(_loc1_);
            }
         }
      }
      
      public function forceWaterLevel() : void
      {
         this.waterLevel = true;
         if(this.player)
         {
            this.player.forceWaterStats();
         }
      }
      
      public function forceNonwaterLevel() : void
      {
         if(Cheats.waterMode)
         {
            return;
         }
         this.waterLevel = false;
         if(this.player)
         {
            this.player.forceNonwaterStats();
         }
      }
      
      public function addColorObject(param1:AnimatedObject) : void
      {
         this.CHANGE_COLOR_OBJS_DCT.addItem(param1);
         if(!this.STAGE.hasEventListener(this.ENTER_FRAME_EVENT))
         {
            this.STAGE.addEventListener(this.ENTER_FRAME_EVENT,this.enterFrameHandler);
         }
      }
      
      public function removeColorObject(param1:AnimatedObject) : void
      {
         this.CHANGE_COLOR_OBJS_DCT.removeItem(param1);
         if(this.CHANGE_COLOR_OBJS_DCT.length == 0)
         {
            this.STAGE.removeEventListener(this.ENTER_FRAME_EVENT,this.enterFrameHandler);
         }
      }
      
      public function pauseGame() : void
      {
         this.LOOP_TMR.stop();
         this.pauseAnimationTimers();
         this.GS_MNGR.gameState = GameStates.PAUSE;
         this.player.setPauseBtns();
         this.pauseTimers();
      }
      
      public function resumeGame() : void
      {
         this.LOOP_TMR.start();
         this.resumeAnimationTimers();
         this.GS_MNGR.gameState = this.GS_PLAY;
         this.offsetDT = true;
         this.unpauseTimers();
         this.BTN_MNGR.sendPlayerBtns();
         this.player.relPauseBtns();
      }
      
      public function freezeGame(param1:Boolean = false) : void
      {
         this.GS_MNGR.gameState = "freeze";
         this.LOOP_TMR.stop();
         this.player.setPauseBtns();
         this.pauseTimers();
         if(param1)
         {
            this.SND_MNGR.pauseLoopingsSfx();
         }
         this._moveDuringFreezeTmr.start();
      }
      
      public function unfreezeGame() : void
      {
         this.GS_MNGR.lockGameState = false;
         this.GS_MNGR.gameState = GameStates.PLAY;
         this.LOOP_TMR.start();
         this.SND_MNGR.resumeLoopingSfx();
         this.BTN_MNGR.sendPlayerBtns();
         this.player.relPauseBtns();
         this.offsetDT = true;
         this.unpauseTimers();
         this._moveDuringFreezeTmr.reset();
      }
      
      public function freezeGameDeath(param1:LevObj = null) : void
      {
         var _loc2_:AnimatedObject = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Platform = null;
         this.BTN_MNGR.relPlyrBtns();
         this.pauseTimers();
         for each(_loc2_ in this.AO_STG_DCT)
         {
            if(_loc2_ != this.player && _loc2_ is Enemy)
            {
               _loc2_.stopAnim = true;
               _loc2_.stopHit = true;
               _loc2_.stopUpdate = true;
            }
         }
         if(this.platVec)
         {
            _loc3_ = int(this.platVec.length);
            _loc4_ = 0;
            while(_loc4_ < _loc3_)
            {
               (_loc5_ = this.platVec[_loc4_]).stopAnim = true;
               _loc5_.stopHit = true;
               _loc5_.stopUpdate = true;
               _loc4_++;
            }
         }
         this.player.initiateDeath(param1);
      }
      
      public function freezePlayer() : void
      {
         this.GS_MNGR.gameState = "freezePlayer";
         this.player.stopAnim = true;
         this.player.stopHit = true;
         this.player.stopUpdate = true;
      }
      
      public function unfreezePlayer() : void
      {
         this.GS_MNGR.lockGameState = false;
         this.GS_MNGR.gameState = GameStates.PLAY;
         this.player.stopAnim = false;
         this.player.stopHit = false;
         this.player.stopUpdate = false;
      }
      
      private function moveDuringFreezeTmrHandeler(param1:TimerEvent) : void
      {
         this.dt = this.TD_CALC.getTD();
         if(this.foreground.SCORE_POP_DCT.length)
         {
            this.foreground.updateScorePops();
         }
      }
      
      public function get moveDuringFreezeTmr() : CustomTimer
      {
         return this._moveDuringFreezeTmr;
      }
      
      public function getLevel() : Level
      {
         return this;
      }
      
      private function pauseTimers() : void
      {
         var _loc1_:ICustomTimer = null;
         for each(_loc1_ in this.TMR_DCT)
         {
            if(_loc1_.running)
            {
               _loc1_.pause();
               this.P_TMR_DCT.addItem(_loc1_);
            }
         }
      }
      
      private function unpauseTimers() : void
      {
         var _loc1_:ICustomTimer = null;
         for each(_loc1_ in this.P_TMR_DCT)
         {
            _loc1_.resume();
            this.P_TMR_DCT.removeItem(_loc1_);
         }
      }
      
      public function addTmr(param1:ICustomTimer) : void
      {
         this.TMR_DCT.addItem(param1);
      }
      
      public function removeTmr(param1:ICustomTimer) : void
      {
         if(param1.running)
         {
            param1.stop();
         }
         this.TMR_DCT.removeItem(param1);
         this.P_TMR_DCT.removeItem(param1);
      }
      
      public function getDistance(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
      
      public function loadArea(param1:String, param2:int) : void
      {
         var _loc3_:AnimatedObject = null;
         var _loc4_:EnemySpawner = null;
         if(param1 == "0")
         {
            param1 = this._areaStr;
         }
         this.AO_DCT.removeItem(this.player);
         this.destroy(this.player);
         for each(_loc3_ in this.AO_DCT)
         {
            if(_loc3_.destroyOffScreen || _loc3_ is Projectile && !(_loc3_ is FireBar || _loc3_ is LavaFireBall) || _loc3_.dosTop || _loc3_.dosLft || _loc3_.dosRht || _loc3_ is Lakitu || _loc3_ is CheepFast && CheepFast(_loc3_).flying)
            {
               this.destroy(_loc3_);
            }
         }
         if(this.ENEMY_SPAWNER_DCT.length)
         {
            for each(_loc4_ in this.ENEMY_SPAWNER_DCT)
            {
               _loc4_.disarm();
            }
         }
         this.destroyObj();
         this.areaStatsArr = [this._areaStr,this.AO_DCT,this.GROUND_DCT,this.SCENERY_DCT,this.hwPnt,this.ENEMY_SPAWNER_DCT,this.bfbX];
         this.disarm = true;
         this.STAT_MNGR.writePlayerStats(this.player.charNum,this.player.pState,param2);
         this.destroyLevel();
         this.SCRN_MNGR.loadNewArea(this._id.nameWithoutArea,this._areaStr,param1,this.areaStatsArr);
      }
      
      public function getGroundAt(param1:Number, param2:Number) : Ground
      {
         return this.GROUND_DCT.getGroundAt(param1,param2);
      }
      
      public function getSceneryAt(param1:Number, param2:Number) : CustomDictionary
      {
         return this.SCENERY_DCT.getSceneryAt(param1,param2);
      }
      
      private function loadNewLevel(param1:LevelID) : void
      {
         this.destroyLevel();
         this.STAT_MNGR.writePlayerStats(this.player.charNum,this.player.pState,0);
         this.SCRN_MNGR.loadNewLevel(param1);
      }
      
      public function reloadLevel() : void
      {
         var _loc1_:String = this._worldNum + "-" + this._levNum;
         var _loc2_:LevelID = LevelID.Create(this._id.nameWithoutArea);
         if(this.shouldStartAtCheckPoint)
         {
            this.levelIDToLoad = LevelID.Create(this._id.nameWithoutArea + this._hwArea);
         }
         else if(this.levData.getType(_loc2_) == LevelTypes.INTRO)
         {
            this.levelIDToLoad = LevelID.Create(this._id.nameWithoutArea + "b");
         }
         else
         {
            this.levelIDToLoad = _loc2_;
         }
         if(!this.LOOP_TMR.running)
         {
            this.loadNewLevel(this.levelIDToLoad);
         }
      }
      
      public function set beatLevel(param1:Boolean) : void
      {
         this._beatLevel = param1;
      }
      
      public function resetTeleporters() : void
      {
         var _loc1_:Teleporter = null;
         for each(_loc1_ in this.teleVec)
         {
            _loc1_.resetCheckPoints();
         }
      }
      
      protected function completeLevel() : void
      {
         var _loc2_:int = 0;
         if(Cheats.getLockStatus(MenuBoxItems.INFINITE_TIME))
         {
            Cheats.unlockCheat(MenuBoxItems.INFINITE_TIME);
            if(GameSettings.cheatNotify)
            {
               MessageBoxManager.INSTANCE.addEventListener(CustomEvents.MESSAGE_BOX_SERIES_END,this.messageBoxSeriesEndHandler,false,0,true);
               return;
            }
         }
         if(Cheats.getLockStatus(MenuBoxItems.EXTRA_CHECKPOINTS) && this._levNum == 4)
         {
            Cheats.unlockCheat(MenuBoxItems.EXTRA_CHECKPOINTS);
            if(GameSettings.cheatNotify)
            {
               MessageBoxManager.INSTANCE.addEventListener(CustomEvents.MESSAGE_BOX_SERIES_END,this.messageBoxSeriesEndHandler,false,0,true);
               return;
            }
         }
         var _loc1_:int = this._levNum + 1;
         if(_loc1_ <= 4)
         {
            _loc2_ = this._worldNum;
         }
         else
         {
            _loc2_ = this._worldNum + 1;
            _loc1_ = 1;
         }
         this.STAT_MNGR.passedHw = false;
         this.EVENT_MNGR.beatLevel(this._worldNum,this._levNum);
         this.loadNewLevel(new LevelID(_loc2_,_loc1_));
      }
      
      private function messageBoxSeriesEndHandler(param1:Event) : void
      {
         MessageBoxManager.INSTANCE.removeEventListener(CustomEvents.MESSAGE_BOX_SERIES_END,this.messageBoxSeriesEndHandler);
         this.completeLevel();
      }
      
      public function launchNextFirework() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(this.fwPosArr.length)
         {
            _loc1_ = this.fwPosArr[0][0] + this.castleFlag.x;
            _loc2_ = this.fwPosArr[0][1] + this.fireworkPivotY;
            if(this.levNum == 3)
            {
               _loc1_ += this.TILE_SIZE;
            }
            this.fwPosArr.shift();
            this.addToLevel(new Firework(_loc1_,_loc2_));
         }
         else
         {
            this.winEndTmr = new CustomTimer(this.WIN_END_TMR_FIREWORKS_DUR,1);
            this.winEndTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrLsr,false,0,true);
            this.winEndTmr.start();
         }
      }
      
      private function get bigCastleIsOnScreen() : Boolean
      {
         var _loc1_:Scenery = null;
         for each(_loc1_ in this.SCENERY_STG_DCT)
         {
            if(_loc1_.currentLabel == Scenery.FL_CASTLE_BIG)
            {
               return true;
            }
         }
         return false;
      }
      
      public function raiseFlag() : void
      {
         if(this.castleFlag != null && !this.bigCastleIsOnScreen)
         {
            addChildAt(this.castleFlag,1);
            this.raiseCastleFlag = true;
         }
         if(this.fireworksRemaining)
         {
            if(this.fireworksRemaining == 6)
            {
               this.fwPosArr = FireworkLocations.FW_6_ARR.concat();
            }
            else if(this.fireworksRemaining == 3)
            {
               this.fwPosArr = FireworkLocations.FW_3_ARR.concat();
            }
            else if(this.fireworksRemaining == 1)
            {
               this.fwPosArr = FireworkLocations.FW_1_ARR.concat();
            }
            this.launchNextFirework();
         }
         else
         {
            this.winEndTmr = new CustomTimer(this.WIN_END_TMR_NORMAL_DUR,1);
            this.winEndTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrLsr,false,0,true);
            this.winEndTmr.start();
         }
      }
      
      private function funTime() : Boolean
      {
         var _loc3_:String = null;
         var _loc1_:String = this.STAGE.loaderInfo.url;
         var _loc2_:Dictionary = new Dictionary();
         _loc2_["file://"] = "file://";
         _loc2_["http://localhost:8888/"] = "http://localhost:8888/";
         _loc2_["http://www.explodingrabbit.com/"] = "http://www.explodingrabbit.com/";
         _loc2_["http://127.0.0.1:8888/"] = "http://127.0.0.1:8888/";
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ == _loc1_.substr(0,_loc3_.length))
            {
               return true;
            }
         }
         return false;
      }
      
      public function startDungeonEndTmr() : void
      {
         this.winEndTmr = new CustomTimer(this.WIN_END_TMR_DUNGEON_DUR,1);
         this.winEndTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrLsr,false,0,true);
         this.winEndTmr.start();
      }
      
      public function startBackupTouchLevelExitTmr() : void
      {
         this.backupTouchLevelExitTmr = new Timer(BACKUP_TOUCH_LEVEL_EXIT_TMR_DEL,1);
         this.backupTouchLevelExitTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.backupTouchLevelExitTmrHandler,false,0,true);
         this.backupTouchLevelExitTmr.start();
      }
      
      private function backupTouchLevelExitTmrHandler(param1:TimerEvent) : void
      {
         if(this.player)
         {
            this.player.touchLevelExit();
         }
         this.backupTouchLevelExitTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.backupTouchLevelExitTmrHandler);
         this.backupTouchLevelExitTmr = null;
      }
      
      public function startWinEndTmrMusic(param1:int) : void
      {
         this.winEndTmrMusic = new CustomTimer(param1 + this.WIN_MUSIC_TAIL,1);
         this.winEndTmrMusic.addEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrMusicHandler,false,0,true);
         this.winEndTmrMusic.start();
      }
      
      private function winEndTmrMusicHandler(param1:TimerEvent) : void
      {
         this.winEndTmrMusic.stop();
         this.winEndTmrMusic.removeEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrMusicHandler);
         this.winEndTmrMusic = null;
         if(!this.winEndTmrComplete)
         {
            return;
         }
         this._beatLevel = true;
         if(!this.LOOP_TMR.running)
         {
            this.completeLevel();
         }
      }
      
      private function winEndTmrLsr(param1:TimerEvent) : void
      {
         this.winEndTmr.stop();
         this.winEndTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.winEndTmrLsr);
         this.winEndTmr = null;
         this.winEndTmrComplete = true;
         if(this.winEndTmrMusic != null)
         {
            return;
         }
         this._beatLevel = true;
         if(!this.LOOP_TMR.running)
         {
            this.completeLevel();
         }
      }
      
      private function pauseAnimationTimers() : void
      {
         var _loc1_:CustomTimer = null;
         for each(_loc1_ in this.ALL_ANIM_TMRS_DCT)
         {
            _loc1_.pause();
         }
      }
      
      private function resumeAnimationTimers() : void
      {
         var _loc1_:CustomTimer = null;
         for each(_loc1_ in this.ALL_ANIM_TMRS_DCT)
         {
            _loc1_.resume();
         }
      }
      
      public function destroyLevel() : void
      {
         var _loc1_:int = 0;
         var _loc2_:CustomTimer = null;
         var _loc3_:GameLoopTimer = null;
         var _loc4_:AnimatedObject = null;
         var _loc5_:Ground = null;
         var _loc6_:Scenery = null;
         if(this.disarm)
         {
            for each(_loc4_ in this.AO_DCT)
            {
               _loc4_.disarm();
            }
            for each(_loc5_ in this.GROUND_DCT)
            {
               _loc5_.disarm();
            }
         }
         else
         {
            for each(_loc4_ in this.AO_DCT)
            {
               this.destroy(_loc4_);
            }
            for each(_loc5_ in this.GROUND_DCT)
            {
               this.destroy(_loc5_);
            }
            for each(_loc6_ in this.SCENERY_DCT)
            {
               this.destroy(_loc6_);
            }
         }
         Brick.masterBrick.destroy();
         ItemBlock.masterItemBlock.destroy();
         this.LOOP_TMR.stop();
         for each(_loc2_ in this.ALL_ANIM_TMRS_DCT)
         {
            _loc2_.stop();
         }
         for each(_loc3_ in this.GAME_LOOP_TMRS_DCT)
         {
            _loc3_.stop();
            _loc3_.destroy();
         }
         this.LOOP_TMR.removeEventListener(TimerEvent.TIMER,this.gameLoop);
         this.ANIM_TMR_FLASHING_ITEM.removeEventListener(TimerEvent.TIMER,this.animTmrFlashingItemHandler);
         this.ANIM_SUPER_SLOWEST_TMR.removeEventListener(TimerEvent.TIMER,this.animSuperSlowestTmrHandler);
         this.ANIM_VERY_SLOW_TMR.removeEventListener(TimerEvent.TIMER,this.animVerySlowTmrHandler);
         this.ANIM_SLOW_TMR.removeEventListener(TimerEvent.TIMER,this.animSlowTmrHandler);
         this.ANIM_MODERATE_TMR.removeEventListener(TimerEvent.TIMER,this.animModerateTmrHandler);
         this.ANIM_MIN_FAST_TMR.removeEventListener(TimerEvent.TIMER,this.animMinFastTmrHandler);
         this.ANIM_FAST_TMR.removeEventListener(TimerEvent.TIMER,this.animFastTmrHandler);
         if(this._moveDuringFreezeTmr)
         {
            this._moveDuringFreezeTmr.stop();
            this._moveDuringFreezeTmr.removeEventListener(TimerEvent.TIMER,this.moveDuringFreezeTmrHandeler);
            this._moveDuringFreezeTmr = null;
         }
         if(this.backupTouchLevelExitTmr)
         {
            this.backupTouchLevelExitTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.backupTouchLevelExitTmrHandler);
         }
         this.STAGE.removeEventListener(Event.RENDER,this.renderLsr);
         this.STAGE.removeEventListener(this.ENTER_FRAME_EVENT,this.enterFrameHandler);
         if(this.STAGE.hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.clickLsr);
         }
         this.destroyObj();
         this.background.destroy();
         this.foreground.destroy();
         levelInstance = null;
         GlobVars.level = null;
         this.tsTxt.level = null;
         if(this.GAME.contains(this))
         {
            this.GAME.removeChild(this);
         }
         this.removeAllSounds();
         this.EVENT_MNGR.destroyLevel();
      }
      
      protected function removeAllSounds() : void
      {
         this.SND_MNGR.removeAllSounds();
      }
      
      public function pauseMainTmrs() : void
      {
         this.LOOP_TMR.stop();
         this.ANIM_SLOW_TMR.stop();
      }
      
      public function resumeMainTmrs() : void
      {
         this.LOOP_TMR.start();
         this.ANIM_SLOW_TMR.start();
      }
      
      public function scorePop(param1:uint, param2:Number, param3:Number, param4:Boolean = true, param5:Boolean = false) : void
      {
         var _loc6_:ScorePop = new ScorePop(param1,param2,param3,param5);
         this.addToLevel(_loc6_);
         if(param4)
         {
            if(param1 != this.SV_EARN_NEW_LIFE_NUM_VAL)
            {
               this.EVENT_MNGR.addPoints(param1);
            }
            else
            {
               this.STAT_MNGR.addLife();
            }
         }
      }
      
      public function get hwArea() : String
      {
         return this._hwArea;
      }
      
      public function get timeLeftTot() : uint
      {
         return this._timeLeftTot;
      }
      
      public function get newLev() : Boolean
      {
         return this._newLev;
      }
      
      public function get flagPole() : FlagPole
      {
         return this._flagPole;
      }
      
      public function get worldNum() : int
      {
         return this._worldNum;
      }
      
      public function get levNum() : int
      {
         return this._levNum;
      }
      
      public function get areaStr() : String
      {
         return this._areaStr;
      }
      
      public function get initialWaterLevel() : Boolean
      {
         return this._initialWaterLevel;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get id() : LevelID
      {
         return this._id;
      }
      
      private function groundHT(param1:AnimatedObject) : void
      {
         var _loc2_:int = 0;
         var _loc4_:Ground = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:CustomDictionary = null;
         var _loc12_:CustomDictionary = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:LevObj = null;
         var _loc16_:Projectile = null;
         var _loc3_:int = this.TILE_SIZE;
         var _loc5_:Dictionary = this.groundRowDcts[this.GROUND_STG_DCT.OFF_GRID_KEY];
         var _loc6_:CustomDictionary = param1.hitTestTypesDct;
         var _loc7_:CustomDictionary = param1.hitTestAgainstGroundDct;
         var _loc8_:Boolean = false;
         for each(_loc4_ in _loc5_)
         {
            if(!(Boolean(_loc4_.stopHit) || param1.stopHit))
            {
               _loc11_ = _loc4_.hitTestTypesDct;
               _loc12_ = _loc4_.hitTestAgainstNonGroundDct;
               _loc8_ = false;
               loop1:
               for each(_loc9_ in _loc6_)
               {
                  for each(_loc10_ in _loc11_)
                  {
                     if(Boolean(_loc7_[_loc10_]) && Boolean(_loc12_[_loc9_]))
                     {
                        _loc8_ = true;
                        break loop1;
                     }
                  }
               }
               if(_loc8_)
               {
                  if(_loc4_.hitDistOver)
                  {
                     this.checkMaxDistOver(param1,_loc4_);
                  }
                  if(this.getDistance(param1.hMidX,param1.hMidY,_loc4_.hMidX,_loc4_.hMidY) <= this.maxDist)
                  {
                     this.ht.hTest(param1,_loc4_);
                  }
               }
            }
         }
         while(_loc13_ < this.groundRowDctsLen)
         {
            _loc5_ = this.groundRowDcts[_loc3_];
            for each(_loc4_ in _loc5_)
            {
               if(!(Boolean(_loc4_.stopHit) || param1.stopHit))
               {
                  _loc11_ = _loc4_.hitTestTypesDct;
                  _loc12_ = _loc4_.hitTestAgainstNonGroundDct;
                  _loc8_ = false;
                  loop5:
                  for each(_loc9_ in _loc6_)
                  {
                     for each(_loc10_ in _loc11_)
                     {
                        if(Boolean(_loc7_[_loc10_]) && Boolean(_loc12_[_loc9_]))
                        {
                           _loc8_ = true;
                           break loop5;
                        }
                     }
                  }
                  if(_loc8_)
                  {
                     if(_loc4_.hitDistOver)
                     {
                        this.checkMaxDistOver(param1,_loc4_);
                     }
                     if(this.getDistance(param1.hMidX,param1.hMidY,_loc4_.hMidX,_loc4_.hMidY) <= this.maxDist)
                     {
                        this.ht.hTest(param1,_loc4_);
                     }
                  }
               }
            }
            _loc3_ += this.TILE_SIZE;
            _loc13_++;
         }
         if(this.projHitArr)
         {
            _loc14_ = int(this.projHitArr.length);
            _loc13_ = 0;
            while(_loc13_ < _loc14_)
            {
               if(this.projHitArr)
               {
                  _loc15_ = LevObj(this.projHitArr[_loc13_][0]);
                  _loc16_ = Projectile(this.projHitArr[_loc13_][1]);
                  if(!_loc16_.destroyed && !_loc16_.stopHit && !_loc15_.destroyed && !_loc15_.stopHit && (!(_loc15_ is Ground) || !Ground(_loc15_).disabled))
                  {
                     _loc15_.confirmedHitProj(_loc16_);
                  }
               }
               _loc13_++;
            }
            this.projHitArr = null;
         }
         if(this.gHitArr.length > 0)
         {
            _loc2_ = 0;
            while(_loc2_ < this.gHitArr.length)
            {
               this.ht.hTest(param1,this.gHitArr[_loc2_]);
               this.gHitArr.shift();
               _loc2_--;
               _loc2_++;
            }
         }
      }
   }
}
