package com.gme
{
   import com.explodingRabbit.cross.sound.Song;
   import com.explodingRabbit.utils.ByteArrayUtils;
   import com.smbc.events.CustomEvents;
   import com.smbc.managers.SoundManager;
   import com.smbc.sound.SoundContainer;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.SampleDataEvent;
   import flash.events.TimerEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLLoader;
   import flash.sampler.Sample;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.IDataInput;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import sample.libgme.CModule;
   
   public class GameMusicEmu extends EventDispatcher
   {
      
      public static const BYTE_LENGTH:int = 8192 * 2;
      
      public static const SAMPLE_RATE:int = 44100;
      
      public static const NUM_BYTES_PER_CHANNEL:int = 4;
      
      public static const NUM_BYTES_PER_SAMPLE:int = 8;
      
      public static const NUM_BYTES_PER_SECOND:int = SAMPLE_RATE * NUM_BYTES_PER_SAMPLE;
      
      private static const NUM_BYTES_PER_READ:int = SoundContainer.NUM_BYTES_PER_CYCLE;
      
      private static const NUM_SAMPLES:int = 8192 * 2;
      
      private static const NUM_BYTES:int = NUM_SAMPLES * 2;
      
      private static const NUM_BYTES_FLOAT:int = NUM_BYTES * 2;
      
      private static const NUM_LOOPS:int = NUM_SAMPLES / 2;
      
      private static const FLOAT_DIVIDE:int = 32768;
      
      private static const FLOAT_MULTIPLY:Number = 0.000030517578125;
      
      private static const bytesToMsFct:Function = ByteArrayUtils.bytesToMs;
      
      private static const msToBytesFct:Function = ByteArrayUtils.msToBytes;
      
      private static const TRACK_END_EVENT:Event = new Event(CustomEvents.TRACK_END);
      
      public static const QUALITY_LOW:int = 1;
      
      public static const QUALITY_MID:int = 128;
      
      public static const QUALITY_HIGH:int = 0;
      
      private static const TEST_TMR_DUR:int = 10000;
       
      
      private var recordedData:ByteArray;
      
      public var fadeTmr:Timer;
      
      private var fadeDelayTmr:Timer;
      
      private const FADE_TMR_INT:int = 50;
      
      private var fadeStartTime:int;
      
      private var fadeDuration:int;
      
      private var fadeStartVolume:Number;
      
      public var currentSndClass:Class;
      
      public var currentTrack:int;
      
      public var currentSong:Song;
      
      public var currentArr:Array;
      
      public var port1:int = -1;
      
      public var port2:int = -1;
      
      public var port3:int = -1;
      
      public var port4:int = -1;
      
      private var dataPosition:int;
      
      private var byteArray:ByteArray;
      
      private var sample:Sample;
      
      private var emuPtr:int;
      
      private var testTmr:Timer;
      
      private var playStartTime:int;
      
      private var accumalatedEmuTime:int;
      
      private var _sound:Sound;
      
      private var sndMngr:SoundManager;
      
      private var _soundChannel:SoundChannel;
      
      private var _soundTransform:SoundTransform;
      
      private var _urlLoader:URLLoader;
      
      private var _isPlaying:Boolean;
      
      private var _isPaused:Boolean;
      
      private var out:ByteArray;
      
      private var _volume:Number;
      
      private var _emulatorType:String;
      
      private var buffer:ByteArray;
      
      public var emuInd:int;
      
      private var bufPtr:int;
      
      private var floatBufPtr:int;
      
      private var bytesPtr:int;
      
      public function GameMusicEmu(param1:int)
      {
         this.recordedData = new ByteArray();
         super();
         this.emuInd = param1;
         this.sndMngr = SoundManager.SND_MNGR;
         this._isPlaying = false;
         this._volume = 1;
         this._sound = new Sound();
         this._soundTransform = new SoundTransform();
         this._emulatorType = "";
         this.bufPtr = CModule.malloc(NUM_BYTES);
         this.floatBufPtr = CModule.malloc(NUM_BYTES_FLOAT);
         this.out = new ByteArray();
         this.out.endian = Endian.LITTLE_ENDIAN;
      }
      
      public static function bytesToMs(param1:uint) : int
      {
         return Math.round(param1 / NUM_BYTES_PER_SECOND * 1000);
      }
      
      public static function msToBytes(param1:int, param2:int = 8) : uint
      {
         var _loc3_:int = Math.round(param1 / 1000 * NUM_BYTES_PER_SECOND);
         var _loc4_:int = _loc3_ % param2;
         if(_loc4_ < param2 / 2)
         {
            _loc3_ -= _loc4_;
         }
         else
         {
            _loc3_ += param2 - _loc4_;
         }
         return _loc3_;
      }
      
      public function get isPlaying() : Boolean
      {
         return this._isPlaying;
      }
      
      public function get isPaused() : Boolean
      {
         return this._isPaused;
      }
      
      public function get volume() : Number
      {
         return this._volume;
      }
      
      public function set volume(param1:Number) : void
      {
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 < 0)
         {
            param1 = 0;
         }
         this._volume = param1;
         this._soundTransform.volume = this._volume;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = this._soundTransform;
         }
      }
      
      public function get pan() : Number
      {
         return this._soundTransform.pan;
      }
      
      public function set pan(param1:Number) : void
      {
         if(param1 > 1)
         {
            param1 = 1;
         }
         if(param1 < -1)
         {
            param1 = -1;
         }
         this._soundTransform.pan = param1;
         if(this._soundChannel != null)
         {
            this._soundChannel.soundTransform = this._soundTransform;
         }
      }
      
      public function get emulatorType() : String
      {
         return this._emulatorType;
      }
      
      public function freeEmu(param1:Boolean = false) : void
      {
         libgme.gme_delete(this.emuPtr);
         this.emuPtr = 0;
         if(this.bytesPtr != 0)
         {
            CModule.free(this.bytesPtr);
         }
         if(param1)
         {
            CModule.free(this.floatBufPtr);
            CModule.free(this.bufPtr);
         }
      }
      
      public function init(param1:String) : void
      {
         if(this._emulatorType == param1)
         {
            return;
         }
         if(this.emuPtr != 0)
         {
            this.freeEmu();
         }
         this._emulatorType = param1;
         switch(param1)
         {
            case EmulatorType.GBS:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_gbs_type,SAMPLE_RATE);
               break;
            case EmulatorType.KSS:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_kss_type,SAMPLE_RATE);
               break;
            case EmulatorType.NSF:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_nsf_type,SAMPLE_RATE);
               break;
            case EmulatorType.NSFE:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_nsfe_type,SAMPLE_RATE);
               break;
            case EmulatorType.SAP:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_sap_type,SAMPLE_RATE);
               break;
            case EmulatorType.SPC:
               this.emuPtr = libgme.gme_new_emu(libgme.gme_spc_type,SAMPLE_RATE);
               break;
            default:
               this._emulatorType = "";
         }
      }
      
      public function startTrack(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         libgme.gme_start_track(this.emuPtr,param1);
      }
      
      public function setSpcPorts() : void
      {
      }
      
      public function getVoiceCount() : void
      {
      }
      
      public function getVoiceName(param1:int) : String
      {
         return null;
      }
      
      public function muteVoice(param1:int) : void
      {
      }
      
      public function unmuteVoice(param1:int) : void
      {
      }
      
      public function trackCount() : int
      {
         return libgme.gme_track_count(this.emuPtr);
      }
      
      public function trackEnded() : Boolean
      {
         return Boolean(libgme.gme_track_ended(this.emuPtr));
      }
      
      public function trackInfo(param1:int) : void
      {
         var _loc2_:int = 0;
         libgme.gme_track_info(this.emuPtr,_loc2_,param1);
         var _loc3_:track_info_t = track_info_t.create();
         _loc3_.swigCPtr = _loc2_;
      }
      
      public function tell() : int
      {
         return libgme.gme_tell(this.emuPtr);
      }
      
      public function seek(param1:uint) : void
      {
         libgme.gme_seek(this.emuPtr,param1);
      }
      
      public function setTempo(param1:Number) : void
      {
         libgme.gme_set_tempo(this.emuPtr,param1);
      }
      
      public function setFade(param1:int) : void
      {
         libgme.gme_set_fade(this.emuPtr,param1);
      }
      
      public function setStereoDepth(param1:Number) : void
      {
         libgme.gme_set_stereo_depth(this.emuPtr,param1);
      }
      
      private function recordGme(param1:ByteArray, param2:int = 0) : void
      {
         var _loc3_:int = 0;
         if(param2 == 0)
         {
            param2 = int.MAX_VALUE;
         }
         while(!libgme.gme_track_ended(this.emuPtr) && libgme.gme_tell(this.emuPtr) < param2)
         {
            libgme.gme_play_float(this.emuPtr,NUM_SAMPLES,this.bufPtr,this.floatBufPtr);
            CModule.readBytes(this.floatBufPtr,NUM_BYTES_FLOAT,param1);
            _loc3_++;
         }
      }
      
      public function recordTrack(param1:ByteArray, param2:int = 0) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:ByteArray = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         if(param1)
         {
            _loc3_ = 0;
            if(param2)
            {
               _loc3_ = msToBytes(param2);
            }
            (_loc4_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
            _loc5_ = getTimer();
            this.recordGme(_loc4_,param2);
            _loc6_ = getTimer() - _loc5_;
            if(param2 >= 0)
            {
               _loc4_.position -= NUM_BYTES_PER_SAMPLE;
               _loc7_ = _loc4_.readFloat();
               while(_loc7_ == 0 && _loc4_.position != 0)
               {
                  _loc4_.position -= 12;
                  _loc7_ = _loc4_.readFloat();
               }
               if(_loc4_.position == 0)
               {
                  throw new Error("recorded sound is silent");
               }
               _loc4_.position += NUM_BYTES_PER_CHANNEL;
               if(Boolean(_loc3_) && _loc4_.position > _loc3_)
               {
                  _loc4_.position = _loc3_;
               }
               param1.writeBytes(_loc4_,0,_loc4_.position);
               _loc4_.clear();
            }
            else
            {
               param1.writeBytes(_loc4_);
            }
            param1.position = 0;
         }
         if(Boolean(param1) && !param1.bytesAvailable)
         {
            throw new Error("no bytes recorded");
         }
      }
      
      public function play(param1:ByteArray = null, param2:Boolean = false) : void
      {
         if(this.sndMngr.muteMusic && !param2)
         {
            this.pause();
            return;
         }
         if(Boolean(this.currentSong) && Boolean(this.currentSong.fadeStart))
         {
            this.setFade(this.currentSong.fadeStart);
         }
         this.buffer = param1;
         if(this._isPaused)
         {
            this._isPaused = false;
            this._isPlaying = true;
            this._sound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this._soundChannel = this._sound.play(0,1,this._soundTransform);
            this.removeFadeTmr();
         }
         else
         {
            this._isPaused = false;
            this._isPlaying = true;
            this._sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this._sound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this._soundTransform.volume = this._volume;
            this._soundChannel = this._sound.play(0,1,this._soundTransform);
            this.removeFadeTmr();
         }
      }
      
      protected function testTmrHandler(param1:TimerEvent) : void
      {
         this.removeTestTmr();
         var _loc2_:int = getTimer();
         this.stop();
      }
      
      private function removeTestTmr() : void
      {
         this.testTmr.stop();
         this.testTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.testTmrHandler);
         this.testTmr = null;
      }
      
      public function stop() : void
      {
         if(this == this.sndMngr.curMusicPlayer)
         {
            this.sndMngr.songCurrentlyPlaying = null;
         }
         this._isPaused = false;
         this._isPlaying = false;
         this._sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.removeFadeTmr();
         if(this._soundChannel != null)
         {
            this._soundChannel.stop();
         }
      }
      
      public function pause() : void
      {
         this._isPaused = true;
         this._isPlaying = false;
         this._sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         if(this._soundChannel != null)
         {
            this._soundChannel.stop();
         }
      }
      
      public function fadeOut(param1:int, param2:int = 0) : void
      {
         if(!this.isPlaying)
         {
            return;
         }
         this.fadeDuration = param1;
         this.fadeStartVolume = this._volume;
         if(param2 != 0)
         {
            this.fadeDelayTmr = new Timer(param2,1);
            this.fadeDelayTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.fadeDelayTmrHandler,false,0,true);
            this.fadeDelayTmr.start();
         }
         else
         {
            this.fadeTmr = null;
            this.fadeTmr = new Timer(this.FADE_TMR_INT);
            this.fadeTmr.addEventListener(TimerEvent.TIMER,this.fadeTmrHandler,false,0,true);
            this.fadeTmr.start();
            this.fadeStartTime = getTimer();
         }
      }
      
      private function fadeDelayTmrHandler(param1:TimerEvent) : void
      {
         this.fadeDelayTmr.stop();
         this.fadeDelayTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.fadeDelayTmrHandler);
         this.fadeDelayTmr = null;
         this.fadeTmr = new Timer(this.FADE_TMR_INT);
         this.fadeTmr.addEventListener(TimerEvent.TIMER,this.fadeTmrHandler,false,0,true);
         this.fadeTmr.start();
         this.fadeStartTime = getTimer();
      }
      
      private function fadeTmrHandler(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         if(this._soundChannel)
         {
            _loc2_ = getTimer() - this.fadeStartTime;
            _loc3_ = _loc2_ / this.fadeDuration;
            if(_loc3_ > 1)
            {
               _loc3_ = 1;
            }
            _loc3_ = 1 - _loc3_;
            this._volume = _loc3_ * this.fadeStartVolume;
            if(this._volume < 0)
            {
               this._volume = 0;
            }
            this._soundTransform.volume = this._volume;
            this._soundChannel.soundTransform = this._soundTransform;
            if(this._volume == 0)
            {
               this.stop();
               this.removeFadeTmr();
            }
         }
         else
         {
            this.removeFadeTmr();
         }
      }
      
      private function removeFadeTmr() : void
      {
         if(this.fadeTmr)
         {
            this.fadeTmr.stop();
            this.fadeTmr.removeEventListener(TimerEvent.TIMER,this.fadeTmrHandler);
            this.fadeTmr = null;
         }
         if(this.fadeDelayTmr)
         {
            this.fadeDelayTmr.stop();
            this.fadeDelayTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.fadeDelayTmrHandler);
            this.fadeDelayTmr = null;
         }
      }
      
      public function loadEmbeddedMusic(param1:Class) : void
      {
         var _loc2_:ByteArray = new param1() as ByteArray;
         _loc2_.endian = Endian.LITTLE_ENDIAN;
         _loc2_.position = 0;
         this.bytesPtr = CModule.malloc(_loc2_.length);
         CModule.writeBytes(this.bytesPtr,_loc2_.length,_loc2_ as IDataInput);
         this.handleError(libgme.gme_load_data(this.emuPtr,this.bytesPtr,_loc2_.length));
         this.dispatchLoadCompleteEvent();
      }
      
      private function handleError(param1:String) : void
      {
         if(param1)
         {
            throw new Error(param1);
         }
      }
      
      private function dispatchLoadCompleteEvent() : void
      {
         var _loc1_:Event = null;
         _loc1_ = new Event(Event.COMPLETE);
         dispatchEvent(_loc1_);
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         this.handleError(libgme.gme_play_float(this.emuPtr,NUM_SAMPLES,this.bufPtr,this.floatBufPtr));
         var _loc2_:ByteArray = param1.data;
         _loc2_.endian = Endian.LITTLE_ENDIAN;
         CModule.readBytes(this.floatBufPtr,NUM_BYTES_FLOAT,_loc2_);
         if(this.trackEnded())
         {
            dispatchEvent(TRACK_END_EVENT);
         }
      }
   }
}
