package com.smbc.projectiles
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import flash.events.TimerEvent;
   
   public class Firework extends Projectile
   {
       
      
      private const NEXT_FIREWORK_TMR:CustomTimer = new CustomTimer(400,1);
      
      public function Firework(param1:Number, param2:Number)
      {
         super(null,SOURCE_TYPE_NEUTRAL);
         defyGrav = true;
         stopAnim = false;
         stopHit = true;
         stopUpdate = true;
         accurateAnimTmr = new CustomTimer(AnimationTimers.DEL_VERY_SLOW);
         this.x = param1;
         this.y = param2;
         gotoAndStop("start");
         SND_MNGR.playSound(SoundNames.SFX_GAME_CANON);
         this.NEXT_FIREWORK_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler,false,0,true);
         addTmr(this.NEXT_FIREWORK_TMR);
         this.NEXT_FIREWORK_TMR.start();
         EVENT_MNGR.addPoints(ScoreValue.FIREWORK);
      }
      
      private function destroyTmrHandler(param1:TimerEvent) : void
      {
         this.NEXT_FIREWORK_TMR.reset();
         destroy();
      }
      
      override public function checkFrame() : void
      {
         currentLabel;
         if(currentLabel == "end")
         {
            stopAnim = true;
            visible = false;
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         level.launchNextFirework();
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.NEXT_FIREWORK_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.NEXT_FIREWORK_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.destroyTmrHandler,false,0,true);
      }
   }
}
