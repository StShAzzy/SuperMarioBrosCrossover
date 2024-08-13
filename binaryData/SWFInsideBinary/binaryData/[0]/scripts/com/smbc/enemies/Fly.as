package com.smbc.enemies
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.ground.Ground;
   import com.smbc.ground.SpringRed;
   import flash.events.TimerEvent;
   
   public class Fly extends Enemy
   {
      
      private static const WALK_SPEED_MULTIPLIER:Number = 1.25;
      
      private static const FRICTION_X:Number = 0.1;
      
      private static const VERTICAL_JUMP_POWER:int = 240;
      
      private static const GRAVITY:int = 560;
      
      private static const FL_FLY_START:String = "flyStart";
      
      private static const FL_FLY_END:String = "flyEnd";
      
      private static const FL_STAND:String = "stand";
       
      
      private var jumpTimer:CustomTimer;
      
      private var jumpStartY:Number;
      
      private var jumpedThisFrame:Boolean;
      
      private var HORIZONTAL_MOVEMENT_SPEED:int = 240;
      
      public function Fly(param1:String)
      {
         this.jumpTimer = new CustomTimer(150,1);
         super();
         mainAnimTmr = AnimationTimers.ANIM_MIN_FAST_TMR;
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         _health = HealthValue.FLY;
         scoreAttack = ScoreValue.FLY_ATTACK;
         scoreBelow = ScoreValue.FLY_BELOW;
         scoreStar = ScoreValue.FLY_STAR;
         scoreStomp = ScoreValue.FLY_STOMP;
      }
      
      override public function setStats() : void
      {
         super.setStats();
         stompable = false;
         addTmr(this.jumpTimer);
         this.jumpTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTimerHandler,false,0,true);
         scaleX = -1;
         if(onGround)
         {
            this.landOnGround();
         }
         gravity = GRAVITY;
         vxMin = 1;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(!onGround && ny > this.jumpStartY)
         {
            vx *= Math.pow(FRICTION_X,dt);
         }
         if(onGround && !this.jumpTimer.running)
         {
            this.landOnGround();
         }
      }
      
      protected function jumpTimerHandler(param1:TimerEvent) : void
      {
         if(onGround)
         {
            this.jump();
         }
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(onGround)
         {
            this.landOnGround();
         }
      }
      
      private function jump() : void
      {
         scaleX = player.nx >= nx ? 1 : -1;
         vx = defaultWalkSpeed * WALK_SPEED_MULTIPLIER * scaleX;
         vy = -VERTICAL_JUMP_POWER;
         setPlayFrame(FL_FLY_START);
         this.jumpStartY = ny;
         this.jumpTimer.stop();
         onGround = false;
      }
      
      private function landOnGround() : void
      {
         vx = 0;
         this.jumpTimer.reset();
         this.jumpTimer.start();
         setStopFrame(FL_STAND);
      }
      
      override public function checkFrame() : void
      {
         super.checkFrame();
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(!onGround && _loc2_ == getLabNum(FL_FLY_END) + 1)
         {
            setPlayFrame(FL_FLY_START);
         }
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         if(!lastOnGround && !onGround && !(param1 is SpringRed))
         {
            this.landOnGround();
         }
         super.groundBelow(param1);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.jumpTimer != null)
         {
            this.jumpTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTimerHandler);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.jumpTimer != null)
         {
            this.jumpTimer.addEventListener(TimerEvent.TIMER_COMPLETE,this.jumpTimerHandler,false,0,true);
         }
      }
   }
}
