package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.main.LevObj;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class StatFxStop extends StatusEffect
   {
       
      
      private var timer:GameLoopTimer;
      
      private var _duration:int;
      
      private var vxStart:Number;
      
      private var vyStart:Number;
      
      private var stopAnimation:Boolean;
      
      public function StatFxStop(param1:LevObj, param2:int = 0, param3:Boolean = true)
      {
         super(TYPE_STOP,param1);
         this._duration = param2;
         this.stopAnimation = param3;
         if(param2)
         {
            this.timer = new GameLoopTimer(param2,1);
         }
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatFxStop(param1,this._duration,this.stopAnimation);
      }
      
      override public function apply() : void
      {
         super.apply();
         if(this.stopAnimation)
         {
            _target.addReasonOvRd(LevObj.NAME_STOP_ANIM,true,TYPE_STOP);
         }
         _target.addReasonOvRd(LevObj.NAME_STOP_UPDATE,true,TYPE_STOP);
         _target.addReasonOvRd(LevObj.NAME_STOP_TIMERS,true,TYPE_STOP);
         var _loc1_:StatusEffect = _target.getStatusEffect(TYPE_FLASH);
         if(_loc1_)
         {
            _target.removeStatusEffect(TYPE_FLASH);
         }
         this.vxStart = _target.vx;
         this.vyStart = _target.vy;
         if(this.timer)
         {
            _target.addTmr(this.timer);
            this.timer.addEventListener(TimerEvent.TIMER_COMPLETE,this.timerHandler,false,0,true);
            this.timer.start();
         }
      }
      
      override public function checkIfReplaceWithSameType(param1:StatusEffect) : Boolean
      {
         if(this.timeRemaining >= StatFxStop(param1).timeRemaining)
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
         if(this.stopAnimation)
         {
            _target.removeReasonOvRd(LevObj.NAME_STOP_ANIM,true,TYPE_STOP);
         }
         _target.removeReasonOvRd(LevObj.NAME_STOP_UPDATE,true,TYPE_STOP);
         _target.removeReasonOvRd(LevObj.NAME_STOP_TIMERS,true,TYPE_STOP);
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
