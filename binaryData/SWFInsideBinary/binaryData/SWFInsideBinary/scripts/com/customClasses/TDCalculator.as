package com.customClasses
{
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class TDCalculator extends MovieClip
   {
       
      
      public var now:int;
      
      var then:int;
      
      var dt:Number;
      
      var elapsed:int;
      
      public var offSet:int;
      
      public function TDCalculator()
      {
         super();
         this.dt = 0.05;
         this.then = getTimer();
         this.now = this.then;
      }
      
      public function getTD() : Number
      {
         this.then = this.now;
         this.now = getTimer();
         this.dt = (this.now - this.then) / 1000;
         return this.dt;
      }
   }
}
