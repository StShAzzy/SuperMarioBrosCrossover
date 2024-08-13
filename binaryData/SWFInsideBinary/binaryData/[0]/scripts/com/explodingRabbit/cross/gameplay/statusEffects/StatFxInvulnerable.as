package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.main.LevObj;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class StatFxInvulnerable extends StatusEffect
   {
       
      
      private var timer:GameLoopTimer;
      
      private var duration:int;
      
      public function StatFxInvulnerable(param1:LevObj, param2:int = 0)
      {
         super(TYPE_INVULNERABLE,param1);
         this.duration = param2;
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatFxInvulnerable(param1,this.duration);
      }
      
      override public function apply() : void
      {
         super.apply();
         if(this.duration)
         {
            this.timer = new GameLoopTimer(this.duration,1);
            _target.addTmr(this.timer);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.timerHandler,false,0,true);
            this.timer.start();
         }
      }
      
      override public function checkIfReplaceWithSameType(param1:StatusEffect) : Boolean
      {
         if(this.timeRemaining >= StatFxInvulnerable(param1).timeRemaining)
         {
            return false;
         }
         this.destroy();
         return true;
      }
      
      protected function timerHandler(param1:Event) : void
      {
         this.destroy();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this.timer)
         {
            this.timer.stop();
            _target.removeTmr(this.timer);
            this.timer.removeEventListener(TimerEvent.TIMER_COMPLETE,this.timerHandler);
            this.timer = null;
         }
      }
      
      public function get timeRemaining() : int
      {
         if(!this.timer)
         {
            return int.MAX_VALUE;
         }
         return this.timer.delay - this.timer.timePassed;
      }
   }
}
