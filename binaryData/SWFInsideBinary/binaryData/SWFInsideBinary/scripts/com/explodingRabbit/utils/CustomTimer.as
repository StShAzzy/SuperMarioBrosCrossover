package com.explodingRabbit.utils
{
   import com.smbc.interfaces.ICustomTimer;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class CustomTimer extends Timer implements ICustomTimer
   {
       
      
      private var _startTime:Number;
      
      private var _initialDelay:Number;
      
      private var _paused:Boolean;
      
      private var _name:String;
      
      public function CustomTimer(param1:Number, param2:int = 0, param3:String = null)
      {
         super(param1,param2);
         this._name = param3;
         this._initialDelay = param1;
         addEventListener(TimerEvent.TIMER,this.onTimer,false,0,true);
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         this._startTime = new Date().time;
         this.delay = this._initialDelay;
      }
      
      override public function start() : void
      {
         if(currentCount < repeatCount || repeatCount == 0)
         {
            this.delay = this._initialDelay;
            this._paused = false;
            this._startTime = new Date().time;
            super.start();
         }
      }
      
      public function pause() : void
      {
         var _loc1_:Number = NaN;
         if(running)
         {
            this._paused = true;
            stop();
            _loc1_ = delay - (new Date().time - this._startTime);
            super.delay = _loc1_ < 0 ? Number(0) : Number(_loc1_);
         }
      }
      
      public function resume() : void
      {
         if(currentCount < repeatCount || repeatCount == 0)
         {
            this._paused = false;
            this._startTime = new Date().time;
            super.start();
         }
      }
      
      override public function set delay(param1:Number) : void
      {
         super.delay = this._initialDelay = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get paused() : Boolean
      {
         return this._paused;
      }
      
      public function get initialDelay() : Number
      {
         return this._initialDelay;
      }
   }
}
