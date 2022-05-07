package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.characters.Ryu;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.ground.Ground;
   import com.smbc.interfaces.IAttackable;
   import flash.events.TimerEvent;
   
   public class RyuProjectile extends Projectile
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private static const PAD_MID_CLIMB:int = 20;
      
      private static const PAD_BOT_CLIMB:int = 45;
      
      private static const PAD_MID_CLIMB_BACKWARDS:int = 40;
      
      private static const PAD_BOT_CLIMB_BACKWARDS:int = 45;
      
      private static const PAD_MID_CROUCH:int = 26;
      
      private static const PAD_BOT_CROUCH:int = 32;
      
      private static const PAD_MID_FALL:int = 26;
      
      private static const PAD_BOT_FALL:int = 42;
      
      private static const PAD_MID_STAND:int = 30;
      
      private static const PAD_BOT_STAND:int = 42;
      
      private static const CROUCH_LABEL:String = "crouch";
      
      private static const THROW_BACKWARDS_LABEL:String = "Backwards";
      
      private static const STR_START:String = "Start";
      
      private static const STR_END:String = "End";
      
      public static const TYPE_SHURIKEN:String = "shuriken";
      
      public static const TYPE_WINDMILL_SHURIKEN:String = "windmillShuriken";
      
      public static const TYPE_FIRE_DRAGON_BALL:String = "fireDragonBall";
      
      public static const TYPE_ART_OF_FIRE_WHEEL:String = "artOfFireWheel";
      
      private static const FL_SHURIKEN_END:String = "shurikenEnd";
      
      private static const FL_SHURIKEN_START:String = "shurikenStart";
      
      private static const FL_WINDMILL_SHURIKEN_END:String = "windmillShurikenEnd";
      
      private static const FL_WINDMILL_SHURIKEN_START:String = "windmillShurikenStart";
      
      private static const FL_FIRE_DRAGON_BALL_START:String = "fireDragonBallStart";
      
      private static const FL_FIRE_DRAGON_BALL_END:String = "fireDragonBallEnd";
      
      private static const FL_FIRE_WHEEL_START:String = "fireWheelStart";
      
      private static const FL_FIRE_WHEEL_END:String = "fireWheelEnd";
      
      private static const STAR_SMALL_THROW_SPEED:int = 600;
      
      private static const STAR_BIG_SPRING_AMT:Number = 2300;
      
      private static const STAR_BIG_VY:int = 85;
      
      private static const STAR_BIG_VX_MAX:int = 800;
      
      private static const STAR_BIG_REVERSE_SPEED:int = 800;
      
      private static const STAR_BIG_REVERSE_DIST:int = 50;
      
      private static const STAR_BIG_THROW_SPEED:int = 800;
      
      private static const STAR_BIG_FRICTION_X:Number = 0.001;
      
      private static const FIRE_DRAGON_BALL_SPEED:int = 600;
      
      private static const ART_OF_FIRE_WHEEL_SPEED:int = 600;
      
      private static const DESTROY_HIT_CHAR_TMR_DUR:int = 300;
       
      
      public var destroyHitChar:Boolean;
      
      private var destroyHitCharTmr:CustomTimer;
      
      private var type:String;
      
      private var reverse:Boolean;
      
      private var thrownRight:Boolean;
      
      private var justThrown:Boolean;
      
      private var onRightSide:Boolean;
      
      private var lastOnRightSide:Boolean;
      
      private var throwSpeed:Number;
      
      private var ryu:Ryu;
      
      public function RyuProjectile(param1:Ryu, param2:String)
      {
         var _loc3_:StatusProperty = null;
         super(param1,SOURCE_TYPE_PLAYER);
         this.type = param2;
         this.ryu = param1;
         for each(_loc3_ in Ryu.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc3_);
         }
         defyGrav = true;
         mainAnimTmr = MAIN_ANIM_TMR;
         var _loc4_:int = param1.pState;
         this.setUpType();
         this.justThrown = true;
      }
      
      private function setUpType() : void
      {
         switch(this.type)
         {
            case TYPE_ART_OF_FIRE_WHEEL:
               this.artOfFireWheel();
               break;
            case TYPE_FIRE_DRAGON_BALL:
               this.fireDragonBall();
               break;
            case TYPE_SHURIKEN:
               this.shuriken();
               break;
            case TYPE_WINDMILL_SHURIKEN:
               this.windmillShuriken();
         }
      }
      
      private function artOfFireWheel() : void
      {
         _damageAmt = DamageValue.RYU_ART_OF_FIRE_WHEEL;
         addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         gotoAndStop(FL_FIRE_WHEEL_START);
         this.throwSpeed = ART_OF_FIRE_WHEEL_SPEED;
         this.setDirection();
         vy = -ART_OF_FIRE_WHEEL_SPEED * 0.75;
         vx *= 0.75;
         SND_MNGR.playSound(SoundNames.SFX_RYU_ART_OF_FIRE_WHEEL);
      }
      
      private function fireDragonBall() : void
      {
         _damageAmt = DamageValue.RYU_FIRE_DRAGON_BALL;
         addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         addProperty(new StatusProperty(PR_PIERCE_AGG,PIERCE_STR_ARMOR_PIERCING));
         gotoAndStop(FL_FIRE_DRAGON_BALL_START);
         this.throwSpeed = FIRE_DRAGON_BALL_SPEED;
         this.setDirection();
         vy = FIRE_DRAGON_BALL_SPEED * 0.75;
         vx *= 0.75;
         SND_MNGR.playSound(SoundNames.SFX_RYU_FIRE_DRAGON_BALL);
      }
      
      private function shuriken() : void
      {
         _damageAmt = DamageValue.RYU_SHURIKEN;
         this.throwSpeed = STAR_SMALL_THROW_SPEED;
         gotoAndStop(FL_SHURIKEN_START);
         SND_MNGR.playSound(SoundNames.SFX_RYU_THROW_SMALL_STAR);
         this.setDirection();
      }
      
      private function windmillShuriken() : void
      {
         updateOffScreen = true;
         destroyOffScreen = false;
         _damageAmt = DamageValue.RYU_WINDMILL_SHURIKEN;
         this.throwSpeed = STAR_BIG_THROW_SPEED;
         fx = STAR_BIG_FRICTION_X;
         vxMax = STAR_BIG_VX_MAX;
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         addProperty(new StatusProperty(PR_PIERCE_AGG,PIERCE_STR_ARMOR_PIERCING));
         Ryu(this.ryu).bigStar = this;
         gotoAndStop(FL_WINDMILL_SHURIKEN_START);
         SND_MNGR.playSound(SoundNames.SFX_RYU_THROW_BIG_STAR);
         this.destroyHitCharTmr = new CustomTimer(DESTROY_HIT_CHAR_TMR_DUR,1);
         addTmr(this.destroyHitCharTmr);
         this.destroyHitCharTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyHitCharTmrHandler,false,0,true);
         this.destroyHitCharTmr.start();
         this.setDirection();
      }
      
      private function setDirection() : void
      {
         var _loc1_:String = this.ryu.currentLabel;
         var _loc2_:Boolean = false;
         if(this.ryu.scaleX > 0)
         {
            _loc2_ = true;
         }
         if(this.ryu.cState == Ryu.ST_CLIMB)
         {
            if(_loc1_.indexOf(THROW_BACKWARDS_LABEL) != -1)
            {
               if(_loc2_)
               {
                  vx = -this.throwSpeed;
                  x = this.ryu.nx - PAD_MID_CLIMB_BACKWARDS;
               }
               else
               {
                  vx = this.throwSpeed;
                  x = this.ryu.nx + PAD_MID_CLIMB_BACKWARDS;
               }
               y = this.ryu.ny - PAD_BOT_CLIMB_BACKWARDS;
            }
            else
            {
               if(_loc2_)
               {
                  vx = this.throwSpeed;
                  x = this.ryu.nx + PAD_MID_CLIMB;
               }
               else
               {
                  vx = -this.throwSpeed;
                  x = this.ryu.nx - PAD_MID_CLIMB;
               }
               y = this.ryu.ny - PAD_BOT_CLIMB;
            }
         }
         else if(this.ryu.onGround)
         {
            if(_loc1_.indexOf(CROUCH_LABEL) != -1)
            {
               if(_loc2_)
               {
                  vx = this.throwSpeed;
                  x = this.ryu.nx + PAD_MID_CROUCH;
               }
               else
               {
                  vx = -this.throwSpeed;
                  x = this.ryu.nx - PAD_MID_CROUCH;
               }
               y = this.ryu.ny - PAD_BOT_CROUCH;
            }
            else if(this.ryu.onGround)
            {
               if(_loc2_)
               {
                  vx = this.throwSpeed;
                  x = this.ryu.nx + PAD_MID_STAND;
               }
               else
               {
                  vx = -this.throwSpeed;
                  x = this.ryu.nx - PAD_MID_STAND;
               }
               y = this.ryu.ny - PAD_BOT_STAND;
            }
         }
         else
         {
            if(_loc2_)
            {
               vx = this.throwSpeed;
               x = this.ryu.nx + PAD_MID_FALL;
            }
            else
            {
               vx = -this.throwSpeed;
               x = this.ryu.nx - PAD_MID_FALL;
            }
            y = this.ryu.ny - PAD_BOT_FALL;
         }
         if(vx > 0)
         {
            this.thrownRight = true;
         }
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         super.updateStats();
         if(this.type == TYPE_WINDMILL_SHURIKEN)
         {
            _loc1_ = this.ryu.nx - nx;
            _loc2_ = _loc1_;
            this.lastOnRightSide = this.onRightSide;
            if(_loc2_ < 0)
            {
               _loc2_ = -_loc2_;
               this.onRightSide = true;
            }
            else
            {
               this.onRightSide = false;
            }
            if(this.lastOnRightSide !== this.onRightSide)
            {
               this.reverse = false;
            }
            if(this.onRightSide)
            {
               ax = STAR_BIG_SPRING_AMT;
               if(_loc2_ >= STAR_BIG_REVERSE_DIST)
               {
                  this.reverse = true;
               }
               if(this.reverse)
               {
                  ax = -ax;
               }
            }
            else
            {
               ax = -STAR_BIG_SPRING_AMT;
               if(_loc2_ >= STAR_BIG_REVERSE_DIST)
               {
                  this.reverse = true;
               }
               if(this.reverse)
               {
                  ax = -ax;
               }
            }
            if(this.justThrown)
            {
               if(this.thrownRight)
               {
                  if(vx < 0)
                  {
                     this.justThrown = false;
                  }
               }
               else if(vx > 0)
               {
                  this.justThrown = false;
               }
            }
            vx += ax * dt;
            if(this.ryu.hMidY > ny)
            {
               vy = STAR_BIG_VY;
            }
            else if(this.ryu.hMidY < ny)
            {
               vy = -STAR_BIG_VY;
            }
            else
            {
               vy = 0;
            }
         }
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         if(this.destroyHitChar)
         {
            this.destroy();
         }
         super.hitCharacter(param1,param2);
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         this.hitAttackableObject(param1 as IAttackable);
      }
      
      private function hitAttackableObject(param1:IAttackable) : void
      {
         var _loc2_:Enemy = null;
         if(getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            if(L_HIT_DCT[param1])
            {
               C_HIT_DCT.addItem(param1);
               return;
            }
            C_HIT_DCT.addItem(param1);
            if(param1 is Enemy && Enemy(param1).hRect2)
            {
               _loc2_ = param1 as Enemy;
               if(_loc2_.MIN_HIT_DELAY_TMR.running)
               {
                  return;
               }
               _loc2_.MIN_HIT_DELAY_TMR.start();
               _loc2_.confirmedHitProj(this);
            }
            else
            {
               param1.confirmedHitProj(this);
            }
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy && param1.health > 0)
         {
            SND_MNGR.playSound(SoundNames.SFX_RYU_DAMAGE_ENEMY);
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
      
      private function destroyHitCharTmrHandler(param1:TimerEvent) : void
      {
         if(this.destroyHitCharTmr)
         {
            this.destroyHitCharTmr.reset();
            this.destroyHitCharTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyHitCharTmrHandler);
            this.destroyHitCharTmr = null;
         }
         addHitTestableItem(HT_CHARACTER);
         hitTestTypesDct.addItem(HT_ENEMY);
         this.destroyHitChar = true;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         var _loc2_:Function = convFrameToInt;
         if(this.type == TYPE_SHURIKEN && _loc1_ == _loc2_(FL_SHURIKEN_END) + 1)
         {
            gotoAndStop(FL_SHURIKEN_START);
         }
         else if(this.type == TYPE_WINDMILL_SHURIKEN && previousFrameLabelIs(FL_WINDMILL_SHURIKEN_END))
         {
            gotoAndStop(FL_WINDMILL_SHURIKEN_START);
         }
         else if(this.type == TYPE_ART_OF_FIRE_WHEEL && previousFrameLabelIs(FL_FIRE_WHEEL_END))
         {
            gotoAndStop(FL_FIRE_WHEEL_START);
         }
         else if(this.type == TYPE_FIRE_DRAGON_BALL && previousFrameLabelIs(FL_FIRE_DRAGON_BALL_END))
         {
            gotoAndStop(FL_FIRE_DRAGON_BALL_START);
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this.type == TYPE_WINDMILL_SHURIKEN)
         {
            Ryu(this.ryu).bigStar = null;
         }
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(param1 is IAttackable)
         {
            this.hitAttackableObject(param1 as IAttackable);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.destroyHitCharTmr)
         {
            this.destroyHitCharTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyHitCharTmrHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.destroyHitCharTmr)
         {
            this.destroyHitCharTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyHitCharTmrHandler,false,0,true);
         }
      }
   }
}
