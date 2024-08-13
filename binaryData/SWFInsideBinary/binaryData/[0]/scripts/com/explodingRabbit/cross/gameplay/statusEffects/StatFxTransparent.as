package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.main.LevObj;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class StatFxTransparent extends StatusEffect
   {
       
      
      private var intervalTmr:GameLoopTimer;
      
      private var durTmr:GameLoopTimer;
      
      private var interval:int;
      
      private var duration:int;
      
      private var alpha:Number;
      
      public function StatFxTransparent(param1:LevObj, param2:Number, param3:int, param4:int = 0)
      {
         super(TYPE_TRANSPARENT,param1);
         this.interval = param4;
         this.duration = param3;
         this.alpha = param2;
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatFxTransparent(param1,this.alpha,this.duration,this.interval);
      }
      
      override public function apply() : void
      {
         super.apply();
         this.durTmr = new GameLoopTimer(this.duration,1);
         _target.addTmr(this.durTmr);
         this.durTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrHandler,false,0,true);
         this.durTmr.start();
         if(this.interval)
         {
            this.intervalTmr = new GameLoopTimer(this.interval);
            _target.addTmr(this.intervalTmr);
            this.intervalTmr.addEventListener(TimerEvent.TIMER,this.intervalTmrHandler,false,0,true);
            this.intervalTmr.start();
         }
         else
         {
            _target.alpha = this.alpha;
         }
      }
      
      protected function durTmrHandler(param1:Event) : void
      {
         this.destroy();
      }
      
      protected function intervalTmrHandler(param1:Event) : void
      {
         var _loc2_:Number = _target.alpha;
         if(_loc2_ == 1)
         {
            _target.alpha = this.alpha;
         }
         else
         {
            _target.alpha = 1;
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _target.alpha = 1;
         if(this.intervalTmr)
         {
            this.intervalTmr.stop();
            _target.removeTmr(this.intervalTmr);
            this.intervalTmr.removeEventListener(TimerEvent.TIMER,this.intervalTmrHandler);
            this.intervalTmr = null;
         }
         if(this.durTmr)
         {
            this.durTmr.stop();
            _target.removeTmr(this.durTmr);
            this.durTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrHandler);
            this.durTmr = null;
         }
      }
   }
}
