package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.*;
   import com.smbc.enemies.*;
   import com.smbc.enums.DamageResponse;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.AllCharactersCmc;
   import com.smbc.graphics.BillLegs;
   import com.smbc.graphics.BillTorso;
   import com.smbc.graphics.MegaManHead;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.PaletteSheet;
   import com.smbc.graphics.SubMc;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.ground.*;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.interfaces.IKeyReleasable;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.FakeLevel;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.*;
   import com.smbc.managers.ButtonManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.messageBoxes.CharacterSelectBox;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.pickups.*;
   import com.smbc.projectiles.*;
   import com.smbc.sound.*;
   import com.smbc.utils.CharacterSequencer;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.*;
   import flash.events.*;
   import flash.filters.*;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import nl.stroep.utils.ImageSaver;
   
   public class Character extends AnimatedObject implements IKeyPressable, IKeyReleasable
   {
      
      public static const NUM_CHARACTERS:int = CharacterInfo.NUM_CHARACTERS;
      
      public static const CHAR_NUM_MAX:int = NUM_CHARACTERS - 1;
      
      public static const CHAR_NUM_MIN:int = 0;
      
      public static const IND_CI_NAME:String = "IND_CI_";
      
      public static const PS_SEP_STR:String = "_";
      
      public static const PS_FALLEN:int = 0;
      
      public static const PS_NORMAL:int = 1;
      
      public static const PS_MUSHROOM:int = 2;
      
      public static const PS_FIRE_FLOWER:int = 3;
      
      public static const NUM_P_STATES:int = 3;
      
      private static const IND_PALETTE_MAIN:int = 1;
      
      private static const IND_PALETTE_POWER_UP:int = 2;
      
      private static const IND_PALETTE_STAR:int = 3;
      
      protected static const HRECT_PADDING_Y:int = 6;
      
      protected static const HRECT_PADDING_X:int = 4;
      
      protected static const VINE_CLIMB_SPEED:int = 130;
      
      public static const ST_ATTACK:String = "attack";
      
      public static const ST_CROUCH:String = "crouch";
      
      public static var BRICK_BREAKER:int = 1;
      
      public static var BRICK_BOUNCER:int = 0;
      
      public static var BRICK_NONE:int = -1;
      
      protected static const IND_AMMO_ARR_IND:int = 0;
      
      protected static const IND_AMMO_ARR_DEFAULT:int = 1;
      
      protected static const IND_AMMO_ARR_MAX:int = 2;
      
      protected static const IND_AMMO_DEPL_ARR_TYPE:int = 0;
      
      protected static const IND_AMMO_DEPL_ARR_COST:int = 1;
      
      protected static const MUSHROOM:String = PickupInfo.MUSHROOM;
      
      protected static const CHAR_NUM_PROPERTY_NAME:String = "CHAR_NUM";
      
      protected static const CHAR_NAME_PROPERTY_NAME:String = "CHAR_NAME";
      
      protected static const CHAR_NAME_CAPS_PROPERTY_NAME:String = "CHAR_NAME_CAPS";
      
      protected static const CHAR_NAME_TEXT_PROPERTY_NAME:String = "CHAR_NAME_TEXT";
      
      protected static const OBTAINABLE_UPGRADES_ARR_PROPERTY_NAME:String = "OBTAINABLE_UPGRADES_ARR";
      
      protected static const AMMO_ARR_PROP_NAME:String = "AMMO_ARR";
      
      protected static const AMMO_DCT_PROP_NAME:String = "AMMO_DCT";
      
      protected static const AMMO_DEPLETION_ARR_PROP_NAME:String = "AMMO_DEPLETION_ARR";
      
      protected static const AMMO_DEPLETION_DCT_PROP_NAME:String = "AMMO_DEPLETION_DCT";
      
      protected static const WIN_SONG_DUR_PROPERTY_NAME:String = "WIN_SONG_DUR";
      
      protected static const SUFFIX_VEC_PROPERTY_NAME:String = "SUFFIX_VEC";
      
      protected static const PAL_ORDER_ARR_PROPERTY_NAME:String = "PAL_ORDER_ARR";
      
      protected static const MUSHROOM_UPGRADES_PROP_NAME:String = "MUSHROOM_UPGRADES";
      
      protected static const START_WITH_UPGRADES_PROP_NAME:String = "START_WITH_UPGRADES";
      
      protected static const NEVER_LOSE_UPGRADES_PROP_NAME:String = "NEVER_LOSE_UPGRADES";
      
      protected static const RESTORABLE_UPGRADES_PROP_NAME:String = "RESTORABLE_UPGRADES";
      
      protected static const REPLACEABLE_UPGRADES_ARR_PROP_NAME:String = "REPLACEABLE_UPGRADES_ARR";
      
      protected static const SINGLE_UPGRADES_ARR_PROP_NAME:String = "SINGLE_UPGRADES_ARR";
      
      private static const SKIN_ORDER_ARR_PROP_NAME:String = "SKIN_ORDER";
      
      public static const ICON_ORDER_ARR_PROP_NAME:String = "ICON_ORDER_ARR";
      
      public static const DROP_ARR_PROP_NAME:String = "DROP_ARR";
      
      protected static const SKIN_PREVIEW_FRAMES_PROP_NAME:String = "SKIN_PREVIEW_FRAMES";
      
      protected static const SKIN_PREVIEW_SIZE_PROP_NAME:String = "SKIN_PREVIEW_SIZE";
      
      protected static const SKIN_APPEARANCE_STATE_COUNT_PROP_NAME:String = "SKIN_APPEARANCE_STATE_COUNT";
      
      protected static const SPECIAL_SKIN_NUMBER_PROP_NAME:String = "SPECIAL_SKIN_NUMBER";
      
      protected static const ATARI_SKIN_NUMBER_PROP_NAME:String = "ATARI_SKIN_NUMBER";
      
      protected static const skinPreviews:Vector.<Vector.<Vector.<CustomMovieClip>>> = new Vector.<Vector.<Vector.<CustomMovieClip>>>(NUM_CHARACTERS,true);
      
      protected static const GET_SKIN_PREVIEWS_FUNCTION_NAME:String = "getSkinPreviews";
      
      private static const FREEZE_GAME_TMR_DEL:uint = 1000;
      
      private static const IND_DAMAGE_INFO_ARR_LABEL:int = 0;
      
      private static const IND_DAMAGE_INFO_ARR_STOP_ANIM:int = 1;
      
      private static const IND_DAMAGE_INFO_ARR_STATE:int = 2;
      
      public static const ST_FLAG_SLIDE:String = "flagSlide";
      
      public static const ST_PIPE:String = "pipe";
      
      protected static const ST_GET_UPGRADE:String = "getUpgrade";
      
      private static const AXE_FALL_TMR_DEL:int = 300;
      
      protected static const AMMO_ICON_SUFFIX:String = "Ammo";
      
      protected static var tsTxt:TopScreenText;
      
      private static const WING_TIMER_DURATION:int = 10000;
      
      private static const skinAppearanceNumbers:Vector.<int> = new Vector.<int>(NUM_CHARACTERS,true);
       
      
      public var mushroomUpgrades:CustomDictionary;
      
      public var startWithUpgrades:CustomDictionary;
      
      public var neverLoseUpgrades:CustomDictionary;
      
      public var replaceableUpgrades:CustomDictionary;
      
      public var restorableUpgrades:CustomDictionary;
      
      public var curTier:int;
      
      public const curHitDct:CustomDictionary = new CustomDictionary(true);
      
      private const P_UP_SCORE_VAL:int = 1000;
      
      protected const ENTER_PIPE_VX_MAX:int = 90;
      
      protected const DEF_PS:int = 1;
      
      protected const PIPE_LEV_TRANS_DELAY:int = 500;
      
      protected const PIT_LEV_TRANS_DELAY:int = 500;
      
      protected const TD_ALPHA:Number = 0.65;
      
      protected var graphicsMngr:GraphicsManager;
      
      private const STORED_BUTTONS_VEC:Vector.<Array> = new Vector.<Array>();
      
      protected var _stompedEnemyThisCycle:Boolean;
      
      protected var _numContStomps:int;
      
      protected var _charNameCaps:String;
      
      protected var _numColors:int = 4;
      
      protected var palettePowerUp:Palette;
      
      protected var paletteStar:Palette;
      
      protected var paletteMain:Palette;
      
      public var lftBtn:Boolean;
      
      public var rhtBtn:Boolean;
      
      public var upBtn:Boolean;
      
      public var dwnBtn:Boolean;
      
      public var atkBtn:Boolean;
      
      public var jmpBtn:Boolean;
      
      public var spcBtn:Boolean;
      
      public var selBtn:Boolean;
      
      public var jumped:Boolean;
      
      public var releasedJumpBtn:Boolean;
      
      private var disableJump:Boolean;
      
      public var maxJumpHeight:Boolean;
      
      private var wallRight:Boolean;
      
      private var wallLeft:Boolean;
      
      public var swapZone:Boolean;
      
      public var disableInput:Boolean;
      
      public var nonInteractive:Boolean;
      
      protected const CIELING_DISPLACE:int = 100;
      
      protected var bouncePwr:int = 300;
      
      protected var bounced:Boolean;
      
      protected var vineAnimTmr:CustomTimer;
      
      private var initialJumpPower:Number;
      
      private var maxRunSpeed:Number = 350;
      
      public var pState:uint;
      
      public var pState2:Boolean;
      
      protected var numParFrames:uint;
      
      public var charNum:int;
      
      public var frictionY:Boolean = true;
      
      protected var lastVX:Number = 0;
      
      public var pUpBtn:Boolean;
      
      public var pDwnBtn:Boolean;
      
      public var pLftBtn:Boolean;
      
      public var pRhtBtn:Boolean;
      
      public var pAtkBtn:Boolean;
      
      public var pJmpBtn:Boolean;
      
      public var pSpcBtn:Boolean;
      
      public var starPwr:Boolean;
      
      public var starPwrTmr1:CustomTimer;
      
      private var starPwrTmr2:CustomTimer;
      
      protected var starPwrTmr3:CustomTimer;
      
      protected var poweringUp:Boolean;
      
      public var skinNum:int;
      
      public const STAR_PWR_TMR_1_DUR:int = 9500;
      
      private const STAR_PWR_TMR_2_DUR:int = 1200;
      
      private const STAR_PWR_TMR_3_DUR:int = 1300;
      
      protected const STAR_PWR_FLASH_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const STAR_PWR_SLOW_FLASH_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      protected var freezeGameTmr:CustomTimer;
      
      protected var noDamageTmr:CustomTimer;
      
      protected var noDamageTmrDur:uint = 1250;
      
      private var colorNum:uint = 1;
      
      public var takeNoDamage:Boolean;
      
      protected var hitFrameLabel:String;
      
      protected var hitStopAnim:Boolean;
      
      protected var hitState:String;
      
      protected var damageInfoArr:Array;
      
      public var bRect:Rectangle;
      
      public var dead:Boolean;
      
      public var springBoost:Boolean;
      
      public var defSpringPwr:int = 500;
      
      public var boostSpringPwr:int = 1000;
      
      public var underWater:Boolean;
      
      protected var defGravity:Number;
      
      protected var defGravityWater:Number;
      
      protected var vyMaxPsvWater:Number = 250;
      
      private var vxMaxGroundWater:Number = 90;
      
      public var pulledDown:Boolean;
      
      public var pulledRight:Boolean;
      
      public var pulledLeft:Boolean;
      
      private var bubbleTmr:CustomTimer;
      
      private var bubbleTmrDurMin:int = 500;
      
      private var bubbleTmrDurMax:int = 1500;
      
      protected var onPipeVert:Boolean;
      
      protected var pipe:PipeTransporter;
      
      protected var vine:Vine;
      
      protected var onPipeHorz:Boolean;
      
      public var falseDestroy:Boolean;
      
      protected var vertPipeSpeed:int = 50;
      
      protected var horzPipeSpeed:int = 50;
      
      protected var startPipeLoc:Number;
      
      protected var pType:String;
      
      private var flagDelayTmr:CustomTimer;
      
      protected var flickerTmr:GameLoopTimer;
      
      private var FLAG_DELAY_TMR_DUR:int = 300;
      
      private var musicDelTmr:CustomTimer;
      
      private var MUSIC_DEL_TMR_DUR:int = 250;
      
      protected const BTN_MNGR:ButtonManager = ButtonManager.BTN_MNGR;
      
      private var pitTransArr:Array;
      
      protected var _charName:String;
      
      protected var _charNameTxt:String;
      
      protected var _dieTmrDel:int = 3000;
      
      private const DIE_TMR_DEL_PIT_DEFAULT:int = 2500;
      
      protected var lockFrame:Boolean;
      
      protected var _fellInPit:Boolean;
      
      protected var VINE_WATCH_Y:int;
      
      protected var exitVine:Boolean;
      
      public var vineToClimb:Vine;
      
      protected var _boundsRect:Rectangle;
      
      protected var inColor1:uint;
      
      protected var inColor2:uint;
      
      protected var inColor3:uint;
      
      protected var inColor1_1:uint;
      
      protected var inColor2_1:uint;
      
      protected var inColor3_1:uint;
      
      protected var inColor1_2:uint;
      
      protected var inColor2_2:uint;
      
      protected var inColor3_2:uint;
      
      protected var inColor1_3:uint;
      
      protected var inColor2_3:uint;
      
      protected var inColor3_3:uint;
      
      protected var outColor1:uint;
      
      protected var outColor2:uint;
      
      protected var outColor3:uint;
      
      protected var _replaceColor:Boolean;
      
      protected var offsetMx:Matrix;
      
      protected const SFX_GAME_PIPE:String = SoundNames.SFX_GAME_PIPE;
      
      protected const SFX_GAME_POWER_UP:String = SoundNames.SFX_GAME_POWER_UP;
      
      protected const SND_GAME_HIT_CEILING:String = SoundNames.SFX_GAME_HIT_CEILING;
      
      private const SND_NAME_SUFFIX:String = "Snd";
      
      private const MUSIC_EFFECT_TYPE_WIN:String = "Win";
      
      protected const STAR_COLOR_1_1:uint = 4.278233088E9;
      
      protected const STAR_COLOR_2_1:uint = 4.29474412E9;
      
      protected const STAR_COLOR_3_1:uint = 4.294967295E9;
      
      protected const STAR_COLOR_1_2:uint = 4.292356096E9;
      
      protected const STAR_COLOR_2_2:uint = 4.29474412E9;
      
      protected const STAR_COLOR_3_2:uint = 4.294967295E9;
      
      protected const STAR_COLOR_1_3:uint = 4.27819008E9;
      
      protected const STAR_COLOR_2_3:uint = 4.291316748E9;
      
      protected const STAR_COLOR_3_3:uint = 4.294753456E9;
      
      protected var outColor1_1:uint = 4.278233088E9;
      
      protected var outColor2_1:uint = 4.29474412E9;
      
      protected var outColor3_1:uint = 4.294967295E9;
      
      protected var outColor1_2:uint = 4.292356096E9;
      
      protected var outColor2_2:uint = 4.29474412E9;
      
      protected var outColor3_2:uint = 4.294967295E9;
      
      protected var outColor1_3:uint = 4.27819008E9;
      
      protected var outColor2_3:uint = 4.291316748E9;
      
      protected var outColor3_3:uint = 4.294753456E9;
      
      protected var suffixVec:Vector.<String>;
      
      protected const SWAP_PS_VEC:Vector.<int> = new Vector.<int>();
      
      protected const ST_DIE:String = "die";
      
      protected const ST_JUMP:String = "jump";
      
      protected const ST_NEUTRAL:String = "neutral";
      
      protected const ST_GET_MUSHROOM:String = "getMushroom";
      
      public const ST_STAND:String = "stand";
      
      protected const ST_TAKE_DAMAGE:String = "takeDamage";
      
      protected const ST_VINE:String = "vine";
      
      protected const ST_WALK:String = "walk";
      
      protected const ANIM_VERY_SLOW_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      protected const ANIM_SLOW_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      protected const ANIM_MODERATE_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      protected const ANIM_MIN_FAST_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      protected const ANIM_FAST_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      protected const NUM_STAR_COLORS:int = 3;
      
      private const STUCK_IN_WALL_SHIFT:int = 3;
      
      private var storedPState:int;
      
      public const ATK_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected var walkStartLab:String;
      
      protected var walkEndLab:String;
      
      public var touchedExit:Boolean;
      
      public var cloudPlatform:Boolean;
      
      protected const FALL_BTWN_TMR:CustomTimer = new CustomTimer(50,1);
      
      protected var _fallBtwn:Boolean;
      
      protected var _secondsLeftSnd:String;
      
      protected var _sndWinMusic:String;
      
      protected var _secondsLeftSndIsBgm:Boolean;
      
      protected var _usesHorzObjs:Boolean;
      
      protected var _usesVertObjs:Boolean;
      
      protected var winSongDur:int;
      
      protected var swapAnimTmr:CustomTimer;
      
      protected var flashAnimTmr:CustomTimer;
      
      private var _starPwrBgmShouldBePlaying:Boolean;
      
      protected var nPState:int;
      
      protected var neverTakeDamage:Boolean;
      
      protected var _canStomp:Boolean = false;
      
      protected var canStompUnderWater:Boolean = true;
      
      public var canCrossSmallGaps:Boolean;
      
      public var disableStuckInWallShift:Boolean;
      
      public var screenScrollPosOffset:Number;
      
      public var putSubMcsOnTop:Boolean;
      
      public var brickState:int;
      
      public var canHitMultipleBricks:Boolean = false;
      
      private var axeFallTmr:GameLoopTimer;
      
      private var bowserAxeRect:Rectangle;
      
      public var subMcDct:CustomDictionary;
      
      public var masterBmdSkin:BmdSkinCont;
      
      protected var flickerTmrDel:int = 80;
      
      protected var showBmps:Boolean = true;
      
      protected var hidesBmps:Boolean = false;
      
      protected var cancelCheckState:Boolean;
      
      public var currentBmdSkin:BmdSkinCont;
      
      protected var firstPStateCall:Boolean = true;
      
      protected var initiated:Boolean;
      
      public var recordSeq:CharacterSequencer;
      
      public var canGetMushroom:Boolean;
      
      protected const C_HIT_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected const L_HIT_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected var damageAmt:int;
      
      private var ammoDct:CustomDictionary;
      
      protected var paletteSheet:PaletteSheet;
      
      protected var drawFrameLabel:String = "stand";
      
      public var wingTimer:CustomTimer;
      
      protected var hammerWeapon:HammerWeapon;
      
      protected var _canGetAmmoFromCoinBlocks:Boolean;
      
      protected var _canGetAmmoFromBricks:Boolean;
      
      public var dropRate:Number = 0.25;
      
      public var dropArr:Array;
      
      public var recolorsCharSkin:Boolean;
      
      protected var walksSlowUnderWater:Boolean = false;
      
      public var poorBowserFighter:Boolean = false;
      
      protected var canEnterPipesUngrounded:Boolean;
      
      public function Character()
      {
         var _loc2_:Array = null;
         var _loc4_:* = null;
         var _loc5_:Vector.<String> = null;
         this.mushroomUpgrades = new CustomDictionary();
         this.startWithUpgrades = new CustomDictionary();
         this.neverLoseUpgrades = new CustomDictionary();
         this.replaceableUpgrades = new CustomDictionary();
         this.restorableUpgrades = new CustomDictionary();
         this.vineAnimTmr = AnimationTimers.ANIM_SLOW_TMR;
         this.takeNoDamage = Cheats.invincible;
         this.damageInfoArr = [];
         this.suffixVec = Vector.<String>(["","",""]);
         this.swapAnimTmr = AnimationTimers.ANIM_SLOW_TMR;
         this.flashAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         this.neverTakeDamage = Cheats.invincible;
         this.brickState = BRICK_BOUNCER;
         super();
         LevObj.player = this;
         if(!tsTxt)
         {
            tsTxt = TopScreenText.instance;
         }
         this.graphicsMngr = GraphicsManager.INSTANCE;
         this._charName = classObj[CHAR_NAME_PROPERTY_NAME];
         this._charNameTxt = classObj[CHAR_NAME_TEXT_PROPERTY_NAME];
         this._charNameCaps = classObj[CHAR_NAME_CAPS_PROPERTY_NAME];
         this.winSongDur = classObj[WIN_SONG_DUR_PROPERTY_NAME];
         this.mushroomUpgrades.fromArray(classObj[MUSHROOM_UPGRADES_PROP_NAME]);
         this.neverLoseUpgrades.fromArray(classObj[NEVER_LOSE_UPGRADES_PROP_NAME]);
         this.addStartWithUpgrades(classObj[START_WITH_UPGRADES_PROP_NAME]);
         this.restorableUpgrades.fromArray(classObj[RESTORABLE_UPGRADES_PROP_NAME]);
         var _loc1_:Array = classObj[REPLACEABLE_UPGRADES_ARR_PROP_NAME];
         for each(_loc2_ in _loc1_)
         {
            if(_loc2_.length)
            {
               this.replaceableUpgrades.addItem(_loc2_[0],_loc2_[1]);
            }
         }
         this.dropArr = classObj[DROP_ARR_PROP_NAME];
         if(!this.dropArr)
         {
            this.dropArr = [];
         }
         var _loc3_:CustomDictionary = classObj[AMMO_DCT_PROP_NAME];
         this.ammoDct = new CustomDictionary();
         for(_loc4_ in _loc3_)
         {
            _loc2_ = _loc3_[_loc4_];
            this.ammoDct.addItem(_loc4_,_loc2_.concat());
         }
         this.canGetMushroom = true;
         this.paletteSheet = BmdInfo.getCharPaletteSheet(this.charNum);
         if(_loc5_ = classObj[SUFFIX_VEC_PROPERTY_NAME])
         {
            this.suffixVec = _loc5_.concat();
         }
         this.setCurrentBmdSkin(STAT_MNGR.getCurrentBmc(this.charNum),true);
         ACTIVE_ANIM_TMRS_DCT.addItem(this.swapAnimTmr);
         ACTIVE_ANIM_TMRS_DCT.addItem(this.flashAnimTmr);
         this.VINE_WATCH_Y = GLOB_STG_TOP + TILE_SIZE * 2;
         this.pState = 1;
         this.curTier = STAT_MNGR.getTier(this.charNum);
         this.setUpHitTesting();
         addProperty(new StatusProperty(StatusProperty.TYPE_PIERCE_AGG));
      }
      
      public static function getNeverLoseUpgrades(param1:int) : CustomDictionary
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         var _loc3_:CustomDictionary = new CustomDictionary();
         _loc3_.fromArray(_loc2_[NEVER_LOSE_UPGRADES_PROP_NAME]);
         return _loc3_;
      }
      
      private static function getSkinAppearanceNumber(param1:int) : int
      {
         return skinAppearanceNumbers[param1];
      }
      
      private static function setSkinAppearanceNumber(param1:int, param2:int) : void
      {
         skinAppearanceNumbers[param1] = param2;
      }
      
      public static function getSkinPreviews(param1:int) : Vector.<CustomMovieClip>
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         var _loc3_:int = 0;
         if(Level.levelInstance && Level.levelInstance.player)
         {
            _loc3_ = Level.levelInstance.player.currentSkinAppearanceNum;
         }
         else
         {
            _loc3_ = getSkinAppearanceNumber(param1);
         }
         return skinPreviews[param1][_loc3_];
      }
      
      public static function getSkinPreviewSize(param1:int) : Point
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         var _loc3_:Point = (_loc2_[SKIN_PREVIEW_SIZE_PROP_NAME] as Point).clone();
         _loc3_.x *= GlobVars.SCALE;
         _loc3_.y *= GlobVars.SCALE;
         return _loc3_;
      }
      
      private static function setUpSkinPreviews() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < skinPreviews.length)
         {
            _loc2_ = 1;
            _loc3_ = CharacterInfo.getCharClassFromNum(_loc1_) as Object;
            if(_loc3_[SKIN_APPEARANCE_STATE_COUNT_PROP_NAME] != undefined)
            {
               _loc2_ = _loc3_[SKIN_APPEARANCE_STATE_COUNT_PROP_NAME] as int;
            }
            skinPreviews[_loc1_] = new Vector.<Vector.<CustomMovieClip>>(_loc2_,true);
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               skinPreviews[_loc1_][_loc4_] = new Vector.<CustomMovieClip>(getSkinOrderVec(_loc1_).length,true);
               _loc4_++;
            }
            _loc1_++;
         }
      }
      
      public static function getAtariSkinNumber(param1:int) : int
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         return _loc2_[ATARI_SKIN_NUMBER_PROP_NAME];
      }
      
      public static function getSpecialSkinNumber(param1:int) : int
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         return _loc2_[SPECIAL_SKIN_NUMBER_PROP_NAME];
      }
      
      public static function getMushroomUpgrades(param1:int) : CustomDictionary
      {
         var _loc2_:Object = CharacterInfo.getCharClassFromNum(param1) as Object;
         var _loc3_:CustomDictionary = new CustomDictionary();
         _loc3_.fromArray(_loc2_[MUSHROOM_UPGRADES_PROP_NAME]);
         return _loc3_;
      }
      
      public static function getAvailableUpgrades(param1:int) : Vector.<CustomDictionary>
      {
         var _loc7_:CustomDictionary = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1);
         var _loc3_:Array = _loc2_[OBTAINABLE_UPGRADES_ARR_PROPERTY_NAME];
         var _loc4_:int = _loc3_.length;
         var _loc5_:Vector.<CustomDictionary> = new Vector.<CustomDictionary>();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc7_ = new CustomDictionary();
            _loc5_[_loc6_] = _loc7_;
            _loc9_ = (_loc8_ = _loc3_[_loc6_]).length;
            _loc10_ = 0;
            while(_loc10_ < _loc9_)
            {
               _loc7_.addItem(_loc8_[_loc10_]);
               _loc10_++;
            }
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function getSingleObjVec(param1:int) : CustomDictionary
      {
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1);
         var _loc3_:Array = _loc2_[SINGLE_UPGRADES_ARR_PROP_NAME];
         var _loc4_:int = _loc3_.length;
         var _loc5_:CustomDictionary = new CustomDictionary();
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_)
         {
            _loc5_.addItem(_loc3_[_loc6_]);
            _loc6_++;
         }
         return _loc5_;
      }
      
      public static function getAllUpgradesDct(param1:int) : CustomDictionary
      {
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1);
         var _loc3_:Array = _loc2_[OBTAINABLE_UPGRADES_ARR_PROPERTY_NAME];
         var _loc4_:Array = _loc2_[MUSHROOM_UPGRADES_PROP_NAME];
         var _loc5_:int = _loc3_.length;
         var _loc6_:Vector.<CustomDictionary> = new Vector.<CustomDictionary>();
         var _loc7_:CustomDictionary = new CustomDictionary();
         var _loc8_:int = 0;
         while(_loc8_ < _loc5_)
         {
            _loc6_[_loc8_] = _loc7_;
            _loc10_ = (_loc9_ = _loc3_[_loc8_]).length;
            _loc11_ = 0;
            while(_loc11_ < _loc10_)
            {
               _loc7_.addItem(_loc9_[_loc11_]);
               _loc11_++;
            }
            for each(_loc12_ in _loc4_)
            {
               _loc7_.addItem(_loc12_);
            }
            _loc8_++;
         }
         return _loc7_;
      }
      
      public static function getSkinOrderVec(param1:int) : Vector.<int>
      {
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1) as Class;
         var _loc3_:Array = _loc2_[SKIN_ORDER_ARR_PROP_NAME];
         return Vector.<int>(_loc3_);
      }
      
      public static function getAmmoVec(param1:int) : Array
      {
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1) as Class;
         var _loc3_:Array = _loc2_[AMMO_ARR_PROP_NAME];
         var _loc4_:Array = [];
         if(!_loc3_)
         {
            return _loc4_;
         }
         var _loc5_:CustomDictionary = new CustomDictionary();
         var _loc6_:int = _loc3_.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc10_ = (_loc9_ = _loc3_[_loc7_])[IND_AMMO_ARR_IND];
            _loc9_[IND_AMMO_ARR_IND] = _loc7_;
            _loc5_.addItem(_loc10_,_loc9_);
            _loc4_[_loc7_] = _loc9_[IND_AMMO_ARR_DEFAULT];
            _loc7_++;
         }
         var _loc8_:CustomDictionary = _loc2_[AMMO_DCT_PROP_NAME];
         _loc5_.clone(_loc8_);
         setUpAmmoDepletionDct(param1);
         return _loc4_;
      }
      
      private static function setUpAmmoDepletionDct(param1:int) : void
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         var _loc2_:Class = CharacterInfo.getCharClassFromNum(param1) as Class;
         var _loc3_:Array = _loc2_[AMMO_DEPLETION_ARR_PROP_NAME];
         var _loc4_:CustomDictionary = _loc2_[AMMO_DEPLETION_DCT_PROP_NAME];
         var _loc5_:int = _loc3_.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc8_ = (_loc7_ = _loc3_[_loc6_])[IND_AMMO_DEPL_ARR_TYPE];
            _loc4_.addItem(_loc8_,_loc7_);
            _loc6_++;
         }
      }
      
      public static function hitRandomUpgrade(param1:int, param2:Boolean = true) : void
      {
         var _loc4_:Pickup = null;
         var _loc3_:String = StatManager.STAT_MNGR.getRandomUpgrade(param1);
         if(_loc3_ == PickupInfo.MUSHROOM)
         {
            _loc4_ = new Mushroom(Mushroom.ST_RED);
         }
         else if(_loc3_ == PickupInfo.FIRE_FLOWER)
         {
            _loc4_ = new FireFlower();
         }
         else
         {
            _loc4_ = new Pickup(_loc3_);
         }
         player.hitPickup(_loc4_,param2);
      }
      
      public static function getGamesFromSkin(param1:int) : Vector.<Game>
      {
         var _loc2_:BmdSkinCont = StatManager.STAT_MNGR.getCurrentBmc(param1);
         return _loc2_.games;
      }
      
      private function addStartWithUpgrades(param1:Array) : void
      {
         var _loc3_:String = null;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1[_loc2_];
            this.startWithUpgrades.addItem(_loc3_,_loc3_);
            if(!STAT_MNGR.hasCompetingSingleItem(this.charNum,_loc3_))
            {
               STAT_MNGR.addCharUpgrade(this.charNum,_loc3_);
            }
            _loc2_++;
         }
      }
      
      protected function setUpHitTesting() : void
      {
         hitTestTypesDct.addItem(HitTestTypes.CHARACTER);
         addHitTestableItem(HT_PICKUP);
         addHitTestableItem(HT_ENEMY);
         addHitTestableItem(HT_PROJECTILE_ENEMY);
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_BRICK);
         addHitTestableItem(HT_PLATFORM);
      }
      
      protected function startAndDamageFcts(param1:Boolean = false) : void
      {
      }
      
      protected function saveSkinPreviews() : Boolean
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Point = null;
         var _loc9_:BitmapData = null;
         var _loc10_:Rectangle = null;
         var _loc11_:BitmapData = null;
         var _loc12_:CustomMovieClip = null;
         var _loc1_:Vector.<Vector.<Vector.<CustomMovieClip>>> = skinPreviews;
         if(skinPreviews[0] == null)
         {
            setUpSkinPreviews();
         }
         else if(skinPreviews[this.charNum][0][0] != null)
         {
            return false;
         }
         this.gotoAndStop(this.drawFrameLabel);
         var _loc2_:Vector.<int> = getSkinOrderVec(this.charNum);
         var _loc3_:int = 1;
         if(classObj[SKIN_APPEARANCE_STATE_COUNT_PROP_NAME] != undefined)
         {
            _loc3_ = classObj[SKIN_APPEARANCE_STATE_COUNT_PROP_NAME] as int;
         }
         var _loc4_:int = this.skinNum;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc6_ = _loc2_[_loc5_];
            _loc7_ = 0;
            while(_loc7_ < _loc3_)
            {
               this.graphicsMngr.changeCharacterSkin(this,_loc6_);
               this.prepareDrawCharacter(_loc7_);
               _loc8_ = getSkinPreviewSize(this.charNum);
               _loc10_ = (_loc9_ = ImageSaver.INSTANCE.getBitmapData(this,0)).getColorBoundsRect(4294967295,0,false);
               _loc10_.x -= (_loc8_.x - _loc10_.width) / GlobVars.SCALE;
               _loc10_.y -= _loc8_.y - _loc10_.height;
               _loc10_.width = _loc8_.x;
               _loc10_.height = _loc8_.y;
               (_loc11_ = new BitmapData(_loc10_.width,_loc10_.height,true,0)).copyPixels(_loc9_,_loc10_,GlobVars.ZERO_PT);
               (_loc12_ = new CustomMovieClip()).setNumFrames(1);
               _loc12_.addChildToSingleFrame(new Bitmap(_loc11_),1);
               skinPreviews[this.charNum][_loc7_][_loc6_] = _loc12_;
               _loc12_.gotoAndStop(1);
               _loc7_++;
            }
            _loc5_++;
         }
         this.graphicsMngr.changeCharacterSkin(this,_loc4_);
         this.prepareDrawCharacter();
         return true;
      }
      
      public function upgradeIsActive(param1:String) : Boolean
      {
         var _loc2_:CustomDictionary = STAT_MNGR.getObtainedUpgradesDct(this.charNum);
         if(!_loc2_[MUSHROOM] && this.canGetMushroom && this.neverLoseUpgrades[param1] == undefined && GameSettings.damageResponse != DamageResponse.KeepUpgrades)
         {
            return false;
         }
         return Boolean(_loc2_[param1]);
      }
      
      override protected function firstCall() : void
      {
         this.charNum = classObj[CHAR_NUM_PROPERTY_NAME];
         this.masterBmdSkin = new BmdSkinCont(BmdInfo.MASTER_CHAR_BMP_VEC[this.charNum],0,GraphicsManager.TYPE_CHARACTER,this);
      }
      
      public function get numColors() : int
      {
         return this._numColors;
      }
      
      public function addSubMc(param1:SubMc) : void
      {
         if(!this.subMcDct)
         {
            this.subMcDct = new CustomDictionary(true);
         }
         this.subMcDct.addItem(param1);
      }
      
      override public function initiate() : void
      {
         var _loc1_:CustomTimer = null;
         var _loc2_:SubMc = null;
         this.initiated = true;
         super.initiate();
         level.LEV_OBJ_FINAL_CHECK.addItem(this);
         this._boundsRect = getBounds(this);
         for each(_loc1_ in level.ALL_ANIM_TMRS_DCT)
         {
            ACTIVE_ANIM_TMRS_DCT.addItem(_loc1_);
         }
         if(level.levNum == STAT_MNGR.DUNGEON_LEVEL_NUM)
         {
            this._sndWinMusic = SoundNames.MFX_MARIO_WIN_CASTLE;
         }
         lastOnGround = true;
         onGround = false;
         if(Cheats.invincible)
         {
            this.forceTakeNoDamage();
         }
         if(this.subMcDct)
         {
            for each(_loc2_ in this.subMcDct)
            {
               _loc2_.initiate();
            }
         }
         if(level is FakeLevel)
         {
            this.saveSkinPreviews();
         }
      }
      
      override protected function prepareSkins() : void
      {
         super.prepareSkins();
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         if(param1)
         {
            redraw(currentFrame,getCleanMasterBmdSkinForReading().bmd);
         }
         else
         {
            redraw(currentFrame);
         }
      }
      
      override public function setStats() : void
      {
         onScreen = true;
         onGround = true;
         if(this.pState < PS_NORMAL)
         {
            this.pState = PS_NORMAL;
         }
         --this.pState;
         this.manualChangePwrState();
         this.setStopFrame("stand");
         cState = "stand";
         super.setStats();
         this.freezeGameTmr = new CustomTimer(FREEZE_GAME_TMR_DEL,1);
         this.freezeGameTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.freezeGameTmrHandler);
         this.noDamageTmr = new CustomTimer(this.noDamageTmrDur,1);
         this.noDamageTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.noDamageTmrLsr);
         addTmr(this.noDamageTmr);
         this.FALL_BTWN_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fallBtwnTmrHandler,false,0,true);
         addTmr(this.FALL_BTWN_TMR);
         this.startAndDamageFcts(true);
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = false;
         if(!stopAnim)
         {
            if(mainAnimTmr == param1)
            {
               if(!noAnimThisCycle && !this.lockFrame)
               {
                  ANIMATOR.animate(this);
                  _loc2_ = true;
               }
               else
               {
                  noAnimThisCycle = false;
               }
            }
         }
         if(param1 == this.swapAnimTmr && this.SWAP_PS_VEC.length)
         {
            this.swapPs();
         }
         if(param1 == this.flashAnimTmr && this._replaceColor)
         {
            this.flash();
         }
         return _loc2_;
      }
      
      public function landAttack(param1:IAttackable) : void
      {
         if(!this.hitIsAllowed(param1))
         {
            return;
         }
         if(!param1.isSusceptibleToProperty(getProperty(PR_PIERCE_AGG)) && !Cheats.allWeaponsPierce)
         {
            attackObjNonPiercing(param1);
         }
         else
         {
            this.attackObjPiercing(param1);
         }
      }
      
      override protected function hitIsAllowed(param1:IAttackable) : Boolean
      {
         if(this.L_HIT_DCT[param1])
         {
            this.C_HIT_DCT.addItem(param1);
            return false;
         }
         this.C_HIT_DCT.addItem(param1);
         return true;
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         param1.hitByAttack(this,this.damageAmt);
      }
      
      public function firstCollisionCheck() : void
      {
      }
      
      public function setLastHitPointsToCurrent() : void
      {
         lhTop = hTop;
         lhBot = hBot;
         lhLft = hLft;
         lhRht = hRht;
         lhMidX = hMidX;
         lhMidY = hMidY;
         lhWidth = hWidth;
         lhHeight = hHeight;
      }
      
      protected function swapPsStart(param1:int, param2:int) : void
      {
         if(this.SWAP_PS_VEC.length)
         {
            this.SWAP_PS_VEC.length = 0;
         }
         this.SWAP_PS_VEC.push(param1);
         this.SWAP_PS_VEC.push(param2);
         this.storedPState = this.pState;
      }
      
      protected function swapPsEnd() : void
      {
         this.SWAP_PS_VEC.length = 0;
         if(this.storedPState)
         {
            this.pState = this.storedPState;
            this.storedPState = 0;
         }
      }
      
      protected function swapPs() : void
      {
         if(!this.SWAP_PS_VEC.length)
         {
            return;
         }
         var _loc1_:int = this.SWAP_PS_VEC[0];
         var _loc2_:int = this.SWAP_PS_VEC[1];
         if(this.pState == _loc1_)
         {
            this.pState = _loc2_;
         }
         else if(this.pState == _loc2_)
         {
            this.pState = _loc1_;
         }
         var _loc3_:String = currentLabel;
         var _loc4_:String = _loc3_.substr(0,_loc3_.length - 2);
         this.setStopFrame(_loc4_);
      }
      
      public function flashPaletteSwap() : void
      {
         if(!this.replaceColor)
         {
            this.startReplaceColor();
            this.poweringUp = true;
         }
         else if(!this.starPwr)
         {
            this.flashAnimTmr = this.STAR_PWR_FLASH_ANIM_TMR;
            this.poweringUp = false;
            this.starPwr = true;
         }
         else
         {
            this.starPwr = false;
            this.poweringUp = false;
            this.endReplaceColor();
         }
      }
      
      protected function setPStateColors() : void
      {
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:* = null;
         super.updateStats();
         if(this.STORED_BUTTONS_VEC.length)
         {
            this.activateStoredButtons();
         }
         if(cState == ST_PIPE)
         {
            if(this.pType == "enterVert")
            {
               ny += this.vertPipeSpeed * dt;
               if(hTop - HRECT_PADDING_Y > this.startPipeLoc)
               {
                  EVENT_MNGR.levelTransfer(this.pipe.globDest,this.pipe.globPipeExInt,this.PIPE_LEV_TRANS_DELAY);
                  stopUpdate = true;
                  visible = false;
               }
               vx = 0;
               vy = 0;
               return;
            }
            if(this.pType == "enterHorz")
            {
               nx += this.horzPipeSpeed * dt;
               if(hLft - HRECT_PADDING_X > this.startPipeLoc)
               {
                  EVENT_MNGR.levelTransfer(this.pipe.globDest,this.pipe.globPipeExInt,this.PIPE_LEV_TRANS_DELAY);
                  stopUpdate = true;
                  visible = false;
               }
               vx = 0;
               vy = 0;
               return;
            }
            if(this.pType == "exitVert")
            {
               ny -= this.vertPipeSpeed * dt;
               vx = 0;
               vy = 0;
               if(hBot <= this.startPipeLoc)
               {
                  this.completePipeExit();
               }
               return;
            }
         }
         else if(cState == ST_FLAG_SLIDE)
         {
            if(onGround && !(this is Link) && !(this is MegaMan))
            {
               stopAnim = true;
            }
            return;
         }
         this.checkPlatform();
         if(this.C_HIT_DCT.length || this.L_HIT_DCT.length)
         {
            this.L_HIT_DCT.clear();
            for(_loc1_ in this.C_HIT_DCT)
            {
               this.L_HIT_DCT.addItem(_loc1_,this.C_HIT_DCT[_loc1_]);
            }
            this.C_HIT_DCT.clear();
         }
         if(!this.cancelCheckState)
         {
            this.checkState();
         }
         this.checkBtns();
         if(!stuckInWall || this.disableStuckInWallShift)
         {
            this.movePlayer();
         }
         else if(!(this is Ryu) || this is Ryu && cState != Ryu.ST_CLIMB && !(this as Ryu).CANCEL_GRAPPLE_TMR.running)
         {
            vx = 0;
            vy = 0;
            if(scaleX >= 0)
            {
               nx -= this.STUCK_IN_WALL_SHIFT;
            }
            else
            {
               nx += this.STUCK_IN_WALL_SHIFT;
            }
         }
         if(!onSpring)
         {
            this.springBoost = false;
         }
         if(level.waterLevel && cState != this.ST_DIE)
         {
            if(!this.bubbleTmr)
            {
               this.bubbleTmr = new CustomTimer(this.bubbleTmrDurMin,1);
               this.bubbleTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.bubbleTmrLsr);
               addTmr(this.bubbleTmr);
               this.bubbleTmr.start();
            }
            if(hTop <= GLOB_STG_TOP + TILE_SIZE * 2)
            {
               if(this.underWater)
               {
                  this.exitWater();
               }
            }
            else if(!this.underWater)
            {
               this.enterWater();
            }
            if(!this.underWater)
            {
               gravity = this.defGravity;
            }
            else
            {
               gravity = this.defGravityWater;
               if(!this.pulledDown && vy > this.vyMaxPsvWater)
               {
                  vy = this.vyMaxPsvWater;
               }
               if(onGround && this.walksSlowUnderWater)
               {
                  if(vx > this.vxMaxGroundWater)
                  {
                     vx = this.vxMaxGroundWater;
                  }
                  else if(vx < -this.vxMaxGroundWater)
                  {
                     vx = -this.vxMaxGroundWater;
                  }
               }
            }
            if(this.underWater)
            {
               this._canStomp = false;
            }
            this.pulledDown = false;
            this.pulledLeft = false;
            this.pulledRight = false;
         }
         this.onPipeVert = false;
         this.onPipeHorz = false;
         this.cloudPlatform = false;
         this._stompedEnemyThisCycle = false;
         if(this.pipe && cState != "pipe")
         {
            this.pipe = null;
         }
         this.lastCharacterCheck();
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         if(this.hidesBmps)
         {
            this.applyBmpVisibility(true,true);
         }
         if(this._replaceColor)
         {
            this.resetColor();
            super.gotoAndStop(param1,param2);
            if(flashArr)
            {
               recolorBmps(flashArr[IND_FLASH_ARR_PAL_IN],flashArr[IND_FLASH_ARR_PAL_OUT],flashArr[IND_FLASH_ARR_IN_COLOR],flashArr[IND_FLASH_ARR_OUT_COLOR]);
            }
         }
         else
         {
            super.gotoAndStop(param1,param2);
         }
         if(this.hidesBmps)
         {
            this.applyBmpVisibility();
         }
      }
      
      protected function applyBmpVisibility(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:Bitmap = null;
         if(!param2)
         {
            param1 = this.showBmps;
         }
         for each(_loc3_ in currentBmpDct)
         {
            _loc3_.visible = param1;
         }
      }
      
      private function bubbleTmrLsr(param1:TimerEvent) : void
      {
         if(!level.waterLevel)
         {
            this.bubbleTmr.reset();
            this.bubbleTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.bubbleTmrLsr);
            removeTmr(this.bubbleTmr);
            this.bubbleTmr = null;
            return;
         }
         if(this.wingTimer != null)
         {
            return;
         }
         var _loc2_:Bubble = new Bubble();
         level.addToLevel(_loc2_);
         this.bubbleTmr.reset();
         this.bubbleTmr.delay = Math.random() * (this.bubbleTmrDurMax - this.bubbleTmrDurMin) + this.bubbleTmrDurMin;
         this.bubbleTmr.start();
      }
      
      override public function setHitPoints() : void
      {
         super.setHitPoints();
      }
      
      protected function checkPlatform() : void
      {
         if(onPlatform)
         {
            if(!isNaN(nyPlatform))
            {
               ny = nyPlatform;
               nyPlatform = NaN;
            }
            else if(!isNaN(dxPlatform) && !this.cloudPlatform)
            {
               nx += dxPlatform;
               dxPlatform = NaN;
            }
         }
      }
      
      public function activateWatchModeEnterPipe() : void
      {
         this.BTN_MNGR.relPlyrBtns();
         this.pressRhtBtn();
         vxMax = this.ENTER_PIPE_VX_MAX;
      }
      
      protected function lastCharacterCheck() : void
      {
      }
      
      protected function movePlayer() : void
      {
         if(this.rhtBtn && !this.lftBtn && !wallOnRight)
         {
            if(cState == "vine")
            {
               if(!this.exitVine)
               {
                  return;
               }
               this.getOffVine();
            }
            vx += ax * dt;
            this.scaleX = 1;
         }
         if(this.lftBtn && !this.rhtBtn && !wallOnLeft)
         {
            if(cState == "vine")
            {
               if(!this.exitVine)
               {
                  return;
               }
               this.getOffVine();
            }
            vx -= ax * dt;
            this.scaleX = -1;
         }
         if(this.lftBtn && this.rhtBtn)
         {
            vx *= Math.pow(fx,dt);
         }
         if(!this.lftBtn && !this.rhtBtn && onGround)
         {
            vx *= Math.pow(fx,dt);
         }
      }
      
      override protected function checkState() : void
      {
         if(onGround && vx == 0)
         {
            setState("stand");
            if(lState != "stand")
            {
               this.setStopFrame("stand");
            }
         }
         else if(onGround && vx != 0)
         {
            setState("walk");
            if(lState != "walk")
            {
               this.setPlayFrame("walkStart");
            }
         }
      }
      
      protected function jump() : void
      {
         onGround = false;
         vy = -jumpPwr;
         setState("jump");
         this.setStopFrame("jump");
      }
      
      protected function enterPipeVert() : void
      {
         setState("pipe");
         this.pType = "enterVert";
         lockState = true;
         stopHit = true;
         defyGrav = true;
         behindGround = true;
         this.setStopFrame("stand");
         vx = 0;
         vy = 0;
         this.startPipeLoc = ny;
         ny += this.vertPipeSpeed * dt;
         GS_MNGR.gameState = "watch";
         SND_MNGR.playSound(this.SFX_GAME_PIPE);
         if(this._replaceColor)
         {
            this.endReplaceColor();
         }
         this.BTN_MNGR.relPlyrBtns();
         STAT_MNGR.stopTimeLeft();
      }
      
      public function exitPipeVert(param1:PipeTransporter) : void
      {
         this.pipe = param1;
         onScreen = true;
         setState(ST_PIPE);
         lockState = true;
         this.pType = "exitVert";
         stopHit = true;
         defyGrav = true;
         behindGround = true;
         onGround = false;
         this.setStopFrame("stand");
         vx = 0;
         vy = 0;
         this.startPipeLoc = param1.y - param1.height;
         x = param1.x;
         y = this.startPipeLoc + height;
         nx = x;
         ny = y;
         this.setHitPoints();
         GS_MNGR.lockGameState = false;
         GS_MNGR.gameState = GS_WATCH;
         GS_MNGR.lockGameState = true;
         SND_MNGR.playSound(this.SFX_GAME_PIPE);
         STAT_MNGR.stopTimeLeft();
      }
      
      protected function enterPipeHorz() : void
      {
         if(cState != this.ST_WALK)
         {
            this.setPlayFrame(this.walkStartLab);
         }
         setState("pipe");
         this.pType = "enterHorz";
         lockState = true;
         stopHit = true;
         defyGrav = true;
         behindGround = true;
         vx = 0;
         vy = 0;
         this.startPipeLoc = hRht;
         nx += this.horzPipeSpeed * dt;
         GS_MNGR.gameState = "watch";
         SND_MNGR.playSound(this.SFX_GAME_PIPE);
         if(this._replaceColor)
         {
            this.endReplaceColor();
         }
         this.BTN_MNGR.relPlyrBtns();
         STAT_MNGR.stopTimeLeft();
      }
      
      protected function completePipeExit() : void
      {
         lockState = false;
         setState("stand");
         this.pType = null;
         this.onPipeVert = false;
         this.pipe = null;
         stopHit = false;
         defyGrav = false;
         behindGround = false;
         ny = this.startPipeLoc;
         onGround = true;
         GS_MNGR.lockGameState = false;
         GS_MNGR.gameState = GS_PLAY;
         this.BTN_MNGR.relPlyrBtns();
         this.BTN_MNGR.sendPlayerBtns();
         STAT_MNGR.startTimeLeft();
      }
      
      override public function drawObj() : void
      {
         super.drawObj();
         if(!onScreen)
         {
            onScreen = true;
         }
      }
      
      public function pressAtkBtn() : void
      {
         this.atkBtn = true;
      }
      
      public function pressJmpBtn() : void
      {
         if(onSpring)
         {
            this.springBoost = true;
         }
         this.jmpBtn = true;
      }
      
      public function pressSpcBtn() : void
      {
         this.spcBtn = true;
      }
      
      public function pressSelBtn() : void
      {
         this.selBtn = true;
      }
      
      public function pressUpBtn() : void
      {
         this.upBtn = true;
      }
      
      public function pressDwnBtn() : void
      {
         this.dwnBtn = true;
         if(onGround && this.onPipeVert)
         {
            this.enterPipeVert();
         }
      }
      
      public function pressLftBtn() : void
      {
         this.lftBtn = true;
      }
      
      public function pressRhtBtn() : void
      {
         this.rhtBtn = true;
      }
      
      public function pressPseBtn() : void
      {
      }
      
      protected function activateStoredButtons() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Function = null;
         var _loc1_:int = this.STORED_BUTTONS_VEC.length;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = this.STORED_BUTTONS_VEC[0][0];
            if(this.recordSeq)
            {
               this.recordSeq.addEvent(this.STORED_BUTTONS_VEC[0][1]);
            }
            _loc3_();
            this.STORED_BUTTONS_VEC.shift();
            _loc2_++;
         }
      }
      
      public function storeButton(param1:Function, param2:String) : void
      {
         this.STORED_BUTTONS_VEC.push([param1,param2]);
      }
      
      protected function checkBtns() : void
      {
         if(this.onPipeVert && this.dwnBtn && (onGround || this.canEnterPipesUngrounded))
         {
            this.enterPipeVert();
         }
         else if(this.onPipeHorz && this.rhtBtn && (onGround || this.canEnterPipesUngrounded))
         {
            this.enterPipeHorz();
         }
      }
      
      public function relUpBtn() : void
      {
         this.upBtn = false;
      }
      
      public function relDwnBtn() : void
      {
         this.dwnBtn = false;
      }
      
      public function relLftBtn() : void
      {
         this.lftBtn = false;
         if(cState == this.ST_VINE)
         {
            this.exitVine = true;
         }
      }
      
      public function relRhtBtn() : void
      {
         this.rhtBtn = false;
         if(cState == this.ST_VINE)
         {
            this.exitVine = true;
         }
      }
      
      public function relJmpBtn() : void
      {
         this.jmpBtn = false;
      }
      
      public function relAtkBtn() : void
      {
         this.atkBtn = false;
      }
      
      public function relSpcBtn() : void
      {
         this.spcBtn = false;
      }
      
      public function relSelBtn() : void
      {
         this.selBtn = false;
      }
      
      public function relPseBtn() : void
      {
      }
      
      override public function checkFrame() : void
      {
      }
      
      public function forceWaterStats() : void
      {
         this.enterWater();
      }
      
      public function forceNonwaterStats() : void
      {
         this.exitWater();
      }
      
      public function convLab(param1:String) : String
      {
         var _loc2_:int = this.pState - 1;
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         return param1 + this.suffixVec[_loc2_];
      }
      
      protected function setStopFrame(param1:String) : void
      {
         if(!this.lockFrame && currentFrameLabel != this.convLab(param1))
         {
            this.gotoAndStop(this.convLab(param1));
         }
         stopAnim = true;
      }
      
      protected function setPlayFrame(param1:String) : void
      {
         if(!this.lockFrame && currentFrameLabel != this.convLab(param1))
         {
            this.gotoAndStop(this.convLab(param1));
         }
         stopAnim = false;
      }
      
      protected function getParFrame(param1:String) : String
      {
         var _loc2_:String = currentLabel;
         var _loc3_:uint = uint(_loc2_.charAt(_loc2_.indexOf("-") + 1));
         if(_loc3_ > this.numParFrames)
         {
            _loc3_ -= this.numParFrames;
         }
         return param1 + ("-" + _loc3_.toString());
      }
      
      override public function getLabNum(param1:String) : uint
      {
         return super.getLabNum(this.convLab(param1));
      }
      
      protected function landOnGround() : void
      {
         this.bounced = false;
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         this._fallBtwn = false;
         if(!lastOnGround && !onGround && !(param1 is SpringObj) && cState != ST_FLAG_SLIDE && cState != this.ST_VINE)
         {
            this.landOnGround();
         }
         super.groundBelow(param1);
         if(!(param1 is SpringObj))
         {
            this._numContStomps = 0;
         }
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         if(stuckInWall || lastStuckInWall || !param1.visible && this.brickState == BRICK_NONE)
         {
            return;
         }
         this._fallBtwn = false;
         hitCeiling = true;
         SND_MNGR.playSound(this.SND_GAME_HIT_CEILING);
         ny = param1.hBot + hHeight;
         if(this.jumped)
         {
            vy = this.CIELING_DISPLACE;
         }
         super.groundAbove(param1);
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         if(stuckInWall || lastStuckInWall)
         {
            return;
         }
         this._fallBtwn = false;
         if(param2 == "left")
         {
            if(vx < 0)
            {
               if(!onGround)
               {
                  this.lastVX = vx;
               }
               vx = 0;
            }
            if(param1)
            {
               nx = param1.hRht + hWidth / 2;
            }
            wallOnLeft = true;
         }
         else if(param2 == "right")
         {
            if(vx > 0)
            {
               if(!onGround)
               {
                  this.lastVX = vx;
               }
               vx = 0;
            }
            wallOnRight = true;
            if(param1)
            {
               nx = param1.hLft - hWidth / 2;
            }
         }
         super.groundOnSide(param1,param2);
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(GS_MNGR.gameState != GS_PLAY || param1.cState == this.ST_DIE)
         {
            return;
         }
         if(!(this.starPwr || param1 is KoopaGreen && (KoopaGreen(param1).cState == "shell" || KoopaGreen(param1).NO_HIT_SHELL_TMR.running)))
         {
            if(param2 == "bottom" && param1.stompable && this.canStomp && !this.nonInteractive)
            {
               this.bounce(param1);
            }
            else if(!this.takeNoDamage)
            {
               this.takeDamage(param1);
            }
         }
      }
      
      public function stompEnemy() : void
      {
         ++this._numContStomps;
         this._stompedEnemyThisCycle = true;
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:TutorialManager = null;
         var _loc4_:PipeTransporter = null;
         if(this.dead)
         {
            return;
         }
         if(!(level is CharacterSelect))
         {
            TutorialManager.TUT_MNGR.checkTutorial(param1.type,true);
         }
         if(this.poweringUp)
         {
            this.getMushroomEnd();
         }
         param1.touchPlayer(this);
         if(PickupInfo.AMMO_DCT[param1.type])
         {
            ++STAT_MNGR.numAmmoPickupsCollected;
         }
         if(param1.mainType == PickupInfo.MAIN_TYPE_UPGRADE)
         {
            if(this.canGetMushroom && !STAT_MNGR.getObtainedUpgradesDct(this.charNum)[MUSHROOM])
            {
               param1.type = MUSHROOM;
               param1.playsRegularSound = true;
            }
            STAT_MNGR.addCharUpgrade(this.charNum,param1.type);
         }
         switch(param1.type)
         {
            case PickupInfo.MUSHROOM:
               level.scorePop(this.P_UP_SCORE_VAL,param1.nx,param1.ny - param1.height);
               if(!(this is MarioBase))
               {
                  if(param1 is Mushroom)
                  {
                     (param1 as Mushroom).transferStoredUpgrades();
                  }
                  else
                  {
                     this.fakeMushroomUpgrades();
                  }
               }
               this.getMushroom();
               if(param2)
               {
                  SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               }
               break;
            case PickupInfo.EXPLODING_RABBIT:
               level.scorePop(this.P_UP_SCORE_VAL,param1.nx,param1.ny - param1.height);
               this.fullyPowerup();
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               break;
            case PickupInfo.MARIO_FIRE_FLOWER:
               level.scorePop(this.P_UP_SCORE_VAL,param1.nx,param1.ny - param1.height);
               if(param2)
               {
                  SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               }
               if(!(this is MarioBase))
               {
                  this.getMushroom();
               }
               break;
            case PickupInfo.GREEN_MUSHROOM:
               level.scorePop(ScoreValue.EARN_NEW_LIFE_NUM_VAL,param1.nx,param1.ny - param1.height);
               break;
            case PickupInfo.POISON_MUSHOOM:
               if(!this.starPwr)
               {
                  this.takeDamage(param1);
               }
               break;
            case PickupInfo.STAR:
               level.scorePop(this.P_UP_SCORE_VAL,param1.nx,param1.ny - param1.height);
               this.activateStarPwr();
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               _loc3_ = TutorialManager.TUT_MNGR;
               _loc3_.checkTutorial(_loc3_.TYPE_STAR,true);
               break;
            case PickupInfo.COIN:
               EVENT_MNGR.getCoin();
               break;
            case PickupInfo.HUDSON_BEE:
               level.scorePop(HudsonBee.SCORE_VALUE,param1.nx,param1.ny - param1.height);
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               break;
            case PickupInfo.ATOM:
               level.scorePop(Atom.SCORE_VALUE,param1.nx,param1.ny - param1.height);
               level.killAllEnemiesOnScreen();
               if(GameSettings.mapSkin != BmdInfo.SKIN_NUM_CASTLEVANIA)
               {
                  SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               }
               else
               {
                  SND_MNGR.playSound(SoundNames.SFX_SIMON_ROSARY);
               }
               break;
            case PickupInfo.HAMMER:
               if(this.hammerWeapon)
               {
                  this.hammerWeapon.destroy();
               }
               this.hammerWeapon = new HammerWeapon(this);
               level.scorePop(HammerPickup.SCORE_VALUE,param1.nx,param1.ny - param1.height);
               level.addToLevel(this.hammerWeapon);
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               break;
            case PickupInfo.CLOCK:
               level.scorePop(Clock.SCORE_VALUE,param1.nx,param1.ny - param1.height);
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               STAT_MNGR.timeLeft += Clock.TIME_TO_ADD;
               if(STAT_MNGR.secondsLeft)
               {
                  STAT_MNGR.checkCancelSecondsLeft();
               }
               break;
            case PickupInfo.WING:
               SND_MNGR.playSound(this.SFX_GAME_POWER_UP);
               level.scorePop(Wing.SCORE_VALUE,param1.nx,param1.ny - param1.height);
               level.forceWaterLevel();
               if(this.wingTimer != null)
               {
                  this.destroyWingTimer();
               }
               this.wingTimer = new CustomTimer(WING_TIMER_DURATION,1);
               addTmr(this.wingTimer);
               this.wingTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.wingTimerHandler,false,0,true);
               this.wingTimer.start();
               break;
            case PickupInfo.VINE:
               if(cState != "vine" && ny <= (param1 as Vine).yStart)
               {
                  this.getOnVine(param1 as Vine);
               }
               break;
            case PickupInfo.LEVEL_EXIT:
               this.touchLevelExit();
               break;
            case PickupInfo.PIPE_TRANSPORTER:
               if((_loc4_ = param1 as PipeTransporter).ptType == "global")
               {
                  if(_loc4_.axis == "horizontal" && onGround)
                  {
                     this.setOnPipeHorz(_loc4_);
                  }
                  else if(_loc4_.axis == "vertical")
                  {
                     if(hMidX >= hLft && hMidX <= hRht)
                     {
                        this.setOnPipeVert(_loc4_);
                     }
                  }
               }
         }
      }
      
      private function fakeMushroomUpgrades() : void
      {
         var _loc4_:CustomDictionary = null;
         var _loc1_:int = STAT_MNGR.curCharNum;
         var _loc2_:int = STAT_MNGR.storedTierVec[_loc1_];
         STAT_MNGR.storedTierVec[_loc1_] = null;
         var _loc3_:CustomDictionary = STAT_MNGR.getStoredUpgrades();
         if(_loc3_)
         {
            _loc4_ = STAT_MNGR.storedViewedUpgradesVec[_loc1_].clone();
            STAT_MNGR.storedViewedUpgradesVec[_loc1_] = null;
            STAT_MNGR.addStoredUpgrades(_loc1_,_loc3_,_loc2_,_loc4_);
         }
      }
      
      protected function fullyPowerup() : void
      {
         this.addAllPowerups();
         this.getAllDroppedUpgrades();
         this.setAllAmmoToMax();
      }
      
      protected function addAllPowerups() : void
      {
         while(!STAT_MNGR.charIsFullyUpgraded(this.charNum))
         {
            hitRandomUpgrade(this.charNum,false);
         }
      }
      
      protected function playDefaultPickupSoundEffect() : void
      {
      }
      
      protected function wingTimerHandler(param1:TimerEvent) : void
      {
         if(!level.initialWaterLevel && !Cheats.waterMode)
         {
            level.forceNonwaterLevel();
         }
         this.destroyWingTimer();
      }
      
      private function destroyWingTimer() : void
      {
         removeTmr(this.wingTimer);
         this.wingTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.wingTimerHandler);
         this.wingTimer = null;
      }
      
      public function revivalBoost() : void
      {
      }
      
      public function touchLevelExit() : void
      {
         if(this.touchedExit || GS_MNGR.gameState == GS_PLAY)
         {
            return;
         }
         this.touchedExit = true;
         EVENT_MNGR.enterLevelExit();
         if(level.levNum != 4)
         {
            visible = false;
            stopHit = true;
            stopAnim = true;
            stopUpdate = true;
            this.BTN_MNGR.relPlyrBtns();
            vx = 0;
            vy = 0;
         }
         else
         {
            this.BTN_MNGR.relPlyrBtns();
         }
         if(this is Samus)
         {
            Samus(this).muteStepSounds = true;
         }
      }
      
      private function setOnPipeVert(param1:PipeTransporter) : void
      {
         this.pipe = param1;
         this.onPipeVert = true;
      }
      
      private function setOnPipeHorz(param1:PipeTransporter) : void
      {
         this.pipe = param1;
         this.onPipeHorz = true;
      }
      
      protected function getOffVine() : void
      {
         if(this.lftBtn)
         {
            nx = this.vine.hLft - hWidth * 0.5;
         }
         else if(this.rhtBtn)
         {
            nx = this.vine.hRht + hWidth * 0.5;
         }
         setState("neutral");
         defyGrav = false;
         this.vine = null;
         if(GS_MNGR.gameState == "watch")
         {
            nx = nx + 5;
            x = nx;
         }
      }
      
      protected function getOnVine(param1:Vine) : void
      {
         setState("vine");
         this.vine = param1;
         nx = this.vine.hMidX;
         if(hTop <= this.vine.hTop)
         {
            ny = this.vine.hTop + hHeight;
         }
         vx = 0;
         vy = 0;
         defyGrav = true;
         this.setStopFrame("climbStart");
         this.exitVine = false;
      }
      
      public function climbVineStarter(param1:Vine) : void
      {
         ny = GLOB_STG_BOT + height;
         this.BTN_MNGR.relPlyrBtns();
         this.getOnVine(param1);
         this.x = nx;
         visible = true;
         this.y = ny;
         this.setHitPoints();
         this.upBtn = true;
      }
      
      protected function checkVinePosition() : void
      {
         var _loc1_:String = null;
         if(hTop < this.VINE_WATCH_Y && GS_MNGR.gameState == GS_PLAY)
         {
            GS_MNGR.gameState = GS_WATCH;
            this.BTN_MNGR.relPlyrBtns();
            this.upBtn = true;
         }
         else if(GS_MNGR.gameState == GS_PLAY && hBot >= GLOB_STG_BOT - TILE_SIZE * 2)
         {
            ny = GLOB_STG_BOT - TILE_SIZE * 2;
            if(vy > 0)
            {
               vy = 0;
            }
         }
         else if(hBot < GLOB_STG_TOP)
         {
            _loc1_ = this.vine.vineDest;
            if(_loc1_.length)
            {
               EVENT_MNGR.levelTransfer(_loc1_,this.vine.vineExInt);
            }
         }
         else if(hTop <= this.vine.hTop)
         {
            if(hTop > GLOB_STG_TOP)
            {
               ny = this.vine.hTop + hHeight;
               if(vy < 0)
               {
                  vy = 0;
               }
            }
            if(GS_MNGR.gameState == GS_WATCH && hTop > this.VINE_WATCH_Y)
            {
               this.upBtn = false;
               this.rhtBtn = true;
               this.exitVine = true;
               this.getOffVine();
               this.upBtn = true;
               this.rhtBtn = false;
               this.BTN_MNGR.relPlyrBtns();
               GS_MNGR.gameState = GS_PLAY;
               this.BTN_MNGR.sendPlayerBtns();
               level.tsTxt.showTime();
            }
         }
      }
      
      protected function checkVineBtns() : void
      {
         if(this.upBtn)
         {
            vy = -VINE_CLIMB_SPEED;
            stopAnim = false;
         }
         else if(this.dwnBtn)
         {
            vy = VINE_CLIMB_SPEED;
            stopAnim = false;
         }
         else
         {
            vy = 0;
            stopAnim = true;
         }
      }
      
      protected function getAmmo(param1:String) : int
      {
         return STAT_MNGR.getAmmoRemaining(this.charNum,this.ammoDct[param1][IND_AMMO_ARR_IND]);
      }
      
      protected function setAmmo(param1:String, param2:int) : void
      {
         var _loc5_:int = 0;
         if(Cheats.infiniteAmmo || this.starPwr)
         {
            _loc5_ = this.getAmmo(param1);
            if(param2 < _loc5_)
            {
               param2 = _loc5_;
            }
         }
         var _loc3_:Array = this.ammoDct[param1];
         var _loc4_:int = this.getMaxAmmo(param1);
         if(param2 > _loc4_)
         {
            param2 = _loc4_;
         }
         else if(param2 < 0)
         {
            param2 = 0;
         }
         STAT_MNGR.setAmmoRemaining(this.charNum,_loc3_[IND_AMMO_ARR_IND],param2);
      }
      
      protected function getMaxAmmo(param1:String) : int
      {
         return this.ammoDct[param1][IND_AMMO_ARR_MAX];
      }
      
      protected function getDefaultAmmo(param1:String) : int
      {
         return this.ammoDct[param1][IND_AMMO_ARR_DEFAULT];
      }
      
      protected function setMaxAmmo(param1:String, param2:int) : void
      {
         this.ammoDct[param1][IND_AMMO_ARR_MAX] = param2;
      }
      
      protected function increaseAmmoByValue(param1:String, param2:int) : void
      {
         this.setAmmo(param1,this.getAmmo(param1) + param2);
      }
      
      protected function decreaseAmmoByValue(param1:String, param2:int) : void
      {
         this.setAmmo(param1,this.getAmmo(param1) - param2);
      }
      
      protected function hasEnoughAmmo(param1:String, param2:String = null, param3:int = -1) : Boolean
      {
         if(Cheats.infiniteAmmo || level is TitleLevel || this.starPwr)
         {
            return true;
         }
         if(!param2)
         {
            param2 = param1;
         }
         if(param3 == -1)
         {
            param3 = this.getAmmoCost(param2);
         }
         return this.getAmmo(param1) - param3 >= 0;
      }
      
      protected function decAmmo(param1:String, param2:String = null) : void
      {
         if(!param2)
         {
            param2 = param1;
         }
         this.decreaseAmmoByValue(param1,this.getAmmoCost(param2));
      }
      
      protected function getAmmoCost(param1:String) : int
      {
         var _loc2_:CustomDictionary = classObj[AMMO_DEPLETION_DCT_PROP_NAME];
         return _loc2_[param1][IND_AMMO_DEPL_ARR_COST];
      }
      
      protected function getAmmoTypeWithLeastAmmo() : String
      {
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         var _loc1_:int = int.MAX_VALUE;
         for(_loc3_ in this.ammoDct)
         {
            _loc7_;
            _loc4_ = this.getAmmo(_loc3_);
            if(this.upgradeIsActive(_loc3_) && _loc4_ < _loc1_)
            {
               _loc1_ = _loc4_;
               _loc2_ = _loc3_;
            }
         }
         return _loc2_;
      }
      
      public function setAllAmmoToMax() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.ammoDct)
         {
            _loc4_;
            this.setAmmo(_loc1_,this.getMaxAmmo(_loc1_));
         }
      }
      
      public function setAllAmmoToDefault() : void
      {
         var _loc1_:* = null;
         for(_loc1_ in this.ammoDct)
         {
            _loc4_;
            this.setAmmo(_loc1_,this.getDefaultAmmo(_loc1_));
         }
      }
      
      protected function getMushroom() : void
      {
         if(GS_MNGR.gameState == GameStates.CHARACTER_SELECT)
         {
            return;
         }
         var _loc1_:String = currentLabel;
         this.setDamageInfoArr();
         setState(this.ST_GET_MUSHROOM);
         this.poweringUp = true;
         lockState = true;
         this.lockFrame = true;
         this.startReplaceColor();
         stopAnim = true;
         this.freezeGame();
      }
      
      protected function getMushroomEnd() : void
      {
         this.swapPsEnd();
         if(!this.starPwr)
         {
            this.endReplaceColor();
         }
         this.poweringUp = false;
         var _loc1_:int = this.pState + 1;
         if(_loc1_ > 3)
         {
            _loc1_ = 3;
         }
         this.setPowerState(_loc1_);
         lockState = false;
         this.lockFrame = false;
         this.getDataFromDamageInfoArr();
      }
      
      protected function beforeLoseSomeUpgradesCalled() : void
      {
      }
      
      protected function takeDamage(param1:LevObj) : void
      {
         if(this.takeNoDamage || level is TitleLevel)
         {
            return;
         }
         var _loc2_:int = GameSettings.difficulty;
         if(!this.canGetMushroom || !this.upgradeIsActive(MUSHROOM) || GameSettings.damageResponse == DamageResponse.InstantDeath)
         {
            this.die(param1);
            return;
         }
         STAT_MNGR.removeCharUpgrade(this.charNum,MUSHROOM);
         if(GameSettings.damageResponse != DamageResponse.KeepUpgrades)
         {
            if(GameSettings.damageResponse == DamageResponse.LoseSomeUpgrades)
            {
               this.beforeLoseSomeUpgradesCalled();
               STAT_MNGR.removeAllUpgradesForChar(this.charNum,true);
            }
            else if(GameSettings.damageResponse == DamageResponse.LoseAllUpgrades)
            {
               STAT_MNGR.removeAllUpgradesForChar(this.charNum,false,true);
               this.addStartWithUpgrades(classObj[START_WITH_UPGRADES_PROP_NAME]);
            }
         }
         else if(this is MarioBase)
         {
            STAT_MNGR.removeCharUpgrade(this.charNum,PickupInfo.FIRE_FLOWER);
         }
         TopScreenText.instance.updateUpgIcons();
         this.takeDamageStart(param1);
      }
      
      protected function takeDamageStart(param1:LevObj) : void
      {
         this.startAndDamageFcts();
      }
      
      protected function takeDamageEnd() : void
      {
         dispatchEvent(new Event(CustomEvents.CHARACTER_TAKE_DAMAGE_END));
         this.takeNoDamage = true;
         if(this.SWAP_PS_VEC.length)
         {
            this.swapPsEnd();
         }
         this.setPowerState(this.nPState);
         lockState = false;
         this.lockFrame = false;
         if(!this.starPwr)
         {
            this.endReplaceColor();
         }
         this.getDataFromDamageInfoArr();
         alpha = this.TD_ALPHA;
         this.noDamageTmr.start();
      }
      
      protected function flickerTmrHandler(param1:Event) : void
      {
         visible = !visible;
      }
      
      protected function flickerStart() : void
      {
         if(!this.flickerTmr)
         {
            this.flickerTmr = new GameLoopTimer(this.flickerTmrDel);
            this.flickerTmr.addEventListener(TimerEvent.TIMER,this.flickerTmrHandler,false,0,true);
         }
         this.flickerTmr.start();
         visible = true;
      }
      
      protected function flickerStop() : void
      {
         if(this.flickerTmr)
         {
            this.flickerTmr.stop();
         }
         visible = true;
      }
      
      protected function setDamageInfoArr(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(param1)
         {
            this.damageInfoArr[IND_DAMAGE_INFO_ARR_LABEL] = this.removeSuffix(currentLabel);
         }
         if(param2)
         {
            this.damageInfoArr[IND_DAMAGE_INFO_ARR_STOP_ANIM] = stopAnim;
         }
         if(param3)
         {
            this.damageInfoArr[IND_DAMAGE_INFO_ARR_STATE] = cState;
         }
      }
      
      protected function getDataFromDamageInfoArr(param1:Boolean = true, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(param1)
         {
            this.setStopFrame(this.damageInfoArr[IND_DAMAGE_INFO_ARR_LABEL]);
         }
         if(param2)
         {
            stopAnim = this.damageInfoArr[IND_DAMAGE_INFO_ARR_STOP_ANIM];
         }
         if(param3)
         {
            setState(this.damageInfoArr[IND_DAMAGE_INFO_ARR_STATE]);
         }
      }
      
      protected function freezeGame() : void
      {
         this.freezeGameTmr.start();
         level.freezeGame();
      }
      
      private function removeSuffix(param1:String) : String
      {
         var _loc2_:int = param1.indexOf("_");
         if(_loc2_ != -1)
         {
            param1 = param1.substr(0,_loc2_);
         }
         return param1;
      }
      
      protected function freezeGameTmrHandler(param1:TimerEvent) : void
      {
         this.freezeGameTmr.reset();
         if(!MessageBox.activeInstance || level is TitleLevel)
         {
            level.unfreezeGame();
         }
         if(cState == this.ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         else if(cState == this.ST_GET_MUSHROOM)
         {
            this.getMushroomEnd();
         }
         else if(cState == ST_GET_UPGRADE)
         {
            this.getUpgradeEnd();
         }
      }
      
      protected function getUpgradeStart(param1:Pickup) : void
      {
      }
      
      protected function getUpgradeEnd() : void
      {
      }
      
      protected function hitAnimation() : void
      {
         var _loc1_:String = currentLabel;
         if(this is MegaMan || this is Simon)
         {
            this.setStopFrame("takeDamage");
         }
         else
         {
            stopAnim = true;
         }
         this.lockFrame = true;
      }
      
      public function initiateDeath(param1:LevObj = null) : void
      {
         this.dead = true;
         setState("die");
         lockState = true;
         vx = 0;
         vy = 0;
         if(this._fellInPit)
         {
            this.initiatePitDeath();
         }
         else
         {
            this.initiateNormalDeath(param1);
         }
      }
      
      protected function initiatePitDeath() : void
      {
         EVENT_MNGR.startDieTmr(this._dieTmrDel);
         this._fellInPit = true;
      }
      
      protected function initiateNormalDeath(param1:LevObj = null) : void
      {
      }
      
      protected function startReplaceColor() : void
      {
         this._replaceColor = true;
      }
      
      protected function endReplaceColor() : void
      {
         visible = true;
         this._replaceColor = false;
         flashArr = null;
         this.resetColor();
      }
      
      protected function noDamageTmrLsr(param1:TimerEvent) : void
      {
         this.noDamageTmr.reset();
         if(!this.neverTakeDamage)
         {
            this.takeNoDamage = false;
            alpha = 1;
         }
         if(this.flickerTmr && this.flickerTmr.running)
         {
            this.flickerStop();
         }
      }
      
      public function die(param1:LevObj = null) : void
      {
         if(GS_MNGR.gameState != GS_PLAY || level is TitleLevel)
         {
            return;
         }
         if(!this.dead)
         {
            if(this.hammerWeapon != null)
            {
               this.hammerWeapon.destroy();
            }
            if(this._fellInPit)
            {
               if(Cheats.bouncyPits)
               {
                  ny = GLOB_STG_BOT + hHeight;
                  vy = -1000;
                  y = ny;
                  this.setHitPoints();
                  this._fellInPit = false;
                  return;
               }
               stopAnim = true;
               stopUpdate = true;
               stopHit = true;
               visible = false;
            }
            this.pState = PS_NORMAL;
            EVENT_MNGR.playerDie();
            if(!this.fellInPit)
            {
               level.freezeGameDeath(param1);
            }
            else
            {
               this.initiateDeath();
            }
         }
         removeAllHitTestableItems();
         addHitTestableItem(HT_BRICK);
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_PLATFORM);
      }
      
      public function teleport(param1:Number) : void
      {
         var _loc2_:Number = nx;
         nx = nx + param1;
         this.setHitPoints();
         level.checkAllObjectsOnScreen = true;
         level.forceShiftScreenToFollowPlayer = true;
         level.background.setOffset();
         level.foreground.setOffset();
      }
      
      protected function activateStarPwr() : void
      {
         if(this.starPwr)
         {
            this.starPwrTmr1.reset();
            this.starPwrTmr1.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr1Handler);
            this.starPwrTmr1 = null;
         }
         this.starPwrTmr1 = new CustomTimer(this.STAR_PWR_TMR_1_DUR,1);
         addTmr(this.starPwrTmr1);
         this.starPwrTmr1.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr1Handler,false,0,true);
         this.starPwrTmr1.start();
         this.starPwr = true;
         TopScreenText.instance.updateUpgIcons();
         this.flashAnimTmr = this.STAR_PWR_FLASH_ANIM_TMR;
         this.startReplaceColor();
         this._starPwrBgmShouldBePlaying = true;
         SND_MNGR.starPwrStart();
      }
      
      protected function starPwrTmr1Handler(param1:TimerEvent) : void
      {
         if(this.starPwrTmr1)
         {
            this.starPwrTmr1.stop();
            this.starPwrTmr1.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr1Handler);
            this.starPwrTmr1 = null;
         }
         this.starPwrTmr2 = new CustomTimer(this.STAR_PWR_TMR_2_DUR,1);
         addTmr(this.starPwrTmr2);
         this.starPwrTmr2.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr2Handler,false,0,true);
         this.starPwrTmr2.start();
         this.flashAnimTmr = this.STAR_PWR_SLOW_FLASH_ANIM_TMR;
      }
      
      protected function starPwrTmr2Handler(param1:TimerEvent) : void
      {
         if(this.starPwrTmr2)
         {
            this.starPwrTmr2.stop();
            this.starPwrTmr2.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr2Handler);
            this.starPwrTmr2 = null;
         }
         this.starPwrTmr3 = new CustomTimer(this.STAR_PWR_TMR_3_DUR,1);
         addTmr(this.starPwrTmr3);
         this.starPwrTmr3.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr3Handler,false,0,true);
         this.starPwrTmr3.start();
         this._starPwrBgmShouldBePlaying = false;
         SND_MNGR.starPwrEnd();
      }
      
      protected function starPwrTmr3Handler(param1:TimerEvent) : void
      {
         if(this.starPwrTmr3)
         {
            this.starPwrTmr3.stop();
            this.starPwrTmr3.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr3Handler);
            this.starPwrTmr3 = null;
         }
         this.starPwr = false;
         this.endReplaceColor();
         this.flashAnimTmr = this.STAR_PWR_FLASH_ANIM_TMR;
         visible = true;
         this.resetColor();
         TopScreenText.instance.updateUpgIcons();
      }
      
      override public function flash(param1:Boolean = true) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         flashCtr++;
         var _loc4_:String = PaletteTypes.FLASH_STAR;
         var _loc5_:String = PaletteTypes.FLASH_POWERING_UP;
         var _loc6_:Palette = this.palettePowerUp;
         if(this.starPwr)
         {
            _loc6_ = this.paletteStar;
         }
         _loc2_ = _loc6_.numRows - 1;
         _loc3_ = 1;
         if(flashCtr > _loc2_ - 1)
         {
            flashCtr = 0;
         }
         setFlashArr(defColors,_loc6_,IND_DEF_COLORS_OUT,_loc3_ + flashCtr);
         recolorBmps(flashArr[CustomMovieClip.IND_FLASH_ARR_PAL_IN],flashArr[CustomMovieClip.IND_FLASH_ARR_PAL_OUT],flashArr[CustomMovieClip.IND_FLASH_ARR_IN_COLOR],flashArr[CustomMovieClip.IND_FLASH_ARR_OUT_COLOR]);
      }
      
      public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         var _loc3_:SubMc = null;
         this.currentBmdSkin = param1;
         this.skinNum = STAT_MNGR.getCharSkinNum(this.charNum);
         this.palettePowerUp = this.paletteSheet.getPaletteFromRow(IND_PALETTE_POWER_UP,this.skinNum);
         this.paletteStar = this.paletteSheet.getPaletteFromRow(IND_PALETTE_STAR,this.skinNum);
         this.paletteMain = this.paletteSheet.getPaletteFromRow(IND_PALETTE_MAIN,this.skinNum);
         defColors = this.paletteMain.extractRowsAsPalette(0,1);
         this.gotoAndStop(currentFrame);
         for each(var _loc6_ in this.subMcDct)
         {
            _loc3_ = _loc6_;
            _loc6_;
            _loc3_.gotoAndStop(_loc3_.currentFrame);
            _loc3_.setUpCommonPalettes();
         }
         if(this.initiated)
         {
            this.setPowerState(this.pState);
         }
         TopScreenText.instance.refreshAmmoIcon();
      }
      
      protected function changeColor() : void
      {
         var _loc1_:int = 6;
         var _loc2_:Array = new Array();
         if(this.colorNum > _loc1_)
         {
            this.colorNum = 1;
         }
         switch(this.colorNum)
         {
            case 1:
               _loc2_ = _loc2_.concat([0,1,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,1,0,0]);
               _loc2_ = _loc2_.concat([1,0,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
               break;
            case 2:
               _loc2_ = _loc2_.concat([0,0,1,0,0]);
               _loc2_ = _loc2_.concat([1,0,0,0,0]);
               _loc2_ = _loc2_.concat([0,1,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
               break;
            case 3:
               _loc2_ = _loc2_.concat([0,1,3,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,1,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
               break;
            case 4:
               _loc2_ = _loc2_.concat([0,0,1,0,0]);
               _loc2_ = _loc2_.concat([0,2,1,0,0]);
               _loc2_ = _loc2_.concat([1,0,1,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
               break;
            case 5:
               _loc2_ = _loc2_.concat([0,0.5,1,0,0]);
               _loc2_ = _loc2_.concat([0,0,1,0,-100]);
               _loc2_ = _loc2_.concat([1,0.5,0.5,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
               break;
            case 6:
               _loc2_ = _loc2_.concat([5,0,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,1,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,0,0]);
               _loc2_ = _loc2_.concat([0,0,0,1,0]);
         }
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         this.filters = [_loc3_];
         this.colorNum++;
      }
      
      override public function finalCheck() : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:BillTorso = null;
         var _loc5_:BillLegs = null;
         var _loc6_:MegaManHead = null;
         var _loc1_:int = numChildren;
         while(_loc2_ < _loc1_)
         {
            _loc3_ = getChildAt(_loc2_);
            if(_loc3_ is Shape)
            {
               _loc3_.visible = false;
            }
            _loc2_++;
         }
         if(this is Bill)
         {
            _loc1_ = (_loc4_ = Bill(this).torso).numChildren;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _loc4_.getChildAt(_loc2_);
               if(_loc3_ is Shape)
               {
                  _loc3_.visible = false;
               }
               _loc2_++;
            }
            _loc1_ = (_loc5_ = Bill(this).legs).numChildren;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _loc5_.getChildAt(_loc2_);
               if(_loc3_ is Shape)
               {
                  _loc3_.visible = false;
               }
               _loc2_++;
            }
         }
         if(this is MegaMan)
         {
            _loc1_ = (_loc6_ = MegaMan(this).head).numChildren;
            _loc2_ = 0;
            while(_loc2_ < _loc1_)
            {
               _loc3_ = _loc6_.getChildAt(_loc2_);
               if(_loc3_ is Shape)
               {
                  _loc3_.visible = false;
               }
               _loc2_++;
            }
         }
         if(this.hammerWeapon != null)
         {
            this.hammerWeapon.update();
         }
      }
      
      override public function hitProj(param1:Projectile) : void
      {
         if(param1.sourceType == Projectile.SOURCE_TYPE_ENEMY)
         {
            if(!this.starPwr && !this.takeNoDamage)
            {
               this.takeDamage(param1);
            }
         }
      }
      
      override public function hit(param1:LevObj, param2:String) : void
      {
         super.hit(param1,param2);
         this.curHitDct.addItem(param1);
      }
      
      protected function bounce(param1:Enemy) : void
      {
         vy = -this.bouncePwr;
         if(param1 && ny > param1.hTop)
         {
            ny = param1.hTop;
         }
         this.setHitPoints();
         this.jumped = true;
         this.bounced = true;
      }
      
      public function setPowerState(param1:int) : void
      {
         var _loc2_:TopScreenText = TopScreenText.instance;
         if(_loc2_)
         {
            _loc2_.updateUpgIcons();
         }
         this.changeBrickState();
         this.pState = 1;
         this.firstPStateCall = false;
      }
      
      public function manualChangePwrState() : void
      {
         this.setDamageInfoArr();
         var _loc1_:int = this.pState + 1;
         if(_loc1_ > 3)
         {
            _loc1_ = 1;
         }
         this.setPowerState(_loc1_);
         this.getDataFromDamageInfoArr();
      }
      
      private function desaturate() : void
      {
         var _loc1_:Array = new Array();
         _loc1_ = _loc1_.concat([0.75,0.25,0.25,0,-10]);
         _loc1_ = _loc1_.concat([0.25,0.75,0.25,0,-10]);
         _loc1_ = _loc1_.concat([0.25,0.25,0.75,0,-10]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         var _loc2_:ColorMatrixFilter = new ColorMatrixFilter(_loc1_);
         this.filters = [_loc2_];
      }
      
      public function setPauseBtns() : void
      {
         this.pUpBtn = false;
         this.pDwnBtn = false;
         this.pLftBtn = false;
         this.pRhtBtn = false;
         this.pAtkBtn = false;
         this.pJmpBtn = false;
         this.pSpcBtn = false;
         if(this.upBtn)
         {
            this.pUpBtn = true;
         }
         if(this.dwnBtn)
         {
            this.pDwnBtn = true;
         }
         if(this.lftBtn)
         {
            this.pLftBtn = true;
         }
         if(this.rhtBtn)
         {
            this.pRhtBtn = true;
         }
         if(this.atkBtn)
         {
            this.pAtkBtn = true;
         }
         if(this.jmpBtn)
         {
            this.pJmpBtn = true;
         }
         if(this.spcBtn)
         {
            this.pSpcBtn = true;
         }
      }
      
      public function relPauseBtns() : void
      {
         if(this.pUpBtn && !this.upBtn)
         {
            this.relUpBtn();
         }
         if(this.pDwnBtn && !this.dwnBtn)
         {
            this.relDwnBtn();
         }
         if(this.pLftBtn && !this.lftBtn)
         {
            this.relLftBtn();
         }
         if(this.pRhtBtn && !this.rhtBtn)
         {
            this.relRhtBtn();
         }
         if(this.pAtkBtn && !this.atkBtn)
         {
            this.relAtkBtn();
         }
         if(this.pJmpBtn && !this.jmpBtn)
         {
            this.relJmpBtn();
         }
         if(this.pSpcBtn && !this.spcBtn)
         {
            this.relSpcBtn();
         }
      }
      
      protected function setAllButtonsFalse() : void
      {
         this.upBtn = false;
         this.dwnBtn = false;
         this.lftBtn = false;
         this.rhtBtn = false;
         this.spcBtn = false;
         this.atkBtn = false;
         this.jmpBtn = false;
      }
      
      public function forceTakeNoDamage() : void
      {
         this.takeNoDamage = true;
         this.neverTakeDamage = true;
         if(GameSettings.DEBUG_MODE)
         {
            alpha = 1;
         }
         else
         {
            alpha = 0.75;
         }
      }
      
      public function enterWater() : void
      {
         this.underWater = true;
      }
      
      protected function exitWater() : void
      {
         this.underWater = false;
      }
      
      public function forceTakeDamage() : void
      {
         this.neverTakeDamage = false;
         this.takeNoDamage = false;
         alpha = 1;
      }
      
      protected function getAllDroppedUpgrades() : void
      {
      }
      
      public function changeChar(param1:int = -1) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Class = null;
         _loc2_ = this.charNum;
         if(param1 == -1)
         {
            _loc2_++;
         }
         else
         {
            _loc2_ = param1;
         }
         if(_loc2_ > CHAR_NUM_MAX || _loc2_ < 0)
         {
            _loc2_ = 0;
         }
         _loc3_ = CharacterInfo.getCharClassFromNum(_loc2_);
         level.changeChar(_loc3_);
         this.setPowerState(this.pState);
      }
      
      public function changedToThisChar() : void
      {
      }
      
      public function slideDownFlagPole() : void
      {
         this.BTN_MNGR.relPlyrBtns();
         stopTimers();
         if(this.starPwr)
         {
            this.starPwrTmr3Handler(new TimerEvent(TimerEvent.TIMER_COMPLETE));
         }
         scaleX = 1;
         vx = 0;
         vy = level.flagPole.FLAG_DROP_SPEED;
         nx = level.flagPole.hLft;
         setState(ST_FLAG_SLIDE);
         lockState = true;
         defyGrav = true;
      }
      
      public function stopFlagPoleSlide() : void
      {
         lockState = false;
         setState("neutral");
         this.flagDelayTmr = new CustomTimer(this.FLAG_DELAY_TMR_DUR,1);
         addTmr(this.flagDelayTmr);
         this.flagDelayTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.flagDelayTmrLsr,false,0,true);
         this.flagDelayTmr.start();
         vy = 0;
         if(!(this is MarioBase))
         {
            defyGrav = false;
         }
      }
      
      protected function flagDelayTmrLsr(param1:TimerEvent) : void
      {
         if(this.flagDelayTmr)
         {
            this.flagDelayTmr.stop();
            this.flagDelayTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flagDelayTmrLsr);
            removeTmr(this.flagDelayTmr);
            this.flagDelayTmr = null;
         }
         if(!onGround)
         {
            setState("jump");
         }
         defyGrav = false;
         this.pressRhtBtn();
         this.rhtBtn = true;
         this.musicDelTmr = new CustomTimer(this.MUSIC_DEL_TMR_DUR,1);
         level.addTmr(this.musicDelTmr);
         this.musicDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.musicDelTmrLsr,false,0,true);
         this.musicDelTmr.start();
         if(level is TitleLevel)
         {
            level.beatLevel = true;
         }
      }
      
      private function musicDelTmrLsr(param1:TimerEvent) : void
      {
         this.musicDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.musicDelTmrLsr);
         SND_MNGR.changeMusic(MusicType.WIN);
         level.startWinEndTmrMusic(this.winSongDur);
      }
      
      public function getAxe(param1:BowserAxe) : void
      {
         EVENT_MNGR.getAxe();
         GS_MNGR.gameState = GS_WATCH;
         GS_MNGR.lockGameState = true;
         this.BTN_MNGR.relPlyrBtns();
         vx = vxMax;
         this.pressRhtBtn();
         stopUpdate = false;
         STAT_MNGR.stopTimeLeft();
         SND_MNGR.removeAllSounds();
         SND_MNGR.changeMusic(MusicType.WIN_CASTLE);
         level.forceScreenScrollLeftFunction();
         this.bowserAxeRect = param1.hRect.rect;
         this.axeFallTmr = new GameLoopTimer(AXE_FALL_TMR_DEL,1);
         addTmr(this.axeFallTmr);
         this.axeFallTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.axeFallTmrHandler,false,0,true);
         this.axeFallTmr.start();
      }
      
      private function axeFallTmrHandler(param1:TimerEvent) : void
      {
         removeTmr(this.axeFallTmr);
         this.axeFallTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.axeFallTmrHandler);
         this.axeFallTmr = null;
         if(hRht < this.bowserAxeRect.left)
         {
            nx = this.bowserAxeRect.right;
            ny = this.bowserAxeRect.bottom;
            x = nx;
            y = ny;
         }
      }
      
      override public function gravityPull() : void
      {
         if(lastOnGround && !onGround && !this.jumped)
         {
            this.FALL_BTWN_TMR.reset();
            this.FALL_BTWN_TMR.start();
            this._fallBtwn = true;
         }
         super.gravityPull();
      }
      
      public function charSelectInitiate() : void
      {
         this.BTN_MNGR.relPlyrBtns();
         if(CharacterSelectBox.instance.mode == CharacterSelectBox.MODE_CHARACTER_SELECT)
         {
            this.pressRhtBtn();
         }
         x = CharacterSelect.PLAYER_X_POS;
         y = GLOB_STG_BOT - TILE_SIZE * 2;
         ny = y;
         vy = 0;
      }
      
      public function chooseCharacter() : void
      {
         nx = CharacterSelect.PLAYER_X_POS;
      }
      
      public function fallenCharSelScrn() : void
      {
      }
      
      protected function originalGravityPull() : void
      {
         super.gravityPull();
      }
      
      private function fallBtwnTmrHandler(param1:TimerEvent) : void
      {
         this.FALL_BTWN_TMR.reset();
         this._fallBtwn = false;
      }
      
      public function swapChar() : void
      {
      }
      
      protected function bouncePit() : void
      {
         ny = GLOB_STG_BOT;
         y = ny;
         this.setHitPoints();
         vy = -this.boostSpringPwr;
         this.releasedJumpBtn = true;
         this.frictionY = false;
         this.jumped = true;
      }
      
      protected function checkBouncePit() : Boolean
      {
         return hBot > GLOB_STG_BOT;
      }
      
      override public function checkStgPos() : void
      {
         var _loc1_:Number = NaN;
         if(this.vine)
         {
            return;
         }
         this.pitTransArr = STAT_MNGR.pitTransArr;
         if((Cheats.bouncyPits || level is TitleLevel) && !this.dead && this.checkBouncePit() && this.pitTransArr == null)
         {
            this.bouncePit();
            return;
         }
         _loc1_ = level.x;
         if(_loc1_ < 0)
         {
            _loc1_ = -_loc1_;
         }
         if(nx > _loc1_ - TILE_SIZE * 3 && nx < _loc1_ + GLOB_STG_RHT + TILE_SIZE * 2 && scaleY > 0 && ny - height > locStgBot && scaleY < 0 && ny > locStgBot)
         {
            if(parent != level)
            {
               level.addChild(this);
            }
         }
         if(!(this is Sophia) && ny - height >= GLOB_STG_BOT || this is Sophia && hTop >= GLOB_STG_BOT)
         {
            if(!this.pitTransArr && cState != "vine")
            {
               if(!this._fellInPit && this.dead)
               {
                  this.initiatePitDeath();
                  return;
               }
               this._fellInPit = true;
               this.die();
            }
            else if(this.pitTransArr && !this._fellInPit)
            {
               if(this.dead)
               {
                  this.initiatePitDeath();
               }
               else
               {
                  EVENT_MNGR.levelTransfer(this.pitTransArr[0],this.pitTransArr[1],this.PIT_LEV_TRANS_DELAY);
                  stopUpdate = true;
                  this._fellInPit = true;
               }
            }
         }
      }
      
      protected function isOnlyDirPressed(param1:Function) : Boolean
      {
         if(param1 == this.pressUpBtn && this.upBtn && !this.dwnBtn && !this.lftBtn && !this.rhtBtn)
         {
            return true;
         }
         if(param1 == this.pressRhtBtn && this.rhtBtn && !this.lftBtn && !this.dwnBtn && !this.upBtn)
         {
            return true;
         }
         if(param1 == this.pressDwnBtn && this.dwnBtn && !this.lftBtn && !this.rhtBtn && !this.upBtn)
         {
            return true;
         }
         if(param1 == this.pressLftBtn && this.lftBtn && !this.rhtBtn && !this.dwnBtn && !this.upBtn)
         {
            return true;
         }
         if(param1 == null && !this.upBtn && !this.rhtBtn && !this.dwnBtn && !this.lftBtn)
         {
            return true;
         }
         return false;
      }
      
      protected function oppDirIsPressed(param1:Function) : Boolean
      {
         if(param1 == this.pressUpBtn)
         {
            if(this.dwnBtn)
            {
               return true;
            }
            return false;
         }
         if(param1 == this.pressDwnBtn)
         {
            if(this.upBtn)
            {
               return true;
            }
            return false;
         }
         if(param1 == this.pressRhtBtn)
         {
            if(this.lftBtn)
            {
               return true;
            }
            return false;
         }
         if(param1 == this.pressLftBtn)
         {
            if(this.rhtBtn)
            {
               return true;
            }
            return false;
         }
         return false;
      }
      
      protected function changeBrickState() : void
      {
      }
      
      public function getPitTransfer(param1:String) : void
      {
         this.pitTransArr = [param1,-1];
         STAT_MNGR.pitTransArr = this.pitTransArr;
      }
      
      override public function destroy() : void
      {
         if(!this.falseDestroy)
         {
            super.destroy();
         }
      }
      
      public function get DEATH_TMR_DEL() : int
      {
         return this._dieTmrDel;
      }
      
      protected function prepareDrawCharacter(param1:int = -1) : void
      {
         if(this.drawFrameLabel != null)
         {
            this.gotoAndStop(this.drawFrameLabel);
         }
         if(this.replaceColor || level is FakeLevel)
         {
            this.endReplaceColor();
         }
      }
      
      protected function get currentSkinAppearanceNum() : int
      {
         return 0;
      }
      
      private function drawCharacter() : void
      {
         this.prepareDrawCharacter();
         AllCharactersCmc.getInstance().drawCharacter(this);
      }
      
      override public function cleanUp() : void
      {
         var _loc1_:SubMc = null;
         if(this.dead)
         {
            this.setAllAmmoToDefault();
            STAT_MNGR.removeAllUpgradesForChar(this.charNum,false,true);
            if(GameSettings.startWithMushroom && this.canGetMushroom)
            {
               STAT_MNGR.addCharUpgrade(this.charNum,MUSHROOM);
            }
         }
         setSkinAppearanceNumber(this.charNum,this.currentSkinAppearanceNum);
         super.cleanUp();
         if(this.freezeGameTmr)
         {
            this.freezeGameTmr.stop();
            this.freezeGameTmr = null;
         }
         for each(var _loc4_ in this.subMcDct)
         {
            _loc1_ = _loc4_;
            _loc4_;
            _loc1_.cleanUp();
         }
         this.pitTransArr = null;
         if(level && level.charDct)
         {
            level.charDct.removeItem(this);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.bubbleTmr && this.bubbleTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.bubbleTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.bubbleTmrLsr);
         }
         if(this.freezeGameTmr && this.freezeGameTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.freezeGameTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.freezeGameTmrHandler);
         }
         if(this.noDamageTmr && this.noDamageTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.noDamageTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.noDamageTmrLsr);
         }
         if(this.starPwrTmr1 && this.starPwrTmr1.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr1.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr1Handler);
         }
         if(this.starPwrTmr2 && this.starPwrTmr2.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr2.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr2Handler);
         }
         if(this.starPwrTmr3 && this.starPwrTmr3.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr3.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr3Handler);
         }
         if(this.flagDelayTmr && this.flagDelayTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.flagDelayTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flagDelayTmrLsr);
         }
         if(this.musicDelTmr && this.musicDelTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.musicDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.musicDelTmrLsr);
         }
         if(this.flickerTmr)
         {
            this.flickerTmr.removeEventListener(TimerEvent.TIMER,this.flickerTmrHandler);
         }
         if(this.wingTimer != null)
         {
            this.wingTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.wingTimerHandler);
         }
         this.FALL_BTWN_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.fallBtwnTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.bubbleTmr && !this.bubbleTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.bubbleTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.bubbleTmrLsr);
         }
         if(this.freezeGameTmr && !this.freezeGameTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.freezeGameTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.freezeGameTmrHandler);
         }
         if(this.noDamageTmr && !this.noDamageTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.noDamageTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.noDamageTmrLsr);
         }
         if(this.starPwrTmr1 && !this.starPwrTmr1.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr1.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr1Handler);
         }
         if(this.starPwrTmr2 && !this.starPwrTmr2.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr2.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr2Handler);
         }
         if(this.starPwrTmr3 && !this.starPwrTmr3.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.starPwrTmr3.addEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr3Handler);
         }
         if(this.flagDelayTmr && !this.flagDelayTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.flagDelayTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.flagDelayTmrLsr);
         }
         if(this.flickerTmr)
         {
            this.flickerTmr.addEventListener(TimerEvent.TIMER,this.flickerTmrHandler,false,0,true);
         }
         this.FALL_BTWN_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.fallBtwnTmrHandler,false,0,true);
      }
      
      public function get usesHorzObjs() : Boolean
      {
         return this._usesHorzObjs;
      }
      
      public function get usesVertObjs() : Boolean
      {
         return this._usesVertObjs;
      }
      
      public function get charName() : String
      {
         return this._charName;
      }
      
      public function get charNameTxt() : String
      {
         return this._charNameTxt;
      }
      
      public function get fallBtwn() : Boolean
      {
         return this._fallBtwn;
      }
      
      public function get fellInPit() : Boolean
      {
         return this._fellInPit;
      }
      
      public function get numContStomps() : int
      {
         return this._numContStomps;
      }
      
      public function get replaceColor() : Boolean
      {
         return this._replaceColor;
      }
      
      public function get secondsLeftSnd() : String
      {
         return this._secondsLeftSnd;
      }
      
      public function get secondsLeftSndIsBgm() : Boolean
      {
         return this._secondsLeftSndIsBgm;
      }
      
      public function get starPwrBgmShouldBePlaying() : Boolean
      {
         return this._starPwrBgmShouldBePlaying;
      }
      
      public function get stompedEnemyThisCycle() : Boolean
      {
         return this._stompedEnemyThisCycle;
      }
      
      public function get boundsRect() : Rectangle
      {
         return this._boundsRect;
      }
      
      public function get charNameCaps() : String
      {
         return this._charNameCaps;
      }
      
      public function getFlashArr() : Array
      {
         return flashArr;
      }
      
      public function get canStomp() : Boolean
      {
         if(level == TitleLevel.instance)
         {
            return true;
         }
         if(this.underWater && !this.canStompUnderWater)
         {
            return false;
         }
         if(Cheats.everyoneCanStomp)
         {
            return true;
         }
         return this._canStomp;
      }
      
      public function get canGetAmmoFromCoinBlocks() : Boolean
      {
         return this._canGetAmmoFromCoinBlocks;
      }
      
      public function get canGetAmmoFromBricks() : Boolean
      {
         return this._canGetAmmoFromBricks;
      }
   }
}
