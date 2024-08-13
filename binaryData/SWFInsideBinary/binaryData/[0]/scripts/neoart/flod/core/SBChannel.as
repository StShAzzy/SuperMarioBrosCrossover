package neoart.flod.core
{
   public final class SBChannel
   {
       
      
      public var index:int;
      
      public var next:SBChannel;
      
      public var mute:int;
      
      public var volume:Number;
      
      public var lvol:Number;
      
      public var rvol:Number;
      
      public var panning:Number;
      
      public var sample:SBSample;
      
      public var pointer:Number;
      
      public var counter:int;
      
      public var speed:Number;
      
      public function SBChannel(param1:int)
      {
         super();
         this.index = param1;
      }
      
      public function initialize() : void
      {
         this.volume = 0;
         this.lvol = 0;
         this.rvol = 0;
         this.panning = 0;
         this.sample = null;
         this.pointer = 0;
         this.counter = 0;
         this.speed = 0;
      }
   }
}
