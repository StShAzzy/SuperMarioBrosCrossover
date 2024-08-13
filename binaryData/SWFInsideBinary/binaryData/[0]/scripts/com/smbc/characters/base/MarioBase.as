package com.smbc.characters.base
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.characters.Mario;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.MusicType;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Bloopa;
   import com.smbc.enemies.Enemy;
   import com.smbc.enums.ClassicDamageResponse;
   import com.smbc.graphics.BmdSkinCont;
   import com.smbc.ground.*;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.LevObj;
   import com.smbc.pickups.BowserAxe;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.Vine;
   import com.smbc.projectiles.*;
   import com.smbc.sound.*;
   import flash.display.*;
   import flash.events.*;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MarioBase extends Character
   {
      
      public static const IND_CI_Mario:int = 1;
      
      public static const IND_CI_MarioFireBall:int = 6;
      
      public static const IND_CI_MarioFireFlowerNormal:int = 7;
      
      public static const IND_CI_MarioFireFlowerUnderGround:int = 8;
      
      public static const IND_CI_MarioStar:int = 9;
      
      public static const IND_CI_MarioPortrait:int = 4;
      
      private static const PAL_COL_NORMAL:int = 1;
      
      private static const PAL_COL_FIRE_FLOWER:int = 3;
      
      private static const SKIN_APPEARANCE_NUM_SMALL:int = 0;
      
      private static const SKIN_APPEARANCE_NUM_BIG:int = 1;
      
      private static const SKIN_APPEARANCE_NUM_FIRE_POWER:int = 2;
      
      protected static const MARIO_FIRE_FLOWER:String = PickupInfo.MARIO_FIRE_FLOWER;
      
      public static const SFX_MARIO_FIREBALL:String = SoundNames.SFX_MARIO_FIREBALL;
      
      public static const SFX_MARIO_JUMP_BIG:String = SoundNames.SFX_MARIO_JUMP_BIG;
      
      public static const SFX_MARIO_JUMP_SMALL:String = SoundNames.SFX_MARIO_JUMP_SMALL;
      
      public static const SFX_GAME_PIPE:String = SoundNames.SFX_GAME_PIPE;
      
      public static const SFX_GAME_STOMP:String = SoundNames.SFX_GAME_STOMP;
      
      public static const MFX_MARIO_DIE:String = SoundNames.MFX_MARIO_DIE;
      
      public static const MAX_WALK_SPEED:int = 175;
      
      private static const NO_DAMAGE_TMR_DEL:int = 2500;
      
      private static const FL_CLIMB_START:String = "climbStart";
      
      private static const FL_CLIMB_END:String = "climbEnd";
      
      private static const FL_CROUCH:String = "crouch";
      
      private static const FL_DIE:String = "die";
      
      private static const FL_JUMP_START:String = "jumpStart";
      
      private static const FL_JUMP_END:String = "jumpEnd";
      
      private static const FL_FALL_START:String = "fallStart";
      
      private static const FL_FALL_END:String = "fallEnd";
      
      private static const FL_GROW_START:String = "growStart";
      
      private static const FL_GROW_END:String = "growEnd";
      
      private static const FL_SHOOT:String = "shoot";
      
      private static const FL_PIPE:String = "pipe";
      
      private static const FL_PIPE_2:String = "pipe_2";
      
      private static const FL_SKID:String = "skid";
      
      private static const FL_STAND:String = "stand";
      
      private static const FL_STAND_UP:String = "standUp";
      
      private static const FL_STAND_UP_2:String = "standUp_2";
      
      private static const FL_TAKE_DAMAGE_START:String = "takeDamageStart";
      
      private static const FL_TAKE_DAMAGE_END:String = "takeDamageEnd";
      
      private static const FL_WALK_START:String = "walk-1";
      
      private static const FL_WALK_END_NES:String = "walk-3";
      
      private static const FL_WALK_END_NORMAL:String = "walk-4";
      
      private static const FL_WALK_SHOOT_START:String = "walkShoot-1";
      
      private static const FL_WALK_SHOOT_END:String = "walkShoot-3";
      
      private static const FL_WALK_DUR_TEST_FRAME:String = "walk-4_2";
      
      private static const FL_SMALL_CROUCH_TEST_FRAME:String = FL_CROUCH + "_1";
      
      private static const FL_FALL_TEST_FRAME:String = FL_FALL_START + "_2";
      
      private static const ST_SKID:String = "skid";
      
      private static const FX_RUN_TO_WALK:Number = 0.02;
      
      private static const FX_DUNGEON_GOT_AXE:Number = 0.0001;
      
      private static const AX_PIT_VACUUM_SLOW_SPEED:int = 700;
      
      private static const AX_PIT_VACUUM:int = 575;
      
      public static const JUMP_PWR:int = 630;
      
      public static const GRAVITY_NAME:String = "GRAVITY";
      
      private static const JUMP_SPEED_NORMAL_NAME:String = "JUMP_SPEED_NORMAL";
      
      private static const JUMP_SPEED_RUN_NAME:String = "JUMP_SPEED_RUN";
      
      private static const JUMP_HEIGHT_MIN_NAME:String = "JUMP_HEIGHT_MIN";
      
      private static const JUMP_HEIGHT_NORMAL_STR:String = "JUMP_HEIGHT_NORMAL";
      
      private static const JUMP_HEIGHT_RUN_STR:String = "JUMP_HEIGHT_RUN";
      
      private static const VY_MAX_PSV_NORMAL_NAME:String = "VY_MAX_PSV_NORMAL";
      
      private static const AX_DEFAULT_NAME:String = "AX_DEFAULT";
      
      private static const AX_RUN_NAME:String = "AX_RUN";
      
      private static const FX_SKID_NAME:String = "FX_SKID";
      
      private static const FX_WALK_NAME:String = "FX_WALK";
      
      private static const FX_RUN_CROUCH_NAME:String = "FX_RUN_CROUCH";
      
      private static const FY_NAME:String = "FY";
      
      private static const SKID_THRESHOLD_NAME:String = "SKID_THRESHOLD";
      
      private static const FEATHER_NAME:String = "featherStg";
      
      private static const FEATHER_FRAMES_SHOW_ARR:Array = ["stand_2","standUp_2","pipe_2","walk-1_2","walk-2_2","walk-3_2","walkShoot-1_2","walkShoot-2_2","walkShoot-3_2","jumpStart_2","jumpEnd_2","skid_2","shoot_2","swimStillStart_2","swimStillEnd_2","paddleFastStart_2","paddleFast-2_2","paddleFast-3_2","paddleFast-4_2","paddleFast-5_2","paddleFast-6_2","paddleFast-7_2","paddleFastEnd_2","paddleSlowStart_2","paddleSlow-2_2","paddleSlow-3_2","paddleSlow-4_2","paddleSlow-5_2","paddleSlow-6_2","paddleSlow-7_2","paddleSlow-8_2","paddleSlow-9_2","paddleSlowEnd_2","climbStart_2","climbEnd_2"];
      
      protected static const APPEARANCE_NUM_SMALL:int = 1;
      
      protected static const APPEARANCE_NUM_BIG:int = 2;
      
      private static const AP_BIG_ONLY:String = "bigOnly";
      
      private static const AP_SMALL_ONLY:String = "smallOnly";
      
      private static const AP_BIG_AND_SMALL:String = "bigAndSmall";
      
      protected static const SKIN_PREVIEW_SIZE_BIG:Point = new Point(26,36);
      
      protected static const SKIN_PREVIEW_SIZE_SMALL:Point = new Point(26,26);
       
      
      private const DIE_TMR_DEL_NORMAL:int = 3000;
      
      private const DIE_TMR_DEL_PIT:int = 3000;
      
      private const REPL_COLOR_1_1:uint = 4292356096;
      
      private const REPL_COLOR_2_1:uint = 4286277121;
      
      private const REPL_COLOR_3_1:uint = 4294744120;
      
      private const REPL_COLOR_1_2:uint = 4292356096;
      
      private const REPL_COLOR_2_2:uint = 4286277121;
      
      private const REPL_COLOR_3_2:uint = 4294744120;
      
      private const REPL_COLOR_1_3:uint = 4294760616;
      
      private const REPL_COLOR_2_3:uint = 4292356096;
      
      private const REPL_COLOR_3_3:uint = 4294744120;
      
      private const ANIM_TMR_FOR_FREEZE:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      private const ANIM_TMR_FOR_TAKE_DAMAGE:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      private const ANIM_TMR_FOR_JUMP:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private const SWIM_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MODERATE_TMR;
      
      private var walkAnimTmr1:CustomTimer;
      
      private var walkAnimTmr2:CustomTimer;
      
      private var walkAnimTmr3:CustomTimer;
      
      private var runAnimTmr1:CustomTimer;
      
      private var runAnimTmr2:CustomTimer;
      
      private const MAX_RUN_SPEED:int = 300;
      
      private const JUMP_HEIGHT_RUN_SPEED:int = 175;
      
      private const FLAG_POLE_X_OFS:int = 6;
      
      private const FLAG_POLE_SLIDE_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      private const MIN_WALK_SPEED:int = 40;
      
      private const MAX_FIREBALLS_ON_SCREEN:int = 2;
      
      private const WALK_TMR_1_MIN_VX:int = 0;
      
      private const WALK_TMR_2_MIN_VX:int = 50;
      
      private const WALK_TMR_3_MIN_VX:int = 100;
      
      private const RUN_TMR_1_MIN_VX:int = 165;
      
      private const RUN_TMR_2_MIN_VX:int = 220;
      
      private const MIN_RUN_OVER_GAP_SPEED:int = 220;
      
      private const BASE_FL_WALK:String = "walk";
      
      private const BASE_FL_WALK_SHOOT:String = "walkShoot";
      
      private var hitMainAnimTmr:CustomTimer;
      
      private var singleFirePowerFrame:Boolean;
      
      private var fxSkid:Number;
      
      private var jumpPwrDef:Number;
      
      private var jumpPwrRun:Number;
      
      private const JUMP_PWR_RUN:int = 700;
      
      private const JUMP_PWR_WATER:int = 200;
      
      private var skidThreshold:int;
      
      private var paddleFastSpeed:Number = 100;
      
      private const DIE_BOOST:int = 500;
      
      private const DIE_GRAVITY:int = 1200;
      
      private const DIE_VY_MAX_PSV:int = 540;
      
      private var dieFreezeTmr:CustomTimer;
      
      private const DIE_FREEZE_TMR_DUR:int = 250;
      
      private const CLIMB_OFFSET_X:int = 0;
      
      private const SHOOT_TMR:CustomTimer = new CustomTimer(75,1);
      
      private var shoot:Boolean;
      
      private var justCrouched:Boolean;
      
      private const SECONDS_LEFT_DUNGEON:String = SoundNames.BGM_MARIO_DUNGEON_FAST;
      
      private const SECONDS_LEFT_OVER_WORLD:String = SoundNames.BGM_MARIO_OVER_WORLD_FAST;
      
      private const SECONDS_LEFT_UNDER_GROUND:String = SoundNames.BGM_MARIO_UNDER_GROUND_FAST;
      
      private const SECONDS_LEFT_WATER:String = SoundNames.BGM_MARIO_WATER_FAST;
      
      private const SND_MUSIC_WIN:String = SoundNames.MFX_MARIO_WIN;
      
      private const SND_MUSIC_WIN_DUNGEON:String = SoundNames.MFX_MARIO_WIN_CASTLE;
      
      private const NSF_STR_DIE:String = MusicInfo.CHAR_STR_MARIO + MusicInfo.TYPE_DIE;
      
      private var useEnterPipeVxMax:Boolean;
      
      private const BLOOPA_NO_HURT_Y:int = 416;
      
      private var frameBmd:BitmapData;
      
      private var frameBmp:Bitmap;
      
      private var bmdArr:Vector.<BitmapData>;
      
      private var jumpRise:Boolean;
      
      private var jumpEnd:Number;
      
      private var jumpEndMin:Number;
      
      private var fxWalk:Number;
      
      protected var appearanceNum:int;
      
      private var appearancePossibilities:String;
      
      private var hasFallFrame:Boolean;
      
      private var hasSmallCrouchFrame:Boolean;
      
      public function MarioBase()
      {
         var _loc1_:CustomTimer = null;
         this.walkAnimTmr1 = AnimationTimers.ANIM_VERY_SLOW_TMR;
         this.walkAnimTmr2 = AnimationTimers.ANIM_SLOW_TMR;
         this.walkAnimTmr3 = AnimationTimers.ANIM_MODERATE_TMR;
         this.runAnimTmr1 = AnimationTimers.ANIM_MIN_FAST_TMR;
         this.runAnimTmr2 = AnimationTimers.ANIM_FAST_TMR;
         this.frameBmd = new BitmapData(50,50);
         this.frameBmp = new Bitmap(this.frameBmd);
         this.bmdArr = new Vector.<BitmapData>();
         _dieTmrDel = this.DIE_TMR_DEL_NORMAL;
         recolorsCharSkin = true;
         super();
         _isGoodSwimmer = true;
         this.bmdArr.push(this.frameBmd);
         walkStartLab = FL_WALK_START;
         for each(_loc1_ in level.ALL_ANIM_TMRS_DCT)
         {
            ACTIVE_ANIM_TMRS_DCT.addItem(_loc1_);
         }
         _secondsLeftSndIsBgm = true;
         if(level.levNum != STAT_MNGR.DUNGEON_LEVEL_NUM)
         {
            _sndWinMusic = this.SND_MUSIC_WIN;
         }
         else
         {
            _sndWinMusic = this.SND_MUSIC_WIN_DUNGEON;
         }
      }
      
      override protected function setObjsToRemoveFromFrames() : void
      {
         super.setObjsToRemoveFromFrames();
         removeObjsFromFrames(FEATHER_NAME,FEATHER_FRAMES_SHOW_ARR,true);
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
         this.fxWalk = classObj[FX_WALK_NAME];
         if(level.waterLevel)
         {
            jumpPwr = this.JUMP_PWR_WATER;
         }
         else
         {
            jumpPwr = JUMP_PWR;
         }
         this.jumpPwrDef = jumpPwr;
         this.jumpPwrRun = this.JUMP_PWR_RUN;
         gravity = classObj[GRAVITY_NAME];
         walksSlowUnderWater = true;
         if(level.waterLevel)
         {
            defGravity = 700;
            gravity = 350;
            defGravityWater = gravity;
         }
         defSpringPwr = 400;
         boostSpringPwr = 950;
         ax = classObj[AX_DEFAULT_NAME];
         fx = this.fxWalk;
         fy = classObj[FY_NAME];
         this.fxSkid = classObj[FX_SKID_NAME];
         vxMaxDef = MAX_WALK_SPEED;
         if(level.waterLevel)
         {
            vyMaxPsv = 400;
         }
         else
         {
            vyMaxPsv = classObj[VY_MAX_PSV_NORMAL_NAME];
         }
         vxMax = vxMaxDef;
         vyMaxNgv = 4000;
         numParFrames = 4;
         this.skidThreshold = classObj[SKID_THRESHOLD_NAME];
         super.setStats();
         _canStomp = true;
         canStompUnderWater = false;
         setStopFrame(FL_STAND);
         this.changeBrickState();
         this.SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler,false,0,true);
         addTmr(this.SHOOT_TMR);
         noDamageTmr.delay = NO_DAMAGE_TMR_DEL;
      }
      
      override protected function startAndDamageFcts(param1:Boolean = false) : void
      {
         super.startAndDamageFcts(param1);
         if(!param1)
         {
            this.changeAppearance();
         }
      }
      
      override public function changedToThisChar() : void
      {
         super.changedToThisChar();
         setStopFrame(FL_STAND);
      }
      
      override public function forceWaterStats() : void
      {
         defGravity = 700;
         gravity = 350;
         defGravityWater = gravity;
         vyMaxPsv = 400;
         jumpPwr = 200;
         this.jumpPwrDef = jumpPwr;
         super.forceWaterStats();
         if(!onGround)
         {
            setPlayFrame("swimStillStart");
         }
      }
      
      override public function convLab(param1:String) : String
      {
         return param1 + "_" + this.appearanceNum.toString();
      }
      
      protected function changeAppearance(param1:int = -1, param2:int = -1) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Boolean = false;
         if(upgradeIsActive(MARIO_FIRE_FLOWER))
         {
            _loc3_ = PAL_COL_FIRE_FLOWER;
            this.appearanceNum = APPEARANCE_NUM_BIG;
         }
         else if(upgradeIsActive(MUSHROOM))
         {
            _loc3_ = PAL_COL_NORMAL;
            this.appearanceNum = APPEARANCE_NUM_BIG;
         }
         else
         {
            _loc3_ = PAL_COL_NORMAL;
            this.appearanceNum = APPEARANCE_NUM_SMALL;
         }
         if(param1 >= 0)
         {
            this.appearanceNum = param1;
         }
         if(param2 >= 0)
         {
            _loc3_ = param2;
         }
         if(this.appearancePossibilities == AP_SMALL_ONLY)
         {
            this.appearanceNum = APPEARANCE_NUM_SMALL;
         }
         else if(this.appearancePossibilities == AP_BIG_ONLY)
         {
            this.appearanceNum = APPEARANCE_NUM_BIG;
         }
         graphicsMngr.recolorCharacterSheet(charNum,_loc3_,[IND_CI_Mario,IND_CI_MarioPortrait]);
         defColors = paletteMain.extractRowsAsPalette(0,_loc3_);
         if(skinNum == 2 || skinNum == 12 || skinNum == 14)
         {
            if(upgradeIsActive(MARIO_FIRE_FLOWER) && param1 == -1)
            {
               _loc4_ = true;
            }
            removeObjsFromFrames(FEATHER_NAME,FEATHER_FRAMES_SHOW_ARR,false,int(_loc4_));
         }
      }
      
      override public function forceNonwaterStats() : void
      {
         gravity = 1400;
         vyMaxPsv = classObj[VY_MAX_PSV_NORMAL_NAME];
         jumpPwr = 630;
         this.jumpPwrDef = jumpPwr;
         _canStomp = true;
         super.forceNonwaterStats();
      }
      
      override public function hitPickup(param1:Pickup, param2:Boolean = true) : void
      {
         var _loc3_:Boolean = upgradeIsActive(MARIO_FIRE_FLOWER);
         if(param1.type == MARIO_FIRE_FLOWER && !upgradeIsActive(MUSHROOM))
         {
            param1.type = MUSHROOM;
         }
         super.hitPickup(param1,param2);
         switch(param1.type)
         {
            case MUSHROOM:
               this.changeAppearance();
               break;
            case MARIO_FIRE_FLOWER:
               if(!upgradeIsActive(MUSHROOM))
               {
                  this.hitPickup(new Pickup(MUSHROOM));
               }
               else if(!_loc3_)
               {
                  super.getMushroom();
                  this.changeAppearance();
               }
               break;
            case PickupInfo.STAR:
         }
      }
      
      override protected function movePlayer() : void
      {
         if(rhtBtn && !lftBtn && !wallOnRight && cState != ST_CROUCH)
         {
            if(this.justCrouched)
            {
               this.justCrouched = false;
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
            vx += ax * dt;
            if(onGround)
            {
               scaleX = 1;
               if(vx < 0)
               {
                  vx *= Math.pow(this.fxSkid,dt);
               }
            }
            else if(level.waterLevel)
            {
               scaleX = 1;
            }
         }
         else if(lftBtn && !rhtBtn && !wallOnLeft && cState != ST_CROUCH)
         {
            if(this.justCrouched)
            {
               this.justCrouched = false;
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
            vx -= ax * dt;
            if(onGround)
            {
               scaleX = -1;
               if(vx > 0)
               {
                  vx *= Math.pow(this.fxSkid,dt);
               }
            }
            else if(level.waterLevel)
            {
               scaleX = -1;
            }
         }
         else if(cState == ST_SKID)
         {
            vx *= Math.pow(this.fxSkid,dt);
         }
         else if(cState == ST_CROUCH || atkBtn && (lftBtn && rhtBtn || !lftBtn && !rhtBtn && onGround))
         {
            vx *= Math.pow(classObj[FX_RUN_CROUCH_NAME],dt);
            if(vx > 0 && vx < this.MIN_WALK_SPEED || vx < 0 && vx > -this.MIN_WALK_SPEED)
            {
               vx = 0;
            }
         }
         else if(lftBtn && rhtBtn || !lftBtn && !rhtBtn && onGround)
         {
            vx *= Math.pow(this.fxWalk,dt);
            if(vx > 0 && vx < this.MIN_WALK_SPEED || vx < 0 && vx > -this.MIN_WALK_SPEED)
            {
               vx = 0;
            }
         }
         if(atkBtn && !level.waterLevel && currentFrameLabel != this.convLab(FL_CROUCH))
         {
            vxMax = this.MAX_RUN_SPEED;
         }
         if(vx > vxMax)
         {
            vx = vxMax;
         }
         if(vx < -vxMax)
         {
            vx = -vxMax;
         }
         if(!atkBtn)
         {
            if(vx > vxMaxDef || vx < -vxMaxDef)
            {
               if(rhtBtn || lftBtn)
               {
                  vx *= Math.pow(FX_RUN_TO_WALK,dt);
               }
            }
            else
            {
               vxMax = vxMaxDef;
            }
         }
         if(onGround)
         {
            if(vx > 0)
            {
               if(vx >= this.WALK_TMR_1_MIN_VX && vx <= this.WALK_TMR_2_MIN_VX)
               {
                  mainAnimTmr = this.walkAnimTmr1;
               }
               else if(vx > this.WALK_TMR_2_MIN_VX && vx <= this.WALK_TMR_3_MIN_VX)
               {
                  mainAnimTmr = this.walkAnimTmr2;
               }
               else if(vx > this.WALK_TMR_3_MIN_VX && vx <= this.RUN_TMR_1_MIN_VX)
               {
                  mainAnimTmr = this.walkAnimTmr3;
               }
               else if(vx > this.RUN_TMR_1_MIN_VX && vx <= this.RUN_TMR_2_MIN_VX)
               {
                  mainAnimTmr = this.runAnimTmr1;
               }
               else
               {
                  mainAnimTmr = this.runAnimTmr2;
               }
            }
            else if(vx <= this.WALK_TMR_1_MIN_VX && vx >= -this.WALK_TMR_2_MIN_VX)
            {
               mainAnimTmr = this.walkAnimTmr1;
            }
            else if(vx < -this.WALK_TMR_2_MIN_VX && vx >= -this.WALK_TMR_3_MIN_VX)
            {
               mainAnimTmr = this.walkAnimTmr2;
            }
            else if(vx < -this.WALK_TMR_3_MIN_VX && vx >= -this.RUN_TMR_1_MIN_VX)
            {
               mainAnimTmr = this.walkAnimTmr3;
            }
            else if(vx < -this.RUN_TMR_1_MIN_VX && vx >= -this.RUN_TMR_2_MIN_VX)
            {
               mainAnimTmr = this.runAnimTmr1;
            }
            else
            {
               mainAnimTmr = this.runAnimTmr2;
            }
            if(mainAnimTmr == this.runAnimTmr2)
            {
               canCrossSmallGaps = true;
            }
            else
            {
               canCrossSmallGaps = false;
            }
         }
         else if(!level.waterLevel)
         {
            if(this is Mario && skinNum == 5)
            {
               mainAnimTmr = ANIM_VERY_SLOW_TMR;
            }
            else
            {
               mainAnimTmr = this.ANIM_TMR_FOR_JUMP;
            }
         }
         else
         {
            mainAnimTmr = this.SWIM_ANIM_TMR;
         }
         if(cState == ST_VINE || cState == ST_FLAG_SLIDE)
         {
            if(vy == 0)
            {
               stopAnim = true;
            }
            else
            {
               stopAnim = false;
            }
            mainAnimTmr = vineAnimTmr;
         }
         if(this.useEnterPipeVxMax)
         {
            vxMax = ENTER_PIPE_VX_MAX;
         }
         if(onGround && vx == 0 && cState != ST_CROUCH)
         {
            if(rhtBtn && wallOnRight)
            {
               scaleX = 1;
            }
            else if(lftBtn && wallOnLeft)
            {
               scaleX = -1;
            }
         }
      }
      
      override public function activateWatchModeEnterPipe() : void
      {
         super.activateWatchModeEnterPipe();
         this.useEnterPipeVxMax = true;
      }
      
      public function getRealBounds(param1:DisplayObject) : Rectangle
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Rectangle = param1.getBounds(param1);
         var _loc4_:BitmapData = new BitmapData(int(_loc3_.width + 0.5),int(_loc3_.height + 0.5),true,0);
         var _loc5_:Matrix = new Matrix();
         _loc5_.translate(-_loc3_.x,-_loc3_.y);
         _loc4_.draw(param1,_loc5_,new ColorTransform(1,1,1,1,255,-255,-255,255));
         _loc2_ = _loc4_.getColorBoundsRect(4278190080,4278190080);
         _loc2_.x += _loc3_.x;
         _loc2_.y += _loc3_.y;
         _loc4_.dispose();
         return _loc2_;
      }
      
      override protected function checkState() : void
      {
         var _loc1_:String = null;
         if(cState == ST_VINE)
         {
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(cState == ST_DIE)
         {
            return;
         }
         if(onGround)
         {
            if(atkBtn)
            {
               ax = classObj[AX_RUN_NAME];
            }
            else
            {
               ax = classObj[AX_DEFAULT_NAME];
            }
            jumped = false;
            if(vx == 0 && !lftBtn && !rhtBtn && (!this.canCrouch() || this.canCrouch() && !dwnBtn))
            {
               setState(ST_STAND);
               if(!upgradeIsActive(MARIO_FIRE_FLOWER) || !this.shoot)
               {
                  if(!upBtn)
                  {
                     setStopFrame(FL_STAND);
                  }
                  else
                  {
                     setStopFrame(FL_STAND_UP);
                  }
               }
               else
               {
                  setStopFrame(FL_SHOOT);
               }
            }
            else if(this.canCrouch() && dwnBtn)
            {
               setState(ST_CROUCH);
               this.justCrouched = true;
               setStopFrame(FL_CROUCH);
            }
            else if(vx > this.skidThreshold && lftBtn)
            {
               setState(ST_SKID);
               setStopFrame(FL_SKID);
            }
            else if(vx < -this.skidThreshold && rhtBtn)
            {
               setState(ST_SKID);
               setStopFrame(FL_SKID);
            }
            else if(cState == ST_SKID && vx >= 0 && lftBtn)
            {
               setStopFrame(FL_SKID);
            }
            else if(cState == ST_SKID && vx <= 0 && rhtBtn)
            {
               setStopFrame(FL_SKID);
            }
            else if(pulledLeft && !rhtBtn && !lftBtn || pulledRight && !lftBtn && !rhtBtn)
            {
               setState(ST_STAND);
               setStopFrame(FL_STAND);
            }
            else if(upgradeIsActive(MARIO_FIRE_FLOWER) && cState == ST_WALK)
            {
               if(!this.shoot)
               {
                  setPlayFrame(getParFrame(this.BASE_FL_WALK));
               }
               else if(!this.singleFirePowerFrame)
               {
                  setPlayFrame(getParFrame(this.BASE_FL_WALK_SHOOT));
               }
            }
            else if(cState != ST_WALK)
            {
               if(!upgradeIsActive(MARIO_FIRE_FLOWER))
               {
                  setPlayFrame(FL_WALK_START);
               }
               else if(!this.shoot)
               {
                  setPlayFrame(FL_WALK_START);
               }
               else if(!this.singleFirePowerFrame)
               {
                  setPlayFrame(FL_WALK_SHOOT_START);
               }
               setState(ST_WALK);
            }
         }
         else if(level.waterLevel)
         {
            if(cState != "paddle" && cState != "jump")
            {
               setPlayFrame("swimStillStart");
               setState(ST_JUMP);
            }
            if(pulledLeft || pulledRight)
            {
               if(vx > 0 && vx < 60 || vx < 0 && vx > -60)
               {
                  ax = AX_PIT_VACUUM_SLOW_SPEED;
               }
               else
               {
                  ax = AX_PIT_VACUUM;
               }
            }
            else
            {
               ax = classObj[AX_DEFAULT_NAME];
            }
         }
         else
         {
            setState(ST_JUMP);
            if(!jumped && !this.hasFallFrame)
            {
               stopAnim = true;
            }
            if(this.jumpRise)
            {
               if(ny <= this.jumpEnd)
               {
                  ny = this.jumpEnd;
                  this.setJumpRise(false);
               }
               else if(releasedJumpBtn && ny <= this.jumpEndMin)
               {
                  ny = this.jumpEndMin;
                  this.setJumpRise(false);
               }
            }
            _loc1_ = currentLabel;
            if(_loc1_ == this.convLab(FL_STAND) || _loc1_ == this.convLab(FL_CLIMB_START) || _loc1_ == this.convLab(FL_CLIMB_END))
            {
               setPlayFrame(FL_JUMP_START);
            }
            else if(_loc1_ == this.convLab(FL_SKID))
            {
               setStopFrame(walkEndLab);
            }
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
            if(this.hasFallFrame && vy >= 0 && _loc1_ != this.convLab(FL_FALL_START) && _loc1_ != this.convLab(FL_FALL_END) && _loc1_ != this.convLab(FL_CROUCH) && !this.shoot)
            {
               setPlayFrame(FL_FALL_START);
            }
         }
         if(stuckInWall && !disableStuckInWallShift && this.jumpRise)
         {
            this.setJumpRise(false);
         }
      }
      
      private function canCrouch() : Boolean
      {
         if(this.hasSmallCrouchFrame || upgradeIsActive(MUSHROOM))
         {
            return true;
         }
         return false;
      }
      
      override public function gravityPull() : void
      {
         if(lastOnGround && !onGround && !jumped && (vx > -this.MIN_RUN_OVER_GAP_SPEED && vx < this.MIN_RUN_OVER_GAP_SPEED))
         {
            FALL_BTWN_TMR.reset();
            FALL_BTWN_TMR.start();
            _fallBtwn = true;
         }
         this.originalGravityPull();
      }
      
      override protected function originalGravityPull() : void
      {
         super.originalGravityPull();
      }
      
      override protected function jump() : void
      {
         onGround = false;
         if(!level.waterLevel)
         {
            if(Math.abs(vx) >= this.JUMP_HEIGHT_RUN_SPEED)
            {
               this.jumpEnd = ny - classObj[JUMP_HEIGHT_RUN_STR];
               vy = -classObj[JUMP_SPEED_RUN_NAME];
            }
            else
            {
               this.jumpEnd = ny - classObj[JUMP_HEIGHT_NORMAL_STR];
               vy = -classObj[JUMP_SPEED_NORMAL_NAME];
            }
            this.jumpEndMin = ny - classObj[JUMP_HEIGHT_MIN_NAME];
            this.setJumpRise(true);
         }
         else
         {
            vy = -jumpPwr;
         }
         jumped = true;
         releasedJumpBtn = false;
         frictionY = false;
         if(!level.waterLevel)
         {
            if(!upgradeIsActive(MUSHROOM))
            {
               if(dwnBtn && this.hasSmallCrouchFrame)
               {
                  setStopFrame(FL_CROUCH);
               }
               else
               {
                  setPlayFrame(FL_JUMP_START);
               }
               SND_MNGR.playSound(SFX_MARIO_JUMP_SMALL);
            }
            else
            {
               if(dwnBtn)
               {
                  setStopFrame(FL_CROUCH);
               }
               else
               {
                  setPlayFrame(FL_JUMP_START);
                  mainAnimTmr = this.ANIM_TMR_FOR_JUMP;
               }
               SND_MNGR.playSound(SFX_MARIO_JUMP_BIG);
            }
            setHitPoints();
         }
         else
         {
            SND_MNGR.playSound(SFX_GAME_STOMP);
            if(vx > this.paddleFastSpeed || vx < -this.paddleFastSpeed)
            {
               setPlayFrame("paddleFastStart");
            }
            else
            {
               setPlayFrame("paddleSlowStart");
            }
            setState("paddle");
         }
      }
      
      override public function relJmpBtn() : void
      {
         super.relJmpBtn();
         if(!releasedJumpBtn)
         {
            releasedJumpBtn = true;
            if(ny <= this.jumpEndMin)
            {
               frictionY = true;
               this.setJumpRise(false);
            }
         }
      }
      
      private function get fireBallsOnScreenCount() : int
      {
         var _loc2_:Projectile = null;
         var _loc1_:int = 0;
         for each(_loc2_ in level.PLAYER_PROJ_DCT)
         {
            if(_loc2_ is MarioFireBall)
            {
               _loc1_++;
            }
         }
         return _loc1_;
      }
      
      override public function pressAtkBtn() : void
      {
         var _loc1_:String = null;
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressAtkBtn();
         if(upgradeIsActive(MARIO_FIRE_FLOWER) && this.fireBallsOnScreenCount < this.MAX_FIREBALLS_ON_SCREEN && currentFrameLabel != this.convLab(FL_CROUCH))
         {
            level.addToLevel(new MarioFireBall(this));
            if(this.SHOOT_TMR.running)
            {
               this.SHOOT_TMR.reset();
            }
            this.SHOOT_TMR.start();
            this.shoot = true;
            _loc1_ = currentLabel;
            hitFrameLabel = _loc1_.substring(0,_loc1_.length - 2);
            if(this.singleFirePowerFrame)
            {
               setStopFrame(FL_SHOOT);
            }
            else if(!onGround)
            {
               setStopFrame(FL_SHOOT);
            }
            else
            {
               this.checkState();
            }
         }
      }
      
      override public function pressSpcBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         super.pressSpcBtn();
      }
      
      private function shootTmrHandler(param1:TimerEvent) : void
      {
         this.SHOOT_TMR.reset();
         if(this.shoot)
         {
            this.shoot = false;
            if(this.singleFirePowerFrame && cState == ST_WALK)
            {
               setPlayFrame(FL_WALK_START);
               return;
            }
            if(onGround)
            {
               this.checkState();
            }
            else if(!level.waterLevel)
            {
               if(jumped)
               {
                  setPlayFrame(FL_JUMP_START);
               }
               else
               {
                  setStopFrame(hitFrameLabel);
               }
            }
            else
            {
               setPlayFrame(hitFrameLabel);
            }
         }
      }
      
      override protected function getMushroom() : void
      {
         if(GS_MNGR.gameState == GameStates.CHARACTER_SELECT)
         {
            return;
         }
         var _loc1_:String = currentLabel;
         hitFrameLabel = _loc1_.substring(0,_loc1_.length - 2);
         hitStopAnim = stopAnim;
         this.hitMainAnimTmr = mainAnimTmr;
         setState(ST_GET_MUSHROOM);
         mainAnimTmr = this.ANIM_TMR_FOR_FREEZE;
         gotoAndStop(FL_GROW_START);
         stopAnim = false;
         freezeGame();
      }
      
      override protected function getMushroomEnd() : void
      {
         if(!upgradeIsActive(MARIO_FIRE_FLOWER))
         {
            setStopFrame(hitFrameLabel);
            mainAnimTmr = this.hitMainAnimTmr;
            stopAnim = hitStopAnim;
            setState(ST_NEUTRAL);
            this.checkState();
         }
         else
         {
            super.getMushroomEnd();
         }
         this.shoot = false;
         this.changeBrickState();
      }
      
      override protected function changeBrickState() : void
      {
         if(!upgradeIsActive(MUSHROOM))
         {
            brickState = BRICK_BOUNCER;
         }
         else
         {
            brickState = BRICK_BREAKER;
         }
      }
      
      override protected function takeDamageStart(param1:LevObj) : void
      {
         super.takeDamageStart(param1);
         SND_MNGR.playSound(SFX_GAME_PIPE);
         freezeGame();
         STAT_MNGR.removeCharUpgrade(charNum,MARIO_FIRE_FLOWER);
         setDamageInfoArr();
         setState(ST_TAKE_DAMAGE);
         lockState = true;
         this.hitAnimation();
         alpha = TD_ALPHA;
         if(GameSettings.classicMode && GameSettings.classicDamageResponse == ClassicDamageResponse.LoseCurrent && upgradeIsActive(MUSHROOM))
         {
            lockFrame = true;
            stopAnim = true;
            startReplaceColor();
         }
         else
         {
            lockFrame = false;
            mainAnimTmr = this.ANIM_TMR_FOR_TAKE_DAMAGE;
            gotoAndStop(FL_TAKE_DAMAGE_START);
            stopAnim = false;
         }
      }
      
      override protected function hitAnimation() : void
      {
      }
      
      override protected function swapPs() : void
      {
         if(cState == ST_TAKE_DAMAGE && nPState == PS_NORMAL)
         {
            return;
         }
         super.swapPs();
      }
      
      override protected function takeDamageEnd() : void
      {
         super.takeDamageEnd();
         if(!starPwr)
         {
            endReplaceColor();
         }
         if(nPState != 1)
         {
            return;
         }
         this.shoot = false;
         this.checkFrame();
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(param1 is Bloopa && ny == this.BLOOPA_NO_HURT_Y && onGround)
         {
            return;
         }
         super.hitEnemy(param1,param2);
      }
      
      override protected function enterPipeVert() : void
      {
         super.enterPipeVert();
         setStopFrame(FL_PIPE);
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         this.setJumpRise(false);
         if(cState == ST_CROUCH)
         {
            hitCeiling = true;
         }
         else
         {
            super.groundAbove(param1);
         }
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
         }
         else if(!this.jumpRise && param1)
         {
            defyGrav = true;
            lastOnGround = false;
            frictionY = false;
         }
         this.jumpRise = param1;
      }
      
      private function determineAppearancePossibilities() : void
      {
         this.appearancePossibilities = AP_BIG_AND_SMALL;
      }
      
      override public function setCurrentBmdSkin(param1:BmdSkinCont, param2:Boolean = false) : void
      {
         var _loc4_:String = null;
         super.setCurrentBmdSkin(param1);
         this.determineAppearancePossibilities();
         var _loc3_:Boolean = stopAnim;
         this.changeAppearance();
         if(frameIsEmpty(FL_WALK_DUR_TEST_FRAME))
         {
            walkEndLab = FL_WALK_END_NES;
         }
         else
         {
            walkEndLab = FL_WALK_END_NORMAL;
         }
         if(param1.skinNum == 0)
         {
            this.singleFirePowerFrame = false;
         }
         else
         {
            this.singleFirePowerFrame = true;
            if(upgradeIsActive(MARIO_FIRE_FLOWER) && this.shoot)
            {
               setStopFrame(FL_SHOOT);
            }
         }
         if(cState == ST_WALK && !this.shoot)
         {
            setPlayFrame(FL_WALK_START);
         }
         stopAnim = _loc3_;
         if(!frameIsEmpty(FL_FALL_TEST_FRAME))
         {
            this.hasFallFrame = true;
         }
         else
         {
            this.hasFallFrame = false;
            _loc4_ = currentLabel;
            if(_loc4_ == this.convLab(FL_FALL_START) || _loc4_ == this.convLab(FL_FALL_END))
            {
               setStopFrame(walkStartLab);
            }
         }
         if(!frameIsEmpty(FL_SMALL_CROUCH_TEST_FRAME))
         {
            this.hasSmallCrouchFrame = true;
         }
         else
         {
            this.hasSmallCrouchFrame = false;
            if(_loc4_ == this.convLab(FL_SMALL_CROUCH_TEST_FRAME))
            {
               setStopFrame(FL_STAND);
            }
         }
         if(skinNum == 4 || skinNum == 5)
         {
            this.walkAnimTmr1 = AnimationTimers.ANIM_VERY_SLOW_TMR;
            this.walkAnimTmr2 = AnimationTimers.ANIM_SLOW_TMR;
            this.walkAnimTmr3 = AnimationTimers.ANIM_SLOW_TMR;
            this.runAnimTmr1 = AnimationTimers.ANIM_MODERATE_TMR;
            this.runAnimTmr2 = AnimationTimers.ANIM_MIN_FAST_TMR;
         }
         else
         {
            this.walkAnimTmr1 = AnimationTimers.ANIM_VERY_SLOW_TMR;
            this.walkAnimTmr2 = AnimationTimers.ANIM_SLOW_TMR;
            this.walkAnimTmr3 = AnimationTimers.ANIM_MODERATE_TMR;
            this.runAnimTmr1 = AnimationTimers.ANIM_MIN_FAST_TMR;
            this.runAnimTmr2 = AnimationTimers.ANIM_FAST_TMR;
         }
         this.checkState();
      }
      
      override protected function playDefaultPickupSoundEffect() : void
      {
         SND_MNGR.playSound(SoundNames.SFX_GAME_POWER_UP);
      }
      
      override protected function prepareDrawCharacter(param1:int = -1) : void
      {
         switch(param1)
         {
            case SKIN_APPEARANCE_NUM_SMALL:
               this.changeAppearance(APPEARANCE_NUM_SMALL,PAL_COL_NORMAL);
               break;
            case SKIN_APPEARANCE_NUM_BIG:
               this.changeAppearance(APPEARANCE_NUM_BIG,PAL_COL_NORMAL);
               break;
            case SKIN_APPEARANCE_NUM_FIRE_POWER:
               this.changeAppearance(APPEARANCE_NUM_BIG,PAL_COL_FIRE_FLOWER);
               break;
            default:
               this.changeAppearance();
         }
         drawFrameLabel = this.convLab(FL_STAND);
         super.prepareDrawCharacter(param1);
      }
      
      override protected function initiateNormalDeath(param1:LevObj = null) : void
      {
         super.initiateNormalDeath(param1);
         SND_MNGR.changeMusic(MusicType.DIE);
         this.setJumpRise(false);
         stopAnim = true;
         stopHit = true;
         stopUpdate = true;
         this.changeAppearance(APPEARANCE_NUM_SMALL,PAL_COL_NORMAL);
         setStopFrame("die");
         lockFrame = true;
         onGround = false;
         gravity = this.DIE_GRAVITY;
         this.dieFreezeTmr = new CustomTimer(this.DIE_FREEZE_TMR_DUR,1);
         addTmr(this.dieFreezeTmr);
         this.dieFreezeTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.dieFreezeTmrLsr,false,0,true);
         this.dieFreezeTmr.start();
      }
      
      override protected function initiatePitDeath() : void
      {
         _dieTmrDel = this.DIE_TMR_DEL_PIT;
         super.initiatePitDeath();
         SND_MNGR.changeMusic(MusicType.DIE);
      }
      
      override public function slideDownFlagPole() : void
      {
         super.slideDownFlagPole();
         this.shoot = false;
         setPlayFrame("climbStart");
         nx = level.flagPole.hMidX;
         mainAnimTmr = this.FLAG_POLE_SLIDE_ANIM_TMR;
      }
      
      override public function stopFlagPoleSlide() : void
      {
         super.stopFlagPoleSlide();
         scaleX = -scaleX;
         setStopFrame("climbStart");
         lockFrame = true;
      }
      
      override public function getAxe(param1:BowserAxe) : void
      {
         super.getAxe(param1);
         if(level.levNum == STAT_MNGR.DUNGEON_LEVEL_NUM)
         {
            this.fxWalk = FX_DUNGEON_GOT_AXE;
         }
      }
      
      override protected function getOnVine(param1:Vine) : void
      {
         var _loc2_:Boolean = false;
         if(nx > param1.hMidX)
         {
            _loc2_ = true;
         }
         super.getOnVine(param1);
         if(_loc2_)
         {
            nx += this.CLIMB_OFFSET_X;
            scaleX = -1;
         }
         else
         {
            nx -= this.CLIMB_OFFSET_X;
            scaleX = 1;
         }
      }
      
      override protected function flagDelayTmrLsr(param1:TimerEvent) : void
      {
         lockFrame = false;
         super.flagDelayTmrLsr(param1);
         nx += this.FLAG_POLE_X_OFS;
         this.x = nx;
         level.rightScrollPosOvRd = localToGlobal(ZERO_PT).x;
         if(level.waterLevel)
         {
            setPlayFrame("swimStillStart");
            setState(ST_JUMP);
            jumped = true;
         }
      }
      
      private function dieFreezeTmrLsr(param1:TimerEvent) : void
      {
         this.dieFreezeTmr.stop();
         this.dieFreezeTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.dieFreezeTmrLsr);
         this.dieFreezeTmr = null;
         EVENT_MNGR.startDieTmr(this.DIE_TMR_DEL_NORMAL);
         stopUpdate = false;
         gravity = this.DIE_GRAVITY;
         vyMaxPsv = this.DIE_VY_MAX_PSV;
         vy = -this.DIE_BOOST;
         jumped = true;
         frictionY = false;
      }
      
      override public function pressJmpBtn() : void
      {
         if(cState == ST_VINE)
         {
            return;
         }
         if(onGround || level.waterLevel && underWater)
         {
            this.jump();
         }
         super.pressJmpBtn();
      }
      
      override public function fallenCharSelScrn() : void
      {
         super.fallenCharSelScrn();
         cancelCheckState = true;
         setStopFrame(FL_DIE);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         var _loc2_:String = currentFrameLabel;
         if((cState == "walk" || cState == "pipe") && _loc1_ == getLabNum(walkEndLab) + 1)
         {
            setPlayFrame(FL_WALK_START);
         }
         else if(cState == ST_GET_MUSHROOM && _loc2_ == FL_GROW_END)
         {
            setStopFrame(hitFrameLabel);
         }
         else if(_loc1_ == getLabNum(FL_JUMP_END) + 1 && !underWater)
         {
            setPlayFrame(FL_JUMP_START);
         }
         else if(_loc1_ == getLabNum(FL_FALL_END) + 1 && !underWater)
         {
            setPlayFrame(FL_FALL_START);
         }
         else if(cState == ST_TAKE_DAMAGE && _loc2_ == FL_TAKE_DAMAGE_END)
         {
            gotoAndStop(hitFrameLabel + "_1");
            stopAnim = true;
         }
         else if(cState == ST_FLAG_SLIDE || cState == ST_VINE)
         {
            if(_loc1_ == getLabNum(FL_CLIMB_END) + 1)
            {
               setPlayFrame(FL_CLIMB_START);
            }
         }
         else if(level.waterLevel)
         {
            if(cState == "jump" && _loc1_ == getLabNum("swimStillEnd") + 1)
            {
               setPlayFrame("swimStillStart");
            }
            else if(cState == "paddle")
            {
               if(_loc1_ == getLabNum("paddleSlowEnd") + 1 || currentFrame == getLabNum("paddleFastEnd") + 1)
               {
                  setPlayFrame("swimStillStart");
                  setState("jump");
               }
            }
         }
         super.checkFrame();
      }
      
      override protected function get currentSkinAppearanceNum() : int
      {
         if(level is TitleLevel)
         {
            return SKIN_APPEARANCE_NUM_SMALL;
         }
         if(upgradeIsActive(MARIO_FIRE_FLOWER))
         {
            return SKIN_APPEARANCE_NUM_FIRE_POWER;
         }
         if(upgradeIsActive(MUSHROOM))
         {
            return SKIN_APPEARANCE_NUM_BIG;
         }
         return SKIN_APPEARANCE_NUM_SMALL;
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(fellInPit)
         {
            this.changeAppearance();
         }
      }
      
      override public function checkStgPos() : void
      {
         if(dead)
         {
            return;
         }
         super.checkStgPos();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.SHOOT_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.SHOOT_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.shootTmrHandler,false,0,true);
      }
   }
}
