package com.smbc.sound
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.utils.ByteArrayUtils;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.SoundNames;
   import com.smbc.enums.CoinSoundType;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.SoundManager;
   import flash.events.Event;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class SoundContainer
   {
      
      public static const NUM_BYTES_PER_CYCLE:int = 65536;
      
      public static const VT_MUSIC:String = "music";
      
      public static const VT_SFX:String = "sfx";
      
      public static const BT_BGM:String = "bgm";
      
      public static const BT_LOOPING_SFX:String = "loopingSfx";
      
      public static const BT_MUSIC_EFFECT:String = "musicEffect";
      
      public static const BT_OVERRIDE:String = "override";
      
      public static const BT_SFX:String = "sfx";
      
      private static const QUIET_COINS_VOLUME:Number = 0.25;
      
      private static const msToBytesFct:Function = ByteArrayUtils.msToBytes;
      
      public static var volume:int;
      
      private static const SOUND_COMPLETE_EVENT:Event = new Event(Event.SOUND_COMPLETE);
      
      private static const SOUND_TRANSFORM_ZERO:SoundTransform = new SoundTransform(0);
      
      private static const ZERO_BYTE_ARRAY:ByteArray = new ByteArray();
      
      private static const MAX_LOOPS_IN_ONE_CYCLE:int = 5;
      
      private static var IND_VOLUME:int;
      
      {
         function():void
         {
            while(ZERO_BYTE_ARRAY.length < NUM_BYTES_PER_CYCLE)
            {
               ZERO_BYTE_ARRAY.writeFloat(0);
            }
            ZERO_BYTE_ARRAY.position = 0;
         }();
      }
      
      public var loop:Boolean;
      
      private var loopPnt:int;
      
      protected var volType:String;
      
      public var soundType:String;
      
      private var offset:uint;
      
      private var startTime:int;
      
      protected var channel:SoundChannel;
      
      protected var _cPos:Number = 0;
      
      protected const SND_MNGR:SoundManager = SoundManager.SND_MNGR;
      
      protected const SND_NAME_SUFFIX:String = SoundManager.SND_NAME_SUFFIX;
      
      protected const SND_LOC_STR:String = SoundManager.SND_LOC_STR;
      
      private var _soundName:String;
      
      public var soundClass:Class;
      
      private var soundData:ByteArray;
      
      protected var transform:SoundTransform;
      
      public var sound:Sound;
      
      protected var _paused:Boolean;
      
      private var musicArr:Array;
      
      public function SoundContainer(param1:String, param2:ByteArray = null)
      {
         this.channel = new SoundChannel();
         super();
         this._soundName = param1;
         this.soundClass = SoundInfo[this._soundName] as Class;
         this.initiate();
         if(param2)
         {
            this.soundData = param2;
            param2.position = 0;
            this.startTime = getTimer();
            this.sound = new Sound();
            this.setUpSoundTransform();
            this.playSound();
         }
         else
         {
            this.sound = Sound(new this.soundClass());
            this.setUpSoundTransform();
         }
      }
      
      public static function initiateClass() : void
      {
         IND_VOLUME = MusicInfo.IND_VOLUME;
      }
      
      public static function initateCustomSoundClasses() : void
      {
         var _loc1_:MegaManChargeStartSnd = null;
      }
      
      protected function initiate() : void
      {
         this.musicArr = this.SND_MNGR.getMusicArr(this.soundName,ConsoleType.BIT_8);
         if(this.musicArr)
         {
            this.soundType = this.musicArr[MusicInfo.IND_SOUND_TYPE];
         }
         switch(this.soundType)
         {
            case BT_SFX:
               this.volType = VT_SFX;
               break;
            case BT_LOOPING_SFX:
               this.volType = VT_SFX;
               this.loop = true;
               break;
            case BT_MUSIC_EFFECT:
               this.volType = VT_MUSIC;
         }
         if(this.loop)
         {
            this.loopPnt = msToBytesFct(this.musicArr[MusicInfo.IND_LOOP_PNT]);
         }
      }
      
      protected function setUpSoundTransform() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = this.SND_MNGR.sfxVolMinusNum;
         if(this.volType == VT_MUSIC)
         {
            _loc1_ = this.SND_MNGR.musicVolMinusNum;
         }
         if(this.musicArr)
         {
            _loc2_ = this.musicArr[IND_VOLUME] - _loc1_;
         }
         else
         {
            _loc2_ = this.SND_MNGR.SND_LEV_DCT[this.soundName] - _loc1_;
         }
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         var _loc3_:Number = 0;
         if(_loc2_ > 0)
         {
            _loc3_ = _loc2_ / this.SND_MNGR.SND_LEV_DIVISOR;
         }
         if(GameSettings.coinSoundType != CoinSoundType.Normal && this._soundName == SoundNames.SFX_GAME_COIN && GameStateManager.GS_MNGR.gameState != GameStates.PAUSE)
         {
            if(GameSettings.coinSoundType == CoinSoundType.Quiet)
            {
               _loc3_ = QUIET_COINS_VOLUME;
            }
            else
            {
               _loc3_ = 0;
            }
         }
         this.transform = new SoundTransform(_loc3_);
      }
      
      protected function playSound() : void
      {
         if(this.soundData)
         {
            this.sound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData,false,0,true);
         }
         if(this.loop && !this.soundData)
         {
            this.channel = this.sound.play(this._cPos,int.MAX_VALUE);
         }
         else
         {
            this.channel = this.sound.play(this._cPos);
         }
         if(this.channel)
         {
            this.channel.addEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr,false,0,true);
            if(this.transform)
            {
               this.channel.soundTransform = this.transform;
            }
         }
         else
         {
            this.cleanUp();
         }
      }
      
      public function pauseSound() : void
      {
         if(this._paused || !this.channel)
         {
            return;
         }
         if(this.soundData)
         {
            this._cPos = this.soundData.position;
         }
         else
         {
            this._cPos = this.channel.position;
         }
         this.stopSound();
         this._paused = true;
      }
      
      public function resumeSound() : void
      {
         if(!this._paused)
         {
            return;
         }
         this._paused = false;
         if(this.soundData)
         {
            this.soundData.position = this._cPos;
            this._cPos = 0;
         }
         this.playSound();
      }
      
      public function stopSound() : void
      {
         if(this.soundData && this.sound)
         {
            this.sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
            this.soundData.position = 0;
         }
         if(this.channel)
         {
            this.channel.soundTransform = SOUND_TRANSFORM_ZERO;
            this.channel.removeEventListener(Event.SOUND_COMPLETE,this.soundCompleteLsr);
            this.channel.stop();
         }
         this._paused = false;
         this._cPos = 0;
      }
      
      public function cleanUp() : void
      {
         this.stopSound();
         this.sound = null;
         this.channel = null;
         this.SND_MNGR.SOUNDS_TO_PLAY_DCT.removeItem(this.soundName);
         this.SND_MNGR.CUR_SNDS_DCT.removeItem(this.soundName);
         this.SND_MNGR.P_SND_DCT.removeItem(this.soundName);
      }
      
      protected function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:ByteArray = param1.data;
         _loc2_.endian = Endian.LITTLE_ENDIAN;
         if(this.soundData.bytesAvailable >= NUM_BYTES_PER_CYCLE)
         {
            this.soundData.readBytes(_loc2_,0,NUM_BYTES_PER_CYCLE);
            _loc2_.position += NUM_BYTES_PER_CYCLE;
         }
         else if(this.soundData.bytesAvailable || this.loop)
         {
            _loc3_ = this.soundData.bytesAvailable;
            this.soundData.readBytes(_loc2_,0,this.soundData.bytesAvailable);
            _loc4_ = NUM_BYTES_PER_CYCLE - _loc3_;
            if(this.loop)
            {
               while(_loc3_ < NUM_BYTES_PER_CYCLE && _loc5_ < MAX_LOOPS_IN_ONE_CYCLE)
               {
                  _loc4_ = NUM_BYTES_PER_CYCLE - _loc3_;
                  this.soundData.position = this.loopPnt;
                  if(this.soundData.bytesAvailable < _loc4_)
                  {
                     _loc4_ = this.soundData.bytesAvailable;
                  }
                  this.soundData.readBytes(_loc2_,_loc3_,_loc4_);
                  _loc3_ += _loc4_;
                  _loc5_++;
               }
            }
            else if(_loc3_ < NUM_BYTES_PER_CYCLE)
            {
               ZERO_BYTE_ARRAY.readBytes(_loc2_,_loc3_,_loc4_);
               ZERO_BYTE_ARRAY.position = 0;
            }
            _loc2_.position = _loc3_;
         }
      }
      
      protected function soundCompleteLsr(param1:Event) : void
      {
         this.soundIsFinishedPlaying();
      }
      
      private function soundIsFinishedPlaying() : void
      {
         if(this.loop)
         {
            if(this.soundData)
            {
               this.soundData.position = this.loopPnt;
            }
            else
            {
               this.playSound();
            }
         }
         else
         {
            this.cleanUp();
         }
      }
      
      public function get soundName() : String
      {
         return this._soundName;
      }
      
      public function get cPos() : Number
      {
         return this._cPos;
      }
      
      public function get paused() : Boolean
      {
         return this._paused;
      }
   }
}
