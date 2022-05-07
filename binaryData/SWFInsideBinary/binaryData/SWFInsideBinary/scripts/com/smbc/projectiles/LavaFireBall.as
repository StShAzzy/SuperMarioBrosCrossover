package com.smbc.projectiles
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import flash.events.TimerEvent;
   
   public class LavaFireBall extends Projectile
   {
      
      private static const FL_START:String = "start";
      
      private static const FL_END:String = "end";
       
      
      private var waitTmrDurMin:int = 750;
      
      private var waitTmrDurMax:int = 2000;
      
      private var waitTmr:CustomTimer;
      
      private var restingYPos:Number;
      
      private var rise:Boolean;
      
      public function LavaFireBall()
      {
         super(null,SOURCE_TYPE_ENEMY);
         defyGrav = true;
         destroyOffScreen = false;
         stopAnim = false;
         this.waitTmr = new CustomTimer(this.waitTmrDurMin,1);
         addTmr(this.waitTmr);
         this.waitTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.waitTmrLsr);
         this.waitTmr.start();
         sy = 700;
         gravity = 800;
         vyMaxPsv = 400;
         this.restingYPos = GLOB_STG_BOT + height * 0.5;
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
      }
      
      override public function initiate() : void
      {
         y = this.restingYPos;
         super.initiate();
      }
      
      override public function rearm() : void
      {
         super.rearm();
         y = this.restingYPos;
         ny = y;
         vy = 0;
         scaleY = 1;
         this.rise = false;
         defyGrav = true;
         this.resetWaitTmr();
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(vy > 0)
         {
            gotoAndStop("fall");
            scaleY = -1;
            this.rise = false;
         }
         else
         {
            gotoAndStop("rise");
            scaleY = 1;
         }
         if(hTop > GLOB_STG_BOT)
         {
            if(!this.waitTmr.running && !this.rise)
            {
               ny = this.restingYPos;
               vy = 0;
               defyGrav = true;
               this.resetWaitTmr();
            }
         }
      }
      
      private function waitTmrLsr(param1:TimerEvent) : void
      {
         this.rise = true;
         scaleY = 1;
         defyGrav = false;
         vy = -sy;
      }
      
      private function resetWaitTmr() : void
      {
         this.waitTmr.reset();
         this.waitTmr.delay = Math.random() * (this.waitTmrDurMax - this.waitTmrDurMin) + this.waitTmrDurMin;
         this.waitTmr.start();
      }
      
      override public function checkFrame() : void
      {
         if(previousFrameLabelIs(FL_END))
         {
            gotoAndStop(FL_START);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.waitTmr && this.waitTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.waitTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.waitTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.waitTmr && !this.waitTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.waitTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.waitTmrLsr);
         }
      }
   }
}
