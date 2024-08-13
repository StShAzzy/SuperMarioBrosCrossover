package com.smbc.characters
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFlash;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.DamageValue;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MusicType;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.enums.RyuSimonThrowType;
   import com.smbc.enums.RyuSpecialWeapon;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import com.smbc.ground.SimpleGround;
   import com.smbc.ground.SpringRed;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import com.smbc.managers.TutorialManager;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.Projectile;
   import com.smbc.projectiles.RyuProjectile;
   import com.smbc.sound.MusicInfo;
   import com.smbc.utils.CharacterSequencer;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class Ryu extends Character
   {
      
      public static const CHAR_NAME:String = CharacterInfo.Ryu[CharacterInfo.IND_CHAR_NAME];
      
      public static const CHAR_NAME_CAPS:String = CharacterInfo.Ryu[CharacterInfo.IND_CHAR_NAME_CAPS];
      
      public static const CHAR_NAME_TEXT:String = CharacterInfo.Ryu[CharacterInfo.IND_CHAR_NAME_MENUS];
      
      public static const CHAR_NUM:int = CharacterInfo.Ryu[CharacterInfo.IND_CHAR_NUM];
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.FLASH_POWERING_UP];
      
      public static const IND_CI_Ryu:int = 1;
      
      protected static const RYU_ART_OF_FIRE_WHEEL:String = PickupInfo.RYU_ART_OF_FIRE_WHEEL;
      
      protected static const RYU_SHURIKEN:String = PickupInfo.RYU_SHURIKEN;
      
      protected static const RYU_WINDMILL_SHURIKEN:String = PickupInfo.RYU_WINDMILL_SHURIKEN;
      
      protected static const RYU_FIRE_DRAGON_BALL:String = PickupInfo.RYU_FIRE_DRAGON_BALL;
      
      protected static const RYU_JUMP_SLASH:String = PickupInfo.RYU_JUMP_SLASH;
      
      protected static const RYU_INFINITE_JUMP_SLASH:String = PickupInfo.RYU_INFINITE_JUMP_SLASH;
      
      protected static const RYU_SCROLL:String = PickupInfo.RYU_SCROLL;
      
      protected static const RYU_SWORD_EXTENSION:String = PickupInfo.RYU_SWORD_EXTENSION;
      
      public static const RYU_NINJITSU_AMMO_BIG:String = PickupInfo.RYU_NINJITSU_AMMO_BIG;
      
      public static const RYU_NINJITSU_AMMO_SMALL:String = PickupInfo.RYU_NINJITSU_AMMO_SMALL;
      
      public static const OBTAINABLE_UPGRADES_ARR:Array = [[RYU_SWORD_EXTENSION],[RYU_SHURIKEN,RYU_ART_OF_FIRE_WHEEL,RYU_WINDMILL_SHURIKEN,RYU_FIRE_DRAGON_BALL,RYU_JUMP_SLASH,RYU_SCROLL]];
      
      public static const MUSHROOM_UPGRADES:Array = [];
      
      public static const NEVER_LOSE_UPGRADES:Array = [RYU_SHURIKEN,RYU_ART_OF_FIRE_WHEEL,RYU_WINDMILL_SHURIKEN,RYU_FIRE_DRAGON_BALL,RYU_JUMP_SLASH,RYU_SCROLL];
      
      public static const RESTORABLE_UPGRADES:Array = [];
      
      public static const START_WITH_UPGRADES:Array = [RYU_SHURIKEN];
      
      public static const SINGLE_UPGRADES_ARR:Array = [RYU_SHURIKEN,RYU_ART_OF_FIRE_WHEEL,RYU_WINDMILL_SHURIKEN,RYU_FIRE_DRAGON_BALL,RYU_JUMP_SLASH];
      
      public static const REPLACEABLE_UPGRADES_ARR:Array = [];
      
      public static const TITLE_SCREEN_UPGRADES:Array = [MUSHROOM,RYU_SHURIKEN];
      
      private static const CLASSIC_DEFAULT_AMMO:int = 25;
      
      private static const NINJITSU_AMMO_MAX_DEFAULT:int = 99;
      
      private static const NINJITSU_AMMO_MAX_SCROLL:int = 200;
      
      public static const ICON_ORDER_ARR:Array = [RYU_SHURIKEN,RYU_ART_OF_FIRE_WHEEL,RYU_WINDMILL_SHURIKEN,RYU_FIRE_DRAGON_BALL,RYU_JUMP_SLASH,RYU_SWORD_EXTENSION,RYU_SCROLL];
      
      private static const AMMO_TYPE_NINJITSU:String = "ninjitsuAmmoName";
      
      public static const AMMO_ARR:Array = [[AMMO_TYPE_NINJITSU,50,NINJITSU_AMMO_MAX_DEFAULT,1]];
      
      public static const AMMO_DEPLETION_ARR:Array = [[RYU_SHURIKEN,3],[RYU_ART_OF_FIRE_WHEEL,5],[RYU_WINDMILL_SHURIKEN,5],[RYU_FIRE_DRAGON_BALL,5],[RYU_JUMP_SLASH,5]];
      
      public static const AMMO_DCT:CustomDictionary = new CustomDictionary();
      
      public static const AMMO_DEPLETION_DCT:CustomDictionary = new CustomDictionary();
      
      public static const DROP_ARR:Array = [[0,RYU_NINJITSU_AMMO_SMALL],[0.8,RYU_NINJITSU_AMMO_BIG]];
      
      public static const WIN_SONG_DUR:int = 4000;
      
      public static const CHAR_SEL_END_DUR:int = 1900;
      
      private static const CLR_GRAY:uint = 4287203747;
      
      private static const CLR_SKIN:uint = 4294952170;
      
      private static const CLR_BROWN_OUTLINE:uint = 4283833600;
      
      private static const CLR_BLUE:uint = 4287795455;
      
      private static const CLR_BLOOD_RED:uint = 4289597970;
      
      private static const CLR_BLACK_RED_OUTLINE:uint = 4281143040;
      
      private static const FL_AMMO_ICON:String = "ninjitsuAmmo";
      
      private static const FL_CHECK_ATK_RECT_STAND:String = "attack-2";
      
      private static const FL_CHECK_ATK_RECT_FALL:String = "fallAttackStart";
      
      private static const FL_CHECK_ATK_RECT_CROUCH:String = "crouchAttack-2";
      
      private static const FL_ATTACK_START:String = "attackStart";
      
      private static const FL_ATTACK_END:String = "attackEnd";
      
      private static const FL_STAND_START:String = "standStart";
      
      private static const FL_STAND_END:String = "standEnd";
      
      public static const FL_WALK_START:String = "walkStart";
      
      public static const FL_WALK_END:String = "walkEnd";
      
      private static const FL_THROW_START:String = "throwStart";
      
      private static const FL_THROW_END:String = "throwEnd";
      
      private static const FL_CROUCH:String = "crouch";
      
      private static const FL_CROUCH_ATTACK_START:String = "crouchAttackStart";
      
      private static const FL_CROUCH_ATTACK_END:String = "crouchAttackEnd";
      
      private static const FL_CROUCH_THROW_START:String = "crouchThrowStart";
      
      private static const FL_CROUCH_THROW_END:String = "crouchThrowEnd";
      
      private static const FL_FALL:String = "fall";
      
      private static const FL_FALL_ATTACK_START:String = "fallAttackStart";
      
      private static const FL_FALL_ATTACK_END:String = "fallAttackEnd";
      
      private static const FL_FALL_THROW_START:String = "fallThrowStart";
      
      private static const FL_FALL_THROW_END:String = "fallThrowEnd";
      
      public static const FL_CLIMB_START:String = "climbStart";
      
      public static const FL_CLIMB_END:String = "climbEnd";
      
      private static const FL_CLIMB_STOP:String = "climbStop";
      
      private static const FL_CLIMB_THROW_START:String = "climbThrowStart";
      
      private static const FL_CLIMB_THROW_END:String = "climbThrowEnd";
      
      private static const FL_CLIMB_THROW_BACKWARDS_START:String = "climbThrowBackwardsStart";
      
      private static const FL_CLIMB_THROW_BACKWARDS_END:String = "climbThrowBackwardsEnd";
      
      public static const FL_CLIMB_THROW_BACKWARDS_PROJECTILE:String = "climbThrowBackwards-2";
      
      private static const FL_CLIMB_POLE_START:String = "climbPoleStart";
      
      private static const FL_CLIMB_POLE_END:String = "climbPoleEnd";
      
      public static const FL_FLIP_START:String = "flipStart";
      
      public static const FL_FLIP_END:String = "flipEnd";
      
      public static const FL_JUMP_SLASH_START:String = "jumpSlashStart";
      
      public static const FL_JUMP_SLASH_END:String = "jumpSlashEnd";
      
      private static const FL_TAKE_DAMAGE:String = "takeDamage";
      
      private static const FL_DIE:String = "die";
      
      private static const SWORD_NAME:String = "swordStg";
      
      private static const SWORD_WAVE_NAME:String = "swordWaveStg";
      
      private static const A_RECT_NORMAL:Rectangle = new Rectangle(16,-50,48,13);
      
      private static const A_RECT_WAVE_NORMAL:Rectangle = new Rectangle(16,-50,75,32);
      
      private static const A_RECT_CROUCH:Rectangle = new Rectangle(16,-38,48,15);
      
      private static const A_RECT_WAVE_CROUCH:Rectangle = new Rectangle(16,-38,79,32);
      
      public static const SN_RYU_ATTACK:String = SoundNames.SFX_RYU_ATTACK;
      
      private static const SN_GET_PICKUP:String = SoundNames.SFX_RYU_GET_PICKUP;
      
      private static const SN_JUMP_SLASH:String = SoundNames.SFX_RYU_JUMP_SLASH;
      
      public static const SN_RYU_DAMAGE_ENEMY:String = SoundNames.SFX_RYU_DAMAGE_ENEMY;
      
      public static const SN_RYU_JUMP:String = SoundNames.SFX_RYU_JUMP;
      
      public static const ST_CLIMB:String = "climb";
      
      public static const WALK_START_LAB:String = FL_WALK_START;
      
      public static const WALK_END_LAB_PLAIN:String = "walk-4";
      
      private static const WALK_END_LAB_HAGGLE:String = "walkEnd";
      
      public static const WALK_SPEED:int = 185;
      
      public static const JUMP_PWR:int = 565;
      
      public static const JUMP_PWR_WATER:int = 400;
      
      private static const CLIMB_JUMP_PWR:int = 300;
      
      private static const CLIMB_TOP_JUMP_PWR:int = 430;
      
      public static const GRAVITY:int = 1400;
      
      private static const GRAVITY_WATER:int = 500;
      
      private static const DEF_SPRING_PWR:int = 500;
      
      private static const BOOST_SPRING_PWR:int = 1000;
      
      private static const VY_MAX_PSV:int = 700;
      
      public static const CLIMB_SPEED:int = 120;
      
      private static const FLIP_MAX_VY:int = -200;
      
      private static const BOUNCE_POWER:int = 550;
      
      private static const CLIMB_GROUND_CHECK_DIST:int = 50;
      
      private static const CLIMB_TOP_JUMP_OFS:int = -10;
      
      private static const CLIMB_TOP_OFS:int = 20;
      
      private static const CLIMB_BOT_OFS:int = 25;
      
      private static const CLIMB_BOT_MAX_GRAPPLE_INCREASE:int = 10;
      
      private static const CLIMB_BOT_GRAPPLE_TEST_INC:int = 2;
      
      public static const CLIMB_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_VERY_SLOW_TMR;
      
      public static const FLIP_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private static const WALK_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      private static const STAND_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      private static const ATTACK_ANIM_TMR:CustomTimer = new CustomTimer(45);
      
      private static const FLIP_TMR:CustomTimer = new CustomTimer(400,1);
      
      private static const ATTACK_FRAMES_DCT:CustomDictionary = new CustomDictionary();
      
      private static const SWORD_FRAMES_1_ARR:Array = [FL_ATTACK_START,"attack-2","attack-3",FL_FALL_ATTACK_START,"fallAttack-2","fallAttack-3",FL_CROUCH_ATTACK_START,"crouchAttack-2","crouchAttack-3"];
      
      private static const SWORD_FRAMES_2_ARR:Array = ["attack-4","attack-5","fallAttack-4","fallAttack-5","crouchAttack-4","crouchAttack-5"];
      
      private static const SWORD_WAVE_FRAMES_ARR:Array = [FL_ATTACK_START,"attack-2","attack-3",FL_FALL_ATTACK_START,"fallAttack-2","fallAttack-3",FL_CROUCH_ATTACK_START,"crouchAttack-2","crouchAttack-3"];
      
      private static const THROW_PROJECTILE_FRAMES_DCT:CustomDictionary = new CustomDictionary();
      
      private static const MAX_PROJECTILES_ON_SCREEN:int = 1;
      
      private static const PT_STAR_BIG:String = RyuProjectile.TYPE_WINDMILL_SHURIKEN;
      
      private static const PT_STAR_SMALL:String = RyuProjectile.TYPE_SHURIKEN;
      
      private static const NINJITSU_AMMO_BIG_VALUE:int = 10;
      
      private static const NINJITSU_AMMO_SMALL_VALUE:int = 5;
      
      private static var attackFramesArr:Array = ["attack-2","attack-3","fallAttack-2","fallAttack-3","crouchAttack-2","crouchAttack-3"];
      
      private static var attackFramesHaggleManArr:Array = ["attackStart","attack-2","fallAttackStart","fallAttack-2","crouchAttackStart","crouchAttack-2"];
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      public static const SKIN_PREVIEW_SIZE:Point = new Point(30,36);
      
      public static const SKIN_RYU_NES:int = 0;
      
      public static const SKIN_RYU_SNES:int = 1;
      
      public static const SKIN_RYU_GB:int = 2;
      
      public static const SKIN_HAGGLE_MAN_NES:int = 3;
      
      public static const SKIN_HAGGLE_MAN_SNES:int = 4;
      
      public static const SKIN_SHADOW_SNES:int = 5;
      
      public static const SKIN_RYU_X1:int = 6;
      
      public static const SKIN_RYU_ATARI:int = 7;
      
      public static const SKIN_RYU_SMS:int = 8;
      
      public static const SKIN_RYU_CLONE:int = 9;
      
      public static const SKIN_HAYATE:int = 10;
      
      public static const SKIN_KAEDE:int = 11;
      
      public static const SKIN_ORDER:Array = [SKIN_RYU_NES,SKIN_RYU_SNES,SKIN_RYU_GB,SKIN_RYU_SMS,SKIN_RYU_X1,SKIN_RYU_ATARI,SKIN_RYU_CLONE,SKIN_HAYATE,SKIN_KAEDE,SKIN_SHADOW_SNES,SKIN_HAGGLE_MAN_NES,SKIN_HAGGLE_MAN_SNES];
      
      public static const SPECIAL_SKIN_NUMBER:int = SKIN_RYU_X1;
      
      public static const ATARI_SKIN_NUMBER:int = SKIN_RYU_ATARI;
       
      
      private var SUBWEAPON_OVERRIDE:String = "UPG_jumpSlash";
      
      private const DIE_TMR_DEL_NORMAL:int = 3800;
      
      private const DIE_TMR_DEL_NORMAL_MAX:int = 6000;
      
      private const DIE_TMR_DEL_PIT:int = 3800;
      
      private const SECONDS_LEFT_SND:String = SoundNames.BGM_RYU_SECONDS_LEFT;
      
      private const SND_MUSIC_WIN:String = SoundNames.MFX_RYU_WIN;
      
      private const REPL_COLOR_1_1:uint = 4283833600;
      
      private const REPL_COLOR_2_1:uint = 4287203747;
      
      private const REPL_COLOR_3_1:uint = 4294952170;
      
      private const REPL_COLOR_1_2:uint = 4283833600;
      
      private const REPL_COLOR_2_2:uint = 4287795455;
      
      private const REPL_COLOR_3_2:uint = 4294952170;
      
      private const REPL_COLOR_1_3:uint = 4281143040;
      
      private const REPL_COLOR_2_3:uint = 4289597970;
      
      private const REPL_COLOR_3_3:uint = 4294952170;
      
      private const CHOOSE_CHAR_SEQ:Array = [[1,this.pressRhtBtn],[100,this.pressJmpBtn],[1,pressUpBtn]];
      
      private const DIE_VERT_BOOST:int = 385;
      
      private const DIE_HORZ_BOOST:int = 150;
      
      public const CANCEL_GRAPPLE_TMR:CustomTimer = new CustomTimer(250,1);
      
      private var haggleMan:Boolean;
      
      private const HIT_DIST_OVER_OFFSET:int = 30;
      
      private var startedDeathMusic:Boolean;
      
      public var climbPlat:Platform;
      
      private const MAX_PLAT_DIST:int = 30;
      
      private const NSF_STR_DIE:String = MusicInfo.CHAR_STR_RYU + MusicInfo.TYPE_DIE;
      
      public var swordStg:MovieClip;
      
      public var swordWaveStg:MovieClip;
      
      private var sword:MovieClip;
      
      private var swordWave:MovieClip;
      
      private var throwProjectileFramesArr:Array;
      
      public var cancelGrappleGroundPos:Number;
      
      private var justCrouched:Boolean;
      
      private var attackedInAir:Boolean;
      
      private var flipping:Boolean;
      
      private var climbThrowing:Boolean;
      
      private var topJumpPos:Boolean;
      
      private var topClimbPos:Boolean;
      
      private var botClimbPos:Boolean;
      
      public var forceAttachToWall:Boolean;
      
      public var bigStar:RyuProjectile;
      
      private var curSubWeapon:String;
      
      private var jumpSlash:Boolean;
      
      private var lastThrowType:RyuSimonThrowType;
      
      public function Ryu()
      {
         var _loc1_:StatusProperty = null;
         this.throwProjectileFramesArr = ["throw-2","crouchThrow-2","fallThrow-2","climbThrow-2","climbThrowBackwards-2"];
         charNum = CHAR_NUM;
         super();
         poorBowserFighter = true;
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(PR_FLASH_AGG,0,new StatFxFlash(null,AnimationTimers.DEL_FAST,400)));
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
         _canGetAmmoFromCoinBlocks = true;
         _canGetAmmoFromBricks = true;
         _charName = CHAR_NAME;
         _charNameTxt = CHAR_NAME_TEXT;
         _charNameCaps = CHAR_NAME_CAPS;
         winSongDur = WIN_SONG_DUR;
         _secondsLeftSnd = this.SECONDS_LEFT_SND;
         _sndWinMusic = this.SND_MUSIC_WIN;
         _secondsLeftSndIsBgm = true;
         _dieTmrDel = this.DIE_TMR_DEL_NORMAL;
         _usesHorzObjs = true;
         _usesVertObjs = true;
         boostSpringPwr = BOOST_SPRING_PWR;
         defSpringPwr = DEF_SPRING_PWR;
         walkStartLab = WALK_START_LAB;
         walkEndLab = walkEndLab;
      }
      
      override public function get classicGetMushroomUpgrades() : Vector.<String>
      {
         return Vector.<String>([RYU_SWORD_EXTENSION]);
      }
      
      override public function get classicGetFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([RYU_SCROLL]);
      }
      
      override public function get classicLoseFireFlowerUpgrades() : Vector.<String>
      {
         return Vector.<String>([]);
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(SWORD_NAME,SWORD_FRAMES_1_ARR.concat(SWORD_FRAMES_2_ARR),true);
         removeObjsFromFrames(SWORD_WAVE_NAME,SWORD_WAVE_FRAMES_ARR,true);
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         super.setCurrentBmdSkin(param1);
         var _loc3_:Array = attackFramesArr;
         if(skinNum == 3 || skinNum == 4)
         {
            this.haggleMan = true;
            _loc3_ = attackFramesHaggleManArr;
            walkEndLab = WALK_END_LAB_HAGGLE;
         }
         else
         {
            this.haggleMan = false;
            walkEndLab = WALK_END_LAB_PLAIN;
         }
         if(cState == ST_WALK)
         {
            setPlayFrame(FL_WALK_START);
         }
         this.setSwordVisibility();
         ATTACK_FRAMES_DCT.clear();
         var _loc4_:int = int(_loc3_.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            ATTACK_FRAMES_DCT.addItem(_loc3_[_loc5_]);
            _loc5_++;
         }
      }
      
      private function setSwordVisibility() : void
      {
         var _loc1_:Boolean = true;
         if(upgradeIsActive(RYU_SWORD_EXTENSION))
         {
            _loc1_ = false;
         }
         removeObjsFromFrames(SWORD_NAME,SWORD_FRAMES_2_ARR,true,int(_loc1_));
         removeObjsFromFrames(SWORD_WAVE_NAME,SWORD_WAVE_FRAMES_ARR,false,int(!_loc1_));
      }
      
      override public function initiate() : void
      {
         super.initiate();
         var _loc1_:int = int(this.throwProjectileFramesArr.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            THROW_PROJECTILE_FRAMES_DCT.addItem(this.throwProjectileFramesArr[_loc2_]);
            _loc2_++;
         }
         this.throwProjectileFramesArr = null;
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         this.sword = param1.getChildByName(SWORD_NAME) as MovieClip;
         this.swordWave = param1.getChildByName(SWORD_WAVE_NAME) as MovieClip;
      }
      
      override public function setStats() : void
      {
         inColor1_1 = this.REPL_COLOR_1_1;
         inColor2_1 = this.REPL_COLOR_2_1;
         inColor3_1 = this.REPL_COLOR_3_1;
         inColor1_2 = this.REPL_COLOR_1_2;
         inColor2_2 = this.REPL_COLOR_2_2;
         inColor3_2 = this.REPL_COLOR_3_2;
         inColor1_3 = this.REPL_COLOR_1_3;
         inColor2_3 = this.REPL_COLOR_2_3;
         inColor3_3 = this.REPL_COLOR_3_3;
         jumpPwr = JUMP_PWR;
         gravity = GRAVITY;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = GRAVITY_WATER;
            defGravityWater = gravity;
            jumpPwr = JUMP_PWR_WATER;
         }
         defSpringPwr = DEF_SPRING_PWR;
         boostSpringPwr = BOOST_SPRING_PWR;
         vyMaxPsv = VY_MAX_PSV;
         xSpeed = WALK_SPEED;
         vxMax = xSpeed;
         pState2 = true;
         super.setStats();
         this.beginIdleStance();
         tsTxt.UpdAmmoIcon(true,FL_AMMO_ICON);
         this.setAmmo(AMMO_TYPE_NINJITSU,getAmmo(AMMO_TYPE_NINJITSU));
         this.sword.visible = false;
         this.swordWave.visible = false;
         ATTACK_ANIM_TMR.addEventListener(TimerEvent.TIMER,this.attackAnimTmrHandler,false,0,true);
         addTmr(ATTACK_ANIM_TMR);
         this.CANCEL_GRAPPLE_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.cancelGrappleTmrHandler,false,0,true);
         addTmr(this.CANCEL_GRAPPLE_TMR);
         FLIP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.flipTmrHandler,false,0,true);
         addTmr(FLIP_TMR);
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         if(GameSettings.classicMode && param1 && !upgradeIsActive(this.classicStartWeapon) && !(level is TitleLevel))
         {
            STAT_MNGR.addCharUpgrade(charNum,this.classicStartWeapon);
         }
         this.setSwordVisibility();
         this.setCurSubWeapon();
         this.updMaxAmmo();
      }
      
      private function getClassicWeapon(param1:RyuSpecialWeapon) : String
      {
         switch(param1)
         {
            case RyuSpecialWeapon.ArtOfFireWheel:
               return RYU_ART_OF_FIRE_WHEEL;
            case RyuSpecialWeapon.FireDragonBall:
               return RYU_FIRE_DRAGON_BALL;
            case RyuSpecialWeapon.JumpSlash:
               return RYU_JUMP_SLASH;
            case RyuSpecialWeapon.Shuriken:
               return RYU_SHURIKEN;
            case RyuSpecialWeapon.WindmillShuriken:
               return RYU_WINDMILL_SHURIKEN;
            default:
               return RYU_WINDMILL_SHURIKEN;
         }
      }
      
      private function get classicStartWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.ryuStartWeapon);
      }
      
      private function get classicExtraWeapon() : String
      {
         return this.getClassicWeapon(GameSettings.ryuExtraWeapon);
      }
      
      private function updMaxAmmo() : void
      {
         if(upgradeIsActive(RYU_SCROLL))
         {
            setMaxAmmo(AMMO_TYPE_NINJITSU,NINJITSU_AMMO_MAX_SCROLL);
         }
         else
         {
            setMaxAmmo(AMMO_TYPE_NINJITSU,NINJITSU_AMMO_MAX_DEFAULT);
         }
      }
      
      private function setCurSubWeapon() : void
      {
         if(upgradeIsActive(RYU_ART_OF_FIRE_WHEEL))
         {
            this.curSubWeapon = RYU_ART_OF_FIRE_WHEEL;
         }
         else if(upgradeIsActive(RYU_FIRE_DRAGON_BALL))
         {
            this.curSubWeapon = RYU_FIRE_DRAGON_BALL;
         }
         else if(upgradeIsActive(RYU_JUMP_SLASH))
         {
            this.curSubWeapon = RYU_JUMP_SLASH;
         }
         else if(upgradeIsActive(RYU_SHURIKEN))
         {
            this.curSubWeapon = RYU_SHURIKEN;
         }
         else if(upgradeIsActive(RYU_WINDMILL_SHURIKEN))
         {
            this.curSubWeapon = RYU_WINDMILL_SHURIKEN;
         }
         else
         {
            this.curSubWeapon = null;
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
         gravity = GRAVITY;
         jumpPwr = JUMP_PWR;
         super.forceNonwaterStats();
      }
      
      override protected function checkPlatform() : void
      {
         var checkPlatDist:Function;
         if(this.climbPlat)
         {
            checkPlatDist = function(param1:Number):Boolean
            {
               if(param1 < 0)
               {
                  param1 = -param1;
               }
               if(param1 > MAX_PLAT_DIST)
               {
                  return true;
               }
               return false;
            };
            if(scaleX > 0)
            {
               if(checkPlatDist(nx - this.climbPlat.hLft))
               {
                  this.detachFromWall();
                  return;
               }
               nx = this.climbPlat.hLft - hWidth / 2;
            }
            else
            {
               if(checkPlatDist(nx - this.climbPlat.hRht))
               {
                  this.detachFromWall();
                  return;
               }
               nx = this.climbPlat.hRht + hWidth / 2;
            }
            if(checkPlatDist(ny - hHeight / 2 - this.climbPlat.hMidY))
            {
               this.detachFromWall();
               return;
            }
            ny = this.climbPlat.hMidY + hHeight / 2;
            setHitPoints();
         }
         else
         {
            super.checkPlatform();
         }
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         if(onGround)
         {
            if(dwnBtn || cState == ST_ATTACK)
            {
               vx = 0;
               return;
            }
         }
         if(cState == ST_CLIMB)
         {
            if(this.climbThrowing)
            {
               return;
            }
            this.checkClimbPosition();
            if(!this.topClimbPos && upBtn)
            {
               vy = -CLIMB_SPEED;
            }
            else if(!this.botClimbPos && dwnBtn)
            {
               vy = CLIMB_SPEED;
            }
            else
            {
               vy = 0;
            }
            return;
         }
         if(rhtBtn && !lftBtn && !wallOnRight)
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
               getOffVine();
            }
            vx = xSpeed;
            this.scaleX = 1;
         }
         else if(lftBtn && !rhtBtn && !wallOnLeft)
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
               getOffVine();
            }
            vx = -xSpeed;
            this.scaleX = -1;
         }
         else if((lftBtn && rhtBtn || !lftBtn && !rhtBtn) && cState != ST_DIE)
         {
            vx = 0;
         }
      }
      
      override protected function checkState() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Rectangle = null;
         var _loc4_:Boolean = false;
         checkAtkRect = false;
         hitDistOver = 0;
         if(cState == ST_VINE)
         {
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(cState == ST_CLIMB)
         {
            if(this.climbThrowing)
            {
               return;
            }
            if(stopAnim && (upBtn || dwnBtn))
            {
               setPlayFrame(FL_CLIMB_START);
            }
            else if(!upBtn && !dwnBtn || upBtn && dwnBtn)
            {
               setStopFrame(FL_CLIMB_STOP);
            }
            return;
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         if(onGround)
         {
            jumped = false;
            this.climbPlat = null;
            this.cancelGrappleGroundPos = NaN;
            if(cState != ST_ATTACK && cState != ST_DIE)
            {
               if(dwnBtn)
               {
                  setState(ST_CROUCH);
                  setStopFrame(FL_CROUCH);
                  this.justCrouched = true;
               }
               else if(vx == 0)
               {
                  if(cState != ST_STAND)
                  {
                     this.beginIdleStance();
                  }
               }
               else
               {
                  if(cState != ST_WALK)
                  {
                     mainAnimTmr = WALK_ANIM_TMR;
                     setPlayFrame(FL_WALK_START);
                  }
                  setState(ST_WALK);
               }
            }
            else if(cState == ST_DIE && !this.startedDeathMusic)
            {
               SND_MNGR.changeMusic(MusicType.DIE);
               EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL);
               vx = 0;
               this.startedDeathMusic = true;
            }
         }
         else if(cState != ST_ATTACK)
         {
            setState(ST_JUMP);
            if(!FLIP_TMR.running && !this.jumpSlash)
            {
               setStopFrame(FL_FALL);
            }
         }
         if(cState == ST_ATTACK)
         {
            _loc1_ = currentFrameLabel;
            for each(_loc2_ in ATTACK_FRAMES_DCT)
            {
               if(_loc1_ === convLab(_loc2_))
               {
                  checkAtkRect = true;
                  _loc4_ = false;
                  if(_loc1_.indexOf("crouch") != -1)
                  {
                     _loc4_ = true;
                  }
                  if(!upgradeIsActive(RYU_SWORD_EXTENSION))
                  {
                     if(!_loc4_)
                     {
                        _loc3_ = A_RECT_NORMAL;
                     }
                     else
                     {
                        _loc3_ = A_RECT_CROUCH;
                     }
                  }
                  else
                  {
                     if(!_loc4_)
                     {
                        _loc3_ = A_RECT_WAVE_NORMAL;
                     }
                     else
                     {
                        _loc3_ = A_RECT_WAVE_CROUCH;
                     }
                     hitDistOver = _loc3_.width * 2;
                  }
                  ahRect.x = _loc3_.x;
                  ahRect.y = _loc3_.y;
                  ahRect.width = _loc3_.width;
                  ahRect.height = _loc3_.height;
                  break;
               }
            }
         }
      }
      
      override protected function getMushroomEnd() : void
      {
         super.getMushroomEnd();
         if(GameSettings.tutorials)
         {
            TutorialManager.TUT_MNGR.gotPowerUp(this);
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(!starPwr && this.jumpSlash)
         {
            landAttack(param1);
         }
         else
         {
            super.hitEnemy(param1,param2);
         }
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(this.jumpSlash && param1 is IAttackable)
         {
            landAttack(param1 as IAttackable);
         }
         if(!param1.destroyed)
         {
            super.hitGround(param1,param2);
         }
      }
      
      private function checkClimbPosition() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Ground = null;
         this.topClimbPos = true;
         this.botClimbPos = true;
         this.topJumpPos = true;
         if(this.climbPlat)
         {
            return;
         }
         for each(_loc4_ in level.GROUND_STG_DCT)
         {
            if(!(!_loc4_.onScreen || !_loc4_.visible))
            {
               if(scaleX > 0 && _loc4_.hLft == hRht || scaleX < 0 && _loc4_.hRht == hLft)
               {
                  _loc1_ = hTop + CLIMB_TOP_OFS;
                  _loc2_ = hBot - CLIMB_BOT_OFS;
                  _loc3_ = hTop + CLIMB_TOP_JUMP_OFS;
                  if(_loc1_ >= _loc4_.hTop && _loc1_ <= _loc4_.hBot)
                  {
                     this.topClimbPos = false;
                  }
                  if(_loc2_ >= _loc4_.hTop && _loc2_ <= _loc4_.hBot)
                  {
                     this.botClimbPos = false;
                  }
                  if(_loc3_ >= _loc4_.hTop && _loc3_ <= _loc4_.hBot)
                  {
                     this.topJumpPos = false;
                  }
               }
            }
         }
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = upgradeIsActive(FIRE_FLOWER);
         super.hitPickup(param1,param2);
         if(param1.mainType == PickupInfo.MAIN_TYPE_UPGRADE)
         {
            this.setCurSubWeapon();
            switch(param1.type)
            {
               case RYU_SWORD_EXTENSION:
                  this.setSwordVisibility();
                  break;
               case RYU_SCROLL:
                  this.updMaxAmmo();
                  break;
               case MUSHROOM:
                  this.setSwordVisibility();
                  break;
               case FIRE_FLOWER:
                  this.setSwordVisibility();
                  if(_loc3_)
                  {
                     increaseAmmoByValue(AMMO_TYPE_NINJITSU,NINJITSU_AMMO_SMALL_VALUE * 3);
                  }
                  else
                  {
                     this.updMaxAmmo();
                  }
            }
         }
         else
         {
            switch(param1.type)
            {
               case RYU_NINJITSU_AMMO_BIG:
                  increaseAmmoByValue(AMMO_TYPE_NINJITSU,NINJITSU_AMMO_BIG_VALUE);
                  break;
               case RYU_NINJITSU_AMMO_SMALL:
                  increaseAmmoByValue(AMMO_TYPE_NINJITSU,NINJITSU_AMMO_SMALL_VALUE);
            }
         }
         if(!param1.playsRegularSound && param1.mainType != PickupInfo.MAIN_TYPE_FAKE && param2)
         {
            if(param1.type == RYU_SCROLL)
            {
               SND_MNGR.playSound(SoundNames.SFX_RYU_GET_SCROLL);
            }
            else
            {
               SND_MNGR.playSound(SN_GET_PICKUP);
            }
         }
      }
      
      override public function pressJmpBtn() : void
      {
         var _loc1_:Platform = null;
         if(cState == ST_VINE)
         {
            return;
         }
         _loc1_ = this.climbPlat;
         if(cState == ST_CLIMB && !this.climbThrowing)
         {
            if(dwnBtn)
            {
               this.detachFromWall();
            }
            else if(scaleX < 0 && rhtBtn || scaleX > 0 && lftBtn || this.topJumpPos)
            {
               this.detachFromWall();
               vy = -CLIMB_JUMP_PWR;
               setState(ST_JUMP);
               this.startFlip();
               SND_MNGR.playSound(SN_RYU_JUMP);
               if(this.topJumpPos && (_loc1_ || scaleX < 0 && !rhtBtn || scaleX > 0 && !lftBtn))
               {
                  vy = -CLIMB_TOP_JUMP_PWR;
                  if(this.CANCEL_GRAPPLE_TMR.running)
                  {
                     this.CANCEL_GRAPPLE_TMR.reset();
                  }
                  this.CANCEL_GRAPPLE_TMR.start();
               }
            }
         }
         else if(onGround)
         {
            onGround = false;
            vy = -jumpPwr;
            setState(ST_JUMP);
            lState = ST_STAND;
            jumped = true;
            this.startFlip();
            SND_MNGR.playSound(SN_RYU_JUMP);
         }
         super.pressJmpBtn();
      }
      
      public function detachFromWall() : void
      {
         onGround = false;
         vy = 0;
         setState(ST_JUMP);
         setStopFrame(FL_FALL);
         lState = ST_CLIMB;
         jumped = true;
         defyGrav = false;
         if(this.climbPlat)
         {
            this.climbPlat.charOnPlat = false;
            this.climbPlat = null;
         }
         brickState = BRICK_BOUNCER;
      }
      
      override public function pressAtkBtn() : void
      {
         if(upBtn && GameSettings.classicSpecialInput)
         {
            this.pressedSpecialButton();
            return;
         }
         if(cState == ST_VINE || cState == ST_CLIMB)
         {
            if(cState == ST_CLIMB && Boolean(this.canThrowCurWeapon(RyuSimonThrowType.Default)))
            {
               this.throwStar(RyuSimonThrowType.Default);
            }
            return;
         }
         super.pressAtkBtn();
         if(cState != ST_ATTACK && !this.jumpSlash)
         {
            if(onGround)
            {
               if(dwnBtn)
               {
                  setPlayFrame(FL_CROUCH_ATTACK_START);
               }
               else
               {
                  setPlayFrame(FL_ATTACK_START);
               }
            }
            else
            {
               setPlayFrame(FL_FALL_ATTACK_START);
               this.attackedInAir = true;
               this.flipping = false;
            }
            setState(ST_ATTACK);
            mainAnimTmr = ATTACK_ANIM_TMR;
            SND_MNGR.playSound(SN_RYU_ATTACK);
            ATTACK_ANIM_TMR.start();
            this.checkState();
         }
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         super.getOnVine(param1);
         setStopFrame(FL_CLIMB_POLE_START);
         mainAnimTmr = CLIMB_ANIM_TMR;
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         setPlayFrame(FL_CLIMB_POLE_START);
         nx = level.flagPole.hMidX;
         mainAnimTmr = CLIMB_ANIM_TMR;
      }
      
      override public function pressSpcBtn() : void
      {
         super.pressSpcBtn();
         this.pressedSpecialButton();
      }
      
      private function pressedSpecialButton() : void
      {
         if(cState == ST_VINE || cState == ST_ATTACK)
         {
            return;
         }
         if(cState == ST_JUMP && this.curSubWeapon == RYU_JUMP_SLASH && !this.jumpSlash && hasEnoughAmmo(AMMO_TYPE_NINJITSU,RYU_JUMP_SLASH))
         {
            this.jumpSlashStart();
         }
         else if(this.canThrowCurWeapon(RyuSimonThrowType.Default))
         {
            this.throwStar(RyuSimonThrowType.Default);
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(cState == ST_VINE || cState == ST_ATTACK || !GameSettings.classicMode || !upgradeIsActive(FIRE_FLOWER))
         {
            return;
         }
         if(cState == ST_JUMP && this.classicExtraWeapon == RYU_JUMP_SLASH && !this.jumpSlash && hasEnoughAmmo(AMMO_TYPE_NINJITSU,RYU_JUMP_SLASH))
         {
            this.jumpSlashStart();
         }
         else if(this.canThrowCurWeapon(RyuSimonThrowType.Extra))
         {
            this.throwStar(RyuSimonThrowType.Extra);
         }
      }
      
      override protected function getDefaultAmmo(param1:String) : int
      {
         if(GameSettings.classicMode)
         {
            return CLASSIC_DEFAULT_AMMO;
         }
         return super.getDefaultAmmo(param1);
      }
      
      private function jumpSlashStart() : void
      {
         if(!FLIP_TMR.running)
         {
            this.startFlip();
         }
         if(!upgradeIsActive(RYU_INFINITE_JUMP_SLASH))
         {
            decAmmo(AMMO_TYPE_NINJITSU,RYU_JUMP_SLASH);
         }
         var _loc1_:int = convFrameToInt(FL_FLIP_START);
         var _loc2_:int = convFrameToInt(FL_JUMP_SLASH_START);
         var _loc3_:int = _loc2_ - _loc1_;
         gotoAndStop(currentFrame + _loc3_);
         this.jumpSlash = true;
         SND_MNGR.playSound(SN_JUMP_SLASH);
      }
      
      override public function relAtkBtn() : void
      {
         super.relAtkBtn();
         if(GS_MNGR.gameState != GS_PLAY || cState == ST_ATTACK || cState == ST_VINE || pState < 1)
         {
            return;
         }
      }
      
      override public function pressLftBtn() : void
      {
         super.pressLftBtn();
         if(this.forceAttachToWall)
         {
            this.forceAttachToWall = false;
         }
      }
      
      override public function pressRhtBtn() : void
      {
         super.pressRhtBtn();
         if(this.forceAttachToWall)
         {
            this.forceAttachToWall = false;
         }
      }
      
      private function throwStar(param1:RyuSimonThrowType) : void
      {
         if(cState != ST_CLIMB)
         {
            this.lastThrowType = param1;
            if(onGround)
            {
               if(dwnBtn)
               {
                  setPlayFrame(FL_CROUCH_THROW_START);
               }
               else
               {
                  setPlayFrame(FL_THROW_START);
               }
            }
            else
            {
               setPlayFrame(FL_FALL_THROW_START);
            }
            setState(ST_ATTACK);
            mainAnimTmr = ATTACK_ANIM_TMR;
            ATTACK_ANIM_TMR.start();
         }
         else if(!this.climbThrowing)
         {
            this.lastThrowType = param1;
            if(scaleX < 0 && rhtBtn || scaleX > 0 && lftBtn)
            {
               setPlayFrame(FL_CLIMB_THROW_BACKWARDS_START);
            }
            else
            {
               setPlayFrame(FL_CLIMB_THROW_START);
            }
            this.climbThrowing = true;
            vy = 0;
            mainAnimTmr = ATTACK_ANIM_TMR;
            ATTACK_ANIM_TMR.start();
         }
      }
      
      private function canThrowCurWeapon(param1:RyuSimonThrowType) : String
      {
         var _loc2_:String = this.curSubWeapon;
         if(param1 == RyuSimonThrowType.Extra && GameSettings.classicMode)
         {
            _loc2_ = this.classicExtraWeapon;
         }
         var _loc3_:String = this.getRyuProjectileTypeFromPickupType(_loc2_);
         if(_loc3_ == null || this.getProjectileCountForType(_loc3_) >= MAX_PROJECTILES_ON_SCREEN)
         {
            return null;
         }
         return _loc3_;
      }
      
      private function getProjectileCountForType(param1:String) : int
      {
         var _loc3_:Projectile = null;
         var _loc2_:int = 0;
         for each(_loc3_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc3_ is RyuProjectile && RyuProjectile(_loc3_).isType(param1))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      private function getRyuProjectileTypeFromPickupType(param1:String) : String
      {
         switch(param1)
         {
            case RYU_ART_OF_FIRE_WHEEL:
               return RyuProjectile.TYPE_ART_OF_FIRE_WHEEL;
            case RYU_FIRE_DRAGON_BALL:
               return RyuProjectile.TYPE_FIRE_DRAGON_BALL;
            case RYU_SHURIKEN:
               return RyuProjectile.TYPE_SHURIKEN;
            case RYU_WINDMILL_SHURIKEN:
               return RyuProjectile.TYPE_WINDMILL_SHURIKEN;
            default:
               return null;
         }
      }
      
      private function getPickupTypeFromProjectileType(param1:String) : String
      {
         switch(param1)
         {
            case RyuProjectile.TYPE_ART_OF_FIRE_WHEEL:
               return RYU_ART_OF_FIRE_WHEEL;
            case RyuProjectile.TYPE_FIRE_DRAGON_BALL:
               return RYU_FIRE_DRAGON_BALL;
            case RyuProjectile.TYPE_SHURIKEN:
               return RYU_SHURIKEN;
            case RyuProjectile.TYPE_WINDMILL_SHURIKEN:
               return RYU_WINDMILL_SHURIKEN;
            default:
               return null;
         }
      }
      
      override protected function bounce(param1:Enemy) : void
      {
         if(cState == ST_CLIMB)
         {
            return;
         }
         super.bounce(param1);
         if(cState != ST_ATTACK)
         {
            this.startFlip();
         }
      }
      
      public function startFlip() : void
      {
         if(FLIP_TMR.running)
         {
            FLIP_TMR.reset();
         }
         setPlayFrame(FL_FLIP_START);
         mainAnimTmr = FLIP_ANIM_TMR;
         FLIP_TMR.start();
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         if(this.jumpSlash)
         {
            damageAmt = DamageValue.RYU_JUMP_SLASH;
         }
         else
         {
            damageAmt = DamageValue.RYU_SWORD;
         }
         super.attackObjPiercing(param1);
         if(param1 is Enemy && param1.health > 0)
         {
            SND_MNGR.playSound(SN_RYU_DAMAGE_ENEMY);
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_RYU_ATTACK_ARMOR);
         }
      }
      
      override protected function addAllPowerups() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 5)
         {
            hitRandomUpgrade(charNum,false);
            _loc1_++;
         }
      }
      
      private function finishAttack() : void
      {
         ATTACK_ANIM_TMR.reset();
         if(ATK_DCT.length != 0)
         {
            ATK_DCT.clear();
         }
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         if(cState == ST_CLIMB && param1 is Platform || cState == ST_CLIMB && this.climbPlat)
         {
            this.detachFromWall();
         }
         super.groundAbove(param1);
         if(cState == ST_CLIMB)
         {
            SND_MNGR.removeStoredSound(SND_GAME_HIT_CEILING);
         }
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         var _loc8_:Ground = null;
         if(cState == ST_CLIMB)
         {
            if(this.climbPlat)
            {
               this.climbPlat.setCharOnPlat();
            }
            return;
         }
         super.groundOnSide(param1,param2);
         if(dead || stuckInWall || lastStuckInWall || GS_MNGR.gameState != GS_PLAY && !(level is CharacterSelect))
         {
            return;
         }
         var _loc3_:Number = hTop + CLIMB_TOP_OFS;
         var _loc4_:Number = hBot - CLIMB_BOT_OFS;
         var _loc5_:Number = _loc4_ - CLIMB_BOT_MAX_GRAPPLE_INCREASE;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(param1 != null && cState != ST_CLIMB && !onGround && !lastOnGround && (param2 == "left" && lftBtn || param2 == "right" && rhtBtn || this.forceAttachToWall))
         {
            if(param1 is Platform)
            {
               if(!this.CANCEL_GRAPPLE_TMR.running)
               {
                  this.attachToWall(param1,param2);
                  this.climbPlat = param1 as Platform;
                  this.climbPlat.setCharOnPlat();
                  ny = param1.hMidY + hHeight / 2;
               }
            }
            else if((!this.CANCEL_GRAPPLE_TMR.running || (this.CANCEL_GRAPPLE_TMR.running && (param2 == "left" && param1.hRht != this.cancelGrappleGroundPos) || param2 == "right" && param1.hLft != this.cancelGrappleGroundPos)) && (_loc3_ >= param1.hTop && _loc3_ <= param1.hBot || _loc4_ >= param1.hTop && _loc5_ <= param1.hBot))
            {
               for each(_loc8_ in level.GROUND_STG_DCT)
               {
                  if(hTop <= _loc8_.hBot && hBot >= _loc8_.hTop && hLft <= _loc8_.hRht && hRht >= _loc8_.hLft)
                  {
                     if(_loc8_ != param1)
                     {
                        _loc7_ = false;
                        break;
                     }
                  }
               }
               if(_loc7_)
               {
                  while(_loc4_ > param1.hBot)
                  {
                     ny -= CLIMB_BOT_GRAPPLE_TEST_INC;
                     _loc4_ = ny - CLIMB_BOT_OFS;
                  }
               }
               this.attachToWall(param1,param2);
            }
         }
      }
      
      private function beginIdleStance() : void
      {
         setState(ST_STAND);
         mainAnimTmr = STAND_ANIM_TMR;
         setPlayFrame(FL_STAND_START);
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         if(cState == ST_CLIMB)
         {
            this.detachFromWall();
         }
         super.groundBelow(param1);
      }
      
      private function attachToWall(param1:Ground, param2:String) : void
      {
         if(param2 == "left")
         {
            this.cancelGrappleGroundPos = param1.hRht;
            scaleX = -1;
         }
         else if(param2 == "right")
         {
            this.cancelGrappleGroundPos = param1.hLft;
            scaleX = 1;
         }
         this.jumpSlash = false;
         this.forceAttachToWall = false;
         setState(ST_CLIMB);
         setStopFrame(FL_CLIMB_STOP);
         defyGrav = true;
         vx = 0;
         vy = 0;
         jumped = false;
         this.climbThrowing = false;
         if(cState == ST_ATTACK)
         {
            this.finishAttack();
         }
         this.checkState();
         mainAnimTmr = CLIMB_ANIM_TMR;
         SND_MNGR.playSound(SN_RYU_JUMP);
         brickState = BRICK_NONE;
      }
      
      override protected function landOnGround() : void
      {
         super.landOnGround();
         if(cState == ST_CLIMB)
         {
            defyGrav = false;
         }
         else if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         this.forceAttachToWall = false;
         this.beginIdleStance();
         SND_MNGR.playSound(SN_RYU_JUMP);
         this.finishAttack();
         this.jumpSlash = false;
         this.checkState();
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         super.takeDamageStart(param1);
         this.damageBoost(param1);
         takeNoDamage = true;
         disableInput = true;
         nonInteractive = true;
         setState(ST_TAKE_DAMAGE);
         BTN_MNGR.relPlyrBtns();
      }
      
      override protected function takeDamageEnd() : void
      {
         disableInput = false;
         nonInteractive = false;
         setState(ST_STAND);
         alpha = TD_ALPHA;
         noDamageTmr.start();
         BTN_MNGR.sendPlayerBtns();
      }
      
      override public function springLaunch(param1:SpringRed) : void
      {
         super.springLaunch(param1);
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         if(cState != Character.ST_ATTACK)
         {
            this.startFlip();
         }
      }
      
      override protected function bouncePit() : void
      {
         if(cState == ST_TAKE_DAMAGE)
         {
            this.takeDamageEnd();
         }
         return super.bouncePit();
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         tsTxt.UpdAmmoText(true,getAmmo(param1));
      }
      
      override public function revivalBoost() : void
      {
         super.revivalBoost();
         this.hitPickup(new Pickup(RYU_NINJITSU_AMMO_BIG),false);
         this.hitPickup(new Pickup(RYU_NINJITSU_AMMO_BIG),false);
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         this.damageBoost(param1);
         EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL_MAX);
         lockFrame = true;
      }
      
      private function damageBoost(param1:LevObj = null) : void
      {
         if(cState == ST_CLIMB || defyGrav)
         {
            this.detachFromWall();
         }
         var _loc2_:int = 1;
         if(param1)
         {
            if(param1.nx > nx)
            {
               _loc2_ = -1;
            }
         }
         else if(scaleX > 0)
         {
            _loc2_ = -1;
         }
         vy = -this.DIE_VERT_BOOST;
         vx = _loc2_ * this.DIE_HORZ_BOOST;
         scaleX = -_loc2_;
         onGround = false;
         setStopFrame(FL_TAKE_DAMAGE);
         SND_MNGR.playSound(SoundNames.SFX_RYU_TAKE_DAMAGE);
      }
      
      override protected function enterPipeHorz() : void
      {
         super.enterPipeHorz();
         mainAnimTmr = WALK_ANIM_TMR;
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = this.DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.changeMusic(MusicType.DIE);
      }
      
      private function attackAnimTmrHandler(param1:TimerEvent) : void
      {
         this.animate(ATTACK_ANIM_TMR);
      }
      
      private function cancelGrappleTmrHandler(param1:TimerEvent) : void
      {
         this.CANCEL_GRAPPLE_TMR.reset();
      }
      
      private function flipTmrHandler(param1:TimerEvent) : void
      {
         FLIP_TMR.reset();
      }
      
      override public function chooseCharacter() : void
      {
         var _loc6_:SimpleGround = null;
         super.chooseCharacter();
         var _loc1_:CharacterSequencer = new CharacterSequencer();
         _loc1_.startNewSequence(this.CHOOSE_CHAR_SEQ);
         var _loc2_:int = GLOB_STG_TOP - TILE_SIZE;
         var _loc3_:int = GLOB_STG_BOT - TILE_SIZE * 2;
         var _loc4_:Number = level.getNearestGrid(player.nx + TILE_SIZE * 3,-1);
         var _loc5_:CustomDictionary = new CustomDictionary(true);
         while(_loc2_ != _loc3_)
         {
            (_loc6_ = new SimpleGround(SimpleGround.BN_BLOCK)).x = _loc4_;
            _loc6_.y = _loc2_;
            level.addToLevel(_loc6_);
            _loc2_ += TILE_SIZE;
            _loc5_.addItem(_loc6_);
         }
         level.addObj();
         for each(_loc6_ in _loc5_)
         {
            _loc6_.checkNearbyGround();
         }
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_TAKE_DAMAGE);
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = super.animate(param1);
         if(param1 == ATTACK_ANIM_TMR && mainAnimTmr == ATTACK_ANIM_TMR)
         {
            this.checkFrame();
         }
         return _loc2_;
      }
      
      private function addProjectile(param1:String) : void
      {
         var _loc2_:String = this.getPickupTypeFromProjectileType(param1);
         if(_loc2_ == null)
         {
            return;
         }
         if(hasEnoughAmmo(AMMO_TYPE_NINJITSU,_loc2_))
         {
            level.addToLevel(new RyuProjectile(this,param1));
            decAmmo(AMMO_TYPE_NINJITSU,_loc2_);
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(cState == ST_STAND && _loc1_ == convLab(FL_STAND_END))
         {
            setPlayFrame(FL_STAND_START);
         }
         if((cState == ST_WALK || cState == ST_PIPE) && _loc1_ == convLab(walkEndLab))
         {
            setPlayFrame(FL_WALK_START);
         }
         else if(cState == ST_JUMP)
         {
            if(_loc1_ == convLab(FL_FLIP_END))
            {
               setPlayFrame(FL_FLIP_START);
            }
            else if(_loc1_ == convLab(FL_JUMP_SLASH_END))
            {
               gotoAndStop(FL_JUMP_SLASH_START);
            }
         }
         else if(cState == ST_ATTACK)
         {
            _loc3_ = this.canThrowCurWeapon(this.lastThrowType);
            if(Boolean(_loc3_) && GS_MNGR.gameState == GS_PLAY)
            {
               for each(_loc4_ in THROW_PROJECTILE_FRAMES_DCT)
               {
                  if(_loc1_ == convLab(_loc4_))
                  {
                     this.addProjectile(_loc3_);
                     return;
                  }
               }
            }
            if(_loc1_ == convLab(FL_ATTACK_END) || _loc1_ == convLab(FL_THROW_END))
            {
               if(onGround)
               {
                  this.beginIdleStance();
                  this.finishAttack();
               }
               else
               {
                  setState(ST_JUMP);
                  this.finishAttack();
                  setStopFrame(FL_FALL);
               }
            }
            else if(_loc1_ == convLab(FL_CROUCH_ATTACK_END) || _loc1_ == convLab(FL_CROUCH_THROW_END))
            {
               setState(ST_CROUCH);
               setStopFrame(FL_CROUCH);
               this.finishAttack();
            }
            else if(_loc1_ == convLab(FL_FALL_ATTACK_END) || _loc1_ == convLab(FL_FALL_THROW_END))
            {
               setState(ST_JUMP);
               setStopFrame(FL_FALL);
               this.finishAttack();
            }
         }
         else if(cState == ST_CLIMB)
         {
            _loc3_ = this.canThrowCurWeapon(this.lastThrowType);
            if(this.climbThrowing && _loc3_ && GS_MNGR.gameState == GS_PLAY)
            {
               for each(_loc4_ in THROW_PROJECTILE_FRAMES_DCT)
               {
                  if(_loc1_ == convLab(_loc4_))
                  {
                     this.addProjectile(_loc3_);
                     return;
                  }
               }
            }
            if(_loc1_ == convLab(FL_CLIMB_END))
            {
               setPlayFrame(FL_CLIMB_START);
            }
            else if(_loc1_ == convLab(FL_CLIMB_THROW_END) || _loc1_ == convLab(FL_CLIMB_THROW_BACKWARDS_END))
            {
               setState(ST_CLIMB);
               setStopFrame(FL_CLIMB_STOP);
               this.climbThrowing = false;
               mainAnimTmr = CLIMB_ANIM_TMR;
               this.finishAttack();
            }
         }
         else if(cState == ST_VINE || cState == ST_FLAG_SLIDE)
         {
            if(_loc1_ == convLab(FL_CLIMB_POLE_END))
            {
               setPlayFrame(FL_CLIMB_POLE_START);
            }
         }
         super.checkFrame();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         ATTACK_ANIM_TMR.removeEventListener(TimerEvent.TIMER,this.attackAnimTmrHandler);
         this.CANCEL_GRAPPLE_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.cancelGrappleTmrHandler);
         FLIP_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flipTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         ATTACK_ANIM_TMR.addEventListener(TimerEvent.TIMER,this.attackAnimTmrHandler,false,0,true);
         this.CANCEL_GRAPPLE_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.cancelGrappleTmrHandler,false,0,true);
         FLIP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.flipTmrHandler,false,0,true);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         tsTxt.UpdAmmoIcon(false);
         tsTxt.UpdAmmoText(false);
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_RYU_GET_PICKUP);
      }
   }
}
