package flxmp
{
   public class Instrument
   {
       
      
      public var name:String;
      
      public var volumeEnvelope:Vector.<Number>;
      
      public var volEnvLength:int;
      
      public var panningEnvelope:Vector.<Number>;
      
      public var panEnvLength:int;
      
      public var numSamples:int;
      
      public var waves:Vector.<Wave>;
      
      public var smpNotes:Vector.<uint>;
      
      public var volSustain:int;
      
      public var volLoopStart:int;
      
      public var volLoopEnd:int;
      
      public var panSustain:int;
      
      public var panLoopStart:int;
      
      public var panLoopEnd:int;
      
      public var volON:Boolean;
      
      public var volSUS:Boolean;
      
      public var volLOOP:Boolean;
      
      public var panON:Boolean;
      
      public var panSUS:Boolean;
      
      public var panLOOP:Boolean;
      
      public var vibType:int;
      
      public var vibSweep:int;
      
      public var vibDepth:int;
      
      public var vibRate:int;
      
      public var fadeout:Number;
      
      public function Instrument()
      {
         super();
         this.smpNotes = new Vector.<uint>(96,true);
         this.numSamples = 0;
      }
   }
}
