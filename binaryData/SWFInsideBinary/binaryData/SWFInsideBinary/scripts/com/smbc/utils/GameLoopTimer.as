package com.smbc.utils
{
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   
   public class GameLoopTimer extends EventDispatcher implements ICustomTimer
   {
       
      
      public var timePassed:Number = 0;
      
      public var totalTimePassed:Number;
      
      private var _running:Boolean;
      
      private var _delay:Number;
      
      private const LEVEL:Level = Level.levelInstance;
      
      public var numTotalCycles:int;
      
      private var _currentCount:int;
      
      public function GameLoopTimer(param1:Number, param2:int = 0)
      {
         super();
         if(!this.LEVEL)
         {
            throw new Error("You can only use GameLoopTimers within a level.");
         }
         this.delay = param1;
         this.numTotalCycles = param2;
         this.LEVEL.GAME_LOOP_TMRS_DCT.addItem(this);
      }
      
      public function update() : void
      {
         var _loc1_:Number = this.LEVEL.dt * 1000;
         this.timePassed += _loc1_;
         this.totalTimePassed = this.timePassed;
         if(this.timePassed >= this.delay)
         {
            ++this._currentCount;
            if(this.numTotalCycles == 0 || this.currentCount < this.numTotalCycles)
            {
               this.timePassed -= this.delay;
               dispatchEvent(new TimerEvent(TimerEvent.TIMER));
            }
            else
            {
               this.pause();
               dispatchEvent(new TimerEvent(TimerEvent.TIMER));
               dispatchEvent(new TimerEvent(TimerEvent.TIMER_COMPLETE));
            }
         }
      }
      
      public function start() : void
      {
         this._running = true;
         this.timePassed = 0;
         this._currentCount = 0;
      }
      
      public function resume() : void
      {
         this._running = true;
      }
      
      public function pause() : void
      {
         this._running = false;
      }
      
      public function stop() : void
      {
         this._running = false;
         this.timePassed = 0;
         this.totalTimePassed = 0;
         this._currentCount = 0;
      }
      
      public function get running() : Boolean
      {
         return this._running;
      }
      
      public function destroy() : void
      {
         this.LEVEL.GAME_LOOP_TMRS_DCT.removeItem(this);
      }
      
      public function get currentCount() : int
      {
         return this._currentCount;
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         this._delay = param1;
      }
   }
}
