package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.Cheats;
   import com.smbc.data.Difficulties;
   import com.smbc.data.GameSettings;
   import com.smbc.data.HitTester;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.displayInterface.SophiaHoverBar;
   import com.smbc.enemies.Enemy;
   import com.smbc.graphics.Palette;
   import com.smbc.graphics.SophiaBackWheel;
   import com.smbc.graphics.SophiaBase;
   import com.smbc.graphics.SophiaExplosion;
   import com.smbc.graphics.SophiaFrontWheel;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.LevObj;
   import com.smbc.managers.TutorialManager;
   import com.smbc.pickups.BowserAxe;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.PipeTransporter;
   import com.smbc.pickups.SophiaPickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.Projectile;
   import com.smbc.projectiles.SophiaBullet;
   import com.smbc.sound.SoundContainer;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public final class Sophia extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Sophia[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Sophia[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Sophia[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Sophia[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      public static const SOPHIA_CEILING_CLIMB:String = PickupInfo.SOPHIA_CEILING_CLIMB;
      
      public static const SOPHIA_HOMING_MISSILE:String = PickupInfo.SOPHIA_HOMING_MISSILE;
      
      public static const HOMING_MISSILE_AMMO:String = PickupInfo.SOPHIA_HOMING_MISSILE_AMMO;
      
      public static const MISSILE_AMMO:String = PickupInfo.SOPHIA_MISSILE_AMMO;
      
      public static const SOPHIA_HOVER:String = PickupInfo.SOPHIA_HOVER;
      
      public static const SOPHIA_WALL_CLIMB:String = PickupInfo.SOPHIA_WALL_CLIMB;
      
      public static const SOPHIA_WALL_JUMP:String = PickupInfo.SOPHIA_WALL_JUMP;
      
      public static const SOPHIA_CRUSHER:String = PickupInfo.SOPHIA_CRUSHER;
      
      public static const SOPHIA_HYPER:String = PickupInfo.SOPHIA_HYPER;
      
      public static const SOPHIA_MISSILE:String = PickupInfo.SOPHIA_MISSILE;
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[SOPHIA_HOVER,SOPHIA_CRUSHER,SOPHIA_WALL_CLIMB]];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [[SOPHIA_WALL_CLIMB,SOPHIA_CEILING_CLIMB]];
      
      public static const MUSHROOM_UPGRADES:Array = [SOPHIA_HYPER];
      
      public static const NEVER_LOSE_UPGRADES:Array = [SOPHIA_MISSILE,SOPHIA_HOMING_MISSILE];
      
      public static const START_WITH_UPGRADES:Array = [];
      
      public static const RESTORABLE_UPGRADES:Array = [SOPHIA_WALL_CLIMB,SOPHIA_CEILING_CLIMB,SOPHIA_HOVER];
      
      public static const SINGLE_UPGRADES_ARR:Array = [];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [MUSHROOM,SOPHIA_HYPER,SOPHIA_WALL_CLIMB,SOPHIA_CEILING_CLIMB];
      
      public static const HOVER_MAX:int = 8;
      
      public static const HOVER_MIN:int = 0;
      
      public static const ICON_ORDER_ARR:Array = [SOPHIA_MISSILE,SOPHIA_HOMING_MISSILE,SOPHIA_CRUSHER,SOPHIA_HOVER,SOPHIA_WALL_CLIMB,SOPHIA_CEILING_CLIMB];
      
      public static const AMMO_ARR:Array = [[SOPHIA_MISSILE,9,60],[SOPHIA_HOMING_MISSILE,3,20],[SOPHIA_HOVER,HOVER_MAX,HOVER_MAX]];
      
      public static const AMMO_DEPLETION_ARR:Array = [[SOPHIA_MISSILE,3],[SOPHIA_HOMING_MISSILE,1],[SOPHIA_HOVER,1]];
      
      public static const AMMO_DEPLETION_DCT:CustomDictionary = new CustomDictionary();
      
      private static const DROP_ARR_HOMING_MISSILE:Array = [[0,HOMING_MISSILE_AMMO]];
      
      private static const DROP_ARR_MISSILE:Array = [[0,MISSILE_AMMO]];
      
      private static const DROP_ARR_BOTH:Array = [[0,MISSILE_AMMO],[0.5,HOMING_MISSILE_AMMO]];
      
      public static const AMMO_DCT:CustomDictionary = new CustomDictionary();
      
      public static const WIN_SONG_DUR:int = 3000;
      
      public static const CHAR_SEL_END_DUR:int = 2000;
      
      private static const DIE_TMR_DEL_NORMAL:int = 2500;
      
      private static const DIE_TMR_DEL_PIT:int = 2500;
      
      public static const IND_CI_Sophia:int = 1;
      
      public static const IND_CI_SophiaLightning:int = 6;
      
      public static const IND_CI_Jason:int = 7;
      
      public static const IND_CI_SophiaBullet:int = 8;
      
      public static const IND_CI_SophiaHoverBar:int = 9;
      
      public static const COL_PINK:uint = 4293151365;
      
      public static const COL_MAGENTA:uint = 4293132376;
      
      public static const COL_RED:uint = 4289789952;
      
      private static const COL_WHITE:uint = 4294967295;
      
      private static const COL_BLACK:uint = 4278190080;
      
      private static const REPL_COLOR_1_1:uint = COL_PINK;
      
      private static const REPL_COLOR_2_1:uint = COL_WHITE;
      
      private static const REPL_COLOR_3_1:uint = COL_BLACK;
      
      private static const REPL_COLOR_1_2:uint = COL_MAGENTA;
      
      private static const REPL_COLOR_2_2:uint = COL_WHITE;
      
      private static const REPL_COLOR_3_2:uint = COL_BLACK;
      
      private static const REPL_COLOR_1_3:uint = COL_RED;
      
      private static const REPL_COLOR_2_3:uint = COL_WHITE;
      
      private static const REPL_COLOR_3_3:uint = COL_BLACK;
      
      private static const FLASH_COLOR_1_1:uint = 4294473816;
      
      private static const FLASH_COLOR_2_1:uint = 4294490022;
      
      private static const FLASH_COLOR_3_1:uint = COL_BLACK;
      
      private static const FLASH_COLOR_1_2:uint = 4286348412;
      
      private static const FLASH_COLOR_2_2:uint = COL_WHITE;
      
      private static const FLASH_COLOR_3_2:uint = COL_BLACK;
      
      private static const FLASH_COLOR_1_3:uint = 4278233156;
      
      private static const FLASH_COLOR_2_3:uint = 4290312408;
      
      private static const FLASH_COLOR_3_3:uint = COL_BLACK;
      
      public static const ROT_WALL_BOT:int = 0;
      
      public static const ROT_WALL_LEFT:int = 90;
      
      public static const ROT_WALL_RIGHT:int = -90;
      
      public static const ROT_WALL_TOP:int = 180;
      
      private static const WALL_BOTTOM_STR:String = "bottom";
      
      private static const WALL_LEFT_STR:String = "left";
      
      private static const WALL_TOP_STR:String = "top";
      
      private static const WALL_RIGHT_STR:String = "right";
      
      private static const SECONDS_LEFT_SND:String = SoundNames.BGM_MEGA_MAN_SECONDS_LEFT;
      
      private static const SND_MUSIC_WIN:String = SoundNames.MFX_MEGA_MAN_WIN;
      
      public static const FL_BASE_HORZ:String = "horz";
      
      public static const FL_BASE_TURN_START:String = "turnStart";
      
      public static const FL_BASE_TURN_2:String = "turn-2";
      
      public static const FL_BASE_OPEN:String = "open";
      
      private static const FL_BASE_DIAG:String = "diag";
      
      private static const FL_BASE_UP:String = "up";
      
      private static const FL_MAIN:String = "main";
      
      private static const FL_CLIMB_VINE:String = "climbVine";
      
      private static const FL_VINE_TRANS_START:String = "vineTransStart";
      
      private static const FL_VINE_TRANS_END:String = "vineTransEnd";
      
      private static const FL_WALL_TRANS_START:String = "wallTransStart";
      
      private static const FL_WALL_TRANS_END:String = "wallTransEnd";
      
      private static const FL_WALL_TRANS_INV_START:String = "wallTransInvStart";
      
      private static const FL_WALL_TRANS_INV_END:String = "wallTransInvEnd";
      
      private static const FL_WHEEL_HOVER:String = "hover";
      
      public static const FL_WHEEL_HOVER_BIG_FLAME:String = "hoverBigFlame";
      
      public static const FL_WHEEL_HOVER_SMALL_FLAME:String = "hoverSmallFlame";
      
      private static const FL_WHEEL_HOVER_TRANS:String = "hoverTrans";
      
      private static const FL_WHEEL_WATER_1:String = "water-1";
      
      private static const FL_WHEEL_WATER_2:String = "water-2";
      
      public static const FL_WHEEL_START:String = "start";
      
      public static const FL_WHEEL_END:String = "end";
      
      private static const MAIN_REMOVE_ARR:Array = [FL_MAIN];
      
      private static const SN_HOVER:String = SoundNames.SFX_SOPHIA_HOVER;
      
      private static const SN_JUMP:String = SoundNames.SFX_SOPHIA_JUMP;
      
      private static const SN_LAND:String = SoundNames.SFX_SOPHIA_LAND;
      
      private static const SN_TAKE_DAMAGE:String = SoundNames.SFX_SOPHIA_TAKE_DAMAGE;
      
      private static const ST_WALL_TRANS:String = "wallTrans";
      
      public static const ST_CLIMB:String = "climb";
      
      public static const ST_CLIMB_JUMP:String = "climbJump";
      
      public static const SHOOT_UP_FRAME:String = FL_BASE_UP;
      
      private static const NUM_BASE_TURN_FRAMES:int = 2;
      
      private static const NUM_WALL_TRANS_FRAMES:int = 8;
      
      private static const NUM_WALL_TRANS_INV_FRAMES:int = 9;
      
      private static const SHOT_TYPE_HOMING_MISSILE:String = SophiaBullet.SH_HOMING_MISSILE;
      
      private static const SHOT_TYPE_MISSILE:String = SophiaBullet.SH_MISSILE;
      
      private static const DEL_BASE_JUMP_BOUNCE_TMR:int = 60;
      
      private static const DEL_BASE_BOUNCE_TMR_SLOW:int = 150;
      
      private static const DEL_BASE_BOUNCE_TMR_MEDIUM:int = 125;
      
      private static const DEL_BASE_BOUNCE_TMR_FAST:int = 100;
      
      private static const DEL_WALL_TRANS_TMR:int = 25;
      
      private static const DEL_WHEEL_TMR_SLOW:int = 100;
      
      private static const DEL_WHEEL_TMR_MEDIUM:int = 70;
      
      public static const DEL_WHEEL_TMR_FAST:int = 45;
      
      private static const DEL_WHEEL_TMR_WATER_SLOW:int = 60;
      
      private static const DEL_WHEEL_TMR_WATER_FAST:int = 30;
      
      private static const DEL_WHEEL_HOVER_TRANS:int = 60;
      
      private static const DEL_HOVER_FLAME:int = 25;
      
      private static const NUM_SCREEN_SCROLL_CYCLES:int = 15;
      
      private static const HOVER_CHANGE_INC:int = 1;
      
      private static const FIRE_MISSILE_COST:int = -1;
      
      public static const HOMING_MISSILE_PICKUP_VALUE:int = 2;
      
      public static const MISSILE_PICKUP_VALUE:int = 6;
      
      private static const VX_MIN:int = 5;
      
      public static const GRAVITY:int = 1050;
      
      private static const GRAVITY_WATER:int = 400;
      
      private static const JUMP_PWR:int = 400;
      
      private static const JUMP_PWR_WATER:int = JUMP_PWR;
      
      private static const JUMP_HEIGHT_VERT:int = 82;
      
      private static const JUMP_HEIGHT_HORZ:int = 130;
      
      private static const DEF_SPRING_PWR:int = 400;
      
      private static const BOOST_SPRING_PWR:int = 930;
      
      private static const AY_WATER:int = 900;
      
      private static const VY_MAX_WATER:int = 190;
      
      private static const VX_MAX_DEF:int = 185;
      
      private static const VY_MAX_DEF:Number = NaN;
      
      private static const VX_MAX_WATER_NORMAL:int = 130;
      
      private static const VX_MAX_WATER_BOOST:int = 200;
      
      private static const VY_MAX_PSV_DEF:int = 500;
      
      private static const MAX_PLAT_DIST:int = 100;
      
      private static const MAX_SPEED_CLIMB_WATER:int = 80;
      
      private static const FX_DEF:Number = 0.001;
      
      private static const FX_DUNGEON_GOT_AXE:Number = 1e-7;
      
      private static const FY_DEF:Number = 1e-11;
      
      private static const FY_HOLD_JMP:Number = 0.5;
      
      private static const FY_WATER_NGV:Number = 0.01;
      
      private static const FY_WATER_PSV:Number = 1e-7;
      
      private static const FX_WALL_JUMP_HOLD_BTN:Number = 0.0025;
      
      private static const FX_WALL_JUMP_REL_BTN:Number = 0.000001;
      
      private static const WALL_JUMP_MIN_VX:int = 50;
      
      private static const WATER_FALL_SPEED:int = 1;
      
      private static const WHEEL_DEF_Y:int = -8;
      
      private static const WHEEL_JUMP_Y:int = 0;
      
      private static const FRONT_WHEEL_DEF_X:int = 16;
      
      private static const FRONT_WHEEL_INWARD_X:int = 10;
      
      private static const BACK_WHEEL_DEF_X:int = -16;
      
      private static const BACK_WHEEL_INWARD_X:int = -10;
      
      private static const WHEEL_X_SHIFT_INT:int = 2;
      
      private static const BASE_Y_SHIFT_INT:int = 4;
      
      public static const BASE_DEF_Y:int = -4;
      
      private static const BASE_DEF_X:int = 0;
      
      public static const BASE_BOUNCE_Y:int = -2;
      
      private static const BASE_JUMP_BOUNCE_Y:int = 0;
      
      private static const BASE_UP_DEF_Y:int = -16;
      
      private static const BASE_UP_BOUNCE_Y:int = -14;
      
      private static const BASE_UP_JUMP_BOUNCE_Y:int = -12;
      
      private static const BASE_VERT_OFS_DEF:int = 0;
      
      private static const BASE_VERT_OFS_FALL:int = 2;
      
      private static const MAX_BULLETS_ON_SCREEN:int = 3;
      
      private static const MAX_HOMING_MISSILES_ON_SCREEN:int = 4;
      
      private static const MAX_MISSILES_ON_SCREEN:int = 1;
      
      private static const HOVER_BOOST_POWER:int = 40;
      
      private static const HOVER_MAX_SPEED:int = 100;
      
      private static const CLIMB_INVERTED_OFS:int = 8;
      
      private static const CLIMB_OFS:int = 24;
      
      private static const SLOW_DELAY_MAX_VX:int = 40;
      
      private static const MEDIUM_DELAY_MAX_VX:int = 120;
      
      private static const MAX_INVERTED_CLIMB_DIST:int = 30;
      
      private static const MIN_NORMAL_CLIMB_DIST:int = 20;
      
      private static const DAMAGE_BOOST_SPEED_STATIONARY:int = 1000;
      
      private static const DAMAGE_BOOST_SPEED_MOVING:int = 50;
      
      private static const SCROLL_EASE_SPEED:int = 5;
      
      private static const SCROLL_FRICTION:Number = 0.01;
      
      private static const SCROLL_MIN_DIST:Number = 0.5;
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(36,24);
      
      public static const SKIN_SOPHIA_III_NES:int = 0;
      
      public static const SKIN_SOPHIA_III_SNES:int = 1;
      
      public static const SKIN_SOPHIA_III_GB:int = 2;
      
      public static const SKIN_SOPHIA_J7_NES:int = 3;
      
      public static const SKIN_SOPHIA_J7_SNES:int = 4;
      
      public static const SKIN_SOPHIA_J7_GB:int = 5;
      
      public static const SKIN_TETRIMINO_NES:int = 6;
      
      public static const SKIN_SOPHIA_III_ATARI:int = 7;
      
      public static const SKIN_SOPHIA_III_X1:int = 8;
      
      public static const SKIN_TETRIMINO_SNES:int = 9;
      
      public static const SKIN_SOPHIA_III_16B:int = 10;
      
      public static const SKIN_ORDER:Array = [SKIN_SOPHIA_III_NES,SKIN_SOPHIA_III_SNES,SKIN_SOPHIA_III_16B,SKIN_SOPHIA_III_GB,SKIN_SOPHIA_III_X1,SKIN_SOPHIA_III_ATARI,SKIN_SOPHIA_J7_NES,SKIN_SOPHIA_J7_SNES,SKIN_SOPHIA_J7_GB,SKIN_TETRIMINO_NES,SKIN_TETRIMINO_SNES];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_SOPHIA_III_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_SOPHIA_III_ATARI;
       
      
      private const WALL_TRANS_FRAMES_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const DEFAULT_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      private const WHEEL_TMR:GameLoopTimer = new GameLoopTimer(45);
      
      private const BASE_VERT_TMR:GameLoopTimer = new GameLoopTimer(DEL_BASE_BOUNCE_TMR_FAST);
      
      private const BASE_TURN_TMR:GameLoopTimer = new GameLoopTimer(60,NUM_BASE_TURN_FRAMES);
      
      private const MOVE_PARTS_TMR:GameLoopTimer = new GameLoopTimer(50);
      
      private const GAIN_HOVER_TMR:GameLoopTimer = new GameLoopTimer(2000);
      
      private const LOSE_HOVER_TMR:GameLoopTimer = new GameLoopTimer(300);
      
      private var fixScreenScroll:Boolean;
      
      public var jason:Jason;
      
      private var attachedToPlatform:Platform;
      
      private var fakeWallTransRealStatsArr:Array;
      
      private var recolorMain:Boolean;
      
      private var baseVertOfs:int;
      
      private var sophiaUpBtn:Boolean;
      
      private var sophiaDwnBtn:Boolean;
      
      private var sophiaLftBtn:Boolean;
      
      private var sophiaRhtBtn:Boolean;
      
      public var sophiaScaleX:Number;
      
      private var useEnterPipeVxMax:Boolean;
      
      public var hover:Boolean;
      
      private var engagedHover:Boolean;
      
      private var readyToJump:Boolean;
      
      public var jumpRise:Boolean;
      
      public var vertical:Boolean;
      
      private var revScaleX:Boolean;
      
      private var wallToAttachTo:Ground;
      
      private var wallSideToAttachTo:String;
      
      private var invertedWallTrans:Boolean;
      
      private var wallTransEndNx:Number = 0;
      
      private var wallTransEndNy:Number = 0;
      
      private var wallTransEndVx:Number = 0;
      
      private var wallTransEndVy:Number = 0;
      
      private var wallTransEndRevScaleX:Boolean;
      
      private var wallTransEndRotation:int;
      
      private var wallTransEndVertical:Boolean;
      
      private var falseGroundRect:Rectangle;
      
      private var lastRotation:int;
      
      private var ssxInt:Number;
      
      private var yOfsInt:Number;
      
      private var scrollDist:Number;
      
      private var hRectMainWidth:Number;
      
      private var hRectMainHeight:Number;
      
      public var hoverBar:SophiaHoverBar;
      
      private var pBmd:BitmapData;
      
      private var scrollScreenDuringWallTrans:Boolean;
      
      public var sophiaBase:SophiaBase;
      
      public var frontWheel:SophiaFrontWheel;
      
      public var backWheel:SophiaBackWheel;
      
      private var jumpEnd:Number;
      
      public var classic:Boolean;
      
      private const SKIN_CONT_DCT:CustomDictionary = new CustomDictionary(true);
      
      private var curSubWeapon:String;
      
      public function Sophia()
      {
         var _loc1_:StatusProperty = null;
         charNum = CHAR_NUM;
         super();
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_FLASH_AGG,0,new StatFxFlash(null,AnimationTimers.DEL_FAST,400)));
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
         _canGetAmmoFromBricks = true;
         _charName = CHAR_NAME;
         _charNameTxt = CHAR_NAME_TEXT;
         _charNameCaps = CHAR_NAME_CAPS;
         winSongDur = WIN_SONG_DUR;
         hidesBmps = true;
         _secondsLeftSnd = SECONDS_LEFT_SND;
         _sndWinMusic = SND_MUSIC_WIN;
         _secondsLeftSndIsBgm = true;
         _dieTmrDel = DIE_TMR_DEL_NORMAL;
         _usesHorzObjs = true;
         _usesVertObjs = true;
         canCrossSmallGaps = false;
         walkStartLab = "";
         walkEndLab = "";
         canHitMultipleBricks = true;
         if(this == player)
         {
            this.hoverBar = new SophiaHoverBar(this);
         }
         this.hoverBar.updateDisplay(getAmmo(SOPHIA_HOVER));
      }
      
      public static function setMaxHover() : void
      {
      }
      
      public function setMaxHover() : void
      {
         this.setAmmo(SOPHIA_HOVER,HOVER_MAX);
         this.hoverBar.updateDisplay(getAmmo(SOPHIA_HOVER));
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(Bitmap,MAIN_REMOVE_ARR);
         removeObjsFromFrames(this.sophiaBase,MAIN_REMOVE_ARR,true);
         removeObjsFromFrames(this.frontWheel,MAIN_REMOVE_ARR,true);
         removeObjsFromFrames(this.backWheel,MAIN_REMOVE_ARR,true);
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = param1.getChildByName("frontWheel") as MovieClip;
         var _loc3_:MovieClip = param1.getChildByName("backWheel") as MovieClip;
         var _loc4_:MovieClip = param1.getChildByName("base") as MovieClip;
         this.frontWheel = new SophiaFrontWheel(this,_loc2_);
         this.backWheel = new SophiaBackWheel(this,_loc3_);
         this.sophiaBase = new SophiaBase(this,_loc4_);
         mcReplaceArr = [_loc2_,this.frontWheel,_loc3_,this.backWheel,_loc4_,this.sophiaBase];
      }
      
      override public function setStats() : void
      {
         inColor1 = COL_MAGENTA;
         inColor2 = COL_WHITE;
         inColor3 = COL_BLACK;
         outColor1_1 = FLASH_COLOR_1_1;
         outColor2_1 = FLASH_COLOR_2_1;
         outColor3_1 = FLASH_COLOR_3_1;
         outColor1_2 = FLASH_COLOR_1_2;
         outColor2_2 = FLASH_COLOR_2_2;
         outColor3_2 = FLASH_COLOR_3_2;
         outColor1_3 = FLASH_COLOR_1_3;
         outColor2_3 = FLASH_COLOR_2_3;
         outColor3_3 = FLASH_COLOR_3_3;
         jumpPwr = JUMP_PWR;
         gravity = GRAVITY;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = GRAVITY_WATER;
            defGravityWater = gravity;
            jumpPwr = JUMP_PWR_WATER;
         }
         walksSlowUnderWater = true;
         defSpringPwr = DEF_SPRING_PWR;
         boostSpringPwr = BOOST_SPRING_PWR;
         ax = 800;
         fx = FX_DEF;
         fy = FY_DEF;
         vxMaxDef = VX_MAX_DEF;
         vyMaxPsv = VY_MAX_PSV_DEF;
         vyMaxPsvWater = NaN;
         vxMax = vxMaxDef;
         vxMin = VX_MIN;
         numParFrames = 0;
         pState2 = true;
         super.setStats();
         canStompUnderWater = false;
         gotoAndStop(FL_MAIN);
         this.setUpWheelsForLand();
         releasedJumpBtn = true;
         this.sophiaScaleX = scaleX;
         this.updSubWeapon();
         stopAnim = false;
         this.hRectMainWidth = hRect.width;
         this.hRectMainHeight = hRect.height;
         this.WHEEL_TMR.addEventListener(TimerEvent.TIMER,this.wheelTmrHandler,false,0,true);
         addTmr(this.WHEEL_TMR);
         this.WHEEL_TMR.start();
         this.BASE_TURN_TMR.addEventListener(TimerEvent.TIMER,this.baseTurnTmrHandler,false,0,true);
         addTmr(this.BASE_TURN_TMR);
         this.MOVE_PARTS_TMR.addEventListener(TimerEvent.TIMER,this.movePartsTmrHandler,false,0,true);
         addTmr(this.MOVE_PARTS_TMR);
         this.BASE_VERT_TMR.addEventListener(TimerEvent.TIMER,this.baseVertTmrHandler,false,0,true);
         addTmr(this.BASE_VERT_TMR);
         this.GAIN_HOVER_TMR.addEventListener(TimerEvent.TIMER,this.gainHoverTmrHandler,false,0,true);
         addTmr(this.GAIN_HOVER_TMR);
         this.LOSE_HOVER_TMR.addEventListener(TimerEvent.TIMER,this.loseHoverTmrHandler,false,0,true);
         addTmr(this.LOSE_HOVER_TMR);
         if(getAmmo(SOPHIA_HOVER) < HOVER_MAX)
         {
            this.GAIN_HOVER_TMR.start();
         }
         level.RECOLOR_OBJS_DCT.addItem(this);
         this.backWheel.setStopFrame(FL_WHEEL_HOVER_BIG_FLAME);
      }
      
      private function updSubWeapon(param1:Boolean = false) : void
      {
         if(upgradeIsActive(SOPHIA_HOMING_MISSILE) && !upgradeIsActive(SOPHIA_MISSILE))
         {
            this.curSubWeapon = SOPHIA_HOMING_MISSILE;
         }
         else if(!upgradeIsActive(SOPHIA_HOMING_MISSILE) && upgradeIsActive(SOPHIA_MISSILE))
         {
            this.curSubWeapon = SOPHIA_MISSILE;
         }
         else if(!upgradeIsActive(SOPHIA_HOMING_MISSILE) && !upgradeIsActive(SOPHIA_MISSILE))
         {
            this.curSubWeapon = null;
         }
         else
         {
            this.curSubWeapon = STAT_MNGR.getSubWeapon(charNum);
            if(!this.curSubWeapon)
            {
               this.curSubWeapon = SOPHIA_MISSILE;
            }
            if(param1)
            {
               if(this.curSubWeapon == SOPHIA_HOMING_MISSILE)
               {
                  this.curSubWeapon = SOPHIA_MISSILE;
               }
               else
               {
                  this.curSubWeapon = SOPHIA_HOMING_MISSILE;
               }
               SND_MNGR.playSound(SoundNames.SFX_SOPHIA_SELECT_WEAPON);
            }
         }
         if(this.curSubWeapon)
         {
            tsTxt.UpdAmmoIcon(true,this.curSubWeapon.substr(PickupInfo.UPGRADE_STR.length));
            tsTxt.UpdAmmoText(true,getAmmo(this.curSubWeapon));
         }
         else
         {
            tsTxt.UpdAmmoIcon(false);
            tsTxt.UpdAmmoText(false);
         }
         STAT_MNGR.setSubWeapon(charNum,this.curSubWeapon);
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         this.updDrops();
         this.updSubWeapon();
         this.updHoverBarVisibility();
      }
      
      private function updHoverBarVisibility() : void
      {
         if(upgradeIsActive(SOPHIA_HOVER))
         {
            this.hoverBar.visible = true;
         }
         else
         {
            this.hoverBar.visible = false;
         }
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = gravity;
         gravity = GRAVITY_WATER;
         defGravityWater = gravity;
         jumpPwr = JUMP_PWR_WATER;
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         jumpPwr = JUMP_PWR;
         gravity = GRAVITY;
         super.forceNonwaterStats();
      }
      
      override protected function updateStats() : void
      {
         if(onFallingPlatform)
         {
            ny -= 8;
         }
         super.updateStats();
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         if(this.attachedToPlatform)
         {
            onPlatform = this.attachedToPlatform;
         }
      }
      
      private function updDrops() : void
      {
         dropArr = DROP_ARR_BOTH;
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         if(this.curSubWeapon == param1)
         {
            tsTxt.UpdAmmoText(true,getAmmo(param1));
         }
         if(param1 == SOPHIA_HOVER)
         {
            this.hoverBar.updateDisplay(getAmmo(SOPHIA_HOVER));
         }
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_WALL_TRANS)
         {
            return;
         }
         if(this.sophiaRhtBtn && !this.sophiaLftBtn && !wallOnRight)
         {
            if(stuckInWall)
            {
               return;
            }
            if(cState == ST_VINE)
            {
               if(!exitVine)
               {
                  return;
               }
               this.getOffVine();
            }
            if(!this.vertical)
            {
               vx += ax * dt;
            }
            else
            {
               vy += ax * dt;
            }
            scaleX = 1;
            this.sophiaScaleX = scaleX;
            if(this.revScaleX)
            {
               scaleX = -scaleX;
            }
         }
         else if(this.sophiaLftBtn && !this.sophiaRhtBtn && !wallOnLeft)
         {
            if(stuckInWall)
            {
               return;
            }
            if(cState == ST_VINE)
            {
               if(!exitVine)
               {
                  return;
               }
               this.getOffVine();
            }
            if(!this.vertical)
            {
               vx -= ax * dt;
            }
            else
            {
               vy -= ax * dt;
            }
            scaleX = -1;
            this.sophiaScaleX = scaleX;
            if(this.revScaleX)
            {
               scaleX = -scaleX;
            }
         }
         else if(this.sophiaLftBtn && this.sophiaRhtBtn)
         {
            if(!this.vertical)
            {
               vx *= Math.pow(fx,dt);
            }
            else
            {
               vy *= Math.pow(fx,dt);
            }
         }
         else if(!this.sophiaLftBtn && !this.sophiaRhtBtn && onGround)
         {
            if(!this.vertical)
            {
               vx *= Math.pow(fx,dt);
            }
            else
            {
               vy *= Math.pow(fx,dt);
            }
         }
         if(underWater && !onGround && !this.jumpRise)
         {
            if(this.sophiaUpBtn && !this.sophiaDwnBtn)
            {
               vy -= AY_WATER * dt;
            }
            else if(this.sophiaDwnBtn && !this.sophiaUpBtn)
            {
               vy += AY_WATER * dt;
            }
            if(!this.jumpRise && (!this.sophiaDwnBtn && !this.sophiaUpBtn || this.sophiaUpBtn && this.sophiaDwnBtn))
            {
               if(vy > 0)
               {
                  vy *= Math.pow(FY_WATER_PSV,dt);
               }
               else if(vy < 0)
               {
                  vy *= Math.pow(FY_WATER_NGV,dt);
               }
               if(vy < 5 && vy > -5)
               {
                  vy = 0;
               }
               ny += WATER_FALL_SPEED;
            }
            if(jmpBtn)
            {
               vxMax = VX_MAX_WATER_BOOST;
            }
            else
            {
               vxMax = VX_MAX_WATER_NORMAL;
            }
         }
         if(this.useEnterPipeVxMax)
         {
            vxMax = ENTER_PIPE_VX_MAX;
         }
      }
      
      override public function activateWatchModeEnterPipe() : void
      {
         super.activateWatchModeEnterPipe();
         this.useEnterPipeVxMax = true;
      }
      
      override protected function jump() : void
      {
         onGround = false;
         jumped = true;
         if(jmpBtn)
         {
            releasedJumpBtn = false;
            frictionY = false;
         }
         else
         {
            releasedJumpBtn = true;
         }
         if(cState === ST_CLIMB)
         {
            setState(ST_CLIMB_JUMP);
            brickState = BRICK_NONE;
         }
         var _loc1_:int = -1;
         if(!this.vertical)
         {
            if(rotation == ROT_WALL_BOT)
            {
               _loc1_ = 1;
            }
            if(underWater && !this.sophiaDwnBtn)
            {
               this.jumpEnd = ny - JUMP_HEIGHT_HORZ * _loc1_;
            }
            else
            {
               this.jumpEnd = ny - JUMP_HEIGHT_VERT * _loc1_;
            }
            vy = -JUMP_PWR * _loc1_;
            if(underWater)
            {
               vxMax = VX_MAX_WATER_BOOST;
            }
            vyMax = VY_MAX_DEF;
         }
         else
         {
            if(rotation == ROT_WALL_RIGHT)
            {
               _loc1_ = 1;
            }
            this.jumpEnd = nx - JUMP_HEIGHT_HORZ * _loc1_;
            vx = -JUMP_PWR * _loc1_;
            vxMax = VY_MAX_DEF;
            if(underWater)
            {
               vyMax = VY_MAX_WATER;
            }
         }
         this.readyToJump = false;
         this.setJumpRise(true);
         if(this.sophiaBase.y >= BASE_DEF_Y + this.baseVertOfs)
         {
            this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
         }
         else
         {
            this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
         }
         SND_MNGR.playSound(SN_JUMP);
         this.moveWheelsDown();
         if(this.attachedToPlatform || onPlatform)
         {
            this.attachedToPlatform = null;
            onPlatform = null;
         }
         disableStuckInWallShift = false;
      }
      
      override protected function bounce(param1:Enemy) : void
      {
         if(rotation != ROT_WALL_BOT)
         {
            this.detachFromWall();
            frictionY = false;
         }
         super.bounce(param1);
      }
      
      override protected function checkState() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Boolean = false;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Point = null;
         var _loc8_:Ground = null;
         if(!isNaN(screenScrollPosOffset) && cState != ST_WALL_TRANS)
         {
            screenScrollPosOffset -= this.scrollDist * SCROLL_EASE_SPEED * dt;
            screenScrollPosOffset *= Math.pow(SCROLL_FRICTION,dt);
            this.scrollDist = screenScrollPosOffset;
            _loc1_ = SCROLL_MIN_DIST;
            if(cState != ST_WALL_TRANS)
            {
               if(screenScrollPosOffset > -_loc1_ && screenScrollPosOffset < _loc1_)
               {
                  screenScrollPosOffset = NaN;
               }
            }
         }
         if(cState == ST_VINE)
         {
            mainAnimTmr = vineAnimTmr;
            checkVineBtns();
            if(GS_MNGR.gameState != GS_PLAY)
            {
               stopHit = true;
            }
            if(upBtn && this.sophiaBase.scaleX == -1)
            {
               this.sophiaBase.scaleX = 1;
               this.frontWheel.scaleX = 1;
               this.backWheel.scaleX = 1;
            }
            else if(dwnBtn && this.sophiaBase.scaleX == 1)
            {
               this.sophiaBase.scaleX = -1;
               this.frontWheel.scaleX = -1;
               this.backWheel.scaleX = -1;
            }
            this.checkVinePosition();
            if(stopAnim)
            {
               this.stopWheelAnimation();
            }
            else
            {
               this.startWheelAnimation();
            }
            return;
         }
         if(cState == ST_WALL_TRANS)
         {
            return;
         }
         mainAnimTmr = this.DEFAULT_ANIM_TMR;
         if(onGround || cState == ST_CLIMB)
         {
            jumped = false;
            if(underWater && cState != ST_CLIMB && cState != ST_WALL_TRANS)
            {
               defyGrav = false;
            }
            if(this.hover)
            {
               this.stopHoverSound();
               this.hover = false;
            }
            this.engagedHover = false;
            if(!this.vertical && vx != 0 || this.vertical && vy != 0)
            {
               this.startWheelAnimation();
               if(!this.BASE_VERT_TMR.running)
               {
                  this.BASE_VERT_TMR.numTotalCycles = 0;
                  this.BASE_VERT_TMR.delay = DEL_BASE_BOUNCE_TMR_FAST;
                  this.BASE_VERT_TMR.start();
               }
            }
            else
            {
               this.stopWheelAnimation();
               if(this.sophiaBase.y == BASE_BOUNCE_Y + this.baseVertOfs)
               {
                  this.BASE_VERT_TMR.stop();
                  this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
               }
               else if(this.sophiaUpBtn && this.BASE_VERT_TMR.running && this.sophiaBase.y == BASE_UP_BOUNCE_Y + this.baseVertOfs)
               {
                  this.BASE_VERT_TMR.stop();
                  this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
               }
            }
            if(this.frontWheel.y != WHEEL_DEF_Y)
            {
               this.moveWheelsUp();
            }
            if(!this.readyToJump)
            {
               this.checkWallsForClimb();
            }
            else if(rotation != ROT_WALL_BOT)
            {
               this.checkWallsForClimb(true,true);
            }
         }
         else
         {
            setState(ST_JUMP);
            if(vy >= 0 && rotation == ROT_WALL_BOT && (this.frontWheel.y != WHEEL_DEF_Y || this.baseVertOfs != BASE_VERT_OFS_FALL))
            {
               this.moveWheelsUp();
            }
            if(!this.engagedHover)
            {
               if(this.sophiaLftBtn && !this.sophiaRhtBtn || this.sophiaRhtBtn && !this.sophiaLftBtn)
               {
                  this.startWheelAnimation();
               }
               else
               {
                  this.stopWheelAnimation();
               }
               if(!underWater && rotation == ROT_WALL_BOT)
               {
                  brickState = BRICK_BOUNCER;
               }
            }
            else
            {
               brickState = BRICK_NONE;
            }
            if(underWater)
            {
               if(this.classic || !this.jumpRise)
               {
                  defyGrav = true;
                  brickState = BRICK_NONE;
                  if(this.backWheel.currentLabel != FL_WHEEL_WATER_1 && this.backWheel.currentLabel != FL_WHEEL_WATER_2 || this.sophiaBase.currentLabel != FL_BASE_HORZ)
                  {
                     this.sophiaBase.setStopFrame(FL_BASE_HORZ);
                     this.resetAllParts();
                     this.setUpWheelsForWater();
                  }
               }
            }
            else if(!this.jumpRise && (rotation == ROT_WALL_BOT || rotation == ROT_WALL_TOP))
            {
               defyGrav = false;
            }
            if(this.hover)
            {
               vy -= HOVER_BOOST_POWER;
               if(vy < -HOVER_MAX_SPEED)
               {
                  vy = -HOVER_MAX_SPEED;
               }
            }
            else if(this.jumpRise)
            {
               if(rotation == ROT_WALL_BOT && ny <= this.jumpEnd)
               {
                  ny = this.jumpEnd;
                  this.setJumpRise(false);
               }
               else if(rotation == ROT_WALL_TOP && ny >= this.jumpEnd)
               {
                  ny = this.jumpEnd;
                  this.detachFromWall();
                  this.setJumpRise(false);
               }
               else if(rotation == ROT_WALL_LEFT && nx >= this.jumpEnd)
               {
                  nx = this.jumpEnd;
                  this.detachFromWall();
                  this.setJumpRise(false);
                  defyGrav = true;
               }
               else if(rotation == ROT_WALL_RIGHT && nx <= this.jumpEnd)
               {
                  nx = this.jumpEnd;
                  this.detachFromWall();
                  this.setJumpRise(false);
                  defyGrav = true;
               }
            }
            if(!this.hover && !underWater)
            {
               if(frictionY && rotation == ROT_WALL_BOT)
               {
                  if(vy < 0)
                  {
                     vy *= Math.pow(fy,dt);
                  }
                  else
                  {
                     frictionY = false;
                  }
               }
               else if(!this.jumpRise && rotation == ROT_WALL_BOT && vy < 0)
               {
                  vy *= Math.pow(FY_HOLD_JMP,dt);
               }
            }
         }
         if(underWater && ny <= GLOB_STG_TOP + level.TILE_SIZE * 2)
         {
            this.exitWater();
         }
         if(!this.hover && cState != ST_WALL_TRANS)
         {
            this.checkWheelTmrDelay();
         }
         if(cState == ST_CLIMB && !this.attachedToPlatform)
         {
            _loc3_ = true;
            if(rotation == ROT_WALL_LEFT)
            {
               _loc4_ = [level.getCurrentGrid(hLft - TILE_SIZE,hBot),level.getCurrentGrid(hLft - TILE_SIZE,ny),level.getCurrentGrid(hLft - TILE_SIZE,hTop)];
            }
            else if(rotation == ROT_WALL_RIGHT)
            {
               _loc4_ = [level.getCurrentGrid(hRht,hBot),level.getCurrentGrid(hRht,ny),level.getCurrentGrid(hRht,hTop)];
            }
            else
            {
               _loc4_ = [level.getCurrentGrid(hLft,hTop - TILE_SIZE),level.getCurrentGrid(nx,hTop - TILE_SIZE),level.getCurrentGrid(hRht,hTop - TILE_SIZE)];
            }
            _loc5_ = _loc4_.length;
            while(_loc6_ < _loc5_)
            {
               _loc7_ = _loc4_[_loc6_];
               if((_loc8_ = level.getGroundAt(_loc7_.x,_loc7_.y)) && _loc8_.visible)
               {
                  _loc3_ = false;
                  break;
               }
               _loc6_++;
            }
            if(_loc3_)
            {
               this.detachFromWall();
            }
         }
         if(stuckInWall && !disableStuckInWallShift && this.jumpRise)
         {
            this.setJumpRise(false);
         }
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         endReplaceColor();
         this.resetAllParts();
         this.sophiaBase.setStopFrame(FL_MAIN);
         this.setUpWheelsForLand();
         drawFrameLabel = null;
         super.prepareDrawCharacter(param1);
      }
      
      override public function climbVineStarter(param1:Vine) : void
      {
         super.climbVineStarter(param1);
         this.pressUpBtn();
      }
      
      override protected function checkVinePosition() : void
      {
         super.checkVinePosition();
         if(!vine)
         {
            return;
         }
         this.sophiaBase.setStopFrame(FL_BASE_HORZ);
         this.sophiaBase.rotation = -90;
         this.sophiaBase.x = 11;
         this.sophiaBase.y = -19;
         this.frontWheel.rotation = -90;
         this.frontWheel.x = 7;
         this.frontWheel.y = -35;
         this.backWheel.rotation = -90;
         this.backWheel.x = this.frontWheel.x;
         this.backWheel.y = -3;
      }
      
      private function checkWheelTmrDelay() : void
      {
         var _loc1_:Number = NaN;
         if(!onGround && !underWater)
         {
            this.WHEEL_TMR.delay = DEL_WHEEL_TMR_FAST;
            if(!this.readyToJump)
            {
               this.BASE_VERT_TMR.delay = DEL_BASE_BOUNCE_TMR_FAST;
            }
            return;
         }
         if(rotation == ROT_WALL_BOT || rotation == ROT_WALL_TOP)
         {
            _loc1_ = vx;
         }
         else
         {
            _loc1_ = vy;
         }
         var _loc2_:Number = this.BASE_VERT_TMR.delay;
         if(_loc1_ < 0)
         {
            _loc1_ = -_loc1_;
         }
         if(this.backWheel.currentLabel == FL_WHEEL_WATER_1 || this.backWheel.currentLabel == FL_WHEEL_WATER_2)
         {
            if(_loc1_ <= VX_MAX_WATER_NORMAL)
            {
               this.WHEEL_TMR.delay = DEL_WHEEL_TMR_WATER_SLOW;
            }
            else
            {
               this.WHEEL_TMR.delay = DEL_WHEEL_TMR_WATER_FAST;
            }
         }
         else if(_loc1_ >= 0 && _loc1_ < SLOW_DELAY_MAX_VX)
         {
            this.WHEEL_TMR.delay = DEL_WHEEL_TMR_SLOW;
            this.BASE_VERT_TMR.delay = DEL_BASE_BOUNCE_TMR_SLOW;
         }
         else if(SLOW_DELAY_MAX_VX >= 0 && _loc1_ < MEDIUM_DELAY_MAX_VX)
         {
            this.WHEEL_TMR.delay = DEL_WHEEL_TMR_MEDIUM;
            this.BASE_VERT_TMR.delay = DEL_BASE_BOUNCE_TMR_MEDIUM;
         }
         else
         {
            this.WHEEL_TMR.delay = DEL_WHEEL_TMR_FAST;
            this.BASE_VERT_TMR.delay = DEL_BASE_BOUNCE_TMR_FAST;
         }
         if(this.readyToJump)
         {
            this.BASE_VERT_TMR.delay = _loc2_;
         }
      }
      
      private function checkWallsForClimb(param1:Boolean = false, param2:Boolean = false) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:Number = NaN;
         var _loc6_:Ground = null;
         var _loc7_:Ground = null;
         var _loc8_:int = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         this.falseGroundRect = null;
         if(!this.vertical)
         {
            _loc14_ = false;
            if(rotation == ROT_WALL_BOT)
            {
               _loc14_ = true;
            }
            if(vx > 0 || param1 && this.sophiaScaleX > 0)
            {
               _loc8_ = 1;
               if(this.sophiaRhtBtn && !this.sophiaLftBtn)
               {
                  _loc9_ = true;
               }
            }
            else if(vx < 0 || param1 && this.sophiaScaleX < 0)
            {
               _loc8_ = -1;
               if(this.sophiaLftBtn && !this.sophiaRhtBtn)
               {
                  _loc9_ = true;
               }
            }
            else if(_loc14_)
            {
               if(this.sophiaRhtBtn && !this.sophiaLftBtn)
               {
                  _loc8_ = 1;
                  _loc9_ = true;
               }
               else if(this.sophiaLftBtn && !this.sophiaRhtBtn)
               {
                  _loc8_ = -1;
                  _loc9_ = true;
               }
            }
            if(_loc8_ == 0)
            {
               return;
            }
            if(param2 && _loc9_)
            {
               _loc9_ = false;
            }
            if(onPlatform)
            {
               _loc12_ = nx + CLIMB_INVERTED_OFS * _loc8_;
               _loc13_ = onPlatform.x + onPlatform.width / 2 * _loc8_;
               if(_loc8_ > 0 && _loc12_ >= _loc13_ || _loc8_ < 0 && _loc12_ <= _loc13_)
               {
                  if(_loc8_ > 0 && (_loc14_ && this.sophiaDwnBtn || !_loc14_ && this.sophiaRhtBtn))
                  {
                     this.wallTransStart(onPlatform,WALL_LEFT_STR,true);
                  }
                  else if(_loc8_ < 0 && (_loc14_ && this.sophiaDwnBtn || !_loc14_ && this.sophiaLftBtn))
                  {
                     this.wallTransStart(onPlatform,WALL_RIGHT_STR,true);
                  }
                  if(cState === ST_WALL_TRANS)
                  {
                     return;
                  }
                  if(!_loc14_)
                  {
                     nx = _loc13_ - CLIMB_INVERTED_OFS * _loc8_;
                     vx = 0;
                     return;
                  }
               }
            }
            if(_loc14_)
            {
               _loc4_ = ny - TILE_SIZE;
            }
            else
            {
               _loc4_ = ny;
            }
            _loc3_ = level.getNearestGrid(nx + CLIMB_OFS * _loc8_,-1);
            if((!(_loc7_ = level.getGroundAt(_loc3_,_loc4_)) || !_loc7_.visible) && this.sophiaUpBtn)
            {
               if(_loc14_)
               {
                  if((_loc6_ = level.getGroundAt(_loc3_,_loc4_ - TILE_SIZE)) && _loc6_.visible)
                  {
                     this.falseGroundRect = new Rectangle(_loc6_.x,_loc6_.y + TILE_SIZE,TILE_SIZE,TILE_SIZE);
                  }
               }
               else if((_loc6_ = level.getGroundAt(_loc3_,_loc4_ + TILE_SIZE)) && _loc6_.visible)
               {
                  this.falseGroundRect = new Rectangle(_loc6_.x,_loc6_.y - TILE_SIZE,TILE_SIZE,TILE_SIZE);
               }
            }
            if(!_loc14_)
            {
               _loc5_ = level.getCurrentGrid(nx,ny - TILE_SIZE);
               if(!(_loc6_ = level.getGroundAt(_loc5_.x,_loc5_.y)) || !_loc6_.visible)
               {
                  if(!(_loc6_ = level.getGroundAt(_loc5_.x + TILE_SIZE * _loc8_,_loc5_.y)) || !_loc6_.visible)
                  {
                     if((_loc6_ = level.getGroundAt(_loc3_,_loc4_ + TILE_SIZE)) && _loc6_.visible)
                     {
                        if(!(_loc6_ = level.getGroundAt(_loc6_.x - TILE_SIZE * _loc8_,_loc6_.y)) || !_loc6_.visible)
                        {
                           this.falseGroundRect = new Rectangle(_loc3_,_loc4_,TILE_SIZE,TILE_SIZE);
                        }
                     }
                     if(this.falseGroundRect)
                     {
                        if(_loc8_ < 1 && this.sophiaLftBtn && !this.sophiaRhtBtn)
                        {
                           this.wallTransStart(null,WALL_LEFT_STR,false,this.falseGroundRect);
                        }
                        else if(this.sophiaRhtBtn && !this.sophiaLftBtn)
                        {
                           this.wallTransStart(null,WALL_RIGHT_STR,false,this.falseGroundRect);
                        }
                        return;
                     }
                  }
               }
            }
            if(_loc7_ && _loc7_.visible || this.falseGroundRect)
            {
               _loc3_ -= TILE_SIZE * _loc8_;
               if(_loc14_)
               {
                  _loc4_ -= TILE_SIZE;
               }
               else
               {
                  _loc4_ += TILE_SIZE;
               }
               if((!(_loc6_ = level.getGroundAt(_loc3_,_loc4_)) || !_loc6_.visible) && _loc9_)
               {
                  if(_loc7_)
                  {
                     _loc11_ = hMidX - _loc7_.hMidX;
                  }
                  else if(this.falseGroundRect)
                  {
                     _loc11_ = hMidX - (this.falseGroundRect.x + this.falseGroundRect.width / 2);
                  }
                  if(_loc11_ < 0)
                  {
                     _loc11_ = -_loc11_;
                  }
                  if(_loc11_ > MIN_NORMAL_CLIMB_DIST)
                  {
                     if(_loc8_ > 0 && (_loc14_ && this.sophiaUpBtn && !this.sophiaDwnBtn || !_loc14_ && this.sophiaRhtBtn && !this.sophiaLftBtn))
                     {
                        this.wallTransStart(_loc7_,WALL_RIGHT_STR,false,this.falseGroundRect);
                     }
                     else if(_loc8_ < 0 && (_loc14_ && this.sophiaUpBtn && !this.sophiaDwnBtn || !_loc14_ && this.sophiaLftBtn && !this.sophiaRhtBtn))
                     {
                        this.wallTransStart(_loc7_,WALL_LEFT_STR,false,this.falseGroundRect);
                     }
                     if(cState == ST_WALL_TRANS)
                     {
                        return;
                     }
                  }
               }
               if(!_loc14_ && _loc7_ || _loc14_ && cState == ST_WALL_TRANS)
               {
                  vx = 0;
                  if(_loc8_ > 0)
                  {
                     _loc3_ += TILE_SIZE;
                  }
                  nx = _loc3_ - CLIMB_OFS * _loc8_;
                  vx = 0;
               }
               if(vx == 0 && cState != ST_WALL_TRANS)
               {
                  _loc10_ = true;
               }
               if(this.falseGroundRect && cState != ST_WALL_TRANS)
               {
                  _loc10_ = true;
               }
            }
            else
            {
               _loc10_ = true;
            }
            if(_loc10_)
            {
               if(_loc14_)
               {
                  _loc4_ = ny;
               }
               else
               {
                  _loc4_ = ny - TILE_SIZE;
               }
               _loc3_ = level.getNearestGrid(nx + CLIMB_INVERTED_OFS * _loc8_,-1);
               if(!(_loc6_ = level.getGroundAt(_loc3_,_loc4_)) || !_loc6_.visible)
               {
                  if((_loc7_ = level.getGroundAt(_loc3_ - TILE_SIZE * _loc8_,_loc4_)) && _loc7_.visible)
                  {
                     if((_loc11_ = hMidX - _loc7_.hMidX) < 0)
                     {
                        _loc11_ = -_loc11_;
                     }
                     if(_loc11_ < MAX_INVERTED_CLIMB_DIST)
                     {
                        if(_loc14_)
                        {
                           if(_loc9_)
                           {
                              if(_loc8_ > 0 && this.sophiaDwnBtn && !this.sophiaUpBtn)
                              {
                                 this.wallTransStart(_loc7_,WALL_LEFT_STR,true);
                              }
                              else if(_loc8_ < 0 && this.sophiaDwnBtn && !this.sophiaUpBtn)
                              {
                                 this.wallTransStart(_loc7_,WALL_RIGHT_STR,true);
                              }
                              if(cState == ST_WALL_TRANS)
                              {
                                 return;
                              }
                           }
                        }
                        else
                        {
                           if(!(_loc6_ = level.getGroundAt(_loc3_ + TILE_SIZE * _loc8_,_loc4_)) || !_loc6_.visible)
                           {
                              _loc6_ = level.getGroundAt(_loc3_ + TILE_SIZE * _loc8_,_loc4_ + level.TILE_SIZE);
                           }
                           if(this.sophiaUpBtn && (!_loc6_ || !_loc6_.visible))
                           {
                              if((_loc6_ = level.getGroundAt(_loc3_ + TILE_SIZE * _loc8_,_loc4_ + level.TILE_SIZE * 2)) && _loc6_.visible)
                              {
                                 if(!(_loc6_ = level.getGroundAt(_loc6_.x - TILE_SIZE * _loc8_,_loc6_.y)) || !_loc6_.visible)
                                 {
                                    return;
                                 }
                              }
                              _loc6_ = null;
                           }
                           if(!_loc6_ || !_loc6_.visible || this.sophiaDwnBtn)
                           {
                              if(_loc9_)
                              {
                                 if(_loc8_ > 0 && (this.sophiaRhtBtn && !this.sophiaLftBtn))
                                 {
                                    this.wallTransStart(_loc7_,WALL_LEFT_STR,true);
                                 }
                                 else if(_loc8_ < 0 && (this.sophiaLftBtn && !this.sophiaRhtBtn))
                                 {
                                    this.wallTransStart(_loc7_,WALL_RIGHT_STR,true);
                                 }
                                 if(cState == ST_WALL_TRANS)
                                 {
                                    return;
                                 }
                              }
                              if(!_loc14_ && cState != ST_WALL_TRANS)
                              {
                                 vx = 0;
                                 if(_loc8_ < 0)
                                 {
                                    _loc3_ += TILE_SIZE;
                                 }
                                 nx = _loc3_ - CLIMB_INVERTED_OFS * _loc8_;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         else
         {
            _loc15_ = false;
            if(rotation == ROT_WALL_LEFT)
            {
               _loc15_ = true;
            }
            if(vy < 0 || param1 && this.sophiaScaleX < 0)
            {
               _loc8_ = -1;
               if(this.sophiaLftBtn && !this.sophiaRhtBtn)
               {
                  _loc9_ = true;
               }
            }
            else if(vy > 0 || param1 && this.sophiaScaleX > 0)
            {
               _loc8_ = 1;
               if(this.sophiaRhtBtn && !this.sophiaLftBtn)
               {
                  _loc9_ = true;
               }
            }
            if(_loc8_ == 0)
            {
               return;
            }
            if(param2 && _loc9_)
            {
               _loc9_ = false;
            }
            if(this.attachedToPlatform)
            {
               if(this.sophiaLftBtn && !this.sophiaRhtBtn)
               {
                  this.wallTransStart(this.attachedToPlatform,WALL_BOTTOM_STR,true);
               }
               else if(this.sophiaRhtBtn && !this.sophiaLftBtn)
               {
                  this.wallTransStart(this.attachedToPlatform,WALL_TOP_STR,true);
               }
               if(cState === ST_WALL_TRANS)
               {
                  return;
               }
            }
            if(_loc15_)
            {
               _loc3_ = hLft;
            }
            else
            {
               _loc3_ = hRht - TILE_SIZE;
            }
            _loc4_ = level.getNearestGrid(ny + CLIMB_OFS * _loc8_,-1);
            if(_loc15_)
            {
               _loc5_ = level.getCurrentGrid(nx - TILE_SIZE,ny);
            }
            else
            {
               _loc5_ = level.getCurrentGrid(nx,ny);
            }
            if(!(_loc6_ = level.getGroundAt(_loc5_.x,_loc5_.y)) || !_loc6_.visible)
            {
               if(!(_loc6_ = level.getGroundAt(_loc5_.x,_loc5_.y + TILE_SIZE * _loc8_)) || !_loc6_.visible)
               {
                  if(_loc15_)
                  {
                     _loc16_ = _loc3_ + TILE_SIZE;
                  }
                  else
                  {
                     _loc16_ = _loc3_ - TILE_SIZE;
                  }
                  if((_loc6_ = level.getGroundAt(_loc16_,_loc4_)) && _loc6_.visible)
                  {
                     if(!(_loc6_ = level.getGroundAt(_loc6_.x,_loc6_.y - TILE_SIZE * _loc8_)) || !_loc6_.visible)
                     {
                        this.falseGroundRect = new Rectangle(_loc3_,_loc4_,TILE_SIZE,TILE_SIZE);
                     }
                  }
                  if(this.falseGroundRect)
                  {
                     if(_loc8_ < 1 && this.sophiaLftBtn && !this.sophiaRhtBtn)
                     {
                        this.wallTransStart(null,WALL_TOP_STR,false,this.falseGroundRect);
                     }
                     else if(this.sophiaRhtBtn && !this.sophiaLftBtn)
                     {
                        this.wallTransStart(null,WALL_BOTTOM_STR,false,this.falseGroundRect);
                     }
                     if(cState === ST_WALL_TRANS)
                     {
                        return;
                     }
                     vy = 0;
                     if(_loc8_ < 0)
                     {
                        ny = this.falseGroundRect.bottom + CLIMB_OFS;
                     }
                     else
                     {
                        ny = this.falseGroundRect.top - CLIMB_OFS;
                     }
                     return;
                  }
               }
            }
            if((!(_loc7_ = level.getGroundAt(_loc3_,_loc4_)) || !_loc7_.visible) && this.sophiaUpBtn)
            {
               if(_loc15_)
               {
                  if((_loc6_ = level.getGroundAt(_loc3_ + TILE_SIZE,_loc4_)) && _loc6_.visible)
                  {
                     this.falseGroundRect = new Rectangle(_loc6_.x - TILE_SIZE,_loc6_.y,TILE_SIZE,TILE_SIZE);
                  }
               }
               else if((_loc6_ = level.getGroundAt(_loc3_ - TILE_SIZE,_loc4_)) && _loc6_.visible)
               {
                  this.falseGroundRect = new Rectangle(_loc6_.x + TILE_SIZE,_loc6_.y,TILE_SIZE,TILE_SIZE);
               }
            }
            if(_loc7_ && _loc7_.visible || this.falseGroundRect)
            {
               _loc4_ -= TILE_SIZE * _loc8_;
               if(_loc15_)
               {
                  _loc3_ += TILE_SIZE;
               }
               else
               {
                  _loc3_ -= TILE_SIZE;
               }
               _loc6_ = level.getGroundAt(_loc3_,_loc4_);
               if(_loc9_ && (!_loc6_ || !_loc6_.visible))
               {
                  if(_loc7_)
                  {
                     _loc11_ = hMidY - _loc7_.hMidY;
                  }
                  else if(this.falseGroundRect)
                  {
                     _loc11_ = hMidY - (this.falseGroundRect.y + this.falseGroundRect.height / 2);
                  }
                  if(_loc11_ < 0)
                  {
                     _loc11_ = -_loc11_;
                  }
                  if(_loc11_ > MIN_NORMAL_CLIMB_DIST)
                  {
                     if(_loc8_ < 0 && (this.sophiaLftBtn && !this.sophiaRhtBtn))
                     {
                        this.wallTransStart(_loc7_,WALL_TOP_STR,false,this.falseGroundRect);
                     }
                     else if(_loc8_ > 0 && (this.sophiaRhtBtn && !this.sophiaLftBtn))
                     {
                        this.wallTransStart(_loc7_,WALL_BOTTOM_STR,false,this.falseGroundRect);
                     }
                     if(cState === ST_WALL_TRANS)
                     {
                        return;
                     }
                  }
               }
               if(_loc7_)
               {
                  vy = 0;
                  if(_loc8_ < 0)
                  {
                     ny = _loc7_.hBot + CLIMB_OFS;
                  }
                  else
                  {
                     ny = _loc7_.hTop - CLIMB_OFS;
                  }
                  if(vy == 0 && cState != ST_WALL_TRANS)
                  {
                     _loc10_ = true;
                  }
               }
               if(this.falseGroundRect && cState != ST_WALL_TRANS)
               {
                  _loc10_ = true;
               }
            }
            else
            {
               _loc10_ = true;
            }
            if(_loc10_)
            {
               if(_loc15_)
               {
                  _loc3_ = hLft - TILE_SIZE;
               }
               else
               {
                  _loc3_ = hRht;
               }
               _loc4_ = level.getNearestGrid(ny + CLIMB_INVERTED_OFS * _loc8_,-1);
               if(!(_loc6_ = level.getGroundAt(_loc3_,_loc4_)) || !_loc6_.visible)
               {
                  _loc7_ = level.getGroundAt(_loc3_,_loc4_ - level.TILE_SIZE * _loc8_);
                  if(!(_loc6_ = level.getGroundAt(_loc3_,_loc4_ + level.TILE_SIZE * _loc8_)) || !_loc6_.visible)
                  {
                     if(_loc15_)
                     {
                        _loc6_ = level.getGroundAt(_loc3_ + level.TILE_SIZE,_loc4_ + level.TILE_SIZE * _loc8_);
                     }
                     else
                     {
                        _loc6_ = level.getGroundAt(_loc3_ - level.TILE_SIZE,_loc4_ + level.TILE_SIZE * _loc8_);
                     }
                  }
                  if(this.sophiaUpBtn && (!_loc6_ || !_loc6_.visible))
                  {
                     if(_loc15_)
                     {
                        _loc6_ = level.getGroundAt(_loc3_ + level.TILE_SIZE * 2,_loc4_ + level.TILE_SIZE * _loc8_);
                     }
                     else
                     {
                        _loc6_ = level.getGroundAt(_loc3_ - level.TILE_SIZE * 2,_loc4_ + level.TILE_SIZE * _loc8_);
                     }
                     if(_loc6_ && _loc6_.visible)
                     {
                        if(!(_loc6_ = level.getGroundAt(_loc6_.x,_loc6_.y - TILE_SIZE * _loc8_)) || !_loc6_.visible)
                        {
                           return;
                        }
                     }
                     _loc6_ = null;
                  }
                  if(_loc7_ && (!_loc6_ || !_loc6_.visible || this.sophiaDwnBtn))
                  {
                     if((_loc11_ = hMidY - _loc7_.hMidY) < 0)
                     {
                        _loc11_ = -_loc11_;
                     }
                     if(_loc11_ < MAX_INVERTED_CLIMB_DIST)
                     {
                        if(_loc9_)
                        {
                           if(_loc8_ < 0 && (_loc7_ && this.sophiaLftBtn && !this.sophiaRhtBtn))
                           {
                              this.wallTransStart(_loc7_,WALL_BOTTOM_STR,true);
                           }
                           else if(_loc8_ > 0 && (_loc7_ && this.sophiaRhtBtn && !this.sophiaLftBtn))
                           {
                              this.wallTransStart(_loc7_,WALL_TOP_STR,true);
                           }
                           if(cState === ST_WALL_TRANS)
                           {
                              return;
                           }
                        }
                        if(cState != ST_WALL_TRANS)
                        {
                           vy = 0;
                           if(_loc8_ < 0)
                           {
                              ny = _loc4_ + TILE_SIZE + CLIMB_INVERTED_OFS;
                           }
                           else
                           {
                              ny = _loc4_ - CLIMB_INVERTED_OFS;
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function resetAllParts() : void
      {
         this.frontWheel.x = FRONT_WHEEL_DEF_X;
         this.frontWheel.y = WHEEL_DEF_Y;
         this.backWheel.x = BACK_WHEEL_DEF_X;
         this.backWheel.y = WHEEL_DEF_Y;
         this.sophiaBase.x = BASE_DEF_X;
         this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
         this.BASE_VERT_TMR.stop();
      }
      
      override protected function activateStarPwr() : void
      {
         super.activateStarPwr();
         this.setAmmo(SOPHIA_HOVER,HOVER_MAX);
      }
      
      private function startWheelAnimation() : void
      {
         if(!this.WHEEL_TMR.running)
         {
            this.WHEEL_TMR.start();
         }
         if(this.backWheel.currentLabel != this.convLab(FL_WHEEL_HOVER_TRANS))
         {
            if(!underWater || onGround)
            {
               this.frontWheel.stopAnim = false;
            }
            this.backWheel.stopAnim = false;
         }
      }
      
      private function stopWheelAnimation() : void
      {
         if(this.WHEEL_TMR.running && this.backWheel.currentLabel != this.convLab(FL_WHEEL_HOVER_TRANS))
         {
            this.WHEEL_TMR.stop();
         }
         this.frontWheel.stopAnim = true;
         this.backWheel.stopAnim = true;
      }
      
      private function moveWheelsUp() : void
      {
         this.frontWheel.y = WHEEL_DEF_Y;
         this.backWheel.y = WHEEL_DEF_Y;
         if(!onGround)
         {
            this.baseVertOfs = BASE_VERT_OFS_FALL;
            if(this.sophiaBase.y == BASE_DEF_Y)
            {
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
            }
         }
      }
      
      private function moveWheelsDown() : void
      {
         this.frontWheel.y = WHEEL_JUMP_Y;
         this.backWheel.y = WHEEL_JUMP_Y;
         this.baseVertOfs = BASE_VERT_OFS_DEF;
      }
      
      private function moveWheelsLeft() : void
      {
      }
      
      private function moveWheelsRight() : void
      {
      }
      
      private function deactivateHoverMode() : void
      {
         this.engagedHover = false;
         this.hover = false;
         this.stopHoverSound();
         this.WHEEL_TMR.delay = DEL_WHEEL_HOVER_TRANS;
         this.frontWheel.setStopFrame(FL_WHEEL_HOVER_TRANS);
         this.backWheel.setStopFrame(FL_WHEEL_HOVER_TRANS);
         this.WHEEL_TMR.start();
         this.activateGainHoverTmr();
      }
      
      private function activateGainHoverTmr() : void
      {
         if(this.LOSE_HOVER_TMR.running)
         {
            this.LOSE_HOVER_TMR.pause();
         }
         if(this.GAIN_HOVER_TMR.running || getAmmo(SOPHIA_HOVER) == HOVER_MAX)
         {
            return;
         }
         this.GAIN_HOVER_TMR.resume();
      }
      
      private function activateLoseHoverTmr() : void
      {
         if(this.GAIN_HOVER_TMR.running)
         {
            this.GAIN_HOVER_TMR.pause();
         }
         if(this.LOSE_HOVER_TMR.running || getAmmo(SOPHIA_HOVER) == HOVER_MIN)
         {
            return;
         }
         this.LOSE_HOVER_TMR.resume();
      }
      
      private function stopHoverSound() : void
      {
         var _loc1_:SoundContainer = SND_MNGR.findSound(SN_HOVER);
         if(_loc1_)
         {
            _loc1_.pauseSound();
            SND_MNGR.removeSnd(_loc1_);
         }
      }
      
      override protected function bouncePit() : void
      {
         if(rotation != ROT_WALL_BOT)
         {
            this.detachFromWall();
         }
         if(this.engagedHover || this.hover)
         {
            this.deactivateHoverMode();
         }
         super.bouncePit();
      }
      
      override protected function enterPipeVert() : void
      {
         if(rotation != ROT_WALL_BOT || cState === ST_WALL_TRANS)
         {
            return;
         }
         this.sophiaBase.stopAnim = true;
         this.stopWheelAnimation();
         stopTimers();
         this.setUpWheelsForLand();
         this.sophiaBase.setStopFrame(FL_BASE_HORZ);
         super.enterPipeVert();
      }
      
      override protected function enterPipeHorz() : void
      {
         if(rotation != ROT_WALL_BOT || cState === ST_WALL_TRANS)
         {
            return;
         }
         super.enterPipeHorz();
         stopAnim = true;
         this.startWheelAnimation();
         this.BASE_VERT_TMR.start();
      }
      
      override public function enterWater() : void
      {
         var _loc1_:TutorialManager = TutorialManager.TUT_MNGR;
         _loc1_.checkTutorial(CHAR_NAME + _loc1_.TYPE_WATER,true);
         super.enterWater();
         if(cState != ST_CLIMB)
         {
            if(!jmpBtn)
            {
               vxMax = VX_MAX_WATER_NORMAL;
            }
            else
            {
               vxMax = VX_MAX_WATER_BOOST;
            }
            vyMax = VY_MAX_WATER;
            if(this.hover || this.engagedHover)
            {
               this.deactivateHoverMode();
            }
            else
            {
               this.setUpWheelsForWater();
            }
            this.resetAllParts();
         }
         else
         {
            vxMax = MAX_SPEED_CLIMB_WATER;
            vyMax = MAX_SPEED_CLIMB_WATER;
         }
         if(this.sophiaBase.currentLabel != FL_BASE_HORZ)
         {
            this.sophiaBase.setStopFrame(FL_BASE_HORZ);
         }
         gravity = GRAVITY_WATER;
      }
      
      override protected function exitWater() : void
      {
         var _loc1_:Number = GLOB_STG_TOP + level.TILE_SIZE * 2;
         if(rotation == ROT_WALL_BOT && ny > _loc1_ && GS_MNGR.gameState == GS_PLAY)
         {
            if(!wallOnLeft && !wallOnRight)
            {
               if(ny < _loc1_ + hHeight)
               {
                  ny = _loc1_ + hHeight;
               }
               if(vy < 0)
               {
                  vy = 0;
               }
            }
            if(this.jumpRise)
            {
               this.setJumpRise(false);
            }
            return;
         }
         super.exitWater();
         vxMax = VX_MAX_DEF;
         if(cState != ST_CLIMB)
         {
            defyGrav = false;
            vyMax = VY_MAX_DEF;
         }
         else
         {
            vyMax = VX_MAX_DEF;
         }
         vyMaxPsv = VY_MAX_PSV_DEF;
         gravity = GRAVITY;
         var _loc2_:String = this.backWheel.currentLabel;
         if(_loc2_ == FL_WHEEL_WATER_1 || _loc2_ == FL_WHEEL_WATER_2)
         {
            this.setUpWheelsForLand();
         }
      }
      
      private function setUpWheelsForWater() : void
      {
         this.frontWheel.setStopFrame(FL_WHEEL_START);
         this.backWheel.setStopFrame(FL_WHEEL_WATER_1);
      }
      
      private function setUpWheelsForLand() : void
      {
         this.frontWheel.setStopFrame(FL_WHEEL_START);
         this.backWheel.setStopFrame(FL_WHEEL_END);
         this.backWheel.gotoAndStop(this.backWheel.currentFrame - 1);
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         super.hitPickup(param1,param2);
         switch(param1.type)
         {
            case SOPHIA_HOMING_MISSILE:
               this.updSubWeapon();
               break;
            case SOPHIA_MISSILE:
               this.updSubWeapon();
               break;
            case SOPHIA_HOVER:
               this.updHoverBarVisibility();
               break;
            case HOMING_MISSILE_AMMO:
               STAT_MNGR.addCharUpgrade(charNum,SOPHIA_HOMING_MISSILE);
               this.updSubWeapon();
               increaseAmmoByValue(SOPHIA_HOMING_MISSILE,HOMING_MISSILE_PICKUP_VALUE);
               break;
            case MISSILE_AMMO:
               STAT_MNGR.addCharUpgrade(charNum,SOPHIA_MISSILE);
               this.updSubWeapon();
               increaseAmmoByValue(SOPHIA_MISSILE,MISSILE_PICKUP_VALUE);
         }
      }
      
      override public function revivalBoost() : void
      {
         super.revivalBoost();
         this.hitPickup(new Pickup(HOMING_MISSILE_AMMO),false);
         this.hitPickup(new Pickup(HOMING_MISSILE_AMMO),false);
         this.hitPickup(new Pickup(MISSILE_AMMO),false);
         this.hitPickup(new Pickup(MISSILE_AMMO),false);
      }
      
      private function setSophiaDirBtns() : void
      {
         this.sophiaRelUpBtn();
         this.sophiaRelDwnBtn();
         this.sophiaRelLftBtn();
         this.sophiaRelRhtBtn();
         if(upBtn)
         {
            this.pressUpBtn();
         }
         if(dwnBtn)
         {
            this.pressDwnBtn();
         }
         if(lftBtn)
         {
            this.pressLftBtn();
         }
         if(rhtBtn)
         {
            this.pressRhtBtn();
         }
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE || cState == ST_WALL_TRANS)
         {
            return;
         }
         super.pressJmpBtn();
         if(onGround && cState != ST_CLIMB || onGround && !this.sophiaDwnBtn)
         {
            if(this.sophiaBase.y >= BASE_DEF_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_JUMP_BOUNCE_Y + this.baseVertOfs;
            }
            else
            {
               this.sophiaBase.y = BASE_UP_JUMP_BOUNCE_Y + this.baseVertOfs;
            }
            this.BASE_VERT_TMR.numTotalCycles = 1;
            this.BASE_VERT_TMR.delay = DEL_BASE_JUMP_BOUNCE_TMR;
            this.BASE_VERT_TMR.start();
            this.readyToJump = true;
         }
         else if(upgradeIsActive(SOPHIA_HOVER) && !onGround && (rotation == ROT_WALL_BOT || !this.engagedHover) && this.checkDropFromWall(true))
         {
            if(!onSpring && !underWater && (getAmmo(SOPHIA_HOVER) > HOVER_MIN || starPwr || Cheats.infiniteAmmo))
            {
               if(this.engagedHover)
               {
                  this.backWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
                  this.frontWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
                  this.WHEEL_TMR.start();
               }
               else
               {
                  this.backWheel.setPlayFrame(FL_WHEEL_HOVER_TRANS);
                  this.frontWheel.setPlayFrame(FL_WHEEL_HOVER_TRANS);
                  this.WHEEL_TMR.delay = DEL_BASE_JUMP_BOUNCE_TMR;
                  this.WHEEL_TMR.start();
                  this.moveWheelsUp();
                  this.frontWheel.x = FRONT_WHEEL_DEF_X;
                  this.backWheel.x = BACK_WHEEL_DEF_X;
               }
               if(!this.hover)
               {
                  SND_MNGR.playSound(SN_HOVER);
               }
               this.engagedHover = true;
               this.hover = true;
               this.activateLoseHoverTmr();
               frictionY = false;
               this.setJumpRise(false);
               if(rotation != ROT_WALL_BOT)
               {
                  this.detachFromWall();
               }
            }
         }
         else if(cState === ST_CLIMB)
         {
            this.checkDropFromWall();
         }
      }
      
      override public function relJmpBtn() : void
      {
         super.relJmpBtn();
         if(!onGround)
         {
            if(!releasedJumpBtn)
            {
               if(!bounced)
               {
                  frictionY = true;
               }
               releasedJumpBtn = true;
            }
            else if(this.hover)
            {
               frictionY = true;
               this.hover = false;
               this.activateGainHoverTmr();
               this.frontWheel.setStopFrame(FL_WHEEL_HOVER);
               this.backWheel.setStopFrame(FL_WHEEL_HOVER);
               this.stopHoverSound();
            }
            if(this.jumpRise)
            {
               frictionY = false;
            }
         }
      }
      
      override public function pressAtkBtn() : void
      {
         var _loc2_:Projectile = null;
         var _loc3_:SophiaBullet = null;
         if(this.sophiaDwnBtn && !underWater)
         {
            this.pressSpcBtn();
            return;
         }
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         if(cState === ST_WALL_TRANS)
         {
            return;
         }
         var _loc1_:int = 0;
         for each(_loc2_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc2_ is SophiaBullet)
            {
               _loc3_ = _loc2_ as SophiaBullet;
               if(_loc3_.shotType != SHOT_TYPE_HOMING_MISSILE && _loc3_.shotType != SHOT_TYPE_MISSILE)
               {
                  _loc1_++;
               }
            }
         }
         if(_loc1_ < MAX_BULLETS_ON_SCREEN)
         {
            level.addToLevel(new SophiaBullet(this));
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         this.updSubWeapon(true);
      }
      
      private function getNumMissilesOnScreen(param1:String) : int
      {
         var _loc2_:int = 0;
         var _loc3_:Projectile = null;
         for each(_loc3_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc3_ is SophiaBullet && (_loc3_ as SophiaBullet).shotType == param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      override public function pressSpcBtn() : void
      {
         var _loc1_:AnimatedObject = null;
         super.pressSpcBtn();
         if(cState === ST_WALL_TRANS || cState == ST_VINE)
         {
            return;
         }
         switch(this.curSubWeapon)
         {
            case SOPHIA_HOMING_MISSILE:
               if(hasEnoughAmmo(SOPHIA_HOMING_MISSILE) && this.getNumMissilesOnScreen(SHOT_TYPE_HOMING_MISSILE) < MAX_HOMING_MISSILES_ON_SCREEN)
               {
                  for each(_loc1_ in level.AO_STG_DCT)
                  {
                     if(_loc1_ is Enemy && !_loc1_.stopHit && _loc1_.onScreen && (!_loc1_.getProperty(PR_PIERCE_PAS) || Cheats.allWeaponsPierce))
                     {
                        level.addToLevel(new SophiaBullet(this,SHOT_TYPE_HOMING_MISSILE));
                        decAmmo(SOPHIA_HOMING_MISSILE);
                        break;
                     }
                  }
               }
               break;
            case SOPHIA_MISSILE:
               if(hasEnoughAmmo(SOPHIA_MISSILE) && this.getNumMissilesOnScreen(SHOT_TYPE_MISSILE) < MAX_MISSILES_ON_SCREEN)
               {
                  SophiaBullet.launchMissiles(this);
                  decAmmo(SOPHIA_MISSILE);
               }
         }
      }
      
      override public function pressUpBtn() : void
      {
         super.pressUpBtn();
         if(cState === ST_WALL_TRANS)
         {
            return;
         }
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaPressUpBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaPressLftBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaPressDwnBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaPressLftBtn();
         }
      }
      
      override public function pressDwnBtn() : void
      {
         super.pressDwnBtn();
         if(cState === ST_WALL_TRANS)
         {
            return;
         }
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaPressDwnBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaPressRhtBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaPressUpBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaPressRhtBtn();
         }
      }
      
      override public function pressLftBtn() : void
      {
         super.pressLftBtn();
         if(cState === ST_WALL_TRANS)
         {
            return;
         }
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaPressLftBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaPressDwnBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaPressLftBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaPressUpBtn();
         }
      }
      
      override public function pressRhtBtn() : void
      {
         super.pressRhtBtn();
         if(cState === ST_WALL_TRANS)
         {
            return;
         }
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaPressRhtBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaPressUpBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaPressRhtBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaPressDwnBtn();
         }
      }
      
      override public function relUpBtn() : void
      {
         super.relUpBtn();
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaRelUpBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaRelLftBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaRelDwnBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaRelLftBtn();
         }
      }
      
      override public function relDwnBtn() : void
      {
         super.relDwnBtn();
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaRelDwnBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaRelRhtBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaRelUpBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaRelRhtBtn();
         }
      }
      
      override public function relLftBtn() : void
      {
         super.relLftBtn();
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaRelLftBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaRelDwnBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaRelLftBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaRelUpBtn();
         }
      }
      
      override public function relRhtBtn() : void
      {
         super.relRhtBtn();
         if(rotation == ROT_WALL_BOT)
         {
            this.sophiaRelRhtBtn();
         }
         else if(rotation == ROT_WALL_LEFT)
         {
            this.sophiaRelUpBtn();
         }
         else if(rotation == ROT_WALL_TOP)
         {
            this.sophiaRelRhtBtn();
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            this.sophiaRelDwnBtn();
         }
      }
      
      private function sophiaPressUpBtn() : void
      {
         this.sophiaUpBtn = true;
         if(cState != ST_VINE && (!underWater || onGround))
         {
            this.MOVE_PARTS_TMR.start();
            this.sophiaBase.setStopFrame(FL_BASE_DIAG);
            if(this.BASE_TURN_TMR.running)
            {
               this.BASE_TURN_TMR.stop();
            }
         }
      }
      
      private function sophiaPressDwnBtn() : void
      {
         this.sophiaDwnBtn = true;
         if(underWater && !onGround && vy == 0)
         {
            vy = 100;
         }
      }
      
      private function sophiaPressLftBtn() : void
      {
         this.sophiaLftBtn = true;
         if(!this.revScaleX && scaleX < 0 || this.revScaleX && scaleX > 0)
         {
            return;
         }
         var _loc1_:String = this.sophiaBase.currentFrameLabel;
         if(!this.sophiaUpBtn && _loc1_ != this.convLab(FL_BASE_UP))
         {
            this.BASE_TURN_TMR.start();
            scaleX = -1;
            this.sophiaScaleX = scaleX;
            if(this.revScaleX)
            {
               scaleX = -scaleX;
            }
            if(_loc1_ == FL_BASE_HORZ || _loc1_ == FL_BASE_TURN_2 || _loc1_ == FL_BASE_TURN_START)
            {
               this.sophiaBase.setPlayFrame(FL_BASE_TURN_START);
            }
            else
            {
               this.sophiaBase.stopAnim = true;
            }
         }
      }
      
      private function sophiaPressRhtBtn() : void
      {
         this.sophiaRhtBtn = true;
         if(!this.revScaleX && scaleX > 0 || this.revScaleX && scaleX < 0)
         {
            return;
         }
         var _loc1_:String = this.sophiaBase.currentFrameLabel;
         if(!this.sophiaUpBtn && _loc1_ != this.convLab(FL_BASE_UP))
         {
            this.BASE_TURN_TMR.start();
            scaleX = 1;
            this.sophiaScaleX = scaleX;
            if(this.revScaleX)
            {
               scaleX = -scaleX;
            }
            if(_loc1_ == FL_BASE_HORZ || _loc1_ == FL_BASE_TURN_2 || _loc1_ == FL_BASE_TURN_START)
            {
               this.sophiaBase.setPlayFrame(FL_BASE_TURN_START);
            }
            else
            {
               this.sophiaBase.stopAnim = true;
            }
         }
      }
      
      private function sophiaRelUpBtn() : void
      {
         this.sophiaUpBtn = false;
         if(this.sophiaBase.currentLabel === this.convLab(FL_BASE_UP))
         {
            this.MOVE_PARTS_TMR.start();
            this.sophiaBase.setStopFrame(FL_BASE_DIAG);
         }
      }
      
      private function sophiaRelDwnBtn() : void
      {
         this.sophiaDwnBtn = false;
      }
      
      private function sophiaRelLftBtn() : void
      {
         this.sophiaLftBtn = false;
      }
      
      private function sophiaRelRhtBtn() : void
      {
         this.sophiaRhtBtn = false;
      }
      
      override public function manualChangePwrState() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         this.sophiaBase.hitStopAnim = this.sophiaBase.stopAnim;
         this.sophiaBase.hitFrameLabel = this.sophiaBase.currentLabel;
         this.frontWheel.hitStopAnim = this.frontWheel.stopAnim;
         this.frontWheel.hitFrameLabel = this.frontWheel.currentLabel;
         this.backWheel.hitStopAnim = this.backWheel.stopAnim;
         this.backWheel.hitFrameLabel = this.backWheel.currentLabel;
         super.manualChangePwrState();
         this.setPStateColors();
         _loc1_ = this.sophiaBase.hitFrameLabel;
         _loc2_ = _loc1_.substr(0,_loc1_.length - 2);
         this.sophiaBase.setStopFrame(_loc2_);
         this.sophiaBase.stopAnim = this.sophiaBase.hitStopAnim;
         _loc1_ = this.frontWheel.hitFrameLabel;
         _loc2_ = _loc1_.substr(0,_loc1_.length - 2);
         this.frontWheel.setStopFrame(_loc2_);
         this.frontWheel.stopAnim = this.frontWheel.hitStopAnim;
         _loc1_ = this.backWheel.hitFrameLabel;
         _loc2_ = _loc1_.substr(0,_loc1_.length - 2);
         this.backWheel.setStopFrame(_loc2_);
         this.backWheel.stopAnim = this.backWheel.hitStopAnim;
      }
      
      override public function exitPipeVert(param1:PipeTransporter) : void
      {
         super.exitPipeVert(param1);
      }
      
      override public function initiateDeath(param1:LevObj = null) : void
      {
         super.initiateDeath(param1);
         var _loc2_:int = GameSettings.difficulty;
         if(_loc2_ != Difficulties.VERY_EASY && _loc2_ != Difficulties.EASY)
         {
            STAT_MNGR.changeStat(STAT_MNGR.STAT_NUM_SOPHIA_MISSILES,-STAT_MNGR.NUM_SOPHIA_MISSILES_MAX);
         }
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         stopUpdate = true;
         stopAnim = true;
         stopHit = true;
         level.addToLevelNow(new SophiaExplosion(this));
         visible = false;
         EVENT_MNGR.startDieTmr(DIE_TMR_DEL_NORMAL);
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.playSound(SoundNames.SFX_SOPHIA_DIE);
      }
      
      override public function slideDownFlagPole() : void
      {
         if(this.engagedHover)
         {
            this.deactivateHoverMode();
            this.setUpWheelsForLand();
         }
         this.resetAllParts();
         this.detachFromWall();
         super.slideDownFlagPole();
         this.sophiaBase.setStopFrame(FL_BASE_HORZ);
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         if(this.engagedHover && onGround)
         {
            this.landOnGround();
         }
      }
      
      override protected function flagDelayTmrLsr(param1:TimerEvent) : void
      {
         super.flagDelayTmrLsr(param1);
      }
      
      private function activateAttachToWall(param1:Ground, param2:String) : Boolean
      {
         var _loc3_:Number = nx;
         var _loc4_:Number = nx;
         var _loc5_:Number = ny;
         var _loc6_:Number = vx;
         var _loc7_:Number = vy;
         if(!this.wallTransStart(param1,param2,true))
         {
            return false;
         }
         this.attachToWall();
         if(this.vertical)
         {
            if(!(param1 is Platform))
            {
               vy = _loc7_;
            }
            if(rotation == ROT_WALL_LEFT)
            {
               _loc4_ = param1.hRht;
            }
            else
            {
               _loc4_ = param1.hLft;
            }
            vxMax = VX_MAX_DEF;
         }
         else
         {
            _loc5_ = param1.hBot;
            vx = _loc6_;
         }
         nx = _loc4_;
         ny = _loc5_;
         x = nx;
         y = ny;
         setHitPoints();
         scaleX = -scaleX;
         this.sophiaScaleX = -this.sophiaScaleX;
         this.checkWallsForClimb(true,true);
         x = nx;
         y = ny;
         this.setSophiaDirBtns();
         this.lastRotation = rotation;
         this.landOnGround();
         this.scrollDist = _loc3_ - nx;
         if(isNaN(screenScrollPosOffset))
         {
            screenScrollPosOffset = this.scrollDist;
         }
         else
         {
            screenScrollPosOffset += this.scrollDist;
         }
         if(param1 is Platform)
         {
            this.attachedToPlatform = param1 as Platform;
         }
         if(underWater)
         {
            defyGrav = true;
         }
         return true;
      }
      
      private function wallTransStart(param1:Ground, param2:String, param3:Boolean = false, param4:Rectangle = null) : Boolean
      {
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         if(!upgradeIsActive(SOPHIA_WALL_CLIMB) || param2 == WALL_TOP_STR && !upgradeIsActive(SOPHIA_CEILING_CLIMB))
         {
            return false;
         }
         if(param1 && param2 == WALL_TOP_STR && (param1.y + TILE_SIZE == GLOB_STG_BOT || level.localToGlobal(new Point(param1.x + TILE_SIZE,param1.y)).x > GLOB_STG_RHT))
         {
            return false;
         }
         if(param1 is Platform)
         {
            this.attachedToPlatform = onPlatform;
         }
         this.invertedWallTrans = param3;
         this.wallToAttachTo = param1;
         this.wallSideToAttachTo = param2;
         this.falseGroundRect = param4;
         if(param4)
         {
            _loc5_ = param4.left;
            _loc6_ = param4.right;
            _loc7_ = param4.top;
            _loc8_ = param4.bottom;
         }
         else
         {
            _loc5_ = param1.hLft;
            _loc6_ = param1.hRht;
            _loc7_ = param1.hTop;
            _loc8_ = param1.hBot;
         }
         setState(ST_WALL_TRANS);
         var _loc9_:Number = nx;
         vx = 0;
         vy = 0;
         if(!underWater)
         {
            vyMax = VX_MAX_DEF;
         }
         jumped = false;
         defyGrav = true;
         onGround = true;
         this.lastRotation = rotation;
         if(this.invertedWallTrans)
         {
            setStopFrame(FL_WALL_TRANS_INV_START);
            if(this.vertical)
            {
               if(this.wallSideToAttachTo === WALL_BOTTOM_STR)
               {
                  ny = _loc7_ + CLIMB_INVERTED_OFS;
               }
               else
               {
                  ny = _loc8_ - CLIMB_INVERTED_OFS;
               }
            }
            else if(this.wallSideToAttachTo === WALL_LEFT_STR)
            {
               nx = _loc6_ - CLIMB_INVERTED_OFS;
            }
            else
            {
               nx = _loc5_ + CLIMB_INVERTED_OFS;
            }
         }
         else
         {
            setStopFrame(FL_WALL_TRANS_START);
            if(this.vertical)
            {
               if(this.wallSideToAttachTo === WALL_BOTTOM_STR)
               {
                  ny = _loc7_ - CLIMB_OFS;
               }
               else
               {
                  ny = _loc8_ + CLIMB_OFS;
               }
            }
            else if(this.wallSideToAttachTo === WALL_RIGHT_STR)
            {
               nx = _loc5_ - CLIMB_OFS;
            }
            else
            {
               nx = _loc6_ + CLIMB_OFS;
            }
         }
         if(this.wallSideToAttachTo == WALL_LEFT_STR || this.wallSideToAttachTo == WALL_RIGHT_STR)
         {
            if(this.wallSideToAttachTo == WALL_LEFT_STR)
            {
               this.wallTransEndRotation = ROT_WALL_LEFT;
               this.wallTransEndRevScaleX = false;
               this.wallTransEndNx = _loc6_;
            }
            else
            {
               this.wallTransEndRotation = ROT_WALL_RIGHT;
               this.wallTransEndRevScaleX = true;
               this.wallTransEndNx = _loc5_;
            }
            this.wallTransEndVertical = true;
            if(this.lastRotation == ROT_WALL_BOT)
            {
               if(this.invertedWallTrans)
               {
                  this.wallTransEndNy = _loc7_ + CLIMB_INVERTED_OFS;
                  this.wallTransEndVy = VX_MAX_DEF;
               }
               else
               {
                  this.wallTransEndNy = _loc8_ - CLIMB_OFS;
                  this.wallTransEndVy = -VX_MAX_DEF;
               }
            }
            else if(this.invertedWallTrans)
            {
               this.wallTransEndNy = _loc8_ - CLIMB_INVERTED_OFS;
               this.wallTransEndVy = -VX_MAX_DEF;
            }
            else
            {
               this.wallTransEndNy = _loc7_ + CLIMB_OFS;
               this.wallTransEndVy = VX_MAX_DEF;
            }
         }
         else
         {
            if(this.wallSideToAttachTo == WALL_TOP_STR)
            {
               this.wallTransEndRotation = ROT_WALL_TOP;
               this.wallTransEndRevScaleX = true;
               this.wallTransEndNy = _loc8_;
            }
            else
            {
               this.wallTransEndRotation = ROT_WALL_BOT;
               this.wallTransEndRevScaleX = false;
               this.wallTransEndNy = _loc7_;
            }
            this.wallTransEndVertical = false;
            if(this.lastRotation == ROT_WALL_LEFT)
            {
               if(this.invertedWallTrans)
               {
                  this.wallTransEndNx = _loc6_ - CLIMB_INVERTED_OFS;
                  this.wallTransEndVx = -VX_MAX_DEF;
               }
               else
               {
                  this.wallTransEndNx = _loc5_ + CLIMB_OFS;
                  this.wallTransEndVx = VX_MAX_DEF;
               }
            }
            else if(this.invertedWallTrans)
            {
               this.wallTransEndNx = _loc5_ + CLIMB_INVERTED_OFS;
               this.wallTransEndVx = VX_MAX_DEF;
            }
            else
            {
               this.wallTransEndNx = _loc6_ - CLIMB_OFS;
               this.wallTransEndVx = -VX_MAX_DEF;
            }
         }
         var _loc10_:int = NUM_WALL_TRANS_FRAMES;
         if(param3)
         {
            _loc10_ = NUM_WALL_TRANS_INV_FRAMES;
         }
         var _loc11_:Number = _loc9_ - nx;
         if(isNaN(screenScrollPosOffset))
         {
            screenScrollPosOffset = _loc9_ - nx;
         }
         else
         {
            screenScrollPosOffset += _loc9_ - nx;
            this.scrollScreenDuringWallTrans = true;
         }
         this.ssxInt = (this.wallTransEndNx - _loc9_ - (screenScrollPosOffset - _loc11_)) / (_loc10_ - 1);
         disableStuckInWallShift = true;
         this.WHEEL_TMR.stop();
         this.setUpWheelsForLand();
         this.BASE_VERT_TMR.numTotalCycles = 0;
         this.BASE_VERT_TMR.delay = DEL_WALL_TRANS_TMR;
         this.BASE_VERT_TMR.start();
         return true;
      }
      
      private function wallTransEnd() : void
      {
         vx = 0;
         vy = 0;
         vx = this.wallTransEndVx;
         vy = this.wallTransEndVy;
         nx = this.wallTransEndNx;
         ny = this.wallTransEndNy;
         if(this.wallToAttachTo is Platform)
         {
            if(this.vertical)
            {
               if(rotation == ROT_WALL_LEFT)
               {
                  nx = this.attachedToPlatform.hRht - CLIMB_INVERTED_OFS;
               }
               else
               {
                  nx = this.attachedToPlatform.hLft + CLIMB_INVERTED_OFS;
               }
            }
         }
         x = nx;
         y = ny;
         this.attachToWall();
         if(rotation == ROT_WALL_BOT)
         {
            this.detachFromWall();
         }
         this.setSophiaDirBtns();
      }
      
      private function attachToWall() : void
      {
         this.revScaleX = this.wallTransEndRevScaleX;
         rotation = this.wallTransEndRotation;
         this.vertical = this.wallTransEndVertical;
         setHitPoints();
         setLastHitPointsToCurrent();
         this.sophiaScaleX = scaleX;
         if(this.revScaleX)
         {
            this.sophiaScaleX = -scaleX;
         }
         stuckInWall = false;
         lastStuckInWall = false;
         if(this.vertical)
         {
            vyMin = VX_MIN;
         }
         else
         {
            vyMin = 0;
         }
         this.wallTransEndVx = 0;
         this.wallTransEndVy = 0;
         this.ssxInt = NaN;
         screenScrollPosOffset = NaN;
         this.scrollScreenDuringWallTrans = false;
         this.yOfsInt = NaN;
         this.wallTransEndRevScaleX = false;
         if(this.wallToAttachTo is Platform && this.vertical)
         {
            vx = 0;
            vy = 0;
         }
         this.wallToAttachTo = null;
         this.wallSideToAttachTo = null;
         this.falseGroundRect = null;
         this.BASE_VERT_TMR.stop();
         setStopFrame(FL_MAIN);
         this.sophiaBase.setStopFrame(FL_BASE_HORZ);
         setState(ST_CLIMB);
         this.resetAllParts();
         if(underWater)
         {
            vxMax = MAX_SPEED_CLIMB_WATER;
            vyMax = MAX_SPEED_CLIMB_WATER;
         }
      }
      
      private function detachFromWall(param1:Boolean = true) : void
      {
         var _loc2_:Number = nx;
         if(this.vertical)
         {
            if(rotation == ROT_WALL_LEFT)
            {
               nx += this.hRectMainWidth / 2;
            }
            else
            {
               nx -= this.hRectMainWidth / 2;
            }
            ny += this.hRectMainHeight / 2;
         }
         if(this.revScaleX)
         {
            if(!this.vertical)
            {
               scaleX = -scaleX;
            }
            this.revScaleX = false;
            this.sophiaScaleX = scaleX;
         }
         if(rotation == ROT_WALL_TOP)
         {
            ny += this.hRectMainHeight;
         }
         else if(rotation == ROT_WALL_BOT && this.attachedToPlatform)
         {
            ny = this.attachedToPlatform.y;
            if(this.attachedToPlatform.platType != "pully")
            {
               if(this.attachedToPlatform.useVy)
               {
                  vy = this.attachedToPlatform.vy;
               }
               else if(this.attachedToPlatform.vertical)
               {
                  nyPlatform = this.attachedToPlatform.ny;
               }
               else if(!this.attachedToPlatform.vertical)
               {
                  dxPlatform = this.attachedToPlatform.dx;
               }
            }
            if(this.attachedToPlatform.platType == "falling" || this.attachedToPlatform.platType == "constantFall")
            {
               onFallingPlatform = true;
            }
            this.attachedToPlatform.setCharOnPlat();
         }
         rotation = ROT_WALL_BOT;
         this.lastRotation = ROT_WALL_BOT;
         this.vertical = false;
         if(cState == ST_CLIMB)
         {
            onGround = true;
         }
         else
         {
            onGround = false;
         }
         x = nx;
         y = ny;
         this.scrollDist = _loc2_ - nx;
         if(isNaN(screenScrollPosOffset))
         {
            screenScrollPosOffset = this.scrollDist;
         }
         else
         {
            screenScrollPosOffset += this.scrollDist;
         }
         screenScrollPosOffset = this.scrollDist;
         if(onGround)
         {
            setState(ST_STAND);
         }
         else
         {
            setState(ST_JUMP);
         }
         defyGrav = false;
         this.setJumpRise(false);
         disableStuckInWallShift = false;
         this.attachedToPlatform = null;
         setStopFrame(FL_MAIN);
         if(!underWater)
         {
            vxMax = VX_MAX_DEF;
            vyMax = VY_MAX_DEF;
            brickState == BRICK_BOUNCER;
         }
         else
         {
            vxMax = VX_MAX_WATER_NORMAL;
            vyMax = VY_MAX_WATER;
         }
         vyMin = 0;
         this.setSophiaDirBtns();
         setHitPoints();
      }
      
      private function checkAttachToOppositeWall() : Boolean
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Ground = null;
         var _loc7_:Ground = null;
         var _loc9_:Point = null;
         var _loc10_:int = 0;
         var _loc11_:Boolean = false;
         var _loc1_:int = 1;
         var _loc2_:Number = hLft;
         var _loc3_:Number = hBot;
         var _loc8_:CustomDictionary = new CustomDictionary(true);
         if(rotation == ROT_WALL_LEFT)
         {
            _loc1_ = -1;
            _loc4_ = -TILE_SIZE;
         }
         else if(rotation == ROT_WALL_RIGHT)
         {
            _loc2_ = hRht;
         }
         _loc2_ += _loc4_;
         _loc3_ += _loc5_;
         _loc9_ = level.getCurrentGrid(_loc2_,_loc3_);
         _loc8_.addItem(level.getGroundAt(_loc9_.x,_loc9_.y));
         while(_loc10_ < 2)
         {
            if(!this.vertical)
            {
               _loc2_ += this.hRectMainWidth / 2;
            }
            else
            {
               _loc3_ -= this.hRectMainWidth / 2;
            }
            _loc9_ = level.getCurrentGrid(_loc2_,_loc3_);
            _loc8_.addItem(level.getGroundAt(_loc9_.x,_loc9_.y));
            _loc10_++;
         }
         for each(_loc6_ in _loc8_)
         {
            if(_loc6_.visible)
            {
               if(!this.vertical)
               {
                  _loc7_ = level.getGroundAt(_loc6_.x,_loc6_.y - TILE_SIZE * 2);
               }
               else
               {
                  _loc7_ = level.getGroundAt(_loc6_.x - TILE_SIZE * 2 * _loc1_,_loc6_.y);
               }
               if(_loc7_ && _loc7_.visible)
               {
                  _loc11_ = true;
                  break;
               }
            }
         }
         if(!_loc11_)
         {
            return false;
         }
         if(!this.vertical)
         {
         }
         return true;
      }
      
      private function checkDropFromWall(param1:Boolean = false) : Boolean
      {
         var _loc2_:Rectangle = null;
         var _loc3_:CustomDictionary = null;
         var _loc4_:Number = NaN;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         var _loc7_:Ground = null;
         if(this.vertical)
         {
            _loc2_ = new Rectangle(nx,ny - this.hRectMainHeight / 2,this.hRectMainWidth,this.hRectMainHeight);
            _loc3_ = new CustomDictionary(true);
            if(rotation == ROT_WALL_RIGHT)
            {
               _loc2_.x -= this.hRectMainWidth;
            }
            _loc4_ = _loc2_.left + _loc2_.width / 2;
            _loc3_.addItem(new Point(_loc4_,_loc2_.top));
            _loc3_.addItem(new Point(_loc4_,_loc2_.bottom));
            if(rotation == ROT_WALL_LEFT)
            {
               _loc3_.addItem(new Point(_loc2_.right,_loc2_.top));
               _loc3_.addItem(_loc2_.bottomRight);
            }
            else
            {
               _loc3_.addItem(new Point(_loc2_.left,_loc2_.bottom));
               _loc3_.addItem(_loc2_.topLeft);
            }
            for each(_loc5_ in _loc3_)
            {
               _loc6_ = level.getCurrentGrid(_loc5_.x,_loc5_.y);
               if((_loc7_ = level.getGroundAt(_loc6_.x,_loc6_.y)) && _loc7_.visible)
               {
                  return false;
               }
            }
         }
         if(!param1)
         {
            this.detachFromWall();
         }
         return true;
      }
      
      override protected function checkPlatform() : void
      {
         var yOfs:Number = NaN;
         var checkPlatDist:Function = function(param1:Number):Boolean
         {
            if(param1 < 0)
            {
               param1 = -param1;
            }
            if(!cloudPlatform && param1 > MAX_PLAT_DIST || cloudPlatform && param1 > onPlatform.width * 0.6)
            {
               return true;
            }
            return false;
         };
         if(onPlatform)
         {
            if(rotation != ROT_WALL_BOT || rotation == ROT_WALL_BOT && cState === ST_WALL_TRANS)
            {
               if(checkPlatDist(nx - this.attachedToPlatform.hMidX))
               {
                  this.attachedToPlatform = null;
                  this.detachFromWall();
                  onPlatform = null;
                  return;
               }
               if(checkPlatDist(ny - this.attachedToPlatform.hMidY))
               {
                  this.attachedToPlatform = null;
                  this.detachFromWall();
                  onPlatform = null;
                  return;
               }
            }
            if(rotation == ROT_WALL_BOT && cState != ST_WALL_TRANS)
            {
               if(checkPlatDist(ny - onPlatform.y))
               {
                  this.attachedToPlatform = null;
                  onPlatform = null;
                  return;
               }
               ny = onPlatform.y;
               if(!isNaN(dxPlatform) && !cloudPlatform)
               {
                  nx += dxPlatform;
                  dxPlatform = NaN;
               }
            }
            else
            {
               yOfs = this.attachedToPlatform.height;
               if(rotation == ROT_WALL_BOT)
               {
                  yOfs = 0;
               }
               if(this.vertical)
               {
                  yOfs = this.attachedToPlatform.height / 2;
                  if(rotation == ROT_WALL_LEFT)
                  {
                     nx = this.attachedToPlatform.hRht;
                  }
                  else
                  {
                     nx = this.attachedToPlatform.hLft;
                  }
               }
               ny = this.attachedToPlatform.y + yOfs;
               if(!this.vertical && (!isNaN(dxPlatform) || rotation == ROT_WALL_BOT) && !cloudPlatform)
               {
                  if(!isNaN(this.attachedToPlatform.dx))
                  {
                     nx += this.attachedToPlatform.dx;
                  }
                  dxPlatform = NaN;
               }
            }
         }
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         var _loc3_:Ground = null;
         var _loc4_:Point = null;
         if(param1 != null && param1 == this.attachedToPlatform)
         {
            this.attachedToPlatform.setCharOnPlat();
            return;
         }
         if(cState == ST_CLIMB || cState === ST_WALL_TRANS)
         {
            return;
         }
         if(!onGround && !this.engagedHover && (!underWater || this.jumpRise))
         {
            if(rotation == ROT_WALL_LEFT && param2 == HitTester.SIDE_RIGHT)
            {
               if(param1 && param1.visible)
               {
                  _loc3_ = level.getGroundAt(param1.x - TILE_SIZE,param1.y);
                  if(!_loc3_ || !_loc3_.visible)
                  {
                     if(this.activateAttachToWall(param1,WALL_RIGHT_STR))
                     {
                        return;
                     }
                  }
               }
               else
               {
                  this.detachFromWall();
               }
            }
            else if(rotation == ROT_WALL_RIGHT && param2 == HitTester.SIDE_LEFT)
            {
               if(param1 && param1.visible)
               {
                  _loc3_ = level.getGroundAt(param1.x + TILE_SIZE,param1.y);
                  if(!_loc3_ || !_loc3_.visible)
                  {
                     if(this.activateAttachToWall(param1,WALL_LEFT_STR))
                     {
                        return;
                     }
                  }
               }
               else
               {
                  this.detachFromWall();
               }
            }
         }
         super.groundOnSide(param1,param2);
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         if(this.attachedToPlatform && param1 == this.attachedToPlatform)
         {
            onPlatform = param1 as Platform;
            if(onPlatform.platType != "pully" && !onPlatform.vertical)
            {
               dxPlatform = onPlatform.dx;
            }
            onPlatform.setCharOnPlat();
            ny = param1.hBot;
         }
         if(cState == ST_CLIMB || cState === ST_WALL_TRANS || stuckInWall || lastStuckInWall || param1 && !param1.visible && brickState == BRICK_NONE)
         {
            return;
         }
         if(param1 && param1.visible && !onGround && vy < 0 && (!underWater || this.jumpRise) && rotation == ROT_WALL_BOT && !this.sophiaDwnBtn && !this.engagedHover)
         {
            if(this.activateAttachToWall(param1,WALL_TOP_STR))
            {
               if(param1 is Platform)
               {
                  onPlatform = param1 as Platform;
                  if(onPlatform.platType != "pully" && !onPlatform.vertical)
                  {
                     dxPlatform = onPlatform.dx;
                  }
                  onPlatform.setCharOnPlat();
                  ny = param1.hBot;
               }
               this.setJumpRise(false);
               return;
            }
         }
         if(rotation == ROT_WALL_BOT)
         {
            this.setJumpRise(false);
         }
         _fallBtwn = false;
         hitCeiling = true;
         if(rotation == ROT_WALL_BOT)
         {
            ny = param1.hBot + hHeight;
         }
         else if(this.vertical)
         {
            ny = param1.hBot + hHeight / 2;
            vy = 0;
         }
         else
         {
            ny = param1.hBot;
            vy = 0;
         }
         if(!this.engagedHover && !underWater && rotation == ROT_WALL_BOT && vy < 0)
         {
            SND_MNGR.playSound(SND_GAME_HIT_CEILING);
            if(jumped)
            {
               vy = CIELING_DISPLACE;
            }
         }
         setHitPoints();
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         if(cState == ST_CLIMB || cState == ST_WALL_TRANS)
         {
            return;
         }
         if(onPlatform && !(param1 is Platform))
         {
            this.attachedToPlatform = null;
            onPlatform = null;
         }
         if(rotation == ROT_WALL_TOP)
         {
            this.detachFromWall();
         }
         else if(this.vertical)
         {
            ny = param1.hTop - this.hRectMainWidth / 2;
            vy = 0;
            setHitPoints();
            hBot = param1.hTop;
            return;
         }
         super.groundBelow(param1);
      }
      
      override protected function landOnGround() : void
      {
         super.landOnGround();
         this.baseVertOfs = BASE_VERT_OFS_DEF;
         if(this.sophiaBase.y >= BASE_DEF_Y + this.baseVertOfs)
         {
            this.sophiaBase.y = BASE_JUMP_BOUNCE_Y + this.baseVertOfs;
         }
         else
         {
            this.sophiaBase.y = BASE_UP_JUMP_BOUNCE_Y + this.baseVertOfs;
         }
         if(cState != ST_WALL_TRANS)
         {
            this.BASE_VERT_TMR.numTotalCycles = 1;
            this.BASE_VERT_TMR.delay = DEL_BASE_JUMP_BOUNCE_TMR;
            this.BASE_VERT_TMR.start();
         }
         SND_MNGR.playSound(SN_LAND);
         if(this.engagedHover || this.hover)
         {
            this.deactivateHoverMode();
         }
         this.setJumpRise(false);
         if(underWater)
         {
            defyGrav = false;
            this.setUpWheelsForLand();
         }
         releasedJumpBtn = true;
      }
      
      private function wheelTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:String = null;
         if(underWater && onGround)
         {
            _loc2_ = this.backWheel.currentLabel;
            if(_loc2_ == FL_WHEEL_WATER_1 || _loc2_ == FL_WHEEL_WATER_2)
            {
               this.setUpWheelsForLand();
            }
         }
         if(this.frontWheel.currentLabel === this.convLab(FL_WHEEL_HOVER_SMALL_FLAME))
         {
            this.frontWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
            this.backWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
            return;
         }
         if(this.backWheel.currentLabel === this.convLab(FL_WHEEL_WATER_2))
         {
            this.backWheel.setPlayFrame(FL_WHEEL_WATER_1);
            return;
         }
         if(!this.frontWheel.stopAnim)
         {
            this.frontWheel.animate(this.WHEEL_TMR);
         }
         if(!this.backWheel.stopAnim)
         {
            this.backWheel.animate(this.WHEEL_TMR);
         }
         else if(this.frontWheel.currentLabel == this.convLab(FL_WHEEL_HOVER_TRANS))
         {
            if(!underWater || onGround)
            {
               this.setUpWheelsForLand();
               this.MOVE_PARTS_TMR.dispatchEvent(new TimerEvent(TimerEvent.TIMER));
               this.WHEEL_TMR.delay = DEL_WHEEL_TMR_FAST;
            }
            else
            {
               this.setUpWheelsForWater();
               this.WHEEL_TMR.delay = DEL_WHEEL_TMR_FAST;
            }
         }
         if(this.hover && this.frontWheel.currentFrameLabel == this.convLab(FL_WHEEL_HOVER))
         {
            this.frontWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
            this.backWheel.setPlayFrame(FL_WHEEL_HOVER_BIG_FLAME);
            this.WHEEL_TMR.delay = DEL_HOVER_FLAME;
         }
      }
      
      private function gainHoverTmrHandler(param1:TimerEvent) : void
      {
         if(GS_MNGR.gameState == GS_PLAY)
         {
            increaseAmmoByValue(SOPHIA_HOVER,1);
         }
         if(getAmmo(SOPHIA_HOVER) == HOVER_MAX && this.GAIN_HOVER_TMR.running)
         {
            this.GAIN_HOVER_TMR.stop();
         }
      }
      
      private function loseHoverTmrHandler(param1:TimerEvent) : void
      {
         if(GS_MNGR.gameState == GS_PLAY)
         {
            if(!starPwr)
            {
               decreaseAmmoByValue(SOPHIA_HOVER,1);
            }
         }
         if(getAmmo(SOPHIA_HOVER) == HOVER_MIN)
         {
            frictionY = true;
            this.hover = false;
            this.activateGainHoverTmr();
            this.frontWheel.setStopFrame(FL_WHEEL_HOVER);
            this.backWheel.setStopFrame(FL_WHEEL_HOVER);
            this.stopHoverSound();
            this.LOSE_HOVER_TMR.stop();
         }
      }
      
      private function baseTurnTmrHandler(param1:TimerEvent) : void
      {
         if(!this.sophiaBase.stopAnim)
         {
            this.sophiaBase.animate(this.BASE_TURN_TMR);
         }
      }
      
      private function baseVertTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:String = null;
         if(cState === ST_WALL_TRANS)
         {
            _loc2_ = currentLabel;
            if(_loc2_ === this.convLab(FL_WALL_TRANS_END) || _loc2_ === this.convLab(FL_WALL_TRANS_INV_END))
            {
               this.wallTransEnd();
            }
            else
            {
               gotoAndStop(currentFrame + 1);
            }
            if(!isNaN(this.yOfsInt))
            {
               y += this.yOfsInt;
            }
            if(!isNaN(screenScrollPosOffset) && !isNaN(this.ssxInt))
            {
               screenScrollPosOffset += this.ssxInt;
            }
            return;
         }
         if(this.readyToJump)
         {
            this.jump();
         }
         else if(onGround)
         {
            if(this.sophiaBase.y == BASE_DEF_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_BOUNCE_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_UP_DEF_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_UP_BOUNCE_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_UP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_JUMP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_UP_JUMP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
            }
         }
         else
         {
            if(this.sophiaBase.y == BASE_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_UP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_JUMP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
            }
            else if(this.sophiaBase.y == BASE_UP_JUMP_BOUNCE_Y + this.baseVertOfs)
            {
               this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
            }
            this.BASE_VERT_TMR.stop();
         }
      }
      
      override protected function getOffVine() : void
      {
         setStopFrame(FL_MAIN);
         stopHit = false;
         this.sophiaBase.rotation = 0;
         this.frontWheel.rotation = 0;
         this.backWheel.rotation = 0;
         this.sophiaBase.scaleX = 1;
         this.frontWheel.scaleX = 1;
         this.backWheel.scaleX = 1;
         this.resetAllParts();
         setHitPoints();
         super.getOffVine();
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         super.getOnVine(param1);
         if(rotation != ROT_WALL_BOT)
         {
            this.detachFromWall();
         }
         this.resetAllParts();
         stopTimers();
         this.sophiaBase.setStopFrame(FL_BASE_HORZ);
         if(this.hover || this.engagedHover)
         {
            this.deactivateHoverMode();
         }
         this.setUpWheelsForLand();
         this.sophiaBase.rotation = -90;
         this.sophiaBase.x = 11;
         this.sophiaBase.y = -19;
         this.frontWheel.rotation = -90;
         this.frontWheel.x = 7;
         this.frontWheel.y = -35;
         this.backWheel.rotation = -90;
         this.backWheel.x = this.frontWheel.x;
         this.backWheel.y = -3;
         this.WHEEL_TMR.delay = DEL_WHEEL_TMR_FAST;
      }
      
      private function movePartsTmrHandler(param1:TimerEvent) : void
      {
         if(this.sophiaUpBtn)
         {
            if(!this.engagedHover)
            {
               this.frontWheel.x -= WHEEL_X_SHIFT_INT;
               this.backWheel.x += WHEEL_X_SHIFT_INT;
            }
            else
            {
               this.frontWheel.x = FRONT_WHEEL_DEF_X;
               this.backWheel.x = BACK_WHEEL_DEF_X;
            }
            this.sophiaBase.y -= BASE_Y_SHIFT_INT + this.baseVertOfs;
            if(this.sophiaBase.y <= BASE_UP_DEF_Y + this.baseVertOfs)
            {
               if(!this.engagedHover)
               {
                  this.frontWheel.x = FRONT_WHEEL_INWARD_X;
                  this.backWheel.x = BACK_WHEEL_INWARD_X;
               }
               this.sophiaBase.y = BASE_UP_DEF_Y + this.baseVertOfs;
               this.sophiaBase.setStopFrame(FL_BASE_UP);
               this.MOVE_PARTS_TMR.stop();
            }
         }
         else
         {
            if(!this.engagedHover)
            {
               this.frontWheel.x += WHEEL_X_SHIFT_INT;
               this.backWheel.x -= WHEEL_X_SHIFT_INT;
            }
            else
            {
               this.frontWheel.x = FRONT_WHEEL_DEF_X;
               this.backWheel.x = BACK_WHEEL_DEF_X;
            }
            this.sophiaBase.y += BASE_Y_SHIFT_INT + this.baseVertOfs;
            if(this.sophiaBase.y >= BASE_DEF_Y + this.baseVertOfs)
            {
               this.frontWheel.x = FRONT_WHEEL_DEF_X;
               this.backWheel.x = BACK_WHEEL_DEF_X;
               this.sophiaBase.y = BASE_DEF_Y + this.baseVertOfs;
               this.MOVE_PARTS_TMR.stop();
               if(!this.BASE_TURN_TMR.running)
               {
                  this.sophiaBase.setStopFrame(FL_BASE_HORZ);
               }
               else
               {
                  this.sophiaBase.setPlayFrame(FL_BASE_TURN_START);
                  this.sophiaBase.gotoAndStop(this.sophiaBase.currentFrame + this.BASE_TURN_TMR.currentCount);
               }
            }
         }
      }
      
      override public function getAxe(param1:BowserAxe) : void
      {
         super.getAxe(param1);
         if(level.levNum == STAT_MNGR.DUNGEON_LEVEL_NUM)
         {
            fx = FX_DUNGEON_GOT_AXE;
         }
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         super.resetColor(param1);
         this.sophiaBase.resetColor(param1);
         this.frontWheel.resetColor(param1);
         this.backWheel.resetColor(param1);
      }
      
      override public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
         super.recolorBmps(param1,param2,param3,param4);
         this.sophiaBase.recolorBmps(param1,param2,param3,param4,defColors);
         this.frontWheel.recolorBmps(param1,param2,param3,param4,defColors);
         this.backWheel.recolorBmps(param1,param2,param3,param4,defColors);
      }
      
      override public function convLab(param1:String) : String
      {
         return param1;
      }
      
      override protected function setPStateColors() : void
      {
         if(pState == PS_NORMAL)
         {
            outColor1 = COL_PINK;
         }
         else if(pState == PS_MUSHROOM)
         {
            outColor1 = COL_MAGENTA;
         }
         else if(pState == PS_FIRE_FLOWER)
         {
            outColor1 = COL_RED;
         }
         outColor2 = COL_WHITE;
         outColor3 = COL_BLACK;
      }
      
      override protected function getMushroomEnd() : void
      {
         super.getMushroomEnd();
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         var _loc2_:int = 0;
         super.takeDamageStart(param1);
         if(cState == ST_CLIMB || rotation != ROT_WALL_BOT || cState == ST_WALL_TRANS)
         {
            this.detachFromWall();
         }
         else
         {
            _loc2_ = 1;
            if(param1.nx > nx)
            {
               _loc2_ = -1;
            }
            if(vx == 0)
            {
               vx = DAMAGE_BOOST_SPEED_STATIONARY * _loc2_;
            }
            else
            {
               vx = DAMAGE_BOOST_SPEED_MOVING * _loc2_;
            }
         }
         this.landOnGround();
         SND_MNGR.removeStoredSound(SN_LAND);
         SND_MNGR.playSound(SN_TAKE_DAMAGE);
         takeNoDamage = true;
         setState(ST_TAKE_DAMAGE);
         startReplaceColor();
         noDamageTmr.start();
      }
      
      override protected function noDamageTmrLsr(param1:TimerEvent) : void
      {
         super.noDamageTmrLsr(param1);
         if(!starPwr)
         {
            endReplaceColor();
         }
      }
      
      override protected function takeDamageEnd() : void
      {
         super.takeDamageEnd();
      }
      
      override protected function swapPs() : void
      {
         if(!SWAP_PS_VEC.length)
         {
            return;
         }
         var _loc1_:int = SWAP_PS_VEC[0];
         var _loc2_:int = SWAP_PS_VEC[1];
         if(pState == _loc1_)
         {
            pState = _loc2_;
         }
         else if(pState == _loc2_)
         {
            pState = _loc1_;
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.WHEEL_TMR.removeEventListener(TimerEvent.TIMER,this.wheelTmrHandler);
         this.BASE_TURN_TMR.removeEventListener(TimerEvent.TIMER,this.baseTurnTmrHandler);
         this.MOVE_PARTS_TMR.removeEventListener(TimerEvent.TIMER,this.movePartsTmrHandler);
         this.BASE_VERT_TMR.removeEventListener(TimerEvent.TIMER,this.baseVertTmrHandler);
         this.GAIN_HOVER_TMR.removeEventListener(TimerEvent.TIMER,this.gainHoverTmrHandler);
         this.LOSE_HOVER_TMR.removeEventListener(TimerEvent.TIMER,this.loseHoverTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
      }
      
      override public function chooseCharacter() : void
      {
         super.chooseCharacter();
         stopAnim = true;
         vx = 0;
         this.sophiaBase.gotoAndStop(Sophia.FL_BASE_OPEN);
         if(this.jason)
         {
            this.jason.destroy();
         }
         this.jason = new Jason(this);
         level.addToLevel(this.jason);
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         this.sophiaBase.y = BASE_JUMP_BOUNCE_Y;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(param1 == swapAnimTmr && SWAP_PS_VEC.length)
         {
            this.swapPs();
         }
         if(param1 == flashAnimTmr && _replaceColor)
         {
            flash();
         }
         return false;
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.hoverBar.parent)
         {
            this.hoverBar.parent.removeChild(this.hoverBar);
         }
         level.RECOLOR_OBJS_DCT.removeItem(this);
         if(this.jason)
         {
            this.jason.destroy();
         }
         tsTxt.UpdAmmoIcon(false);
         tsTxt.UpdAmmoText(false);
      }
      
      private function setJumpRise(param1:Boolean) : void
      {
         if(this.jumpRise && !param1 && !onGround)
         {
            if(!underWater)
            {
               defyGrav = false;
               if(releasedJumpBtn)
               {
                  frictionY = true;
               }
            }
            else
            {
               vyMax = VY_MAX_WATER;
               if(!jmpBtn)
               {
                  vxMax = VX_MAX_WATER_NORMAL;
               }
               else
               {
                  vxMax = VX_MAX_WATER_BOOST;
               }
            }
         }
         else if(!this.jumpRise && param1)
         {
            defyGrav = true;
            lastOnGround = false;
            frictionY = false;
         }
         this.jumpRise = param1;
      }
      
      override protected function getAllDroppedUpgrades() : void
      {
         this.hitPickup(new SophiaPickup(SOPHIA_HOMING_MISSILE),false);
         this.hitPickup(new SophiaPickup(SOPHIA_MISSILE),false);
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_SOPHIA_GET_PICKUP);
      }
   }
}
