package neoart.flod.core
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.utils.ByteArray;
   
   public class SBPlayer extends EventDispatcher
   {
      
      public static const ENCODING:String = "us-ascii";
       
      
      public var mixer:Soundblaster;
      
      public var channels:int;
      
      public var version:int;
      
      public var title:String = "";
      
      public var length:int;
      
      public var restart:int;
      
      public var speed:int;
      
      public var tempo:int;
      
      public var loopSong:int;
      
      public var track:Vector.<int>;
      
      public var counter:int;
      
      protected var sound:Sound;
      
      protected var soundChan:SoundChannel;
      
      protected var soundPos:Number;
      
      protected var timer:int;
      
      protected var master:int;
      
      public function SBPlayer(param1:Soundblaster = null)
      {
         super();
         this.mixer = param1 || new Soundblaster();
         this.mixer.player = this;
         this.loopSong = 0;
         this.soundPos = 0;
      }
      
      public function load(param1:ByteArray) : int
      {
         this.version = 0;
         param1.endian = "littleEndian";
         param1.position = 0;
         return this.version;
      }
      
      public function play(param1:Sound = null) : int
      {
         if(!this.version)
         {
            return 0;
         }
         if(this.soundPos == 0)
         {
            this.initialize();
         }
         this.sound = param1 || new Sound();
         this.sound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.mixer.mix);
         this.soundChan = this.sound.play(this.soundPos);
         this.soundChan.addEventListener(Event.SOUND_COMPLETE,this.completeHandler);
         this.soundPos = 0;
         return 1;
      }
      
      public function pause() : void
      {
         if(!this.version || !this.soundChan)
         {
            return;
         }
         this.soundPos = this.soundChan.position;
         this.removeEvents();
      }
      
      public function stop() : void
      {
         if(!this.version)
         {
            return;
         }
         if(this.soundChan)
         {
            this.removeEvents();
         }
         this.soundPos = 0;
         this.reset();
      }
      
      public function process() : void
      {
      }
      
      protected function setup() : void
      {
         this.mixer.setup(this.channels);
      }
      
      protected function initialize() : void
      {
         this.mixer.initialize();
         this.counter = this.speed;
         this.timer = 0;
         this.master = 64;
         this.mixer.samplesTick = 110250 / this.tempo;
      }
      
      protected function reset() : void
      {
      }
      
      private function completeHandler(param1:Event) : void
      {
         this.stop();
         dispatchEvent(param1);
      }
      
      private function removeEvents() : void
      {
         this.soundChan.stop();
         this.soundChan.removeEventListener(Event.SOUND_COMPLETE,this.completeHandler);
         this.sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.mixer.mix);
      }
   }
}
