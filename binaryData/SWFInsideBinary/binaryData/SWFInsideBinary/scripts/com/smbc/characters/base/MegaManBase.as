package com.smbc.characters.base
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxTransparent;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.cross.sound.Song;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Bass;
   import com.smbc.characters.Character;
   import com.smbc.characters.MegaMan;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MovieClipInfo;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.enums.DamageResponse;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.*;
   import com.smbc.graphics.skins.BmdSkinCont;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.CharacterSelect;
   import com.smbc.main.LevObj;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.pickups.MegaManPickup;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.PipeTransporter;
   import com.smbc.pickups.Rush;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.*;
   import com.smbc.sound.MusicInfo;
   import com.smbc.sound.SoundContainer;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class MegaManBase extends Character
   {
      
      public static const PROTO_MAN_NAME:String = "Proto Man";
      
      public static const TELEPORT_SPEED:int = 600;
      
      private static const CHARGE_PAL_NUM_ROWS:int = 6;
      
      private static const CHARGE_PAL_FULL_CHARGE_START_OFS:int = 3;
      
      protected static const PAL_TYPE_CHARGE:String = "charge";
      
      protected static const PAL_TYPE_CHARGE_FIRE_POWER:String = "chargeFirePower";
      
      private static const PR_TYPE_SUPER_ARM_GRABBABLE:String = StatusProperty.TYPE_SUPER_ARM_GRABBABLE_PAS;
      
      public static const IND_CI_MegaManSuitColors:int = 1;
      
      public static const IND_CI_MegaManFlash:int = 2;
      
      public static const IND_CI_MegaManChargeMegaBuster:int = 4;
      
      public static const IND_CI_MegaManChargeMagmaBazooka:int = 5;
      
      public static const IND_CI_Portrait:int = 6;
      
      public static const IND_CI_Energy:int = 7;
      
      private static const DIE_TMR_DEL_NORMAL:int = 2500;
      
      private static const DIE_TMR_DEL_PIT:int = 2500;
      
      protected static const MAX_WPN_ENGY:int = 112;
      
      protected static const MM_BASS_BUSTER:String = PickupInfo.MEGA_MAN_BASS_BUSTER;
      
      protected static const MM_CHARGE_KICK:String = PickupInfo.MEGA_MAN_CHARGE_KICK;
      
      protected static const MM_CHARGE_SHOT:String = PickupInfo.MEGA_MAN_CHARGE_SHOT;
      
      protected static const MM_ENERGY_BALANCER:String = PickupInfo.MEGA_MAN_ENERGY_BALANCER;
      
      protected static const MM_FLAME_BLAST:String = PickupInfo.MEGA_MAN_FLAME_BLAST;
      
      protected static const MM_HARD_KNUCKLE:String = PickupInfo.MEGA_MAN_HARD_KNUCKLE;
      
      protected static const MM_MAGMA_BAZOOKA:String = PickupInfo.MEGA_MAN_MAGMA_BAZOOKA;
      
      protected static const MM_MEGA_BUSTER:String = PickupInfo.MEGA_MAN_MEGA_BUSTER;
      
      protected static const MM_METAL_BLADE:String = PickupInfo.MEGA_MAN_METAL_BLADE;
      
      protected static const MM_PHARAOH_SHOT:String = PickupInfo.MEGA_MAN_PHARAOH_SHOT;
      
      protected static const MM_RUSH_COIL:String = PickupInfo.MEGA_MAN_RUSH_COIL;
      
      protected static const MM_RUSH_JET:String = PickupInfo.MEGA_MAN_RUSH_JET;
      
      protected static const MM_MAN_RUSH_MARINE:String = PickupInfo.MEGA_MAN_RUSH_MARINE;
      
      protected static const MM_SCREW_CRUSHER:String = PickupInfo.MEGA_MAN_SCREW_CRUSHER;
      
      protected static const MM_SUPER_ARM:String = PickupInfo.MEGA_MAN_SUPER_ARM;
      
      protected static const MM_WATER_SHIELD:String = PickupInfo.MEGA_MAN_WATER_SHIELD;
      
      public static const MM_WEAPON_ENERGY_BIG:String = PickupInfo.MEGA_MAN_WEAPON_ENERGY_BIG;
      
      public static const MM_WEAPON_ENERGY_SMALL:String = PickupInfo.MEGA_MAN_WEAPON_ENERGY_SMALL;
      
      private static const WEAPON_ENERGY_BIG_RECOVERY:int = 40;
      
      private static const WEAPON_ENERGY_SMALL_RECOVERY:int = 8;
      
      public static const ENEMY_CHANGE_COLOR_PNT:Point = new Point(2,41);
      
      private static const SECONDS_LEFT_SND:String = SoundNames.BGM_MEGA_MAN_SECONDS_LEFT;
      
      private static const SND_MUSIC_WIN:String = SoundNames.MFX_MEGA_MAN_WIN;
      
      private static const BASE_FL_WALK:String = "walk";
      
      private static const BASE_FL_WALK_SHOOT:String = "walkShoot";
      
      private static const BASE_FL_SHOOT:String = "shoot";
      
      private static const BASE_FL_JUMP_SHOOT:String = "jumpShoot";
      
      private static const BASE_FL_UP:String = "Up";
      
      private static const BASE_FL_DIAG_UP:String = "DiagUp";
      
      private static const BASE_FL_DIAG_DWN:String = "DiagDwn";
      
      private static const FL_DASH:String = "dash";
      
      private static const FL_SLIDE:String = "slide";
      
      private static const FL_TAKE_DAMAGE:String = "takeDamage";
      
      private static const FL_JUMP:String = "jump";
      
      private static const FL_JUMP_SHOOT:String = "jumpShoot";
      
      private static const FL_JUMP_THROW:String = "jumpThrow";
      
      private static const FL_SHOOT:String = "shoot";
      
      private static const FL_THROW:String = "throw";
      
      private static const FL_STAND:String = "stand";
      
      private static const FL_STEP:String = "walk-0";
      
      protected static const FL_TELEPORT_START:String = "teleportStart";
      
      private static const FL_TELEPORT_2:String = "teleport-2";
      
      private static const FL_TELEPORT_END:String = "teleportEnd";
      
      private static const FL_WALK_START:String = "walk-1";
      
      private static const FL_WALK_2:String = "walk-2";
      
      private static const FL_WALK_3:String = "walk-3";
      
      private static const FL_WALK_END:String = "walk-4";
      
      private static const FL_WALK_SHOOT_START:String = "walkShoot-1";
      
      private static const FL_WALK_SHOOT_2:String = "walkShoot-2";
      
      private static const FL_WALK_SHOOT_3:String = "walkShoot-3";
      
      private static const FL_WALK_SHOOT_END:String = "walkShoot-4";
      
      private static const FL_SHOOT_DIAG_DWN:String = BASE_FL_SHOOT + BASE_FL_DIAG_DWN;
      
      private static const FL_SHOOT_DIAG_UP:String = BASE_FL_SHOOT + BASE_FL_DIAG_UP;
      
      private static const FL_SHOOT_UP:String = BASE_FL_SHOOT + BASE_FL_UP;
      
      private static const FL_JUMP_SHOOT_DIAG_DWN:String = BASE_FL_JUMP_SHOOT + BASE_FL_DIAG_DWN;
      
      private static const FL_JUMP_SHOOT_DIAG_UP:String = BASE_FL_JUMP_SHOOT + BASE_FL_DIAG_UP;
      
      private static const FL_JUMP_SHOOT_UP:String = BASE_FL_JUMP_SHOOT + BASE_FL_UP;
      
      private static const FL_ARM_NORMAL:String = "normal";
      
      private static const FL_ARM_STAND_THROW:String = "standThrow";
      
      private static const FL_ARM_SUPER_ARM:String = "superArm";
      
      private static const FL_ARM_SHOOT:String = "shoot";
      
      private static const FL_ARM_THROW:String = "throw";
      
      private static const FL_ARM_FIST:String = "fist";
      
      private static const FL_ARM_NO_HAND:String = "noHand";
      
      private static const FL_ARM_WALK_1:String = "walk-1";
      
      private static const FL_ARM_WALK_2:String = "walk-2";
      
      private static const FL_ARM_WALK_3:String = "walk-3";
      
      private static const CS_CHARGE_OUTLINE_2:String = "chargeOutline2";
      
      private static const CS_CHARGE_START:String = "chargeStart";
      
      private static const CS_FULL_CHARGE:String = "fullCharge";
      
      private static const CS_NORMAL:String = "normal";
      
      private static const CS_WEAK_CHARGE:String = "weakCharge";
      
      private static const NUM_MEGA_BUSTER_SHOTS_ALLOWED:int = 3;
      
      private static const NUM_BASS_BUSTER_NO_MUSHROOM_SHOTS_ALLOWED:int = 3;
      
      private static const NUM_BASS_BUSTER_SHOTS_ALLOWED:int = 4;
      
      private static const NUM_METAL_BLADES_ALLOWED:int = 3;
      
      private static const NUM_HARD_KNUCKLES_ALLOWED:int = 1;
      
      private static const NUM_PHARAOH_SHOTS_ALLOWED:int = 1;
      
      private static const NUM_FLAME_BLASTS_ALLOWED:int = 3;
      
      private static const NUM_MAGMA_BAZOOKAS_ALLOWED:int = 1;
      
      private static const NUM_SCREW_CRUSHERS_ALLOWED:int = 4;
      
      public static const ST_SLIDE:String = "slide";
      
      private static const SUIT_COLOR_OFS_DCT:Dictionary = new Dictionary();
      
      private static const SN_GET_ENERGY:String = SoundNames.SFX_MEGA_MAN_GET_ENERGY;
      
      private static const SN_CHARGE_KICK:String = SoundNames.SFX_MEGA_MAN_CHARGE_KICK;
      
      private static const SN_TAKE_DAMAGE:String = SoundNames.SFX_MEGA_MAN_TAKE_DAMAGE;
      
      private static const SLIDE_SPEED:int = 300;
      
      private static const WALK_SPEED:int = 165;
      
      private static const FLICKER_TMR_DEL:int = 70;
      
      private static const NO_DAMAGE_TMR_DEL:int = 1250;
      
      private static const TAKE_DAMAGE_TMR_DEL:int = 450;
      
      private static const TAKE_DAMAGE_TMR_DEL_LONG:int = 450;
      
      private static const TAKE_DAMAGE_SPEED:int = 80;
      
      private static const TAKE_DAMAGE_SPEED_LONG:int = 160;
      
      private static const MEGA_MAN_HEAD_REMOVE_ARR:Array = [FL_TELEPORT_START,FL_TELEPORT_2,FL_TELEPORT_END];
      
      private static const ARM_STAY_ARR:Array = [FL_STAND,FL_STEP,FL_SHOOT,FL_WALK_START,FL_WALK_2,FL_WALK_3,FL_WALK_END,FL_WALK_SHOOT_START,FL_WALK_SHOOT_2,FL_WALK_SHOOT_3,FL_WALK_SHOOT_END,FL_JUMP_SHOOT,FL_THROW,FL_JUMP_THROW];
      
      protected static const WEAPON_VEC_DEF:Vector.<String> = Vector.<String>([MM_MEGA_BUSTER,MM_SUPER_ARM,MM_METAL_BLADE,MM_HARD_KNUCKLE,MM_PHARAOH_SHOT,MM_CHARGE_KICK,MM_FLAME_BLAST,MM_MAGMA_BAZOOKA,MM_WATER_SHIELD,MM_SCREW_CRUSHER,MM_RUSH_COIL]);
      
      private static const SUPER_ARM_ITEM_X_OFS:int = 4;
      
      private static const SUPER_ARM_ITEM_Y_OFS:int = 10;
      
      protected static const BASS_BUSTER_DEL:int = 75;
      
      private static const STEP_MOVE_AMT:int = 4;
      
      public static const DEFAULT_PROPS_DCT:CustomDictionary = new CustomDictionary();
      
      private static const ENERGY_TMR_DUR:int = 50;
      
      private static const ANIM_TMR_CLIMB:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
      
      {
         SUIT_COLOR_OFS_DCT[MM_BASS_BUSTER] = 1;
         SUIT_COLOR_OFS_DCT[MM_MEGA_BUSTER] = 1;
         SUIT_COLOR_OFS_DCT[MM_RUSH_COIL] = 2;
         SUIT_COLOR_OFS_DCT[MM_SUPER_ARM] = 3;
         SUIT_COLOR_OFS_DCT[MM_METAL_BLADE] = 4;
         SUIT_COLOR_OFS_DCT[MM_HARD_KNUCKLE] = 5;
         SUIT_COLOR_OFS_DCT[MM_PHARAOH_SHOT] = 6;
         SUIT_COLOR_OFS_DCT[MM_CHARGE_KICK] = 7;
         SUIT_COLOR_OFS_DCT[MM_FLAME_BLAST] = 8;
         SUIT_COLOR_OFS_DCT[MM_MAGMA_BAZOOKA] = 9;
         SUIT_COLOR_OFS_DCT[MM_WATER_SHIELD] = 10;
         SUIT_COLOR_OFS_DCT[MM_SCREW_CRUSHER] = 11;
      }
      
      private var chargePalYOfs:int = 0;
      
      private var paletteChargeMegaBuster:Palette;
      
      private var paletteChargeMagmaBazooka:Palette;
      
      private const SFX_MEGA_MAN_CHARGE_LOOP:String = SoundNames.SFX_MEGA_MAN_CHARGE_LOOP;
      
      private const SFX_MEGA_MAN_CHARGE_START:String = SoundNames.SFX_MEGA_MAN_CHARGE_START;
      
      private const SFX_MEGA_MAN_LAND:String = SoundNames.SFX_MEGA_MAN_LAND;
      
      private var chargeCtr:int;
      
      private const NUM_CHARGE_COLORS:int = 3;
      
      private var shoot:Boolean;
      
      private var shootTmr:CustomTimer;
      
      private var damageSplash:MegaManSimpleGraphics;
      
      private var slideDust:MegaManSimpleGraphics;
      
      private const SHOOT_TMR_DUR:int = 200;
      
      private var slideSpeed:int = 300;
      
      private const SLIDE_SPEED_WATER:int = this.slideSpeed;
      
      private const TOT_SLIDE_DIST:int = 125;
      
      private const TOT_SLIDE_DIST_WATER:int = 125;
      
      private var slideStartX:Number;
      
      private var slideEndX:Number;
      
      private var chargeTmr:CustomTimer;
      
      private const CHARGE_START_DUR:int = 550;
      
      private const CHARGE_OUTLINE_2_DUR:int = 250;
      
      private const WEAK_CHARGE_DUR:int = 300;
      
      private const FULL_CHARGE_DUR:int = 350;
      
      private const DEFAULT_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      private const GRAVITY:int = 1500;
      
      private const GRAVITY_WATER:int = 500;
      
      private const JUMP_PWR:int = 565;
      
      private const JUMP_PWR_HIGH_JUMP:int = 650;
      
      private const JUMP_PWR_WATER:int = 500;
      
      private const JUMP_PWR_WATER_HIGH_JUMP:int = 560;
      
      private const DEF_SPRING_PWR:int = 475;
      
      private const BOOST_SPRING_PWR:int = 1000;
      
      private var walkSpeed:int = 165;
      
      private var chargeState:String;
      
      public var head:MegaManHead;
      
      public var arm:MegaManArm;
      
      private var particleTmr:CustomTimer;
      
      private var partVec:Vector.<MegaManParticle>;
      
      private const TUT_MNGR:TutorialManager = TutorialManager.TUT_MNGR;
      
      public var chargeShot:MegaManProjectile;
      
      public var stopSlide:Boolean;
      
      private const SLIDE_CEILING_CHECK_DIST:int = 50;
      
      private const SLIDE_TOP_OFS:int = 30;
      
      private const SLIDE_BOT_OFS:int = 10;
      
      private var ceilingAboveSlide:Boolean;
      
      private var useEnterPipeVxMax:Boolean;
      
      private var takeDamageTmr:GameLoopTimer;
      
      private const STEP_TMR:CustomTimer = new CustomTimer(100,1);
      
      private const NSF_STR_DIE:String = MusicInfo.CHAR_STR_MEGA_MAN + MusicInfo.TYPE_DIE;
      
      public var rush:Rush;
      
      private var throwUsesNonShootFrames:Boolean;
      
      public var rotateBassBuster:Boolean;
      
      private var customThrowFrames:Boolean;
      
      private var armCustomFrame:Boolean;
      
      protected const weaponVec:Vector.<String> = new Vector.<String>();
      
      protected var curWeapon:String;
      
      protected var changesColorOnPState:Boolean;
      
      protected var carryingItem:Brick;
      
      private var canChargeWeapon:Boolean;
      
      private var energyBar:MegaManEnergyBar;
      
      public var curWeaponUsesEnergy:Boolean;
      
      protected var doubleJumpSkill:Boolean;
      
      private var canDoubleJump:Boolean;
      
      private var attackSlide:Boolean;
      
      protected var defWeapon:String;
      
      protected var rapidFireTmr:GameLoopTimer;
      
      private var stopWhileShooting:Boolean;
      
      protected var canDashJump:Boolean;
      
      protected var showHead:Boolean;
      
      public var waterShieldDct:CustomDictionary;
      
      public var pharaohBalloon:MegaManProjectile;
      
      private var chargeKickGraphic:MegaManSimpleGraphics;
      
      private var energyTmr:Timer;
      
      private var ammoTypeToRefill:String;
      
      private var energiesGottenSimultaneously:Vector.<MegaManPickup>;
      
      private var skinDisableSlide:Boolean;
      
      private var oneThirdOfUpgradesCount:int;
      
      private var releasePharoahBalloonAfterSlide:Boolean;
      
      public function MegaManBase()
      {
         var _loc1_:StatusProperty = null;
         this.waterShieldDct = new CustomDictionary();
         this.energiesGottenSimultaneously = new Vector.<MegaManPickup>();
         putSubMcsOnTop = true;
         recolorsCharSkin = true;
         super();
         this.energyBar = new MegaManEnergyBar(this);
         _secondsLeftSnd = SECONDS_LEFT_SND;
         _sndWinMusic = SND_MUSIC_WIN;
         _secondsLeftSndIsBgm = true;
         _dieTmrDel = DIE_TMR_DEL_NORMAL;
         canCrossSmallGaps = true;
         walkStartLab = FL_WALK_START;
         walkEndLab = FL_WALK_END;
         flickerTmrDel = FLICKER_TMR_DEL;
         this.head.visible = false;
         if(!DEFAULT_PROPS_DCT.length)
         {
            DEFAULT_PROPS_DCT.addItem(new StatusProperty(StatusProperty.TYPE_TRANSPARENT_AGG,0,new StatFxTransparent(null,0,40)));
         }
         for each(_loc1_ in DEFAULT_PROPS_DCT)
         {
            addProperty(_loc1_);
         }
      }
      
      public static function getProtoManWhistleSong() : Song
      {
         var _loc1_:StatManager = StatManager.STAT_MNGR;
         if(_loc1_.getSkinName() == PROTO_MAN_NAME)
         {
            switch(_loc1_.getCurrentBmc(_loc1_.curCharNum).consoleType)
            {
               case ConsoleType.BIT_8:
                  return Games.megaMan9.SngProtoManWhistle;
               case ConsoleType.BIT_16:
                  return Games.megaMan7.SngProtoManWhistle;
               case ConsoleType.GB:
                  return Games.megaMan4Gb.SngProtoWhistle;
            }
         }
         return null;
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(MegaManHead,MEGA_MAN_HEAD_REMOVE_ARR);
         removeObjsFromFrames(this.arm,ARM_STAY_ARR,true);
      }
      
      override protected function mcReplacePrep(param1:MovieClip) : void
      {
         var _loc5_:DisplayObject = null;
         var _loc6_:MovieClip = null;
         var _loc2_:MovieClip = new MovieClipInfo.MegaManHeadMc();
         var _loc3_:MovieClip = new MovieClipInfo.MegaManArmMc();
         var _loc4_:int = 0;
         while(_loc4_ < param1.numChildren)
         {
            if((_loc5_ = param1.getChildAt(_loc4_)) is MovieClip)
            {
               if((_loc6_ = _loc5_ as MovieClip).totalFrames == _loc2_.totalFrames)
               {
                  this.head = new MegaManHead(this,_loc2_);
                  _loc2_ = null;
                  _loc2_ = _loc6_;
               }
               else if(_loc6_.totalFrames == _loc3_.totalFrames)
               {
                  this.arm = new MegaManArm(this);
                  _loc3_ = null;
                  _loc3_ = _loc6_;
               }
               if(this.head && this.arm)
               {
                  break;
               }
            }
            _loc4_++;
         }
         mcReplaceArr = [_loc2_,this.head,_loc3_,this.arm];
      }
      
      override protected function sortDisplayObjects(param1:DisplayObject, param2:DisplayObject) : int
      {
         if(param1 is Bitmap && param2 is SubMc)
         {
            if(param2 is MegaManHead)
            {
               return -1;
            }
            return 1;
         }
         if(param1 is SubMc && param2 is Bitmap)
         {
            if(param1 is MegaManHead)
            {
               return 1;
            }
            return -1;
         }
         return 0;
      }
      
      override public function setStats() : void
      {
         if(this.doubleJumpSkill)
         {
            jumpPwr = this.JUMP_PWR;
         }
         else
         {
            jumpPwr = this.JUMP_PWR_HIGH_JUMP;
         }
         gravity = this.GRAVITY;
         if(level.waterLevel)
         {
            defGravity = this.GRAVITY;
            gravity = this.GRAVITY_WATER;
            defGravityWater = gravity;
            if(this.doubleJumpSkill)
            {
               jumpPwr = this.JUMP_PWR_WATER;
            }
            else
            {
               jumpPwr = this.JUMP_PWR_WATER_HIGH_JUMP;
            }
         }
         defSpringPwr = this.DEF_SPRING_PWR;
         boostSpringPwr = this.BOOST_SPRING_PWR;
         ax = 800;
         fx = 1e-7;
         fy = 0.000001;
         vxMaxDef = this.walkSpeed;
         vyMaxPsv = 700;
         vxMax = vxMaxDef;
         vxMin = 5;
         numParFrames = 4;
         pState2 = false;
         if(STAT_MNGR.newLev)
         {
            this.curWeapon = this.defWeapon;
         }
         else
         {
            this.curWeapon = STAT_MNGR.getSubWeapon(charNum);
         }
         super.setStats();
         this.changeSuitColor();
         vineAnimTmr = ANIM_TMR_CLIMB;
         damageAmt = DamageValue.MEGA_MAN_CHARGE_KICK;
         this.shootTmr = new CustomTimer(this.SHOOT_TMR_DUR,1);
         this.shootTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler);
         addTmr(this.shootTmr);
         this.chargeTmr = new CustomTimer(this.CHARGE_START_DUR,1);
         this.chargeTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.chargeInt);
         addTmr(this.chargeTmr);
         addTmr(this.STEP_TMR);
         this.STEP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler,false,0,true);
         this.takeDamageTmr = new GameLoopTimer(TAKE_DAMAGE_TMR_DEL,1);
         this.takeDamageTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler,false,0,true);
         noDamageTmr.delay = NO_DAMAGE_TMR_DEL;
         if(this.defWeapon == MM_BASS_BUSTER)
         {
            this.rapidFireTmr = new GameLoopTimer(BASS_BUSTER_DEL);
            this.rapidFireTmr.addEventListener(TimerEvent.TIMER,this.rapidFireTmrHandler,false,0,true);
         }
         this.setCurrentBmdSkin(STAT_MNGR.getCurrentBmc(charNum));
         this.changeBrickState();
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         this.updateWeaponsVec();
      }
      
      protected function updateWeaponsVec(param1:int = 0, param2:Boolean = false, param3:Boolean = true) : void
      {
         var _loc5_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:CustomDictionary = null;
         var _loc12_:Projectile = null;
         var _loc4_:String = this.curWeapon;
         this.weaponVec.length = 0;
         this.weaponVec.push(this.defWeapon);
         var _loc6_:int = WEAPON_VEC_DEF.length;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc9_ = WEAPON_VEC_DEF[_loc7_];
            if(upgradeIsActive(_loc9_) && _loc9_ != this.defWeapon)
            {
               this.weaponVec.push(_loc9_);
               if(this.curWeapon == _loc9_)
               {
                  _loc5_ = this.weaponVec.length - 1;
               }
            }
            _loc7_++;
         }
         if(param1 != 0)
         {
            _loc5_ += param1;
            _loc10_ = this.weaponVec.length - 1;
            if(_loc5_ > _loc10_)
            {
               _loc5_ = 0;
            }
            else if(_loc5_ < 0)
            {
               _loc5_ = _loc10_;
            }
            this.curWeapon = this.weaponVec[_loc5_];
         }
         if(param2 || !upgradeIsActive(this.curWeapon))
         {
            this.curWeapon = this.defWeapon;
         }
         if(this is MegaMan && this.curWeapon == MM_MEGA_BUSTER && upgradeIsActive(MM_CHARGE_SHOT) && (skinNum == MegaMan.SKIN_ROKKO_CHAN || skinNum == MegaMan.SKIN_ROCK_NES || skinNum == MegaMan.SKIN_ROCK_SNES))
         {
            this.canChargeWeapon = false;
         }
         else if(this.curWeapon == MM_MEGA_BUSTER || this.curWeapon == MM_MAGMA_BAZOOKA || this.curWeapon == MM_PHARAOH_SHOT)
         {
            if(this is Bass)
            {
               this.canChargeWeapon = true;
            }
            else if(upgradeIsActive(MM_CHARGE_SHOT) || (skinNum > 2 && skinNum < 6 || skinNum == MegaMan.SKIN_BREAK_MAN_NES || skinNum == MegaMan.SKIN_BREAK_MAN_SNES || skinNum == MegaMan.SKIN_BREAK_MAN_GB))
            {
               this.canChargeWeapon = true;
            }
            else
            {
               this.canChargeWeapon = false;
            }
         }
         else
         {
            this.canChargeWeapon = false;
         }
         if(param3)
         {
            STAT_MNGR.setSubWeapon(charNum,this.curWeapon);
         }
         if(_loc4_ != this.curWeapon)
         {
            this.changeSuitColor();
         }
         if(this.curWeapon == this.defWeapon)
         {
            this.curWeaponUsesEnergy = false;
            tsTxt.UpdAmmoIcon(false);
         }
         else
         {
            this.curWeaponUsesEnergy = true;
            _loc8_ = getAmmo(this.curWeapon);
            tsTxt.UpdAmmoIcon(true,this.curWeapon.substr(PickupInfo.UPGRADE_STR.length),TopScreenText.AMMO_ICON_X_ALIGNED);
         }
         if(this.curWeapon != MM_CHARGE_KICK)
         {
            this.attackSlide = false;
         }
         this.energyBar.update(_loc8_);
         if(_loc4_ != this.curWeapon)
         {
            _loc11_ = level.PLAYER_PROJ_DCT;
            for each(_loc12_ in _loc11_)
            {
               if(_loc12_ != hammerWeapon)
               {
                  _loc12_.destroy();
               }
            }
            if(this.rush)
            {
               this.rush.destroy();
            }
            if(this.carryingItem)
            {
               EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
               this.carryingItem.destroy();
               this.carryingItem = null;
            }
         }
      }
      
      protected function changeSuitColor() : void
      {
         var _loc1_:int = SUIT_COLOR_OFS_DCT[this.curWeapon];
         graphicsMngr.recolorCharacterSheet(charNum,_loc1_,[IND_CI_MegaManSuitColors,IND_CI_Portrait,IND_CI_Energy]);
         defColors = paletteMain.extractRowsAsPalette(0,_loc1_);
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         super.setCurrentBmdSkin(param1);
         this.paletteChargeMegaBuster = paletteSheet.getPaletteFromRow(IND_CI_MegaManChargeMegaBuster,skinNum);
         this.paletteChargeMagmaBazooka = paletteSheet.getPaletteFromRow(IND_CI_MegaManChargeMagmaBazooka,skinNum);
         if(this is MegaMan && (skinNum == MegaMan.SKIN_PROTO_MAN_NES || skinNum == MegaMan.SKIN_PROTO_MAN_SNES || skinNum == MegaMan.SKIN_BREAK_MAN_NES || skinNum == MegaMan.SKIN_BREAK_MAN_SNES || skinNum == MegaMan.SKIN_ICE_MAN_NES))
         {
            this.throwUsesNonShootFrames = true;
            this.customThrowFrames = true;
            this.showHead = false;
         }
         else
         {
            this.throwUsesNonShootFrames = false;
            this.customThrowFrames = false;
            this.showHead = false;
         }
         if(this is MegaMan && skinNum == MegaMan.SKIN_ROKKO_CHAN)
         {
            this.canDashJump = true;
         }
         else if(this is MegaMan && skinNum != MegaMan.SKIN_ROKKO_CHAN)
         {
            this.canDashJump = false;
         }
         if(this is Bass && (skinNum != Bass.SKIN_BASS_NES && skinNum != Bass.SKIN_BASS_SNES && skinNum != Bass.SKIN_BASS_X1))
         {
            this.rotateBassBuster = true;
         }
         else
         {
            this.rotateBassBuster = false;
         }
         if(!param2)
         {
            this.changeSuitColor();
            this.updateWeaponsVec();
         }
         if(this is Bass && !(level is CharacterSelect))
         {
            if(skinNum == Bass.SKIN_QUICK_MAN_NES || skinNum == Bass.SKIN_QUICK_MAN_SNES)
            {
               this.walkSpeed = WALK_SPEED * 1.3;
               vxMaxDef = this.walkSpeed;
               this.skinDisableSlide = true;
               this.doubleJumpSkill = false;
               this.canDashJump = false;
            }
            else
            {
               this.walkSpeed = WALK_SPEED;
               vxMaxDef = this.walkSpeed;
               this.skinDisableSlide = false;
               this.doubleJumpSkill = true;
               this.canDashJump = true;
            }
            if(level.waterLevel)
            {
               this.forceWaterStats();
            }
            else
            {
               this.forceNonwaterStats();
            }
         }
         if(this is MegaMan)
         {
            if(skinNum == MegaMan.SKIN_ROCK_NES || skinNum == MegaMan.SKIN_ROCK_SNES)
            {
               this.skinDisableSlide = true;
            }
            else
            {
               this.skinDisableSlide = false;
            }
         }
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_GET_NEW_LIFE);
      }
      
      override protected function setAmmo(param1:String, param2:int) : void
      {
         super.setAmmo(param1,param2);
         if(this.curWeapon == param1)
         {
            this.energyBar.update(getAmmo(param1));
         }
      }
      
      protected function takeDamageTmrHandler(param1:Event) : void
      {
         this.takeDamageEnd();
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = this.GRAVITY;
         gravity = this.GRAVITY_WATER;
         defGravityWater = gravity;
         if(this.doubleJumpSkill)
         {
            jumpPwr = this.JUMP_PWR_WATER;
         }
         else
         {
            jumpPwr = this.JUMP_PWR_WATER_HIGH_JUMP;
         }
         super.forceWaterStats();
      }
      
      override public function forceNonwaterStats() : void
      {
         if(this.doubleJumpSkill)
         {
            jumpPwr = this.JUMP_PWR;
         }
         else
         {
            jumpPwr = this.JUMP_PWR_HIGH_JUMP;
         }
         gravity = this.GRAVITY;
         super.forceNonwaterStats();
      }
      
      override protected function movePlayer() : void
      {
         if(cState == ST_TAKE_DAMAGE || onGround && this.shoot && this.stopWhileShooting)
         {
            return;
         }
         if(cState != ST_SLIDE)
         {
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
               vx = vxMax;
               scaleX = 1;
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
               vx = -vxMax;
               scaleX = -1;
            }
            else if(lftBtn && rhtBtn || !lftBtn && !rhtBtn)
            {
               vx = 0;
            }
            if(onGround && this.STEP_TMR.running)
            {
               vx = 0;
            }
         }
         else if(lftBtn && !rhtBtn)
         {
            if(!this.ceilingAboveSlide)
            {
               if(vx > 0)
               {
                  vx = 0;
                  this.setState(ST_STAND);
               }
            }
            else
            {
               scaleX = -1;
               vx = -this.slideSpeed;
               this.stopSlide = true;
               if(this.chargeKickGraphic != null)
               {
                  this.chargeKickGraphic.scaleX = -1;
               }
            }
         }
         else if(rhtBtn && !lftBtn)
         {
            if(!this.ceilingAboveSlide)
            {
               if(vx < 0)
               {
                  vx = 0;
                  this.setState(ST_STAND);
               }
            }
            else
            {
               scaleX = 1;
               vx = this.slideSpeed;
               this.stopSlide = true;
               if(this.chargeKickGraphic != null)
               {
                  this.chargeKickGraphic.scaleX = 1;
               }
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
         vy = -jumpPwr;
         if(onGround)
         {
            this.canDoubleJump = true;
            if(this.canDashJump)
            {
               if(cState == ST_SLIDE)
               {
                  vy = -this.JUMP_PWR_HIGH_JUMP;
               }
               else
               {
                  vxMax = vxMaxDef;
               }
            }
         }
         else
         {
            this.canDoubleJump = false;
            vxMax = vxMaxDef;
         }
         onGround = false;
         setStopFrame("jump");
         this.setState("jump");
         jumped = true;
         releasedJumpBtn = false;
         frictionY = false;
      }
      
      override protected function checkState() : void
      {
         var _loc1_:Ground = null;
         var _loc2_:Ground = null;
         this.ceilingAboveSlide = false;
         if(cState == ST_VINE)
         {
            mainAnimTmr = vineAnimTmr;
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(cState == ST_TAKE_DAMAGE)
         {
            return;
         }
         mainAnimTmr = this.DEFAULT_ANIM_TMR;
         if(onGround)
         {
            jumped = false;
            if(cState == ST_SLIDE)
            {
               canCrossSmallGaps = true;
               for each(_loc1_ in level.GROUND_STG_DCT)
               {
                  if(!(!_loc1_.onScreen || !_loc1_.visible || level.getDistance(hMidX,hMidY,_loc1_.hMidX,_loc1_.hMidY) > this.SLIDE_CEILING_CHECK_DIST))
                  {
                     if(scaleX > 0)
                     {
                        if(hTop - this.SLIDE_TOP_OFS <= _loc1_.hBot && hBot - this.SLIDE_BOT_OFS > _loc1_.hTop && hLft <= _loc1_.hRht && hRht > _loc1_.hLft)
                        {
                           this.ceilingAboveSlide = true;
                           break;
                        }
                     }
                     else if(hTop - this.SLIDE_TOP_OFS <= _loc1_.hBot && hBot - this.SLIDE_BOT_OFS > _loc1_.hTop && hLft < _loc1_.hRht && hRht >= _loc1_.hLft)
                     {
                        this.ceilingAboveSlide = true;
                        break;
                     }
                  }
               }
               if(!this.ceilingAboveSlide && (this.stopSlide || scaleX > 0 && (nx > this.slideEndX || nx < this.slideStartX - 1 || wallOnRight) || scaleX < 0 && (nx < this.slideEndX || nx > this.slideStartX + 1 || wallOnLeft)))
               {
                  this.setState(ST_STAND);
                  vx = 0;
               }
            }
            else if(vx == 0)
            {
               this.setState(ST_STAND);
               if(this.shoot)
               {
                  if(!this.armCustomFrame || !this.customThrowFrames)
                  {
                     setStopFrame(FL_SHOOT);
                  }
                  else
                  {
                     setStopFrame(FL_THROW);
                  }
               }
               else if(this.STEP_TMR.running)
               {
                  setStopFrame(FL_STEP);
               }
               else
               {
                  setStopFrame(FL_STAND);
               }
            }
            else if(cState == ST_WALK)
            {
               if(!this.shoot && (!this.carryingItem || this.throwUsesNonShootFrames))
               {
                  if(this.STEP_TMR.running)
                  {
                     setStopFrame(FL_STEP);
                  }
                  else
                  {
                     setPlayFrame(this.getParFrame(BASE_FL_WALK));
                  }
               }
               else if(currentLabel == convLab(FL_STEP))
               {
                  setStopFrame(FL_SHOOT);
               }
               else
               {
                  setPlayFrame(this.getParFrame(BASE_FL_WALK_SHOOT));
               }
            }
            else if(cState != ST_WALK)
            {
               if(!this.shoot && (!this.carryingItem || this.throwUsesNonShootFrames))
               {
                  if(this.STEP_TMR.running)
                  {
                     setStopFrame(FL_STEP);
                  }
                  else
                  {
                     setPlayFrame(FL_WALK_START);
                  }
               }
               else if(currentLabel == convLab(FL_STEP))
               {
                  setStopFrame("shoot");
               }
               else
               {
                  setPlayFrame(FL_WALK_SHOOT_START);
               }
               this.setState(ST_WALK);
            }
            if(cState != ST_SLIDE)
            {
               vxMax = vxMaxDef;
               canCrossSmallGaps = false;
            }
         }
         else
         {
            if(!this.canDashJump)
            {
               vxMax = vxMaxDef;
            }
            if(this.shoot || this.carryingItem)
            {
               if(this.carryingItem && this.throwUsesNonShootFrames)
               {
                  setStopFrame(FL_JUMP_THROW);
               }
               else if(this.carryingItem && !this.throwUsesNonShootFrames || !this.armCustomFrame || !this.customThrowFrames)
               {
                  setStopFrame(FL_JUMP_SHOOT);
               }
               else
               {
                  setStopFrame(FL_JUMP_THROW);
               }
            }
            else
            {
               setStopFrame(FL_JUMP);
            }
            if(cState == ST_SLIDE)
            {
               setHitPoints();
               for each(_loc2_ in level.GROUND_STG_DCT)
               {
                  if(!(!_loc2_.onScreen || !_loc2_.visible || level.getDistance(hMidX,hMidY,_loc2_.hMidX,_loc2_.hMidY) > this.SLIDE_CEILING_CHECK_DIST))
                  {
                     if(scaleX > 0)
                     {
                        if(hTop - this.SLIDE_TOP_OFS <= _loc2_.hBot && hBot - this.SLIDE_BOT_OFS > _loc2_.hTop && hLft <= _loc2_.hRht && hRht > _loc2_.hLft)
                        {
                           ny = _loc2_.hBot + hHeight;
                           break;
                        }
                     }
                     else if(hTop - this.SLIDE_TOP_OFS <= _loc2_.hBot && hBot - this.SLIDE_BOT_OFS > _loc2_.hTop && hLft < _loc2_.hRht && hRht >= _loc2_.hLft)
                     {
                        ny = _loc2_.hBot + hHeight;
                        break;
                     }
                  }
               }
            }
            this.setState(ST_JUMP);
            if(frictionY)
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
         }
         if(this.curWeapon == MM_BASS_BUSTER && atkBtn && cState != ST_SLIDE)
         {
            this.checkBassBusterStance();
         }
      }
      
      override public function drawObj() : void
      {
         super.drawObj();
         if(this.carryingItem)
         {
            this.carryingItem.x = nx - TILE_SIZE / 2 + (Math.abs(this.arm.x) + SUPER_ARM_ITEM_X_OFS) * scaleX;
            this.carryingItem.y = ny - Math.abs(this.arm.y) - this.arm.height - TILE_SIZE + SUPER_ARM_ITEM_Y_OFS;
         }
      }
      
      override protected function getParFrame(param1:String) : String
      {
         var _loc2_:String = currentLabel;
         var _loc3_:uint = uint(_loc2_.charAt(_loc2_.indexOf("-") + 1));
         if(_loc3_ > numParFrames)
         {
            _loc3_ -= numParFrames;
         }
         if(_loc3_ == 0)
         {
            _loc3_ = 1;
         }
         return param1 + ("-" + _loc3_.toString());
      }
      
      override protected function lastCharacterCheck() : void
      {
         if(level.waterLevel && cState == ST_SLIDE)
         {
            if(scaleX > 0)
            {
               vx = this.SLIDE_SPEED_WATER;
            }
            else
            {
               vx = -this.SLIDE_SPEED_WATER;
            }
            vxMax = vx;
            if(vxMax < 0)
            {
               vxMax = -vxMax;
            }
         }
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         super.getOnVine(param1);
         this.head.setStopFrame("climb");
      }
      
      override public function setState(param1:String) : void
      {
         if(!lockState)
         {
            if(cState == ST_SLIDE && param1 != ST_SLIDE)
            {
               this.endSlide();
            }
            if(param1 == "stand" && cState != "stand")
            {
               this.head.setStopFrame("openClosed");
            }
            else if(param1 == "jump" && cState != "jump")
            {
               this.head.setStopFrame("openOpen");
            }
            else if(param1 == "walk" && cState != "walk")
            {
               this.head.setStopFrame("openClosed");
            }
            else if(param1 == ST_SLIDE && cState != ST_SLIDE)
            {
               this.head.setStopFrame("openOpen");
            }
            lState = cState;
            cState = param1;
         }
      }
      
      private function endSlide() : void
      {
         if(this.chargeKickGraphic)
         {
            this.chargeKickGraphic.destroy();
            this.chargeKickGraphic = null;
         }
         if(this.releasePharoahBalloonAfterSlide)
         {
            if(this.pharaohBalloon)
            {
               this.launchPharoahBalloon();
            }
            this.releasePharoahBalloonAfterSlide = false;
         }
      }
      
      protected function rapidFireTmrHandler(param1:Event) : void
      {
         if(this.curWeapon == MM_BASS_BUSTER)
         {
            this.pressAtkBtn();
         }
         else
         {
            this.rapidFireTmr.stop();
         }
      }
      
      private function slide() : void
      {
         if(this.carryingItem || this.shoot && this.stopWhileShooting)
         {
            return;
         }
         if(this.curWeapon == MM_CHARGE_KICK && this.hasEnoughAmmo(this.curWeapon))
         {
            if(cState == ST_SLIDE)
            {
               return;
            }
            this.attackSlide = true;
            this.chargeKickGraphic = new MegaManSimpleGraphics(this,MegaManSimpleGraphics.TYPE_CHARGE_KICK);
            level.addToLevel(this.chargeKickGraphic);
            decAmmo(this.curWeapon);
            SND_MNGR.playSound(SN_CHARGE_KICK);
         }
         else
         {
            this.attackSlide = false;
         }
         if(scaleX > 0)
         {
            wallOnRight = false;
            if(!level.waterLevel)
            {
               vx = this.slideSpeed;
               vxMax = this.slideSpeed;
               this.slideStartX = nx;
               this.slideEndX = nx + this.TOT_SLIDE_DIST;
            }
            else
            {
               vx = this.SLIDE_SPEED_WATER;
               vxMax = this.SLIDE_SPEED_WATER;
               this.slideStartX = nx;
               this.slideEndX = nx + this.TOT_SLIDE_DIST_WATER;
            }
         }
         else if(scaleX < 0)
         {
            wallOnLeft = false;
            if(!level.waterLevel)
            {
               vx = -this.slideSpeed;
               vxMax = this.slideSpeed;
               this.slideStartX = nx;
               this.slideEndX = nx - this.TOT_SLIDE_DIST;
            }
            else
            {
               vx = -this.SLIDE_SPEED_WATER;
               vxMax = this.SLIDE_SPEED_WATER;
               this.slideStartX = nx;
               this.slideEndX = nx - this.TOT_SLIDE_DIST_WATER;
            }
         }
         if(this.canDashJump)
         {
            setStopFrame(FL_DASH);
         }
         else
         {
            setStopFrame(FL_SLIDE);
         }
         this.setState(ST_SLIDE);
         this.stopSlide = false;
         setHitPoints();
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(onGround)
         {
            if(dwnBtn && cState != ST_SLIDE && (!this.skinDisableSlide || this.curWeapon == MM_CHARGE_KICK && this.hasEnoughAmmo(MM_CHARGE_KICK)))
            {
               this.slide();
            }
            else if(cState != ST_SLIDE || !this.ceilingAboveSlide && (!(this is MegaMan) || !dwnBtn))
            {
               this.jump();
            }
         }
         else if(this.doubleJumpSkill && this.canDoubleJump && !onSpring)
         {
            this.jump();
         }
         super.pressJmpBtn();
      }
      
      override public function relJmpBtn() : void
      {
         super.relJmpBtn();
         if(!releasedJumpBtn)
         {
            frictionY = true;
            releasedJumpBtn = true;
         }
      }
      
      private function get megaManProjectileCount() : int
      {
         var _loc2_:Projectile = null;
         var _loc1_:int = 0;
         for each(_loc2_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc2_ is MegaManProjectile)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function pressAtkBtn() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Projectile = null;
         var _loc4_:int = 0;
         var _loc5_:LevObj = null;
         var _loc6_:Boolean = false;
         var _loc7_:MegaManProjectile = null;
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         if(cState == ST_SLIDE)
         {
            return;
         }
         if(this.curWeaponUsesEnergy && !this.hasEnoughAmmo(this.curWeapon) && !this.waterShieldDct.length)
         {
            return;
         }
         var _loc1_:int = this.megaManProjectileCount;
         switch(this.curWeapon)
         {
            case MM_RUSH_COIL:
               if(!this.rush)
               {
                  this.rush = new Rush(this);
                  level.addToLevel(this.rush);
                  break;
               }
            case MM_MEGA_BUSTER:
               _loc2_ = NUM_MEGA_BUSTER_SHOTS_ALLOWED;
               if(skinNum > 2 && skinNum < 6 || skinNum == MegaMan.SKIN_BREAK_MAN_NES || skinNum == MegaMan.SKIN_BREAK_MAN_SNES || skinNum == MegaMan.SKIN_BREAK_MAN_GB || skinNum == MegaMan.SKIN_CUT_MAN_NES)
               {
                  if(!upgradeIsActive(MUSHROOM))
                  {
                     _loc2_--;
                  }
               }
               if(_loc1_ < _loc2_ && !this.chargeShot)
               {
                  _loc3_ = new MegaManProjectile(this,MegaManProjectile.TYPE_MEGA_BUSTER);
                  level.addToLevel(_loc3_);
                  this.shootStart(false,null,false);
                  this.checkState();
               }
               break;
            case MM_BASS_BUSTER:
               _loc4_ = NUM_BASS_BUSTER_NO_MUSHROOM_SHOTS_ALLOWED;
               if(upgradeIsActive(MUSHROOM))
               {
                  _loc4_ = NUM_BASS_BUSTER_SHOTS_ALLOWED;
               }
               if(_loc1_ < _loc4_)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_BASS_BUSTER));
               }
               this.shootStart(true);
               this.checkState();
               break;
            case MM_SUPER_ARM:
               if(!this.carryingItem)
               {
                  for each(_loc5_ in curHitDct)
                  {
                     if(_loc5_.getProperty(PR_TYPE_SUPER_ARM_GRABBABLE))
                     {
                        this.pickUpWithSuperArm(_loc5_ as Brick);
                        break;
                     }
                  }
               }
               else
               {
                  level.addToLevel(new MegaManProjectile(this,MM_SUPER_ARM,this.carryingItem));
                  EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
                  this.carryingItem = null;
                  this.shootStart(true,FL_ARM_THROW);
               }
               break;
            case MM_METAL_BLADE:
               if(_loc1_ < NUM_METAL_BLADES_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_METAL_BLADE));
                  this.shootStart(true,FL_ARM_THROW);
               }
               break;
            case MM_HARD_KNUCKLE:
               if(_loc1_ < NUM_HARD_KNUCKLES_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_HARD_KNUCKLE));
                  this.shootStart(true,FL_ARM_FIST);
                  if(!onGround)
                  {
                     stopUpdate = true;
                  }
               }
               break;
            case MM_PHARAOH_SHOT:
               if(_loc1_ < NUM_PHARAOH_SHOTS_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_PHARAOH_SHOT));
                  this.shootStart(true,FL_ARM_THROW);
               }
               if(this.hasEnoughAmmo(MM_PHARAOH_SHOT))
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_PHARAOH_BALLOON));
               }
               break;
            case MM_FLAME_BLAST:
               if(_loc1_ < NUM_FLAME_BLASTS_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_FLAME_BLAST));
                  this.shootStart();
               }
               break;
            case MM_MAGMA_BAZOOKA:
               if(_loc1_ < NUM_MAGMA_BAZOOKAS_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA,MegaManProjectile.MB_UP));
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA,MegaManProjectile.MB_MID));
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA,MegaManProjectile.MB_DOWN));
                  this.shootStart();
               }
               break;
            case MM_WATER_SHIELD:
               if(!this.waterShieldDct.length)
               {
                  MegaManProjectile.createWaterShield(this);
                  this.shootStart();
               }
               else
               {
                  for each(_loc7_ in this.waterShieldDct)
                  {
                     if(!_loc7_.visible)
                     {
                        _loc6_ = true;
                     }
                  }
                  if(!_loc6_)
                  {
                     for each(_loc7_ in this.waterShieldDct)
                     {
                        _loc7_.waterShieldExpandInit();
                     }
                  }
               }
               break;
            case MM_SCREW_CRUSHER:
               if(_loc1_ < NUM_SCREW_CRUSHERS_ALLOWED)
               {
                  level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_SCREW_CRUSHER));
                  this.shootStart(true,FL_ARM_THROW);
               }
         }
         if(this.canChargeWeapon && GS_MNGR.gameState == GS_PLAY && (this.curWeapon == MM_MEGA_BUSTER || this.curWeapon == MM_MAGMA_BAZOOKA))
         {
            this.resetChargeState();
            this.chargeTmr.delay = this.CHARGE_START_DUR;
            this.chargeTmr.start();
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(!starPwr && cState == ST_SLIDE && this.attackSlide)
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
         if(cState == ST_SLIDE && this.attackSlide && param1 is IAttackable)
         {
            landAttack(param1 as IAttackable);
         }
         else if(this.curWeapon == MM_SUPER_ARM && atkBtn && this.hasEnoughAmmo(this.curWeapon) && cState != ST_SLIDE && !this.carryingItem && !this.shoot && param1.getProperty(PR_TYPE_SUPER_ARM_GRABBABLE))
         {
            this.pickUpWithSuperArm(param1 as Brick);
         }
         if(!param1.destroyed && param1 != this.carryingItem)
         {
            super.hitGround(param1,param2);
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_HIT_ENEMY);
         }
      }
      
      private function launchPharoahBalloon() : void
      {
         var _loc1_:int = this.pharaohBalloon.pharaohChargeLevel;
         if(level.PLAYER_PROJ_DCT.length < NUM_PHARAOH_SHOTS_ALLOWED + 1 && _loc1_ >= MegaManProjectile.PHARAOH_CHARGE_MED)
         {
            level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_PHARAOH_SHOT,_loc1_));
            this.shootStart(true,FL_ARM_THROW,false);
            decAmmo(this.curWeapon,MegaManProjectile.TYPE_PHARAOH_BALLOON);
         }
         this.pharaohBalloon.destroy();
         this.pharaohBalloon = null;
      }
      
      override public function relAtkBtn() : void
      {
         var _loc1_:Projectile = null;
         super.relAtkBtn();
         if(this.chargeTmr.running)
         {
            this.chargeTmr.reset();
         }
         if(this.rapidFireTmr && this.rapidFireTmr.running)
         {
            this.rapidFireTmr.stop();
         }
         if(this.curWeapon == MM_BASS_BUSTER)
         {
            this.stopWhileShooting = false;
            if(!this.shootTmr.running)
            {
               this.shootTmrHandler(new TimerEvent(TimerEvent.TIMER_COMPLETE));
            }
         }
         if(this.curWeapon == MM_PHARAOH_SHOT && cState != ST_SLIDE)
         {
            if(this.pharaohBalloon)
            {
               this.launchPharoahBalloon();
            }
         }
         else if(this.canChargeWeapon && GS_MNGR.gameState == GS_PLAY)
         {
            if(cState != ST_SLIDE)
            {
               if((this.chargeState == CS_WEAK_CHARGE || this.chargeState == CS_CHARGE_OUTLINE_2) && this.curWeapon != MM_MAGMA_BAZOOKA)
               {
                  _loc1_ = new MegaManProjectile(this,MegaManProjectile.TYPE_CHARGE_WEAK);
                  level.addToLevel(_loc1_);
                  this.shootStart();
               }
               else if(this.chargeState == CS_FULL_CHARGE)
               {
                  if(this.curWeapon == MM_MEGA_BUSTER)
                  {
                     _loc1_ = new MegaManProjectile(this,MegaManProjectile.TYPE_CHARGE_STRONG);
                  }
                  else if(this.curWeapon == MM_MAGMA_BAZOOKA)
                  {
                     level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA_CHARGE,MegaManProjectile.MB_UP));
                     level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA_CHARGE,MegaManProjectile.MB_MID));
                     level.addToLevel(new MegaManProjectile(this,MegaManProjectile.TYPE_MAGMA_BAZOOKA_CHARGE,MegaManProjectile.MB_DOWN));
                  }
                  level.addToLevel(_loc1_);
                  this.shootStart();
               }
            }
            else if(this.curWeapon == MM_PHARAOH_SHOT && this.pharaohBalloon)
            {
               this.releasePharoahBalloonAfterSlide = true;
            }
         }
         if(this.chargeState != CS_NORMAL)
         {
            this.resetChargeState();
         }
      }
      
      private function pickUpWithSuperArm(param1:Brick) : void
      {
         param1.stopHit = true;
         this.carryingItem = param1;
         param1.ny = ny - height;
         param1.nx = nx;
         this.arm.setStopFrame(FL_ARM_SUPER_ARM);
         EVENT_MNGR.addEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler,false,0,true);
      }
      
      override public function finalCheck() : void
      {
         var _loc2_:String = null;
         super.finalCheck();
         var _loc1_:String = currentLabel;
         if(!this.shoot && !this.carryingItem)
         {
            if(_loc1_ == FL_STAND || _loc1_ == FL_STEP)
            {
               _loc2_ = FL_ARM_NORMAL;
            }
            if(_loc1_ == FL_WALK_START)
            {
               _loc2_ = FL_ARM_WALK_1;
            }
            else if(_loc1_ == FL_WALK_2 || _loc1_ == FL_WALK_END)
            {
               _loc2_ = FL_ARM_WALK_2;
            }
            else if(_loc1_ == FL_WALK_3)
            {
               _loc2_ = FL_ARM_WALK_3;
            }
         }
         if(this.carryingItem)
         {
            _loc2_ = FL_ARM_SUPER_ARM;
            this.carryingItem.x = nx - TILE_SIZE / 2 + (Math.abs(this.arm.x) + SUPER_ARM_ITEM_X_OFS) * scaleX;
            this.carryingItem.y = ny - Math.abs(this.arm.y) - this.arm.height - TILE_SIZE + SUPER_ARM_ITEM_Y_OFS;
         }
         if(_loc2_)
         {
            this.arm.setStopFrame(_loc2_);
         }
      }
      
      protected function levelSetIndexesHandler(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:DisplayObjectContainer = this.carryingItem.parent;
         if(_loc2_)
         {
            _loc3_ = _loc2_.getChildIndex(this) - 1;
            if(_loc3_ < 0)
            {
               _loc3_ = 0;
            }
            _loc2_.setChildIndex(this.carryingItem,_loc3_);
         }
      }
      
      private function shootStart(param1:Boolean = false, param2:String = null, param3:Boolean = true) : void
      {
         if(param2 == FL_ARM_THROW || param2 == FL_ARM_FIST)
         {
            this.armCustomFrame = true;
         }
         if(!param2)
         {
            param2 = FL_ARM_SHOOT;
         }
         else if(param2 == FL_ARM_THROW && onGround && (vx == 0 || param1))
         {
            param2 = FL_ARM_STAND_THROW;
         }
         this.arm.setStopFrame(param2);
         this.shoot = true;
         this.shootTmr.reset();
         this.shootTmr.start();
         this.stopWhileShooting = param1;
         if(param1 && onGround)
         {
            vx = 0;
            if(!this.armCustomFrame || !this.customThrowFrames)
            {
               setStopFrame(FL_SHOOT);
            }
            else
            {
               setStopFrame(FL_THROW);
            }
         }
         if(this.curWeapon == MM_BASS_BUSTER && onGround)
         {
            this.checkBassBusterStance();
         }
         if(param3 && this.curWeaponUsesEnergy)
         {
            decAmmo(this.curWeapon);
         }
      }
      
      override protected function hasEnoughAmmo(param1:String, param2:String = null, param3:int = -1) : Boolean
      {
         if(param1 == MM_RUSH_COIL && getAmmo(param1) >= MegaManEnergyBar.NUM_UNITS_PER_BAR)
         {
            return true;
         }
         return super.hasEnoughAmmo(param1,param2,param3);
      }
      
      public function rushCoilBounce() : void
      {
         decAmmo(MM_RUSH_COIL);
      }
      
      private function checkBassBusterStance() : void
      {
         this.shoot = true;
         if(rhtBtn)
         {
            scaleX = 1;
         }
         else if(lftBtn)
         {
            scaleX = -1;
         }
         if(!this.rapidFireTmr.running)
         {
            this.rapidFireTmr.start();
         }
         var _loc1_:String = BASE_FL_SHOOT;
         if(onGround)
         {
            vx = 0;
         }
         else
         {
            _loc1_ = BASE_FL_JUMP_SHOOT;
         }
         if(upBtn)
         {
            if(rhtBtn || lftBtn)
            {
               setStopFrame(_loc1_ + BASE_FL_DIAG_UP);
            }
            else
            {
               setStopFrame(_loc1_ + BASE_FL_UP);
            }
         }
         else if(dwnBtn)
         {
            setStopFrame(_loc1_ + BASE_FL_DIAG_DWN);
         }
      }
      
      override public function pressSpcBtn() : void
      {
         super.pressSpcBtn();
         if(selBtn)
         {
            this.updateWeaponsVec(0,true);
         }
         else
         {
            this.updateWeaponsVec(-1);
         }
         if(this.chargeState != CS_NORMAL)
         {
            this.resetChargeState();
         }
      }
      
      override public function pressSelBtn() : void
      {
         super.pressSelBtn();
         if(spcBtn)
         {
            this.updateWeaponsVec(0,true);
         }
         else
         {
            this.updateWeaponsVec(1);
         }
         if(this.chargeState != CS_NORMAL)
         {
            this.resetChargeState();
         }
      }
      
      override public function pressLftBtn() : void
      {
         super.pressLftBtn();
         if(onGround && vx >= 0 && !this.STEP_TMR.running && !(this.curWeapon == MM_BASS_BUSTER && atkBtn))
         {
            if(cState == ST_SLIDE && this.ceilingAboveSlide)
            {
               return;
            }
            this.STEP_TMR.start();
            nx -= STEP_MOVE_AMT;
            if(!this.shoot)
            {
               setStopFrame(FL_STEP);
            }
         }
      }
      
      override public function pressRhtBtn() : void
      {
         super.pressRhtBtn();
         if(onGround && vx <= 0 && !this.STEP_TMR.running && !(this.curWeapon == MM_BASS_BUSTER && atkBtn))
         {
            if(cState == ST_SLIDE && this.ceilingAboveSlide)
            {
               return;
            }
            this.STEP_TMR.start();
            nx += STEP_MOVE_AMT;
            if(!this.shoot)
            {
               setStopFrame(FL_STEP);
            }
         }
      }
      
      override public function relLftBtn() : void
      {
         super.relLftBtn();
      }
      
      override protected function changeBrickState() : void
      {
         if(this is MegaMan && skinNum == MegaMan.SKIN_CUT_MAN_NES)
         {
            brickState = BRICK_BREAKER;
         }
         else
         {
            brickState = BRICK_BOUNCER;
         }
      }
      
      override public function relRhtBtn() : void
      {
         super.relRhtBtn();
      }
      
      private function stepTmrHandler(param1:TimerEvent) : void
      {
         this.STEP_TMR.reset();
      }
      
      private function resetChargeState() : void
      {
         var _loc1_:SoundContainer = SND_MNGR.findSound(this.SFX_MEGA_MAN_CHARGE_LOOP);
         if(_loc1_)
         {
            _loc1_.pauseSound();
            SND_MNGR.removeSnd(_loc1_);
         }
         else
         {
            _loc1_ = SND_MNGR.findSound(this.SFX_MEGA_MAN_CHARGE_START);
            if(_loc1_)
            {
               _loc1_.pauseSound();
               SND_MNGR.removeSnd(_loc1_);
            }
         }
         SND_MNGR.removeStoredSound(this.SFX_MEGA_MAN_CHARGE_LOOP);
         SND_MNGR.removeStoredSound(this.SFX_MEGA_MAN_CHARGE_START);
         if(!starPwr && cState != ST_GET_MUSHROOM)
         {
            endReplaceColor();
         }
         this.chargeState = CS_NORMAL;
         if(this.chargeTmr.running)
         {
            this.chargeTmr.reset();
         }
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         super.hitPickup(param1,param2);
         var _loc3_:String = param1.type;
         switch(_loc3_)
         {
            case MM_WEAPON_ENERGY_BIG:
               if(this.curWeaponUsesEnergy || upgradeIsActive(MM_ENERGY_BALANCER))
               {
                  this.weaponEnergyTouch(true);
               }
               break;
            case MM_WEAPON_ENERGY_SMALL:
               if(this.curWeaponUsesEnergy || upgradeIsActive(MM_ENERGY_BALANCER))
               {
                  this.weaponEnergyTouch(false);
               }
         }
         if(param1.mainType == PickupInfo.MAIN_TYPE_UPGRADE)
         {
            this.updateWeaponsVec();
         }
         if(!param1.playsRegularSound && param1.mainType != PickupInfo.MAIN_TYPE_FAKE && param2)
         {
            if(_loc3_ != MM_WEAPON_ENERGY_BIG && _loc3_ != MM_WEAPON_ENERGY_SMALL)
            {
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_GET_NEW_LIFE);
            }
         }
      }
      
      private function weaponEnergyTouch(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         if(this.energyTmr != null)
         {
            if(param1)
            {
               this.energiesGottenSimultaneously.push(new MegaManPickup(PickupInfo.MEGA_MAN_WEAPON_ENERGY_BIG));
            }
            else
            {
               this.energiesGottenSimultaneously.push(new MegaManPickup(PickupInfo.MEGA_MAN_WEAPON_ENERGY_SMALL));
            }
            return;
         }
         this.ammoTypeToRefill = null;
         if(param1)
         {
            _loc2_ = WEAPON_ENERGY_BIG_RECOVERY;
         }
         else
         {
            _loc2_ = WEAPON_ENERGY_SMALL_RECOVERY;
         }
         _loc2_ /= MegaManEnergyBar.NUM_UNITS_PER_BAR;
         if(this.curWeaponUsesEnergy && getAmmo(this.curWeapon) < MAX_WPN_ENGY)
         {
            this.ammoTypeToRefill = this.curWeapon;
         }
         else if(upgradeIsActive(MM_ENERGY_BALANCER))
         {
            this.ammoTypeToRefill = getAmmoTypeWithLeastAmmo();
         }
         if(this.ammoTypeToRefill && getAmmo(this.ammoTypeToRefill) < MAX_WPN_ENGY)
         {
            level.freezeGame();
            this.energyTmr = new Timer(ENERGY_TMR_DUR,_loc2_);
            this.energyTmr.addEventListener(TimerEvent.TIMER,this.energyTmrHandler,false,0,true);
            this.energyTmr.start();
            if(_loc2_ <= 3)
            {
               SND_MNGR.playSound(SN_GET_ENERGY);
            }
            else
            {
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_GET_ENERGY_LOOPING);
            }
         }
      }
      
      protected function energyTmrHandler(param1:Event) : void
      {
         var _loc2_:SoundContainer = null;
         increaseAmmoByValue(this.ammoTypeToRefill,MegaManEnergyBar.NUM_UNITS_PER_BAR);
         if(this.curWeapon == this.ammoTypeToRefill)
         {
            this.energyBar.update(getAmmo(this.ammoTypeToRefill));
         }
         if(getAmmo(this.ammoTypeToRefill) == MAX_WPN_ENGY || this.energyTmr.currentCount == this.energyTmr.repeatCount)
         {
            this.energyTmr.stop();
            this.energyTmr.removeEventListener(TimerEvent.TIMER,this.energyTmrHandler);
            this.energyTmr = null;
            level.unfreezeGame();
            _loc2_ = SND_MNGR.findSound(SoundNames.SFX_MEGA_MAN_GET_ENERGY_LOOPING);
            if(_loc2_)
            {
               SND_MNGR.removeSnd(_loc2_);
            }
            if(this.energiesGottenSimultaneously.length > 0)
            {
               this.hitPickup(this.energiesGottenSimultaneously.pop());
            }
         }
      }
      
      override protected function starPwrTmr3Handler(param1:TimerEvent) : void
      {
         if(starPwrTmr3)
         {
            starPwrTmr3.stop();
            starPwrTmr3.removeEventListener(TimerEvent.TIMER_COMPLETE,this.starPwrTmr3Handler);
            starPwrTmr3 = null;
         }
         starPwr = false;
         if(this.chargeState == CS_NORMAL)
         {
            endReplaceColor();
            visible = true;
            this.resetColor();
         }
         flashAnimTmr = STAR_PWR_FLASH_ANIM_TMR;
         TopScreenText.instance.updateUpgIcons();
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         if(cState == ST_SLIDE && !this.ceilingAboveSlide)
         {
            this.setState(ST_STAND);
            vx = 0;
         }
         super.groundOnSide(param1,param2);
      }
      
      override public function flash(param1:Boolean = true) : void
      {
         if(starPwr || poweringUp)
         {
            super.flash(param1);
            return;
         }
         var _loc2_:Palette = this.paletteChargeMegaBuster;
         var _loc3_:int = 1;
         ++this.chargeCtr;
         if(this.chargeState == "fullCharge" && this.chargeCtr > this.NUM_CHARGE_COLORS)
         {
            this.chargeCtr = 1;
         }
         else if(this.chargeState != "fullCharge" && this.chargeCtr > 2)
         {
            this.chargeCtr = 1;
         }
         if(this.chargeState == "fullCharge")
         {
            _loc3_ += CHARGE_PAL_FULL_CHARGE_START_OFS + this.chargeCtr - 1;
         }
         else if(this.chargeCtr == 1)
         {
            if(this.chargeState == "chargeStart" || this.chargeState == "chargeOutline2" || this.chargeState == "weakCharge")
            {
               this.resetColor();
               flashArr = null;
               return;
            }
         }
         else if(this.chargeCtr == 2)
         {
            if(this.chargeState == "chargeStart")
            {
               _loc3_ += 0;
            }
            else if(this.chargeState == "chargeOutline2")
            {
               _loc3_ += 1;
            }
            else if(this.chargeState == "weakCharge")
            {
               _loc3_ += 2;
            }
         }
         flashArr = [defColors,_loc2_,IND_DEF_COLORS_OUT,_loc3_];
         this.recolorBmps(defColors,_loc2_,IND_DEF_COLORS_OUT,_loc3_);
      }
      
      public function repositionBullets() : Boolean
      {
         if(this is MegaMan)
         {
            if(skinNum > 1 && skinNum < 6 || skinNum == MegaMan.SKIN_BREAK_MAN_NES || skinNum == MegaMan.SKIN_BREAK_MAN_SNES || skinNum == MegaMan.SKIN_BREAK_MAN_GB || skinNum == MegaMan.SKIN_ROKKO_CHAN)
            {
               return true;
            }
         }
         return false;
      }
      
      private function chargeInt(param1:TimerEvent) : void
      {
         this.chargeTmr.reset();
         if(this.chargeState == CS_NORMAL)
         {
            this.chargeTmr.delay = this.CHARGE_OUTLINE_2_DUR;
            this.chargeTmr.start();
            this.chargeState = CS_CHARGE_START;
            SND_MNGR.playSoundNow(this.SFX_MEGA_MAN_CHARGE_START);
            startReplaceColor();
            this.chargeCtr = 2;
            this.flash();
         }
         else if(this.chargeState == CS_CHARGE_START)
         {
            this.chargeTmr.delay = this.WEAK_CHARGE_DUR;
            this.chargeTmr.start();
            this.chargeState = CS_CHARGE_OUTLINE_2;
         }
         else if(this.chargeState == CS_CHARGE_OUTLINE_2)
         {
            this.chargeTmr.delay = this.FULL_CHARGE_DUR;
            this.chargeTmr.start();
            this.chargeState = CS_WEAK_CHARGE;
         }
         else if(this.chargeState == CS_WEAK_CHARGE)
         {
            this.chargeState = CS_FULL_CHARGE;
         }
      }
      
      override protected function getMushroomEnd() : void
      {
         lockFrame = false;
         if(!starPwr && this.chargeState == CS_NORMAL)
         {
            endReplaceColor();
         }
         var _loc1_:int = pState + 1;
         if(_loc1_ > 3)
         {
            _loc1_ = 3;
         }
         setPowerState(_loc1_);
         lockState = false;
         this.setState(ST_NEUTRAL);
         getDataFromDamageInfoArr();
         if(GameSettings.tutorials)
         {
            this.TUT_MNGR.gotPowerUp(this);
         }
         poweringUp = false;
         this.resetChargeState();
      }
      
      override protected function hitAnimation() : void
      {
         this.head.hitStopAnim = this.head.stopAnim;
         this.head.stopAnim = true;
         this.head.hitFrameLabel = this.head.currentLabel;
         super.hitAnimation();
         this.head.setStopFrame("closedOpen");
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         if(GameSettings.damageResponse == DamageResponse.LoseSomeUpgrades)
         {
            this.removeOneThirdOfUpgrades();
         }
         super.takeDamageStart(param1);
         setStopFrame(FL_TAKE_DAMAGE);
         SND_MNGR.playSound(SN_TAKE_DAMAGE);
         takeNoDamage = true;
         disableInput = true;
         nonInteractive = true;
         this.setState(ST_TAKE_DAMAGE);
         BTN_MNGR.relPlyrBtns();
         if(this is MegaMan && (skinNum > 2 && skinNum < 6 || (skinNum == MegaMan.SKIN_BREAK_MAN_NES || skinNum == MegaMan.SKIN_BREAK_MAN_SNES || skinNum == MegaMan.SKIN_BREAK_MAN_GB)))
         {
            if(scaleX > 0)
            {
               vx = -TAKE_DAMAGE_SPEED_LONG;
            }
            else
            {
               vx = TAKE_DAMAGE_SPEED_LONG;
            }
            this.takeDamageTmr.delay = TAKE_DAMAGE_TMR_DEL_LONG;
         }
         else
         {
            if(scaleX > 0)
            {
               vx = -TAKE_DAMAGE_SPEED;
            }
            else
            {
               vx = TAKE_DAMAGE_SPEED;
            }
            this.takeDamageTmr.delay = TAKE_DAMAGE_TMR_DEL;
         }
         vy = 0;
         flickerStart();
         this.damageSplash = new MegaManSimpleGraphics(this,MegaManSimpleGraphics.TYPE_DAMAGE_SPLASH);
         level.addToLevel(this.damageSplash);
         this.takeDamageTmr.start();
      }
      
      override protected function beforeLoseSomeUpgradesCalled() : void
      {
         var _loc2_:String = null;
         var _loc1_:int = 0;
         for each(_loc2_ in STAT_MNGR.getObtainedUpgradesDct(charNum))
         {
            if(restorableUpgrades.containsKey(_loc2_))
            {
               _loc1_++;
            }
         }
         this.oneThirdOfUpgradesCount = Math.floor(_loc1_ / 3);
         if(this.oneThirdOfUpgradesCount < 1)
         {
            this.oneThirdOfUpgradesCount = 1;
         }
         this.removeOneThirdOfUpgrades();
      }
      
      private function removeOneThirdOfUpgrades() : void
      {
         var _loc3_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc1_:int = this.oneThirdOfUpgradesCount;
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in STAT_MNGR.getObtainedUpgradesDct(charNum))
         {
            if(restorableUpgrades.containsKey(_loc3_))
            {
               _loc2_.push(_loc3_);
            }
         }
         if(_loc2_.length == 0)
         {
            return;
         }
         var _loc4_:CustomDictionary = new CustomDictionary();
         while(_loc4_.length < _loc1_)
         {
            _loc6_ = _loc2_[int(Math.random() * _loc1_)];
            if(_loc4_[_loc6_] == undefined)
            {
               _loc4_.addItem(_loc6_,_loc6_);
            }
         }
         for each(_loc5_ in _loc4_)
         {
            STAT_MNGR.removeCharUpgrade(charNum,_loc5_,true);
         }
      }
      
      override protected function flickerTmrHandler(param1:Event) : void
      {
         super.flickerTmrHandler(param1);
         if(this.damageSplash)
         {
            this.damageSplash.visible = !visible;
         }
      }
      
      override protected function takeDamageEnd() : void
      {
         this.damageSplash = null;
         disableInput = false;
         nonInteractive = false;
         this.setState(ST_NEUTRAL);
         setStopFrame(FL_STAND);
         if(onGround)
         {
            vx = 0;
         }
         noDamageTmr.start();
         this.checkState();
         BTN_MNGR.sendPlayerBtns();
         dispatchEvent(new Event(CustomEvents.CHARACTER_TAKE_DAMAGE_END));
      }
      
      override protected function noDamageTmrLsr(param1:TimerEvent) : void
      {
         super.noDamageTmrLsr(param1);
         flickerStop();
      }
      
      override protected function swapPs() : void
      {
         super.swapPs();
         var _loc1_:String = this.head.currentLabel;
         var _loc2_:String = _loc1_.substr(0,_loc1_.length - 2);
         this.head.setStopFrame(_loc2_);
         if(pState != 1)
         {
            if(pState == 2 || pState == 3)
            {
               this.head.visible = false;
            }
         }
      }
      
      override public function manualChangePwrState() : void
      {
         this.head.hitFrameLabel = this.head.currentLabel;
         super.manualChangePwrState();
         var _loc1_:String = this.head.currentLabel;
         var _loc2_:String = _loc1_.substr(0,_loc1_.length - 2);
         this.head.setStopFrame(_loc2_);
      }
      
      override public function recolorBmps(param1:Palette, param2:Palette, param3:int = 0, param4:int = 0, param5:Palette = null) : void
      {
         super.recolorBmps(param1,param2,param3,param4);
         this.arm.recolorBmps(param1,param2,param3,param4,defColors);
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         super.resetColor(param1);
         this.arm.resetColor(param1);
      }
      
      override public function exitPipeVert(param1:PipeTransporter) : void
      {
         super.exitPipeVert(param1);
         this.head.setStopFrame("openClosed");
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc5_:MegaManParticle = null;
         super.initiateNormalDeath(param1);
         stopUpdate = true;
         stopAnim = true;
         stopHit = true;
         this.partVec = new Vector.<MegaManParticle>();
         if(this is MegaMan && MegaManParticle.MEGA_MAN_COLOR_PARTICLE_SKIN_NUM.indexOf(skinNum) != -1 || this is Bass && MegaManParticle.BASS_COLOR_PARTICLE_SKIN_NUM.indexOf(skinNum) != -1)
         {
            _loc2_ = true;
         }
         else
         {
            _loc2_ = false;
         }
         this.partVec.push(new MegaManParticle(true,"up",this));
         this.partVec.push(new MegaManParticle(true,"rht",this));
         this.partVec.push(new MegaManParticle(true,"dwn",this));
         this.partVec.push(new MegaManParticle(true,"lft",this));
         this.partVec.push(new MegaManParticle(false,"up",this));
         this.partVec.push(new MegaManParticle(false,"up-rht",this));
         this.partVec.push(new MegaManParticle(false,"rht",this));
         this.partVec.push(new MegaManParticle(false,"dwn-rht",this));
         this.partVec.push(new MegaManParticle(false,"dwn",this));
         this.partVec.push(new MegaManParticle(false,"dwn-lft",this));
         this.partVec.push(new MegaManParticle(false,"lft",this));
         this.partVec.push(new MegaManParticle(false,"up-lft",this));
         if(!_loc2_)
         {
            this.partVec.push(new MegaManParticle(true,"up-rht",this));
            this.partVec.push(new MegaManParticle(true,"dwn-rht",this));
            this.partVec.push(new MegaManParticle(true,"dwn-lft",this));
            this.partVec.push(new MegaManParticle(true,"up-lft",this));
         }
         var _loc3_:int = this.partVec.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.partVec[_loc4_];
            level.addToLevel(_loc5_);
            _loc4_++;
         }
         if(_loc2_)
         {
            this.particleTmr = new CustomTimer(MegaManParticle.PARTICLE_COLOR_SEP_TMR_DEL,1);
         }
         else
         {
            this.particleTmr = new CustomTimer(MegaManParticle.PARTICLE_WHITE_SEP_TMR_DEL,1);
         }
         addTmr(this.particleTmr);
         this.particleTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.particleTmrLsr,false,0,true);
         this.particleTmr.start();
         if(_loc2_)
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_DIE_ALT);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_DIE);
         }
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         if(atkBtn)
         {
            this.relAtkBtn();
         }
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_DIE);
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         nx = level.flagPole.hMidX;
         setPlayFrame("climbStart");
         this.head.setStopFrame("climb");
         this.shoot = false;
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         if(onGround)
         {
            this.setState(ST_STAND);
            setStopFrame("stand");
         }
         else
         {
            this.setState(ST_JUMP);
            setStopFrame("jump");
         }
      }
      
      override protected function flagDelayTmrLsr(param1:TimerEvent) : void
      {
         super.flagDelayTmrLsr(param1);
         if(onGround)
         {
            this.setState(ST_WALK);
            onGround = true;
         }
      }
      
      private function particleTmrLsr(param1:TimerEvent) : void
      {
         var _loc4_:MegaManParticle = null;
         this.particleTmr.stop();
         this.particleTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.particleTmrLsr);
         this.particleTmr = null;
         visible = false;
         EVENT_MNGR.startDieTmr(DIE_TMR_DEL_NORMAL);
         var _loc2_:int = this.partVec.length;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            (_loc4_ = this.partVec[_loc3_]).separate();
            _loc3_++;
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc3_:uint = 0;
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(cState == ST_WALK || cState == ST_PIPE)
         {
            _loc3_ = 1;
            while(_loc3_ <= numParFrames)
            {
               if(this.shoot || this.carryingItem && !this.throwUsesNonShootFrames)
               {
                  if(_loc1_ == convLab("walk-" + _loc3_.toString()))
                  {
                     if(_loc3_ != numParFrames)
                     {
                        setPlayFrame("walkShoot-" + _loc3_.toString());
                     }
                     else
                     {
                        setPlayFrame("walkShoot-1");
                     }
                  }
               }
               else if(_loc1_ == convLab("walkShoot-" + _loc3_.toString()))
               {
                  if(_loc3_ != numParFrames)
                  {
                     setPlayFrame("walk-" + _loc3_.toString());
                  }
                  else
                  {
                     setPlayFrame("walk-1");
                  }
               }
               _loc3_++;
            }
            _loc2_ = currentFrame;
            if(_loc2_ == getLabNum("walk-4") + 1 || _loc2_ == getLabNum("walkShoot-4") + 1)
            {
               if(this.shoot || this.carryingItem)
               {
                  setPlayFrame("walkShoot-1");
               }
               else
               {
                  setPlayFrame("walk-1");
               }
            }
         }
         else if(cState == ST_JUMP && currentFrameLabel == convLab("jumpShoot") && !this.shoot)
         {
            setStopFrame("jump");
         }
         else if(cState == ST_FLAG_SLIDE || cState == ST_VINE)
         {
            if(_loc2_ == getLabNum("climbEnd") + 1)
            {
               setPlayFrame("climbStart");
            }
         }
         if(_loc1_ == FL_TELEPORT_END)
         {
            this.teleportRaise();
         }
      }
      
      private function shootTmrHandler(param1:TimerEvent) : void
      {
         if(this.curWeapon == MM_BASS_BUSTER && atkBtn && onGround)
         {
            return;
         }
         this.shoot = false;
         this.armCustomFrame = false;
      }
      
      override protected function landOnGround() : void
      {
         SND_MNGR.playSound(this.SFX_MEGA_MAN_LAND);
         this.canDoubleJump = true;
         if(this.shoot && this.stopWhileShooting)
         {
            vx = 0;
            if(!this.armCustomFrame || !this.customThrowFrames)
            {
               setStopFrame(FL_SHOOT);
            }
            else
            {
               this.arm.setStopFrame(FL_ARM_STAND_THROW);
               setStopFrame(FL_THROW);
            }
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.shootTmr && this.shootTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.shootTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler);
         }
         if(this.chargeTmr && this.chargeTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.chargeTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.chargeInt);
         }
         if(this.particleTmr && this.particleTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.particleTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.particleTmrLsr);
         }
         if(this.rapidFireTmr)
         {
            this.rapidFireTmr.removeEventListener(TimerEvent.TIMER,this.rapidFireTmrHandler);
         }
         EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
         this.STEP_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler);
         if(this.takeDamageTmr != null)
         {
            this.takeDamageTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.shootTmr && !this.shootTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.shootTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler);
         }
         if(this.chargeTmr && !this.chargeTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.chargeTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.chargeInt);
         }
         if(this.rapidFireTmr)
         {
            this.rapidFireTmr.addEventListener(TimerEvent.TIMER,this.rapidFireTmrHandler,false,0,true);
         }
         this.STEP_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.stepTmrHandler,false,0,true);
         if(this.takeDamageTmr != null)
         {
            this.takeDamageTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.takeDamageTmrHandler,false,0,true);
         }
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_TAKE_DAMAGE);
      }
      
      private function teleportRaise() : void
      {
         stopAnim = true;
         vy = -TELEPORT_SPEED;
         defyGrav = true;
         stopHit = true;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(this.energyTmr)
         {
            return false;
         }
         var _loc2_:Boolean = super.animate(param1);
         if(param1 == mainAnimTmr)
         {
            this.head.animate(param1);
         }
         return _loc2_;
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         this.updateWeaponsVec(0,true,false);
         endReplaceColor();
         this.arm.setStopFrame(FL_ARM_NORMAL);
         super.prepareDrawCharacter(param1);
      }
      
      override public function cleanUp() : void
      {
         if(!this.head.visible)
         {
            removeObjsFromFrames(this.head,[currentFrameLabel]);
         }
         super.cleanUp();
         if(this.energyBar.parent)
         {
            this.energyBar.parent.removeChild(this.energyBar);
         }
      }
   }
}
