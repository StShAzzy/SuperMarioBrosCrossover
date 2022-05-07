package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxFreeze;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.DamageValue;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.MegaManSimpleGraphics;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.level.Level;
   import com.smbc.main.LevObj;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class MegaManProjectile extends Projectile
   {
      
      private static const FL_BASS_BUSTER:String = "bassBuster";
      
      private static const FL_FLAME_BLAST_BULLET:String = "flameBlastBullet";
      
      private static const FL_FLAME_BLAST_FLAME_END:String = "flameBlastFlameEnd";
      
      private static const FL_FLAME_BLAST_FLAME_START:String = "flameBlastFlameStart";
      
      private static const FL_HARD_KNUCKLE_START:String = "hardKnuckleStart";
      
      private static const FL_HARD_KNUCKLE_END:String = "hardKnuckleEnd";
      
      private static const FL_HARD_KNUCKLE_APPEAR_START:String = "hardKnuckleAppearStart";
      
      private static const FL_HARD_KNUCKLE_APPEAR_END:String = "hardKnuckleAppearEnd";
      
      private static const FL_MAGMA_BAZOOKA_START:String = "magmaBazookaStart";
      
      private static const FL_MAGMA_BAZOOKA_END:String = "magmaBazookaEnd";
      
      private static const FL_MAGMA_BAZOOKA_CHARGE_START:String = "magmaBazookaChargeStart";
      
      private static const FL_MAGMA_BAZOOKA_CHARGE_END:String = "magmaBazookaChargeEnd";
      
      private static const FL_METAL_BLADE_END:String = "metalBladeEnd";
      
      private static const FL_METAL_BLADE_START:String = "metalBladeStart";
      
      private static const FL_MEGA_BUSTER:String = "megaBuster";
      
      private static const FL_PHARAOH_BALLOON_START:String = "pharaohBalloonStart";
      
      private static const FL_PHARAOH_BALLOON_END:String = "pharaohBalloonEnd";
      
      private static const FL_PHARAOH_BIG_END:String = "pharaohBigEnd";
      
      private static const FL_PHARAOH_BIG_START:String = "pharaohBigStart";
      
      private static const FL_PHARAOH_CHARGE_LEVEL_2:String = "pharaohChargeLevel2";
      
      private static const FL_PHARAOH_MEDIUM:String = "pharaohMedium";
      
      private static const FL_PHARAOH_SMALL:String = "pharaohSmall";
      
      private static const FL_SCREW_CRUSHER_END:String = "screwCrusherEnd";
      
      private static const FL_SCREW_CRUSHER_START:String = "screwCrusherStart";
      
      private static const FL_STRONG_CHARGE_END:String = "strongChargeEnd";
      
      private static const FL_STRONG_CHARGE_START:String = "strongChargeStart";
      
      private static const FL_WATER_SHIELD:String = "waterShield";
      
      private static const FL_WATER_SHIELD_EXPLOSION:String = "waterShieldExplosion";
      
      private static const FL_WEAK_CHARGE_END:String = "weakChargeEnd";
      
      private static const FL_WEAK_CHARGE_START:String = "weakChargeStart";
      
      public static const TYPE_BASS_BUSTER:String = "bassBuster";
      
      public static const TYPE_CHARGE_STRONG:String = "chargeStrong";
      
      public static const TYPE_CHARGE_WEAK:String = "chargeWeak";
      
      public static const TYPE_FLAME_BLAST:String = "flameBlast";
      
      public static const TYPE_HARD_KNUCKLE:String = "hardKnuckle";
      
      public static const TYPE_MAGMA_BAZOOKA:String = "magmaBazooka";
      
      public static const TYPE_MAGMA_BAZOOKA_CHARGE:String = "magmaBazookaCharge";
      
      public static const TYPE_MEGA_BUSTER:String = "megaBuster";
      
      public static const TYPE_METAL_BLADE:String = "metalBlade";
      
      public static const TYPE_PHARAOH_SHOT:String = "pharaohShot";
      
      public static const TYPE_PHARAOH_BALLOON:String = "pharaohBalloon";
      
      public static const TYPE_SCREW_CRUSHER:String = "screwCrusher";
      
      public static const TYPE_SUPER_ARM:String = PickupInfo.MEGA_MAN_SUPER_ARM;
      
      public static const TYPE_WATER_SHIELD:String = "waterShield";
      
      public static const MB_UP:String = "up";
      
      public static const MB_MID:String = "mid";
      
      public static const MB_DOWN:String = "down";
      
      public static const FL_SUPER_ARM:String = "superArm";
      
      private static const X_OFS:int = 38;
      
      public static const Y_PAD_BOT_ON_GROUND:int = 26;
      
      public static const Y_PAD_BOT_OFF_GROUND:int = 34;
      
      public static const Y_PAD_BOT_ON_GROUND_PROTO:int = 19;
      
      public static const Y_PAD_BOT_OFF_GROUND_PROTO:int = 31;
      
      public static const Y_PAD_BOT_ON_GROUND_ROKKO:int = 22;
      
      public static const Y_PAD_BOT_OFF_GROUND_ROKKO:int = 32;
      
      private static const ANIM_FAST_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private static const SPEED:int = 450;
      
      private static const BASS_BUSTER_SPEED:int = 580;
      
      private static const VY_DEFLECT:int = 350;
      
      private static const FLAME_BLAST_SPEED:int = 450;
      
      private static const FLAME_BLAST_GRAVITY:int = 1300;
      
      private static const METAL_BLADE_SPEED:int = 450;
      
      private static const HARD_KNUCKLE_AX:int = 450;
      
      private static const HARD_KNUCKLE_VX_MAX:int = 350;
      
      private static const HARD_KNUCKLE_VY:int = 50;
      
      private static const MAGMA_BAZOOKA_SPEED:int = 450;
      
      private static const SCREW_CRUSHER_SPEED:int = 450;
      
      private static const WATER_SHIELD_RADIUS_DEF:int = 45;
      
      private static const WATER_SHIELD_EXPAND_SPEED:int = 5;
      
      private static const WATER_SHIELD_ROTATE_SPEED:Number = 4;
      
      public static const WATER_SHIELD_NUM:int = 8;
      
      public static const WATER_SHIELD_TMR_INT:int = WATER_SHIELD_ROTATE_SPEED * 48;
      
      private static const WATER_SHIELD_SPACE_BTW:Number = 2;
      
      private static const ANGLE_FULL_CIRCLE:Number = Math.PI * 2;
      
      private static const PHARAOH_BALLOON_APPEAR_DEL:int = 250;
      
      public static const PHARAOH_CHARGE_LOW:int = 0;
      
      public static const PHARAOH_CHARGE_MED:int = 1;
      
      public static const PHARAOH_CHARGE_FULL:int = 2;
      
      private static const PHARAOH_BALLOON_Y_OFS:int = 30;
      
      private static const PHARAOH_BALLOON_SPEED:int = 75;
      
      private static const PHARAOH_BALLOON_MAX_X_OFS:int = 20;
      
      private static const PHARAOH_ANIM_TMR_DEL:int = AnimationTimers.DEL_SLOW;
       
      
      private var type:String;
      
      private var subType:String;
      
      private var superArmBrick:Brick;
      
      private var megaMan:MegaManBase;
      
      private var waterShieldAngle:Number = 0;
      
      private var waterShieldRadius:Number = 45;
      
      private var waterShieldExpandPnt:Point;
      
      private var waterShieldDir:int;
      
      public var pharaohChargeLevel:int;
      
      private var pharaohBalloonDelTmr:GameLoopTimer;
      
      public function MegaManProjectile(param1:MegaManBase, param2:String, param3:Object = null)
      {
         var _loc4_:StatusProperty = null;
         this.megaMan = param1;
         this.type = param2;
         if(param2 == TYPE_SUPER_ARM)
         {
            this.superArmBrick = param3 as Brick;
         }
         else if(param2 == TYPE_MAGMA_BAZOOKA || param2 == TYPE_MAGMA_BAZOOKA_CHARGE)
         {
            this.subType = param3 as String;
         }
         else if(param2 == TYPE_WATER_SHIELD)
         {
            this.waterShieldAngle = param3 as Number;
         }
         else if(param2 == TYPE_PHARAOH_SHOT)
         {
            this.pharaohChargeLevel = param3 as int;
         }
         inheritedForceShortClassName = CharacterInfo.CHAR_ARR[param1.charNum][CharacterInfo.IND_CHAR_NAME_CLASS] + "Projectile";
         super(param1,SOURCE_TYPE_PLAYER);
         for each(_loc4_ in MegaManBase.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc4_);
         }
         this.determineShotType();
      }
      
      public static function createWaterShield(param1:MegaManBase) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:MegaManProjectile = null;
         var _loc2_:Number = ANGLE_FULL_CIRCLE / WATER_SHIELD_NUM;
         var _loc3_:int = 0;
         while(_loc3_ < WATER_SHIELD_NUM)
         {
            _loc4_ = _loc2_ * _loc3_;
            _loc5_ = new MegaManProjectile(param1,TYPE_WATER_SHIELD,_loc4_);
            Level.levelInstance.addToLevel(_loc5_);
            param1.waterShieldDct.addItem(_loc5_);
            _loc3_++;
         }
      }
      
      private function determineShotType() : void
      {
         switch(this.type)
         {
            case TYPE_MEGA_BUSTER:
               this.megaBusterShot();
               break;
            case TYPE_BASS_BUSTER:
               this.bassBuster();
               break;
            case TYPE_CHARGE_WEAK:
               this.weakChargeShot();
               break;
            case TYPE_CHARGE_STRONG:
               this.strongChargeShot();
               break;
            case TYPE_SUPER_ARM:
               gotoAndStop(FL_SUPER_ARM);
               stopAnim = true;
               visible = false;
               vx = 280 * this.megaMan.scaleX;
               vy = -320;
               gravity = 1600;
               x = this.superArmBrick.x + TILE_SIZE / 2;
               y = this.superArmBrick.y + TILE_SIZE / 2;
               defyGrav = false;
               addAllGroundToHitTestables();
               _damageAmt = DamageValue.MEGA_MAN_SUPER_ARM;
               addProperty(new StatusProperty(PR_PIERCE_AGG));
               break;
            case TYPE_METAL_BLADE:
               gotoAndStop(FL_METAL_BLADE_START);
               this.metalBladeSetDir();
               defyGrav = true;
               stopAnim = false;
               addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
               mainAnimTmr = AnimationTimers.ANIM_MODERATE_TMR;
               _damageAmt = DamageValue.MEGA_MAN_METAL_BLADE;
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_METAL_BLADE);
               break;
            case TYPE_HARD_KNUCKLE:
               this.hardKnuckle();
               break;
            case TYPE_PHARAOH_BALLOON:
               this.pharaohBalloon();
               break;
            case TYPE_PHARAOH_SHOT:
               this.pharaohShot();
               break;
            case TYPE_FLAME_BLAST:
               this.flameBlast();
               break;
            case TYPE_MAGMA_BAZOOKA:
               this.magmaBazooka();
               break;
            case TYPE_MAGMA_BAZOOKA_CHARGE:
               this.magmaBazooka();
               break;
            case TYPE_WATER_SHIELD:
               this.waterShield();
               break;
            case TYPE_SCREW_CRUSHER:
               gotoAndStop(FL_SCREW_CRUSHER_START);
               this.screwCrusher();
               gravity = 1500;
               defyGrav = false;
               stopAnim = false;
               mainAnimTmr = AnimationTimers.ANIM_MODERATE_TMR;
               _damageAmt = DamageValue.MEGA_MAN_SCREW_CRUSHER;
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_METAL_BLADE);
         }
      }
      
      private function hardKnuckle() : void
      {
         this.setDir();
         vx = 0;
         defyGrav = true;
         stopAnim = false;
         vxMax = HARD_KNUCKLE_VX_MAX;
         addProperty(new StatusProperty(PR_PIERCE_AGG,10));
         EVENT_MNGR.addEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler,false,0,true);
         stopHit = true;
         accurateAnimTmr = new GameLoopTimer(MegaManSimpleGraphics.EXPLOSION_ANIM_TMR_DEL);
         gotoAndStop(FL_HARD_KNUCKLE_APPEAR_START);
         _damageAmt = DamageValue.MEGA_MAN_HARD_KNUCKLE;
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_SHOOT);
      }
      
      protected function levelSetIndexesHandler(param1:Event) : void
      {
         if(this.type == TYPE_HARD_KNUCKLE && parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      private function metalBladeSetDir() : void
      {
         x = this.megaMan.hMidX;
         y = this.megaMan.hMidY;
         var _loc1_:Boolean = this.megaMan.upBtn;
         var _loc2_:Boolean = this.megaMan.lftBtn;
         var _loc3_:Boolean = this.megaMan.rhtBtn;
         var _loc4_:Boolean = this.megaMan.dwnBtn;
         var _loc5_:int = METAL_BLADE_SPEED;
         if(_loc1_)
         {
            vy = -_loc5_;
         }
         else if(_loc4_)
         {
            vy = _loc5_;
         }
         if(_loc3_ || _loc2_ || !_loc1_ && !_loc4_)
         {
            vx = _loc5_ * this.megaMan.scaleX;
         }
         if(vx != 0 && vy != 0)
         {
            vx *= 0.75;
            vy *= 0.75;
         }
      }
      
      private function screwCrusher() : void
      {
         x = this.megaMan.hMidX + 48 * this.megaMan.scaleX;
         y = this.megaMan.hMidY;
         var _loc1_:int = SCREW_CRUSHER_SPEED;
         vx = _loc1_ * this.megaMan.scaleX * (1 / 3);
         vy = -_loc1_ * 1.25;
      }
      
      private function bassBusterSetDir() : void
      {
         var _loc5_:int = 0;
         var _loc1_:Boolean = this.megaMan.upBtn;
         var _loc2_:Boolean = this.megaMan.lftBtn;
         var _loc3_:Boolean = this.megaMan.rhtBtn;
         var _loc4_:Boolean = this.megaMan.dwnBtn;
         _loc5_ = xSpeed;
         if(_loc1_ && !(_loc3_ || _loc2_))
         {
            vy = -_loc5_;
            x -= 28 * scaleX;
            y -= 20;
            if(scaleX > 0)
            {
               rotation = 270;
            }
            else
            {
               rotation = 90;
            }
         }
         else if(_loc1_ && (_loc3_ || _loc2_))
         {
            vx = _loc5_ * this.megaMan.scaleX;
            vy = -_loc5_;
            x -= 6 * scaleX;
            y -= 14;
            if(scaleX > 0)
            {
               rotation = 315;
            }
            else
            {
               rotation = 45;
            }
         }
         else if(_loc4_)
         {
            vx = _loc5_ * this.megaMan.scaleX;
            vy = _loc5_;
            y += 14;
            x -= 6 * scaleX;
            if(scaleX > 0)
            {
               rotation = 45;
            }
            else
            {
               rotation = 315;
            }
         }
         else
         {
            vx = _loc5_ * this.megaMan.scaleX;
         }
         if(vx != 0 && vy != 0)
         {
            vx *= 0.75;
            vy *= 0.75;
         }
         if(!this.megaMan.rotateBassBuster)
         {
            rotation = 0;
         }
      }
      
      private function flameBlastExplode(param1:Ground, param2:String) : void
      {
         L_HIT_DCT.clear();
         C_HIT_DCT.clear();
         needsAccurateGroundHits = false;
         vx = 0;
         vy = 0;
         gotoAndStop(FL_FLAME_BLAST_FLAME_START);
         stopAnim = false;
         defyGrav = true;
         removeHitTestableItem(HT_GROUND_NON_BRICK);
         removeHitTestableItem(HT_PLATFORM);
         _damageAmt = DamageValue.MEGA_MAN_FLAME_BLAST_FLAME;
         if(param2 == Ground.HT_BOTTOM)
         {
            ny = param1.hTop;
         }
         else if(param2 == Ground.HT_TOP)
         {
            ny = param1.hBot;
            rotation = 180;
         }
         else if(param2 == Ground.HT_LEFT)
         {
            nx = param1.hRht;
            rotation = 90;
         }
         else if(param2 == Ground.HT_RIGHT)
         {
            nx = param1.hLft;
            rotation = 270;
         }
      }
      
      private function bassBuster() : void
      {
         stopAnim = true;
         gotoAndStop(FL_BASS_BUSTER);
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_SHOOT);
         _damageAmt = DamageValue.MEGA_MAN_BASS_BUSTER;
         defyGrav = true;
         xSpeed = BASS_BUSTER_SPEED;
         this.setDir();
         vx = 0;
         this.bassBusterSetDir();
         addAllGroundToHitTestables();
         mainAnimTmr = null;
      }
      
      private function megaBusterShot() : void
      {
         stopAnim = true;
         if(this.megaMan.skinNum == 13)
         {
            addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         }
         if(this.megaMan.skinNum == 13)
         {
            _damageAmt = DamageValue.MEGA_MAN_MEGA_BUSTER * 1.25;
         }
         else if(this.megaMan.skinNum == 14)
         {
            _damageAmt = DamageValue.MEGA_MAN_MEGA_BUSTER * 0.75;
         }
         else
         {
            _damageAmt = DamageValue.MEGA_MAN_MEGA_BUSTER;
         }
         this.gotoAndStop(FL_MEGA_BUSTER);
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_SHOOT);
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
         mainAnimTmr = null;
      }
      
      private function weakChargeShot() : void
      {
         stopAnim = false;
         if(this.megaMan.skinNum == 13)
         {
            addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         }
         if(this.megaMan.skinNum == 13)
         {
            _damageAmt = DamageValue.MEGA_MAN_WEAK_CHARGE_NORMAL * 1.25;
         }
         else
         {
            _damageAmt = DamageValue.MEGA_MAN_WEAK_CHARGE_NORMAL;
         }
         this.gotoAndStop(FL_WEAK_CHARGE_START);
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_CHARGE_SHOT_WEAK);
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
      }
      
      private function strongChargeShot() : void
      {
         stopAnim = false;
         if(this.megaMan.skinNum == MegaMan.SKIN_CUT_MAN_NES)
         {
            addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         }
         else
         {
            addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         }
         if(this.megaMan.skinNum == MegaMan.SKIN_ICE_MAN_NES)
         {
            addProperty(new StatusProperty(StatusProperty.TYPE_FREEZE_AGG,0,new StatFxFreeze(null,MegaMan.FREEZE_DUR)));
         }
         if(this.megaMan.skinNum == MegaMan.SKIN_ICE_MAN_NES)
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_ICE_SLASHER);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_CHARGE_SHOT);
         }
         this.gotoAndStop(FL_STRONG_CHARGE_START);
         _damageAmt = DamageValue.MEGA_MAN_FULL_CHARGE_NORMAL;
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
         mainAnimTmr = ANIM_FAST_TMR;
         this.megaMan.chargeShot = this;
      }
      
      private function pharaohBalloon() : void
      {
         this.megaMan.pharaohBalloon = this;
         destroyOffScreen = false;
         this.pharaohChargeLevel = PHARAOH_CHARGE_LOW;
         addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_BIG;
         x = this.megaMan.nx;
         y = this.megaMan.ny - this.megaMan.height - PHARAOH_BALLOON_Y_OFS;
         defyGrav = true;
         visible = false;
         stopHit = true;
         accurateAnimTmr = new GameLoopTimer(PHARAOH_ANIM_TMR_DEL);
         stopAnim = true;
         this.pharaohBalloonDelTmr = new GameLoopTimer(PHARAOH_BALLOON_APPEAR_DEL,1);
         this.pharaohBalloonDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.pharaohBallonDelTmrHandler,false,0,true);
         this.pharaohBalloonDelTmr.start();
      }
      
      protected function pharaohBallonDelTmrHandler(param1:Event) : void
      {
         gotoAndStop(FL_PHARAOH_BALLOON_START);
         visible = true;
         stopHit = false;
         stopAnim = false;
         this.pharaohBalloonDelTmr.stop();
         this.pharaohBalloonDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.pharaohBallonDelTmrHandler);
         this.pharaohBalloonDelTmr = null;
      }
      
      private function pharaohBalloonUpdPos() : void
      {
         if(stopHit)
         {
            return;
         }
         var _loc1_:int = 0;
         if(this.megaMan.vx > 0)
         {
            _loc1_ = 1;
         }
         else if(this.megaMan.vx < 0)
         {
            _loc1_ = -1;
         }
         var _loc2_:Number = this.megaMan.nx - PHARAOH_BALLOON_MAX_X_OFS;
         var _loc3_:Number = this.megaMan.nx + PHARAOH_BALLOON_MAX_X_OFS;
         vx = -_loc1_ * PHARAOH_BALLOON_SPEED;
         if(_loc1_ == 0)
         {
            if(this.megaMan.scaleX > 0)
            {
               if(nx < this.megaMan.nx)
               {
                  vx = PHARAOH_BALLOON_SPEED * 2;
               }
               else if(nx > this.megaMan.nx && vx < 0)
               {
                  nx = this.megaMan.nx;
               }
            }
            else if(nx > this.megaMan.nx)
            {
               vx = -PHARAOH_BALLOON_SPEED * 2;
            }
            else if(nx < this.megaMan.nx && vx > 0)
            {
               nx = this.megaMan.nx;
            }
         }
         if(nx < _loc2_)
         {
            nx = _loc2_;
         }
         else if(nx > _loc3_)
         {
            nx = _loc3_;
         }
         ny = this.megaMan.hTop - PHARAOH_BALLOON_Y_OFS;
      }
      
      private function pharaohShot() : void
      {
         stopAnim = true;
         if(this.pharaohChargeLevel == PHARAOH_CHARGE_LOW)
         {
            gotoAndStop(FL_PHARAOH_SMALL);
            _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_SMALL;
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_PHARAOH_SHOT_SMALL);
         }
         else if(this.pharaohChargeLevel == PHARAOH_CHARGE_MED)
         {
            gotoAndStop(FL_PHARAOH_MEDIUM);
            _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_MEDIUM;
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_PHARAOH_SHOT_SMALL);
         }
         else
         {
            gotoAndStop(FL_PHARAOH_BIG_START);
            _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_BIG;
            addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
            stopAnim = false;
            accurateAnimTmr = new GameLoopTimer(PHARAOH_ANIM_TMR_DEL);
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_PHARAOH_SHOT_BIG);
         }
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
         if(this.megaMan.upBtn)
         {
            vy = -xSpeed;
         }
         else if(this.megaMan.dwnBtn)
         {
            vy = xSpeed;
         }
         if(vx != 0 && vy != 0)
         {
            vx *= 0.75;
            vy *= 0.75;
         }
      }
      
      private function flameBlast() : void
      {
         gotoAndStop(FL_FLAME_BLAST_BULLET);
         stopAnim = true;
         _damageAmt = DamageValue.MEGA_MAN_FLAME_BLAST_BULLET;
         addAllGroundToHitTestables();
         this.setDir();
         vx = FLAME_BLAST_SPEED * scaleX;
         gravity = FLAME_BLAST_GRAVITY;
         needsAccurateGroundHits = true;
         accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_MIN_FAST);
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_SHOOT);
      }
      
      private function magmaBazooka() : void
      {
         this.setDir();
         this.magmaBazookaSetDir();
         defyGrav = true;
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_MAGMA_BAZOOKA);
         if(this.type == TYPE_MAGMA_BAZOOKA)
         {
            gotoAndStop(FL_MAGMA_BAZOOKA_START);
            _damageAmt = DamageValue.MEGA_MAN_MAGMA_BAZOOKA;
         }
         else
         {
            gotoAndStop(FL_MAGMA_BAZOOKA_CHARGE_START);
            addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
            _damageAmt = DamageValue.MEGA_MAN_MAGMA_BAZOOKA_CHARGE;
         }
      }
      
      private function waterShield() : void
      {
         if(this.waterShieldAngle > 0)
         {
            visible = false;
            stopHit = true;
         }
         destroyOffScreen = false;
         this.waterShieldDir = this.megaMan.scaleX;
         if(this.waterShieldDir < 0)
         {
            this.waterShieldAngle -= ANGLE_FULL_CIRCLE / 2;
         }
         gotoAndStop(FL_WATER_SHIELD);
         x = this.megaMan.nx + this.waterShieldRadius * this.waterShieldDir;
         y = this.megaMan.hMidY;
         vx = 0;
         vy = 0;
         _damageAmt = DamageValue.MEGA_MAN_WATER_SHIELD;
         stopAnim = true;
         defyGrav = true;
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_WATER_SHIELD);
      }
      
      public function waterShieldExpandInit() : void
      {
         if(!this.waterShieldExpandPnt)
         {
            destroyOffScreen = true;
            this.waterShieldExpandPnt = new Point(this.megaMan.nx,this.megaMan.hMidY);
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_WATER_SHIELD_EXPAND);
         }
      }
      
      private function magmaBazookaSetDir() : void
      {
         var _loc1_:int = 0;
         _loc1_ = MAGMA_BAZOOKA_SPEED;
         vx = _loc1_ * this.megaMan.scaleX;
         if(this.subType == MB_UP)
         {
            vy = -_loc1_;
         }
         else if(this.subType == MB_DOWN)
         {
            vy = _loc1_;
         }
         if(vx != 0 && vy != 0)
         {
            vx *= 0.75;
            vy *= 0.75;
         }
      }
      
      private function weakChargeFireShot() : void
      {
         stopAnim = false;
         this.gotoAndStop("weakChargeFireStart");
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_CHARGE_SHOT);
         _damageAmt = DamageValue.MEGA_MAN_WEAK_CHARGE_FIRE;
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
         mainAnimTmr = ANIM_FAST_TMR;
      }
      
      private function strongChargeFireShot() : void
      {
         stopAnim = false;
         addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         this.gotoAndStop("strongChargeFireStart");
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_CHARGE_SHOT);
         _damageAmt = DamageValue.MEGA_MAN_FULL_CHARGE_FIRE;
         mainAnimTmr = ANIM_FAST_TMR;
         defyGrav = true;
         xSpeed = SPEED;
         this.setDir();
         this.megaMan.chargeShot = this;
      }
      
      override protected function setDir() : void
      {
         var _loc1_:int = Y_PAD_BOT_ON_GROUND;
         var _loc2_:int = Y_PAD_BOT_OFF_GROUND;
         var _loc3_:int = this.megaMan.skinNum;
         if(this.megaMan.repositionBullets())
         {
            if(_loc3_ > 1 && _loc3_ < 6 || _loc3_ == MegaMan.SKIN_BREAK_MAN_NES || _loc3_ == MegaMan.SKIN_BREAK_MAN_SNES || _loc3_ == MegaMan.SKIN_BREAK_MAN_GB)
            {
               _loc1_ = Y_PAD_BOT_ON_GROUND_PROTO;
               _loc2_ = Y_PAD_BOT_OFF_GROUND_PROTO;
            }
            else if(_loc3_ == MegaMan.SKIN_ROKKO_CHAN)
            {
               _loc1_ = Y_PAD_BOT_ON_GROUND_ROKKO;
               _loc2_ = Y_PAD_BOT_OFF_GROUND_ROKKO;
            }
         }
         if(this.megaMan.scaleX > 0)
         {
            vx = xSpeed;
            x = this.megaMan.nx + X_OFS;
         }
         else
         {
            vx = -xSpeed;
            scaleX = -1;
            x = this.megaMan.nx - X_OFS;
         }
         if(this.megaMan.onGround)
         {
            y = this.megaMan.ny - _loc1_;
         }
         else
         {
            y = this.megaMan.ny - _loc2_;
         }
         if(isNaN(xSpeed))
         {
            vx = 0;
         }
      }
      
      override public function updateObj() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.updateObj();
         if(this.type == TYPE_MEGA_BUSTER && x >= 5332 && !stopHit && level.disableScreenScroll)
         {
            this.attackObjNonPiercing(null);
         }
         if(this.type == TYPE_SUPER_ARM)
         {
            this.superArmBrick.x = nx - TILE_SIZE / 2;
            this.superArmBrick.y = ny - TILE_SIZE / 2;
         }
         else if(this.type == TYPE_HARD_KNUCKLE)
         {
            if(currentLabel == FL_HARD_KNUCKLE_START || currentLabel == FL_HARD_KNUCKLE_END)
            {
               vx += HARD_KNUCKLE_AX * scaleX * dt;
               if(this.megaMan.upBtn)
               {
                  vy = -HARD_KNUCKLE_VY;
               }
               else if(this.megaMan.dwnBtn)
               {
                  vy = HARD_KNUCKLE_VY;
               }
               else
               {
                  vy = 0;
               }
            }
         }
         else if(this.type == TYPE_PHARAOH_BALLOON)
         {
            this.pharaohBalloonUpdPos();
         }
         else if(this.type == TYPE_WATER_SHIELD)
         {
            _loc1_ = this.megaMan.nx;
            _loc2_ = this.megaMan.hMidY;
            if(this.waterShieldExpandPnt)
            {
               _loc1_ = this.waterShieldExpandPnt.x;
               _loc2_ = this.waterShieldExpandPnt.y;
               this.waterShieldRadius += WATER_SHIELD_EXPAND_SPEED;
            }
            nx = _loc1_ + Math.cos(this.waterShieldAngle) * this.waterShieldRadius;
            ny = _loc2_ + Math.sin(this.waterShieldAngle) * this.waterShieldRadius;
            this.waterShieldAngle += WATER_SHIELD_ROTATE_SPEED * dt * this.waterShieldDir;
            if(!visible && (this.waterShieldAngle >= ANGLE_FULL_CIRCLE || this.waterShieldAngle <= -ANGLE_FULL_CIRCLE / 2))
            {
               visible = true;
               stopHit = false;
            }
         }
      }
      
      private function hardKnuckleActivate() : void
      {
         gotoAndStop(FL_HARD_KNUCKLE_START);
         stopHit = false;
         this.megaMan.stopUpdate = false;
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         if(this.type == TYPE_MEGA_BUSTER || this.type == TYPE_BASS_BUSTER || this.type == TYPE_METAL_BLADE || this.type == TYPE_PHARAOH_BALLOON || this.type == TYPE_PHARAOH_SHOT || this.type == TYPE_SCREW_CRUSHER)
         {
            vx = -vx;
            vy = -VY_DEFLECT;
            stopHit = true;
            if(this.type == TYPE_PHARAOH_BALLOON && this.megaMan.pharaohBalloon == this)
            {
               if(nx < LevObj(param1).nx)
               {
                  vx = -SPEED;
               }
               else
               {
                  vx = SPEED;
               }
               destroyOffScreen = true;
               this.megaMan.pharaohBalloon = null;
            }
            else if(vx == 0)
            {
               if(nx < LevObj(param1).nx)
               {
                  vx = -SPEED;
               }
               else
               {
                  vx = SPEED;
               }
            }
         }
         else if(this.type == TYPE_FLAME_BLAST && currentLabel == FL_FLAME_BLAST_BULLET)
         {
            vx = -vx;
         }
         else if(this.type == TYPE_CHARGE_STRONG || this.type == TYPE_CHARGE_WEAK || this.type == TYPE_WATER_SHIELD)
         {
            destroy();
         }
         else if(this.superArmBrick)
         {
            this.superArmBrick.breakBrick(true);
         }
         if(this.megaMan.skinNum == MegaMan.SKIN_ICE_MAN_NES && this.type == TYPE_CHARGE_STRONG)
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_ICE_SLASHER_HIT);
         }
         else
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_DEFLECT);
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         if(param1 is Enemy)
         {
            if(this.megaMan.skinNum == MegaMan.SKIN_ICE_MAN_NES && this.type == TYPE_CHARGE_STRONG)
            {
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_ICE_SLASHER_HIT);
            }
            else
            {
               SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_HIT_ENEMY);
            }
            if(this.superArmBrick)
            {
               this.superArmBrick.breakBrick(true);
            }
         }
      }
      
      protected function blowUp() : void
      {
         if(this.superArmBrick)
         {
            this.superArmBrick.breakBrick(true);
         }
         destroy();
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(this.type == TYPE_CHARGE_WEAK && _loc1_ == convFrameToInt(FL_WEAK_CHARGE_END) + 1)
         {
            gotoAndStop(FL_WEAK_CHARGE_START);
         }
         else if(this.type == TYPE_CHARGE_STRONG && _loc1_ == convFrameToInt(FL_STRONG_CHARGE_END) + 1)
         {
            gotoAndStop(FL_STRONG_CHARGE_START);
         }
         else if(this.type == TYPE_METAL_BLADE && _loc1_ == convFrameToInt(FL_METAL_BLADE_END) + 1)
         {
            gotoAndStop(FL_METAL_BLADE_START);
         }
         else if(this.type == TYPE_SCREW_CRUSHER && _loc1_ == convFrameToInt(FL_SCREW_CRUSHER_END) + 1)
         {
            gotoAndStop(FL_SCREW_CRUSHER_START);
         }
         else if(this.type == TYPE_HARD_KNUCKLE)
         {
            if(_loc1_ == convFrameToInt(FL_HARD_KNUCKLE_APPEAR_END) + 1)
            {
               this.hardKnuckleActivate();
            }
            else if(_loc1_ == convFrameToInt(FL_HARD_KNUCKLE_END) + 1)
            {
               gotoAndStop(FL_HARD_KNUCKLE_START);
            }
         }
         else if(this.type == TYPE_FLAME_BLAST && _loc1_ == convFrameToInt(FL_FLAME_BLAST_FLAME_END) + 1)
         {
            destroy();
         }
         else if(this.type == TYPE_MAGMA_BAZOOKA && _loc1_ == convFrameToInt(FL_MAGMA_BAZOOKA_END) + 1)
         {
            gotoAndStop(FL_MAGMA_BAZOOKA_START);
         }
         else if(this.type == TYPE_MAGMA_BAZOOKA_CHARGE && _loc1_ == convFrameToInt(FL_MAGMA_BAZOOKA_CHARGE_END) + 1)
         {
            gotoAndStop(FL_MAGMA_BAZOOKA_CHARGE_START);
         }
         else if(this.type == TYPE_PHARAOH_BALLOON)
         {
            if(_loc1_ == convFrameToInt(FL_PHARAOH_BALLOON_END) + 1)
            {
               gotoAndStop(FL_PHARAOH_BIG_START);
               _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_BIG;
               this.pharaohChargeLevel = PHARAOH_CHARGE_FULL;
            }
            else if(_loc1_ == convFrameToInt(FL_PHARAOH_BIG_END) + 1)
            {
               gotoAndStop(FL_PHARAOH_BIG_START);
            }
            else if(_loc1_ == convFrameToInt(FL_PHARAOH_CHARGE_LEVEL_2) + 1)
            {
               _damageAmt = DamageValue.MEGA_MAN_PHARAOH_SHOT_MEDIUM;
               this.pharaohChargeLevel = PHARAOH_CHARGE_MED;
            }
         }
         else if(this.type == TYPE_PHARAOH_SHOT && _loc1_ == convFrameToInt(FL_PHARAOH_BIG_END) + 1)
         {
            gotoAndStop(FL_PHARAOH_BIG_START);
         }
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(this.type == TYPE_SUPER_ARM)
         {
            this.blowUp();
         }
         else if(this.type == TYPE_FLAME_BLAST && (!(param1 is Brick) || Brick(param1).item))
         {
            this.flameBlastExplode(param1,param2);
         }
         else if(this.type == TYPE_BASS_BUSTER && !param1.hitTestTypesDct[HT_BRICK])
         {
            this.blowUp();
         }
         super.hitGround(param1,param2);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.pharaohBalloonDelTmr)
         {
            this.pharaohBalloonDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.pharaohBallonDelTmrHandler,false,0,true);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.pharaohBalloonDelTmr)
         {
            this.pharaohBalloonDelTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.pharaohBallonDelTmrHandler);
         }
         if(this.type == TYPE_HARD_KNUCKLE)
         {
            EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
         }
      }
      
      override public function groundBelow(param1:Ground) : void
      {
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.type == TYPE_CHARGE_STRONG)
         {
            this.megaMan.chargeShot = null;
         }
         else if(this.superArmBrick)
         {
            this.superArmBrick.destroy();
         }
         else if(this.type == TYPE_WATER_SHIELD)
         {
            this.megaMan.waterShieldDct.removeItem(this);
         }
         else if(this.type == TYPE_PHARAOH_BALLOON && this.megaMan.pharaohBalloon == this)
         {
            this.megaMan.pharaohBalloon = null;
         }
         else if(this.type == TYPE_HARD_KNUCKLE && this.megaMan.stopUpdate)
         {
            this.megaMan.stopUpdate = false;
         }
      }
   }
}
