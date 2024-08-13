package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.main.LevObj;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class StatFxFlash extends StatusEffect
   {
       
      
      private var intervalTmr:GameLoopTimer;
      
      private var durTmr:GameLoopTimer;
      
      private var interval:int;
      
      private var duration:int;
      
      public function StatFxFlash(param1:LevObj, param2:int, param3:int = 0)
      {
         super(TYPE_FLASH,param1);
         this.interval = param2;
         this.duration = param3;
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatFxFlash(param1,this.interval,this.duration);
      }
      
      override public function apply() : void
      {
         super.apply();
         _target.setUpCommonPalettes();
         _target.resetFlashCtr();
         _target.flash();
         if(this.interval)
         {
            this.intervalTmr = new GameLoopTimer(this.interval);
            _target.addTmr(this.intervalTmr);
            this.intervalTmr.addEventListener(TimerEvent.TIMER,this.intervalTmrHandler,false,0,true);
            this.intervalTmr.start();
         }
         if(this.duration)
         {
            this.durTmr = new GameLoopTimer(this.duration,1);
            _target.addTmr(this.durTmr);
            this.durTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.durTmrHandler,false,0,true);
            this.durTmr.start();
         }
      }
      
      protected function durTmrHandler(param1:Event) : void
      {
         this.destroy();
      }
      
      protected function intervalTmrHandler(param1:Event) : void
      {
         _target.flash();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _target.resetColor();
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
