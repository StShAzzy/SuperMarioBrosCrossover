package com.smbc.managers
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.cross.games.Game;
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.cross.sound.Song;
   import com.explodingRabbit.utils.Base64Fast;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.gme.EmulatorType;
   import com.gme.GameMusicEmu;
   import com.smbc.characters.Character;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MusicSets;
   import com.smbc.data.MusicType;
   import com.smbc.data.SoundNames;
   import com.smbc.data.Themes;
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.graphics.TopScreenText;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.FakeLevel;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.GlobVars;
   import com.smbc.sound.BackgroundMusic;
   import com.smbc.sound.MusicInfo;
   import com.smbc.sound.SoundContainer;
   import com.smbc.sound.SoundInfo;
   import com.smbc.sound.SoundLevels;
   import com.smbc.text.TextFieldContainer;
   import flash.events.Event;
   import flash.events.SampleDataEvent;
   import flash.media.SoundMixer;
   import flash.media.SoundTransform;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   import flash.utils.getTimer;
   import flxmp.Player;
   import neoart.flod.xm.XMPlayer;
   
   public final class SoundManager extends MainManager
   {
      
      public static const SND_MNGR:SoundManager = new SoundManager();
      
      private static var instantiated:Boolean;
      
      private static const AUDIO_SAMPLE_RATE:int = 44100;
      
      private static const AUDIO_BIT_RATE:int = 32;
      
      private static const AUDIO_NUM_CHANNELS:int = 2;
      
      private static const SPC_RESAMPLE_RATE:Number = 32000 / 44100;
      
      public static const SND_NAME_SUFFIX:String = "Snd";
      
      public static const SND_LOC_STR:String = "com.smbc.sound.soundFiles.";
      
      private static const IND_MUSIC_TYPE:int = MusicInfo.IND_SOUND_TYPE;
      
      private static const IND_MUSIC_BUFFER:int = MusicInfo.IND_BUFFER;
      
      private static const SOUND_TYPE_OVERRIDE:String = SoundContainer.BT_OVERRIDE;
       
      
      public const TURN_OFF_SOUND:Boolean = false;
      
      private var _readyToPlay:Boolean;
      
      private var base64Decoder:Base64Fast;
      
      private var _bgm:BackgroundMusic;
      
      private const SN_STAR_POWER:String = SoundNames.BGM_GAME_STAR_POWER;
      
      public const CUR_SNDS_DCT:CustomDictionary = new CustomDictionary();
      
      public const P_SND_DCT:CustomDictionary = new CustomDictionary();
      
      public const SOUNDS_TO_PLAY_DCT:CustomDictionary = new CustomDictionary();
      
      private const SFX_GAME_PAUSE:String = SoundNames.SFX_GAME_PAUSE;
      
      public var sfxVolMinusNum:Number = 45.0;
      
      public var musicVolMinusNum:Number = 0.0;
      
      private var bgmPausePos:Number;
      
      private var bgmClassName:String;
      
      public var songCurrentlyPlaying:Song;
      
      public var curMusicType:String;
      
      public const SND_LEV_DCT:CustomDictionary = new CustomDictionary();
      
      public const BGM_SCT_DCT:CustomDictionary = new CustomDictionary();
      
      public const SND_LEV_DIVISOR:int = 100;
      
      private const SN_SECONDS_LEFT_INTRO:String = SoundNames.BGM_GAME_SECONDS_LEFT_INTRO;
      
      public var muteSfx:Boolean;
      
      public var muteMusic:Boolean;
      
      private var loadingTfc:TextFieldContainer;
      
      private var loadingCtr:int;
      
      private var loadingNumToRecordThisPhase:int;
      
      private var loadingTotalNum:int;
      
      public var curMusicPlayer:GameMusicEmu;
      
      public var musicPlayerMain:GameMusicEmu;
      
      public var musicPlayerMinor:GameMusicEmu;
      
      public var sfxPlayer:GameMusicEmu;
      
      public var otherPlayer:GameMusicEmu;
      
      private const IND_MUSIC_CLASS:int = MusicInfo.IND_SOURCE_CLASS;
      
      private const IND_SONG_TYPE:int = MusicInfo.IND_FILE_TYPE;
      
      private const IND_MUSIC_TRACK:int = MusicInfo.IND_TRACK_NUM;
      
      private const IND_MUSIC_VOLUME:int = MusicInfo.IND_VOLUME;
      
      private const IND_MUSIC_START_TIME:int = MusicInfo.IND_START_TIME;
      
      private const IND_MUSIC_DURATION:int = MusicInfo.IND_DURATION;
      
      private const IND_MUSIC_ARR_8BIT:int = 0;
      
      private const IND_MUSIC_ARR_16BIT:int = 1;
      
      private const IND_MUSIC_ARR_GB:int = 2;
      
      private const NSF_INFO_DCT:CustomDictionary = new CustomDictionary();
      
      private const NSF_TRACK_OFFSET:int = -1;
      
      private var lastMusicSetSetting:int;
      
      private var lastMusicTypeSetting:int;
      
      public var changeMusicOnResumeGame:Boolean;
      
      public var soundBuffer:ByteArray;
      
      public var port1:int = -1;
      
      public var port2:int = -1;
      
      public var port3:int = -1;
      
      public var port4:int = -1;
      
      private var audioPlayerDct:CustomDictionary;
      
      private var wavData:ByteArray;
      
      private var _out:ByteArray;
      
      private var playingSpc:Boolean;
      
      private var xmPlayer:Player;
      
      private var flodPlayer:XMPlayer;
      
      public function SoundManager()
      {
         this.soundBuffer = new ByteArray();
         this.audioPlayerDct = new CustomDictionary();
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      public static function toArray(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = new ByteArray();
         if(param1.length & 1 == 1)
         {
            param1 = "0" + param1;
         }
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_ / 2] = parseInt(param1.substr(_loc3_,2),16);
            _loc3_ += 2;
         }
         return _loc2_;
      }
      
      public static function byteArrayToHex(param1:ByteArray, param2:Boolean = false) : String
      {
         var _loc3_:* = "";
         var _loc4_:uint = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ += ("0" + param1[_loc4_].toString(16)).substr(-2,2);
            if(param2)
            {
               if(_loc4_ < param1.length - 1)
               {
                  _loc3_ += ":";
               }
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function updateVars() : void
      {
         level = GlobVars.level;
         player = level.player;
      }
      
      override public function initiate() : void
      {
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         super.initiate();
         this.changeMuteSettings();
         this.musicPlayerMain = new GameMusicEmu(0);
         this.curMusicPlayer = this.musicPlayerMain;
         this.musicPlayerMain.init(EmulatorType.NSF);
         this.musicPlayerMain.setStereoDepth(0);
         this.musicPlayerMinor = new GameMusicEmu(1);
         this.musicPlayerMinor.init(EmulatorType.NSF);
         this.musicPlayerMinor.setStereoDepth(0);
         this.sfxPlayer = new GameMusicEmu(2);
         this.sfxPlayer.init(EmulatorType.NSF);
         this.sfxPlayer.setStereoDepth(0);
         this.otherPlayer = new GameMusicEmu(3);
         this.otherPlayer.init(EmulatorType.NSF);
         this.otherPlayer.setStereoDepth(0);
         SoundMixer.soundTransform = new SoundTransform(GameSettings.MASTER_VOLUME / this.SND_LEV_DIVISOR);
         SoundContainer.initiateClass();
         MusicSets.setUpSwapOrder();
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.changeSfxVolume();
         this.changeMusicVolume();
         var _loc1_:XMLList = describeType(SoundNames)..constant;
         var _loc2_:XMLList = describeType(SoundLevels)..constant;
         var _loc3_:int = _loc1_.length();
         var _loc4_:int = _loc2_.length();
         _loc5_ = 0;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc1_[_loc5_].@name;
            _loc7_ = SoundNames[_loc1_[_loc5_].@name] as String;
            _loc8_ = 0;
            while(_loc8_ < _loc4_)
            {
               _loc9_ = _loc2_[_loc8_].@name;
               _loc10_ = SoundLevels[_loc2_[_loc8_].@name] as int;
               if(_loc6_ == _loc9_)
               {
                  this.SND_LEV_DCT.addItem(_loc7_,_loc10_);
                  break;
               }
               _loc8_++;
            }
            _loc5_++;
         }
      }
      
      public function startLevel() : void
      {
         if(level is CharacterSelect)
         {
            return;
         }
         var _loc1_:* = !statMngr.newLev;
         this.changeMusic(null,_loc1_);
      }
      
      public function removeBgm() : void
      {
         if(this._bgm)
         {
            this._bgm.cleanUp();
            this._bgm = null;
         }
         if(this.curMusicPlayer.isPlaying)
         {
            this.curMusicPlayer.pause();
         }
      }
      
      public function startBgm(param1:String) : void
      {
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.removeBgm();
         var _loc2_:Class = getDefinitionByName(SND_LOC_STR + param1) as Class;
         this._bgm = new _loc2_();
      }
      
      public function pauseGame() : void
      {
         this.changeMusicOnResumeGame = false;
         this.lastMusicSetSetting = GameSettings.musicSet;
         this.lastMusicTypeSetting = GameSettings.musicType;
         this.pauseBgm();
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.pauseLoopingsSfx();
         SND_MNGR.playSoundNow(this.SFX_GAME_PAUSE);
      }
      
      public function resumeGame() : void
      {
         if(this.lastMusicSetSetting != GameSettings.musicSet || this.lastMusicTypeSetting != GameSettings.musicType || this.changeMusicOnResumeGame)
         {
            this.changeMusic();
         }
         this.changeMusicOnResumeGame = false;
         this.resumeBgm();
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.resumeLoopingSfx();
         SND_MNGR.playSound(this.SFX_GAME_PAUSE);
      }
      
      public function pauseResumeBgm() : void
      {
         if(this.curMusicPlayer.isPlaying)
         {
            this.curMusicPlayer.pause();
         }
         else if(this.curMusicPlayer.isPaused)
         {
            this.curMusicPlayer.play();
         }
      }
      
      public function pauseBgm() : void
      {
         if(this.curMusicPlayer.isPlaying)
         {
            this.curMusicPlayer.pause();
         }
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         if(this._bgm)
         {
            this._bgm.pauseSound();
         }
      }
      
      public function resumeBgm() : void
      {
         var _loc1_:Class = null;
         if(this.curMusicPlayer.isPaused)
         {
            this.curMusicPlayer.play();
         }
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         if(this._bgm)
         {
            if(this._bgm.paused)
            {
               this._bgm.resumeSound();
               return;
            }
            this.removeBgm();
         }
         if(this.bgmPausePos >= 0 && this.bgmClassName)
         {
            _loc1_ = getDefinitionByName(SND_LOC_STR + this.bgmClassName) as Class;
            this._bgm = new _loc1_();
            this._bgm.pauseSound();
            this._bgm.fakePause(this.bgmPausePos);
            this._bgm.resumeSound();
            this.bgmPausePos = 0;
            this.bgmClassName = null;
         }
      }
      
      public function pauseLoopingsSfx() : void
      {
         var _loc1_:SoundContainer = null;
         for each(_loc1_ in this.CUR_SNDS_DCT)
         {
            if(_loc1_.soundName == SoundNames.SFX_LINK_BOOMERANG || _loc1_.soundName == SoundNames.SFX_SIMON_CROSS || _loc1_.soundName == SoundNames.SFX_SIMON_AXE)
            {
               _loc1_.pauseSound();
            }
         }
      }
      
      public function resumeLoopingSfx() : void
      {
         var _loc1_:SoundContainer = null;
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         for each(_loc1_ in this.CUR_SNDS_DCT)
         {
            if(_loc1_.soundName == SoundNames.SFX_LINK_BOOMERANG || _loc1_.soundName == SoundNames.SFX_SIMON_CROSS || _loc1_.soundName == SoundNames.SFX_SIMON_AXE)
            {
               _loc1_.resumeSound();
            }
         }
      }
      
      public function removeSfx() : void
      {
         var _loc1_:* = null;
         var _loc2_:SoundContainer = null;
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         for(_loc1_ in this.CUR_SNDS_DCT)
         {
            _loc2_ = this.CUR_SNDS_DCT[_loc1_];
            this.removeSnd(_loc2_);
         }
         this.P_SND_DCT.clear();
      }
      
      public function playSound(param1:String) : void
      {
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.SOUNDS_TO_PLAY_DCT.addItem(param1);
         this._readyToPlay = true;
      }
      
      private function writeToSampleChannelData(param1:ByteArray, param2:Array) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc3_:Vector.<Number> = param2[0];
         var _loc4_:Vector.<Number> = param2[1];
         var _loc5_:int = 32768;
         var _loc6_:int = param1.length / 4;
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc8_ = param1.readShort();
            _loc9_ = param1.readShort();
            _loc8_ /= _loc5_;
            _loc9_ /= _loc5_;
            _loc3_[_loc7_] = _loc8_;
            _loc4_[_loc7_] = _loc9_;
            _loc7_++;
         }
      }
      
      public function swapEndianness16Bit(param1:ByteArray) : ByteArray
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc2_:int = getTimer();
         var _loc3_:ByteArray = new ByteArray();
         var _loc4_:int = param1.position;
         _loc3_.endian = param1.endian;
         param1.position = 0;
         var _loc5_:int = param1.length / 2;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = param1.readByte();
            _loc8_ = param1.readByte();
            _loc3_.writeByte(_loc8_);
            _loc3_.writeByte(_loc7_);
            _loc6_++;
         }
         _loc3_.position = 0;
         return _loc3_;
      }
      
      protected function convertByteArrayToFloat(param1:ByteArray) : ByteArray
      {
         var _loc5_:Number = NaN;
         var _loc2_:ByteArray = new ByteArray();
         var _loc3_:int = param1.length / 2;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = (_loc5_ = param1.readShort()) / 32768;
            _loc2_.writeFloat(_loc5_);
            _loc4_++;
         }
         _loc2_.position = 0;
         return _loc2_;
      }
      
      protected function onSampleData(param1:SampleDataEvent) : void
      {
         var _loc5_:Number = NaN;
         if(!this.wavData.bytesAvailable)
         {
            return;
         }
         var _loc2_:ByteArray = param1.data;
         var _loc3_:int = 8192 * 2;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = this.wavData.readFloat();
            _loc2_.writeFloat(_loc5_);
            _loc4_++;
         }
      }
      
      private function playGmeJava(param1:Array) : void
      {
      }
      
      public function restartCurrentSong() : void
      {
         this.playMusic(this.songCurrentlyPlaying);
      }
      
      public function playEmulatedSfx(param1:Array) : ByteArray
      {
         var _loc2_:int = 10;
         var _loc3_:int = ConsoleType.BIT_8;
         var _loc4_:ByteArray;
         if(_loc4_ = param1[_loc3_][IND_MUSIC_BUFFER])
         {
            return _loc4_;
         }
         (_loc4_ = new ByteArray()).endian = Endian.LITTLE_ENDIAN;
         this.playMusic(param1,this.sfxPlayer,false,_loc4_,_loc3_);
         if(!_loc4_.length)
         {
            throw new Error("what the hell");
         }
         param1[_loc3_][IND_MUSIC_BUFFER] = _loc4_;
         return _loc4_;
      }
      
      private function getMusicTypeConsole(param1:Boolean = false) : int
      {
         var _loc2_:int = GameSettings.musicType;
         if(_loc2_ <= ConsoleType.MAX_CONSOLE_VALUE)
         {
            return _loc2_;
         }
         if(_loc2_ == ConsoleType.CHARACTER)
         {
            return statMngr.getCurrentBmc(statMngr.curCharNum).consoleType;
         }
         if(_loc2_ == ConsoleType.MAP)
         {
            return grMngr.CLEAN_BMD_VEC_MAP[grMngr.cMapNum].consoleType;
         }
         return int(Math.random() * (ConsoleType.MAX_CONSOLE_VALUE + 1));
      }
      
      public function playMusic(param1:*, param2:GameMusicEmu = null, param3:Boolean = false, param4:ByteArray = null, param5:int = -1, param6:Boolean = false) : void
      {
         var _loc7_:Song = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         if(!param2)
         {
            param2 = this.curMusicPlayer;
         }
         this.pauseOppositeMusicPlayer();
         if(param2 == this.musicPlayerMain || param2 == this.musicPlayerMinor)
         {
            if(param2.isPlaying || param2.isPaused)
            {
               param2.stop();
            }
         }
         if(!param1)
         {
            return;
         }
         if(param1 is Array)
         {
            _loc8_ = param1 as Array;
         }
         else
         {
            _loc7_ = param1 as Song;
         }
         if(_loc8_)
         {
            param2.currentArr = _loc8_;
            if(param5 >= 0)
            {
               _loc8_ = _loc8_[param5];
            }
            else
            {
               _loc8_ = _loc8_[this.getMusicTypeConsole(true)];
            }
         }
         if(!_loc8_ && !_loc7_)
         {
            return;
         }
         if(_loc8_)
         {
            _loc9_ = _loc8_[this.IND_SONG_TYPE];
         }
         else
         {
            _loc9_ = _loc7_.format;
         }
         param2.init(_loc9_);
         var _loc10_:int = GameSettings.musicSet;
         var _loc11_:int = GameSettings.musicQuality;
         if(_loc8_)
         {
            param2.currentSndClass = _loc8_[this.IND_MUSIC_CLASS];
         }
         else
         {
            param2.currentSndClass = _loc7_.dataClass;
         }
         var _loc12_:ByteArray = new param2.currentSndClass() as ByteArray;
         if(_loc8_)
         {
            param2.currentTrack = _loc8_[this.IND_MUSIC_TRACK] + this.NSF_TRACK_OFFSET;
         }
         else
         {
            param2.currentTrack = _loc7_.track + this.NSF_TRACK_OFFSET;
         }
         param2.loadEmbeddedMusic(param2.currentSndClass);
         param2.startTrack(param2.currentTrack);
         if(_loc8_)
         {
            _loc13_ = _loc8_[this.IND_MUSIC_START_TIME];
         }
         else
         {
            _loc13_ = _loc7_.start;
         }
         if(_loc13_ != 0)
         {
            param2.seek(_loc13_);
         }
         if(_loc8_)
         {
            _loc14_ = _loc8_[this.IND_MUSIC_VOLUME] - this.musicVolMinusNum;
         }
         else
         {
            _loc14_ = _loc7_.volume;
         }
         if(_loc14_ < 0)
         {
            _loc14_ = 0;
         }
         var _loc15_:Number = 0;
         if(_loc14_ > 0)
         {
            _loc15_ = _loc14_ / this.SND_LEV_DIVISOR;
         }
         param2.volume = _loc15_;
         if(param4)
         {
            param2.recordTrack(param4,_loc8_[this.IND_MUSIC_DURATION]);
         }
         else if(!this.muteMusic || param6)
         {
            param2.play(null,param6);
         }
         else
         {
            param2.pause();
         }
      }
      
      public function removeAllSounds() : void
      {
         var _loc1_:SoundContainer = null;
         if(this.curMusicPlayer.isPlaying)
         {
            this.curMusicPlayer.pause();
         }
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         SoundMixer.stopAll();
         this.SOUNDS_TO_PLAY_DCT.clear();
         for each(_loc1_ in this.CUR_SNDS_DCT)
         {
            _loc1_.cleanUp();
         }
         this.P_SND_DCT.clear();
         this.CUR_SNDS_DCT.clear();
         this.removeBgm();
      }
      
      public function playSoundNow(param1:String) : void
      {
         var _loc2_:CustomDictionary = new CustomDictionary();
         _loc2_.addItem(param1);
         this.playStoredSounds(_loc2_);
      }
      
      public function removeSnd(param1:SoundContainer) : void
      {
         param1.cleanUp();
      }
      
      public function findSound(param1:String) : SoundContainer
      {
         if(this.TURN_OFF_SOUND)
         {
            return null;
         }
         var _loc2_:SoundContainer = this.CUR_SNDS_DCT[param1];
         if(_loc2_)
         {
            return _loc2_;
         }
         this.SOUNDS_TO_PLAY_DCT.removeItem(param1);
         return null;
      }
      
      public function removeStoredSound(param1:String) : void
      {
         if(this.TURN_OFF_SOUND)
         {
            return;
         }
         this.SOUNDS_TO_PLAY_DCT.removeItem(param1);
      }
      
      public function playStoredSounds(param1:CustomDictionary) : void
      {
         var _loc2_:String = null;
         var _loc3_:Class = null;
         var _loc4_:SoundContainer = null;
         var _loc5_:Class = null;
         var _loc6_:SoundContainer = null;
         var _loc7_:ByteArray = null;
         var _loc8_:Array = null;
         if(this.muteSfx)
         {
            param1.clear();
            return;
         }
         for each(_loc2_ in param1)
         {
            _loc3_ = SoundInfo[_loc2_] as Class;
            if(_loc4_ = this.CUR_SNDS_DCT[_loc2_])
            {
               this.removeSnd(_loc4_);
            }
            _loc5_ = SoundContainer;
            if(_loc8_ = this.getMusicArr(_loc2_))
            {
               if(_loc8_[ConsoleType.BIT_8][IND_MUSIC_TYPE] == SOUND_TYPE_OVERRIDE)
               {
                  _loc5_ = getDefinitionByName("com.smbc.sound." + _loc2_) as Class;
               }
               if(_loc7_ = this.playEmulatedSfx(_loc8_))
               {
                  _loc6_ = new _loc5_(_loc2_,_loc7_);
               }
            }
            else
            {
               if(_loc3_)
               {
                  _loc5_ = SoundInfo.INFO_DCT[_loc3_][SoundInfo.IND_CLASS];
               }
               _loc6_ = new _loc5_(_loc2_);
            }
            if(_loc6_)
            {
               this.CUR_SNDS_DCT.addItem(_loc2_,_loc6_);
            }
            param1.removeItem(_loc2_);
         }
         this._readyToPlay = false;
      }
      
      public function getMusicArr(param1:String, param2:int = -1) : Array
      {
         var _loc3_:Array = MusicInfo["SFX_" + param1];
         if(param2 == -1)
         {
            return _loc3_;
         }
         if(_loc3_)
         {
            return _loc3_[param2];
         }
         return null;
      }
      
      public function fromJava(param1:String) : void
      {
         if(param1)
         {
            TopScreenText.instance.updScoreDisp(param1.length.toString());
            this.soundBuffer = toArray(param1);
         }
      }
      
      public function changeMusic(param1:String = null, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:Vector.<Game> = null;
         var _loc8_:ThemeGroup = null;
         var _loc9_:Song = null;
         var _loc10_:int = 0;
         var _loc12_:String = null;
         var _loc13_:Song = null;
         var _loc14_:Song = null;
         this.musicPlayerMain.removeEventListener(CustomEvents.TRACK_END,this.timeUpWarningEndHandler);
         this.musicPlayerMinor.removeEventListener(CustomEvents.TRACK_END,this.timeUpWarningEndHandler);
         var _loc3_:GameMusicEmu = this.musicPlayerMain;
         var _loc7_:int = GameSettings.getMusicSet();
         if(level is TitleLevel)
         {
            param1 = MusicType.TITLE_SCREEN;
         }
         if((_loc7_ == MusicSets.MAP || param1 == MusicType.CHAR_SEL || param1 == MusicType.TITLE_SCREEN) && param1 != MusicType.CHOOSE_CHARACTER && param1 != MusicType.DIE)
         {
            _loc6_ = grMngr.drawingBoardMapSkinCont.games;
         }
         else
         {
            _loc6_ = Character.getGamesFromSkin(statMngr.curCharNum);
         }
         if(!_loc6_ || !_loc6_.length)
         {
            return;
         }
         if((param1 == MusicType.CHAR_SEL || param1 == MusicType.TITLE_SCREEN) && GameSettings.musicType == ConsoleType.CHARACTER)
         {
            _loc10_ = grMngr.drawingBoardMapSkinCont.consoleType;
         }
         else
         {
            _loc10_ = GameSettings.getMusicConsole();
         }
         var _loc11_:Game = _loc6_[_loc10_];
         if(!param1)
         {
            if(level is CharacterSelect || level is FakeLevel)
            {
               return;
            }
            _loc4_ = true;
            if(player && player.starPwrBgmShouldBePlaying)
            {
               if(!(_loc9_ = _loc11_.getSongFromTypePlayList(MusicType.STAR)))
               {
                  _loc9_ = (_loc11_ = grMngr.drawingBoardMapSkinCont.games[_loc10_]).getSongFromTypePlayList(MusicType.STAR);
               }
               _loc3_ = this.musicPlayerMinor;
            }
            if(!_loc9_)
            {
               param1 = level.type;
               _loc12_ = LevelDataManager.currentLevelData.getMainArea(level.fullLevStr);
               if(level.areaStr != _loc12_)
               {
                  _loc3_ = this.musicPlayerMinor;
               }
               _loc8_ = Themes.getMapTheme();
               param1 = _loc11_.getOverridedMusicType(_loc8_,param1);
               if(_loc11_ == grMngr.drawingBoardMapSkinCont.games[_loc10_])
               {
                  _loc9_ = _loc11_.getSongFromThemePlayList(_loc8_.theme,_loc8_.setNum,param1);
               }
            }
         }
         else if(param1 == SoundNames.BGM_GAME_SECONDS_LEFT_INTRO)
         {
            _loc9_ = this.getSecondsLeftSng(_loc10_);
         }
         else if(param1 == MusicType.CHOOSE_CHARACTER && statMngr.curCharNum == MegaMan.CHAR_NUM)
         {
            if(_loc13_ = MegaManBase.getProtoManWhistleSong())
            {
               _loc9_ = _loc13_;
            }
         }
         if(!_loc9_)
         {
            _loc9_ = _loc11_.getSongFromTypePlayList(param1);
         }
         if(_loc4_ && statMngr.secondsLeft)
         {
            _loc14_ = _loc11_.getHurryVersionOfSong(_loc9_);
            if(!(player && player.starPwrBgmShouldBePlaying))
            {
               if(!_loc14_)
               {
                  _loc14_ = _loc11_.getSongFromTypePlayList(MusicType.HURRY);
               }
               if(_loc14_)
               {
                  _loc9_ = _loc14_;
               }
            }
         }
         if(_loc9_)
         {
            if(!_loc3_.isPlaying || this.songCurrentlyPlaying != _loc9_ || _loc3_.fadeTmr)
            {
               this.curMusicPlayer = _loc3_;
               if(_loc3_ == this.musicPlayerMain && _loc3_.isPaused && _loc3_.currentSong == _loc9_ && param2)
               {
                  this.curMusicPlayer.currentSong = _loc9_;
                  _loc3_.play();
                  this.pauseOppositeMusicPlayer();
               }
               else
               {
                  this.curMusicPlayer.currentSong = _loc9_;
                  this.playMusic(_loc9_,_loc3_);
               }
               if(param1 == SoundNames.BGM_GAME_SECONDS_LEFT_INTRO)
               {
                  _loc3_.addEventListener(CustomEvents.TRACK_END,this.timeUpWarningEndHandler,false,0,true);
               }
               this.songCurrentlyPlaying = _loc9_;
               this.curMusicType = param1;
            }
         }
      }
      
      protected function timeUpWarningEndHandler(param1:Event) : void
      {
         if(level)
         {
            level.addEventListener(CustomEvents.GAME_LOOP_END,this.gameLoopEndHandler,false,0,true);
         }
      }
      
      protected function gameLoopEndHandler(param1:Event) : void
      {
         if(level)
         {
            level.removeEventListener(CustomEvents.GAME_LOOP_END,this.gameLoopEndHandler);
         }
         this.changeMusic();
      }
      
      private function getSecondsLeftSng(param1:int) : Song
      {
         switch(param1)
         {
            case ConsoleType.BIT_8:
               return Games.superMarioBros.SngSecondsLeft;
            case ConsoleType.BIT_16:
               return Games.superMarioBrosSnes.SngTimeUpWarning;
            case ConsoleType.GB:
               return Games.superMarioBros.SngSecondsLeft;
            default:
               return Games.superMarioBros.SngSecondsLeft;
         }
      }
      
      private function pauseOppositeMusicPlayer() : void
      {
         if(this.curMusicPlayer == this.musicPlayerMain && this.musicPlayerMinor.isPlaying)
         {
            this.musicPlayerMinor.pause();
         }
         else if(this.curMusicPlayer == this.musicPlayerMinor && this.musicPlayerMain.isPlaying)
         {
            this.musicPlayerMain.pause();
         }
      }
      
      public function getMusicCharName() : String
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc1_:int = GameSettings.musicSet;
         if(_loc1_ == MusicSets.CHARACTER)
         {
            _loc2_ = statMngr.curCharNum;
         }
         else if(_loc1_ == MusicSets.MAP)
         {
            _loc2_ = grMngr.CLEAN_BMD_VEC_MAP[grMngr.cMapNum].charArr[0];
         }
         else if(_loc1_ == MusicSets.RANDOM)
         {
            _loc2_ = statMngr.getRandomCharNum();
         }
         else
         {
            _loc3_ = MusicSets.convNumToStr(_loc1_);
            _loc2_ = CharacterInfo.convNameToNum(_loc3_);
         }
         return CharacterInfo.CHAR_ARR[_loc2_][CharacterInfo.IND_CHAR_NAME_CAPS];
      }
      
      public function starPwrStart() : void
      {
         if(level && level is TitleLevel)
         {
            return;
         }
         if(this._bgm && this._bgm.soundName == this.SN_SECONDS_LEFT_INTRO)
         {
            return;
         }
         this.changeMusic();
      }
      
      public function starPwrEnd() : void
      {
         if(level && level is TitleLevel)
         {
            return;
         }
         this.changeMusic(null,true);
      }
      
      public function changeMuteSettings() : void
      {
         this.muteSfx = GameSettings.muteSfx;
         var _loc1_:Boolean = this.muteMusic;
         this.muteMusic = GameSettings.muteMusic;
         if(_loc1_ != this.muteMusic && level is TitleLevel)
         {
            if(!this.muteMusic)
            {
               this.changeMusic();
            }
            else
            {
               this.curMusicPlayer.stop();
            }
         }
      }
      
      public function changeSfxVolume() : void
      {
         this.sfxVolMinusNum = SoundLevels.MAX_VOLUME - GameSettings.SFX_VOLUME;
      }
      
      public function changeMusicVolume() : void
      {
         this.musicVolMinusNum = SoundLevels.MAX_VOLUME - GameSettings.MUSIC_VOLUME;
      }
      
      public function get bgm() : BackgroundMusic
      {
         return this._bgm;
      }
      
      public function get readyToPlay() : Boolean
      {
         return this._readyToPlay;
      }
      
      public function recordSoundsPhase1() : void
      {
         this.loadingTotalNum = MusicInfo.SFX_DCT.length;
         this.loadingNumToRecordThisPhase = int(this.loadingTotalNum / 2);
         this.loadingTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_CREDITS);
         this.loadingTfc.x = GlobVars.STAGE_WIDTH - 255;
         this.loadingTfc.y = GlobVars.STAGE_HEIGHT - 35;
         this.loadingTfc.text = "loading " + this.loadingCtr + " / " + this.loadingTotalNum;
         game.addChild(this.loadingTfc);
         this.recordNextSnd();
      }
      
      protected function enterFrameHandler(param1:Event) : void
      {
         game.stage.removeEventListener(Event.ENTER_FRAME,this.enterFrameHandler);
         this.recordNextSnd();
      }
      
      private function recordNextSnd() : void
      {
         var _loc2_:Array = null;
         var _loc1_:CustomDictionary = MusicInfo.SFX_DCT;
         var _loc3_:int = 0;
         var _loc4_:* = _loc1_;
         for each(_loc2_ in _loc4_)
         {
            this.playEmulatedSfx(_loc2_);
            _loc1_.removeItem(_loc2_);
            ++this.loadingCtr;
         }
         this.loadingTfc.text = "loading " + this.loadingCtr + " / " + this.loadingTotalNum;
         if(_loc1_.length)
         {
            game.stage.addEventListener(Event.ENTER_FRAME,this.enterFrameHandler,false,0,true);
         }
         else
         {
            game.removeChild(this.loadingTfc);
            this.loadingTfc = null;
            scrnMngr.openingLogosEnd();
         }
      }
      
      public function recordSoundsPhase2() : void
      {
         this.loadingNumToRecordThisPhase = int.MAX_VALUE;
         this.recordNextSnd();
      }
   }
}
