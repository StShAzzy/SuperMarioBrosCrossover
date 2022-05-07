package flxmp
{
   public class Channel
   {
       
      
      private var parentMod:Module;
      
      public var note:int;
      
      public var nextNote:int;
      
      public var realNote:int;
      
      public var period:int;
      
      public var targetPeriod:int;
      
      public var oldPeriod:int;
      
      public var instrument:Instrument;
      
      public var volume:Number;
      
      public var panning:Number;
      
      public var columnVolume:Number;
      
      public var targetVolume:Number;
      
      public var targetPanning:Number;
      
      public var volumeCommand:int;
      
      public var volumeTabIndex:int;
      
      public var fadeout:Number;
      
      public var panEnvPos:int;
      
      public var volEnvPos:int;
      
      public var effect:int;
      
      public var nextEffect:int;
      
      public var ignoreInstrument:Boolean;
      
      public var ignoreNextInstrument:Boolean;
      
      public var parameter:int;
      
      public var oldParameter:int;
      
      public var wave:Wave;
      
      public var waveData:Vector.<Number>;
      
      public var waveType:int;
      
      public var wavePos:Number;
      
      public var waveVolume:Number;
      
      public var wavePanning:Number;
      
      public var lastIndex:int;
      
      public var nextIndex:int;
      
      public var waveStep:Number;
      
      public var targetWaveStep:Number;
      
      public var waveReverse:Boolean;
      
      public var waveLength:Number;
      
      public var loopStart:Number;
      
      public var loopEnd:Number;
      
      public var loopLength:Number;
      
      public var keyDown:Boolean;
      
      public var vibdepth:int;
      
      public var vibrate:Number;
      
      public var vibform:int;
      
      public var vibtime:Number;
      
      public var vib:Boolean;
      
      public function Channel(param1:Module)
      {
         super();
         this.parentMod = param1;
         this.nextNote = 0;
         this.wavePos = 0;
         this.lastIndex = 0;
         this.nextIndex = 1;
         this.waveStep = 0;
         this.waveData = new Vector.<Number>();
         this.waveData.push(0);
         this.wavePanning = 0.5;
         this.waveVolume = 1;
         this.loopStart = 0;
         this.loopEnd = 1;
         this.loopLength = 1;
         this.waveType = 0;
         this.keyDown = false;
         this.waveReverse = false;
         this.fadeout = 1;
         this.volEnvPos = 0;
         this.panEnvPos = 0;
         this.vib = false;
         this.vibdepth = 0;
         this.vibrate = 0;
         this.vibform = 0;
         this.vibtime = 0;
         this.columnVolume = 1;
         this.volumeTabIndex = 64;
         this.volume = 0;
         this.panning = 0.5;
         this.targetVolume = 0;
         this.targetPanning = 0.5;
         this.ignoreInstrument = false;
         this.ignoreNextInstrument = false;
      }
   }
}
