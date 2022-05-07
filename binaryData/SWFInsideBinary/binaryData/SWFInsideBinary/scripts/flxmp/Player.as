package flxmp
{
   import flash.display.Shape;
   import flash.events.SampleDataEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.utils.ByteArray;
   
   public class Player
   {
       
      
      private var mod:Module;
      
      private var sound:Sound;
      
      private var soundChannel:SoundChannel;
      
      private var bufferL:Vector.<Number>;
      
      private var bufferR:Vector.<Number>;
      
      private var tickCnt:int;
      
      private var sampleCountdown:int;
      
      private var smpRest:int;
      
      private var smpTick:int;
      
      private var smpDone:int;
      
      private var chan:Channel;
      
      private var pattern:ByteArray;
      
      private var patternIndex:int;
      
      private var gVolume:Number;
      
      private var playing:Boolean;
      
      private var channelPos:int;
      
      private const VOL_TAB_LIN:Vector.<Number> = Vector.<Number>([0,0.015625,0.03125,0.046875,0.0625,0.078125,0.09375,0.109375,0.125,0.140625,0.15625,0.171875,0.1875,0.203125,0.21875,0.234375,0.25,0.265625,0.28125,0.296875,0.3125,0.328125,0.34375,0.359375,0.375,0.390625,0.40625,0.421875,0.4375,0.453125,0.46875,0.484375,0.5,0.515625,0.53125,0.546875,0.5625,0.578125,0.59375,0.609375,0.625,0.640625,0.65625,0.671875,0.6875,0.703125,0.71875,0.734375,0.75,0.765625,0.78125,0.796875,0.8125,0.828125,0.84375,0.859375,0.875,0.890625,0.90625,0.921875,0.9375,0.953125,0.96875,0.984375,1]);
      
      private const VOL_TAB_LOG:Vector.<Number> = Vector.<Number>([0,0.070036183,0.128709969,0.179535514,0.224366822,0.264469794,0.300747344,0.333866153,0.364332504,0.392539939,0.418800433,0.443365484,0.466440803,0.488196792,0.508776192,0.528299764,0.546870578,0.564577314,0.581496819,0.597696123,0.613234043,0.628162474,0.642527431,0.656369909,0.669726584,0.682630403,0.695111068,0.707195454,0.718907953,0.730270773,0.741304188,0.752026762,0.762455529,0.772606162,0.782493113,0.792129734,0.801528389,0.810700548,0.819656871,0.828407284,0.836961042,0.845326789,0.853512614,0.861526093,0.869374334,0.877064013,0.884601412,0.891992444,0.899242686,0.906357401,0.913341564,0.920199879,0.926936801,0.933556554,0.940063143,0.946460373,0.952751858,0.958941038,0.965031187,0.971025424,0.976926723,0.982737923,0.988461733,0.994100743,1]);
      
      private var smpIncrement:int;
      
      private var i:int;
      
      private var j:int;
      
      private var sample:Number;
      
      private var lastPos:int;
      
      private var nextPos:int;
      
      private var lastValue:Number;
      
      private var nextValue:Number;
      
      public var wave:Shape;
      
      public var env:Shape;
      
      public var tick:Shape;
      
      public var waveX:Number;
      
      public function Player(param1:Module)
      {
         super();
         this.mod = param1;
         this.sound = new Sound();
         this.bufferL = new Vector.<Number>(8192,true);
         this.bufferR = new Vector.<Number>(8192,true);
         this.tickCnt = 0;
         this.smpTick = int(110250 / this.mod.bpm);
         this.sampleCountdown = this.smpTick;
         this.smpRest = 0;
         this.patternIndex = 0;
         this.pattern = this.mod.patterns[this.mod.patternOrder[this.patternIndex]];
         this.pattern.position = 0;
         this.gVolume = 1;
         this.playing = false;
         this.channelPos = 0;
         this.wave = new Shape();
         this.env = new Shape();
         this.tick = new Shape();
         this.wave.graphics.lineStyle(0.1,16711680);
         this.env.graphics.lineStyle(0.1,255);
         this.tick.graphics.lineStyle(0.1,65280);
         this.wave.graphics.moveTo(0,0);
         this.env.graphics.moveTo(0,0);
         this.tick.graphics.moveTo(0,0);
         this.waveX = 0;
      }
      
      public function play() : void
      {
         this.sound.addEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.soundChannel = this.sound.play(this.channelPos);
         this.playing = true;
      }
      
      public function stop() : void
      {
         if(this.soundChannel)
         {
            this.soundChannel.stop();
         }
         this.sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.tickCnt = 0;
         this.patternIndex = 0;
         this.pattern = this.mod.patterns[this.mod.patternOrder[this.patternIndex]];
         this.pattern.position = 0;
         this.playing = false;
         this.channelPos = 0;
         this.nextRow();
      }
      
      public function pause() : void
      {
         this.channelPos = this.soundChannel.position;
         this.soundChannel.stop();
         this.sound.removeEventListener(SampleDataEvent.SAMPLE_DATA,this.onSampleData);
         this.playing = false;
      }
      
      public function get isPlaying() : Boolean
      {
         return this.playing;
      }
      
      public function get peakL() : Number
      {
         if(this.soundChannel)
         {
            return this.soundChannel.leftPeak;
         }
         return 0;
      }
      
      public function get peakR() : Number
      {
         if(this.soundChannel)
         {
            return this.soundChannel.rightPeak;
         }
         return 0;
      }
      
      private function onSampleData(param1:SampleDataEvent) : void
      {
         this.smpIncrement = 0;
         this.lastPos = 0;
         this.nextPos = 0;
         this.smpDone = 0;
         this.smpIncrement = this.smpTick;
         this.sampleCountdown = this.smpTick;
         while(this.smpDone < 8192)
         {
            if(this.smpRest < 1)
            {
               this.sampleCountdown = this.smpTick;
               if(++this.tickCnt == this.mod.tempo)
               {
                  this.tickCnt = 0;
                  this.nextRow();
               }
               this.perTickProcessing();
            }
            if(this.smpRest > 0)
            {
               this.smpIncrement = this.smpRest;
            }
            else
            {
               this.smpIncrement = this.smpTick;
               if(this.smpDone + this.smpIncrement > 8192)
               {
                  this.smpIncrement = 8192 - this.smpDone;
               }
            }
            this.nextPos = this.lastPos + this.smpIncrement;
            this.j = this.lastPos;
            while(this.j < this.nextPos)
            {
               this.i = 0;
               while(this.i < this.mod.numChannels)
               {
                  this.chan = this.mod.channels[this.i];
                  if(this.chan.waveStep == 0)
                  {
                     this.chan.wavePos = 0;
                  }
                  else if(this.chan.instrument != null)
                  {
                     if(this.chan.instrument.numSamples > 0)
                     {
                        if(this.tickCnt >= this.mod.tempo - 1 && this.chan.nextNote != 0 && this.chan.nextNote < 97 && !this.chan.ignoreNextInstrument)
                        {
                           if(this.sampleCountdown <= 200)
                           {
                              this.chan.targetVolume = 0;
                           }
                        }
                        if(this.chan.volume != this.chan.targetVolume)
                        {
                           if(this.chan.volume > this.chan.targetVolume)
                           {
                              if((this.chan.volume = this.chan.volume - 0.003) < this.chan.targetVolume)
                              {
                                 this.chan.volume = this.chan.targetVolume;
                              }
                           }
                           else if((this.chan.volume = this.chan.volume + 0.003) > this.chan.targetVolume)
                           {
                              this.chan.volume = this.chan.targetVolume;
                           }
                        }
                        if(this.chan.panning != this.chan.targetPanning)
                        {
                           if(this.chan.panning > this.chan.targetPanning)
                           {
                              if((this.chan.panning = this.chan.panning - 0.005) < this.chan.targetPanning)
                              {
                                 this.chan.panning = this.chan.targetPanning;
                              }
                           }
                           else if((this.chan.panning = this.chan.panning + 0.005) > this.chan.targetPanning)
                           {
                              this.chan.panning = this.chan.targetPanning;
                           }
                        }
                        this.lastValue = this.chan.waveData[this.chan.lastIndex];
                        this.nextValue = this.chan.waveData[this.chan.nextIndex];
                        this.sample = this.lastValue + (this.nextValue - this.lastValue) * (this.chan.wavePos - Number(int(this.chan.wavePos)));
                        this.sample *= this.gVolume;
                        this.sample *= this.chan.volume;
                        this.bufferL[this.j] += this.sample * (1 - this.chan.panning);
                        this.bufferR[this.j] += this.sample * this.chan.panning;
                        if(this.chan.waveType > 0)
                        {
                           if(this.chan.waveType > 1)
                           {
                              if(this.chan.waveType > 2)
                              {
                                 this.chan.wavePos += this.chan.waveStep;
                                 if(this.chan.wavePos > this.chan.loopEnd)
                                 {
                                    this.chan.wavePos = 0;
                                 }
                                 this.chan.lastIndex = int(this.chan.wavePos);
                                 this.chan.nextIndex = this.chan.lastIndex + 1;
                              }
                              else
                              {
                                 if(this.chan.waveReverse)
                                 {
                                    if((this.chan.wavePos = this.chan.wavePos - this.chan.waveStep) < this.chan.loopStart)
                                    {
                                       this.chan.waveReverse = false;
                                       this.chan.wavePos = this.chan.loopStart;
                                    }
                                 }
                                 else if((this.chan.wavePos = this.chan.wavePos + this.chan.waveStep) >= this.chan.loopEnd)
                                 {
                                    this.chan.waveReverse = true;
                                    this.chan.wavePos = this.chan.loopEnd - 1;
                                 }
                                 this.chan.lastIndex = int(this.chan.wavePos);
                                 if((this.chan.nextIndex = this.chan.lastIndex + 1) >= this.chan.loopEnd)
                                 {
                                    this.chan.nextIndex = int(this.chan.loopStart);
                                 }
                              }
                           }
                           else
                           {
                              if((this.chan.wavePos = this.chan.wavePos + this.chan.waveStep) >= this.chan.loopEnd)
                              {
                                 this.chan.wavePos -= this.chan.loopLength;
                              }
                              this.chan.lastIndex = int(this.chan.wavePos);
                              if((this.chan.nextIndex = int(this.chan.wavePos) + 1) >= this.chan.loopEnd)
                              {
                                 this.chan.nextIndex = int(this.chan.loopStart);
                              }
                           }
                        }
                        else if((this.chan.wavePos = this.chan.wavePos + this.chan.waveStep) >= this.chan.waveLength)
                        {
                           this.chan.wavePos = this.chan.waveLength;
                           this.chan.nextIndex = 0;
                        }
                        else
                        {
                           this.chan.lastIndex = int(this.chan.wavePos);
                           this.chan.nextIndex = this.chan.lastIndex + 1;
                        }
                     }
                  }
                  ++this.i;
               }
               --this.sampleCountdown;
               ++this.j;
            }
            this.smpDone += this.smpIncrement;
            this.lastPos = this.nextPos;
            if(this.smpRest > 0)
            {
               this.smpRest = 0;
            }
         }
         if(this.smpIncrement < this.smpTick)
         {
            this.smpRest = this.smpTick - this.smpIncrement;
         }
         this.i = 0;
         while(this.i < 8192)
         {
            param1.data.writeFloat(this.bufferL[this.i]);
            this.bufferL[this.i] = 0;
            param1.data.writeFloat(this.bufferR[this.i]);
            this.bufferR[this.i] = 0;
            ++this.i;
         }
      }
      
      private function nextRow() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:ByteArray = null;
         if(this.pattern.bytesAvailable == 0)
         {
            ++this.patternIndex;
            if(this.patternIndex == this.mod.songLength)
            {
               this.patternIndex = this.mod.restartPos;
            }
            this.pattern = this.mod.patterns[this.mod.patternOrder[this.patternIndex]];
            this.pattern.position = 0;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.mod.numChannels)
         {
            this.chan = this.mod.channels[_loc1_];
            this.chan.note = this.pattern.readUnsignedByte();
            _loc2_ = this.pattern.position;
            this.pattern.position += 5 * this.mod.numChannels - 1;
            if(this.pattern.position >= this.pattern.length)
            {
               if(this.patternIndex + 1 == this.mod.songLength)
               {
                  _loc4_ = this.mod.patterns[this.mod.patternOrder[0]];
               }
               else
               {
                  _loc4_ = this.mod.patterns[this.mod.patternOrder[this.patternIndex + 1]];
               }
               _loc4_.position = 5 * this.mod.numChannels - 1;
               this.chan.nextNote = _loc4_.readUnsignedByte();
               _loc4_.position += 2;
               this.chan.nextEffect = _loc4_.readUnsignedByte();
            }
            else
            {
               this.chan.nextNote = this.pattern.readUnsignedByte();
               this.pattern.position += 2;
               this.chan.nextEffect = this.pattern.readUnsignedByte();
            }
            this.pattern.position = _loc2_;
            _loc3_ = this.pattern.readUnsignedByte();
            this.chan.volumeCommand = this.pattern.readUnsignedByte();
            this.chan.effect = this.pattern.readUnsignedByte();
            this.chan.parameter = this.pattern.readUnsignedByte();
            if(this.chan.effect == 3)
            {
               this.chan.ignoreInstrument = true;
            }
            else
            {
               this.chan.ignoreInstrument = false;
            }
            if(this.chan.nextEffect == 3)
            {
               this.chan.ignoreNextInstrument = true;
            }
            else
            {
               this.chan.ignoreNextInstrument = false;
            }
            if(this.chan.parameter > 0)
            {
               this.chan.oldParameter = this.chan.parameter;
            }
            if(_loc3_ > 0 && this.chan.note < 97 && !this.chan.ignoreInstrument)
            {
               this.chan.wavePos = 0;
               this.chan.volEnvPos = 0;
               this.chan.panEnvPos = 0;
               this.chan.lastIndex = 0;
               this.chan.nextIndex = 1;
               this.chan.targetVolume = 1;
               this.chan.instrument = this.mod.instruments[int(_loc3_ - 1)];
               if(this.chan.instrument.numSamples > 0)
               {
                  this.chan.wave = this.chan.instrument.waves[this.chan.instrument.smpNotes[this.chan.note]];
                  this.chan.waveLength = Number(this.chan.wave.length) - 1;
                  this.chan.loopStart = Number(this.chan.wave.loopStart);
                  this.chan.loopEnd = Number(this.chan.wave.loopEnd);
                  this.chan.loopLength = Number(this.chan.wave.loopLength);
                  this.chan.waveData = this.chan.wave.samples;
                  this.chan.waveVolume = this.chan.wave.volume;
                  this.chan.wavePanning = this.chan.wave.panning;
                  this.chan.waveType = this.chan.wave.type;
               }
            }
            if(this.chan.note > 0)
            {
               if(this.chan.note < 97)
               {
                  if(!this.chan.ignoreInstrument)
                  {
                     this.chan.wavePos = 0;
                     this.chan.lastIndex = 0;
                     this.chan.nextIndex = 1;
                     this.chan.volEnvPos = 0;
                     this.chan.panEnvPos = 0;
                  }
                  if(this.chan.wave != null)
                  {
                     this.chan.realNote = this.chan.note + this.chan.wave.relNote;
                     this.chan.keyDown = true;
                     this.chan.fadeout = 1;
                     this.chan.volumeTabIndex = 64;
                     this.chan.columnVolume = 1;
                     if(this.chan.effect == 3)
                     {
                        this.chan.oldPeriod = this.chan.period;
                        this.chan.targetPeriod = 7680 - (this.chan.realNote - 1) * 64 - this.chan.wave.finetune * 0.5;
                     }
                     else
                     {
                        this.chan.period = 7680 - (this.chan.realNote - 1) * 64 - this.chan.wave.finetune * 0.5;
                        this.chan.oldPeriod = this.chan.period;
                     }
                     this.chan.waveStep = 0.189637188 * Math.pow(2,(4608 - this.chan.period) * 0.0013020833333333);
                  }
                  else
                  {
                     this.chan.waveStep = 0;
                  }
               }
               else
               {
                  this.chan.keyDown = false;
                  if(this.chan.instrument != null)
                  {
                     if(!this.chan.instrument.volON)
                     {
                        this.chan.columnVolume = 0;
                     }
                  }
               }
               this.chan.vibtime = 0;
            }
            if(this.chan.volumeCommand > 15 && this.chan.volumeCommand < 81)
            {
               this.chan.volumeTabIndex = this.chan.volumeCommand - 16;
               this.chan.columnVolume = this.VOL_TAB_LIN[this.chan.volumeTabIndex];
            }
            this.chan.targetVolume = this.chan.waveVolume * this.chan.columnVolume;
            _loc1_++;
         }
      }
      
      private function perTickProcessing() : void
      {
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc1_:int = 0;
         while(_loc1_ < this.mod.numChannels)
         {
            this.chan = this.mod.channels[_loc1_];
            if(this.chan.volumeCommand > 80)
            {
               if((this.chan.volumeCommand & 240) == 96)
               {
                  if((this.chan.volumeTabIndex = this.chan.volumeTabIndex - (this.chan.volumeCommand & 15)) < 0)
                  {
                     this.chan.volumeTabIndex = 0;
                  }
                  this.chan.columnVolume = this.VOL_TAB_LIN[this.chan.volumeTabIndex];
               }
               else if((this.chan.volumeCommand & 240) == 112)
               {
                  if((this.chan.volumeTabIndex = this.chan.volumeTabIndex + (this.chan.volumeCommand & 15)) > 64)
                  {
                     this.chan.volumeTabIndex = 64;
                  }
                  this.chan.columnVolume = this.VOL_TAB_LIN[this.chan.volumeTabIndex];
               }
               else if((this.chan.volumeCommand & 240) == 128)
               {
                  if(this.tickCnt == 0)
                  {
                     if((this.chan.volumeTabIndex = this.chan.volumeTabIndex - (this.chan.volumeCommand & 15)) < 0)
                     {
                        this.chan.volumeTabIndex = 0;
                     }
                     this.chan.columnVolume = this.VOL_TAB_LIN[this.chan.volumeTabIndex];
                  }
               }
               else if((this.chan.volumeCommand & 240) == 144)
               {
                  if(this.tickCnt == 0)
                  {
                     if((this.chan.volumeTabIndex = this.chan.volumeTabIndex + (this.chan.volumeCommand & 15)) > 64)
                     {
                        this.chan.volumeTabIndex = 64;
                     }
                     this.chan.columnVolume = this.VOL_TAB_LIN[this.chan.volumeTabIndex];
                  }
               }
               else if((this.chan.volumeCommand & 240) != 160)
               {
                  if((this.chan.volumeCommand & 240) != 176)
                  {
                     if((this.chan.volumeCommand & 240) == 192)
                     {
                        this.chan.wavePanning = Number(this.chan.volumeCommand & 15) * 0.0625;
                     }
                     else if((this.chan.volumeCommand & 240) != 208)
                     {
                        if((this.chan.volumeCommand & 240) != 224)
                        {
                           if((this.chan.volumeCommand & 240) == 240)
                           {
                           }
                        }
                     }
                  }
               }
            }
            this.chan.targetVolume = this.chan.waveVolume * this.chan.columnVolume;
            this.chan.targetPanning = this.chan.wavePanning;
            if(this.chan.effect != 0)
            {
               if(this.chan.effect == 1)
               {
                  if(this.chan.parameter == 0)
                  {
                     this.chan.parameter = this.chan.oldParameter;
                  }
                  if(this.tickCnt > 0)
                  {
                     this.chan.period -= int(Number(this.chan.parameter) * 4);
                  }
                  this.chan.waveStep = 0.189637188 * Math.pow(2,(4608 - this.chan.period) * 0.0013020833333333);
               }
               else if(this.chan.effect == 2)
               {
                  if(this.chan.parameter == 0)
                  {
                     this.chan.parameter = this.chan.oldParameter;
                  }
                  if(this.tickCnt > 0)
                  {
                     this.chan.period += int(Number(this.chan.parameter) * 4);
                  }
                  this.chan.waveStep = 0.189637188 * Math.pow(2,(4608 - this.chan.period) * 0.0013020833333333);
               }
               else if(this.chan.effect == 3)
               {
                  if(this.chan.parameter == 0)
                  {
                     this.chan.parameter = this.chan.oldParameter;
                  }
                  if(this.chan.oldPeriod >= this.chan.targetPeriod)
                  {
                     this.chan.period = this.chan.oldPeriod;
                     if(this.tickCnt > 0)
                     {
                        if((this.chan.period = this.chan.period - int(Number(this.chan.parameter) * 4)) < this.chan.targetPeriod)
                        {
                           this.chan.period = this.chan.targetPeriod;
                        }
                     }
                  }
                  else
                  {
                     this.chan.period = this.chan.oldPeriod;
                     if(this.tickCnt > 0)
                     {
                        if((this.chan.period = this.chan.period + int(Number(this.chan.parameter) * 4)) > this.chan.targetPeriod)
                        {
                           this.chan.period = this.chan.targetPeriod;
                        }
                     }
                  }
                  this.chan.oldPeriod = this.chan.period;
                  this.chan.waveStep = 0.189637188 * Math.pow(2,(4608 - this.chan.period) * 0.0013020833333333);
               }
               else if(this.chan.effect == 4)
               {
                  if(this.chan.parameter == 0)
                  {
                     this.chan.parameter = this.chan.oldParameter;
                  }
                  this.chan.vibrate = Number((this.chan.parameter & 240) >> 4);
                  this.chan.vibdepth = (this.chan.parameter & 15) << 3;
                  this.chan.vibtime += this.chan.vibrate * 0.025 * Math.PI;
                  if(this.chan.vibform == 0)
                  {
                     this.chan.period = this.chan.targetPeriod + int(Math.sin(this.chan.vibtime) * Number(this.chan.vibdepth));
                  }
                  else if(this.chan.vibform != 1)
                  {
                     if(this.chan.vibform == 2)
                     {
                     }
                  }
                  this.chan.waveStep = 0.189637188 * Math.pow(2,(4608 - this.chan.period) * 0.0013020833333333);
               }
               else if(this.chan.effect != 5)
               {
                  if(this.chan.effect != 6)
                  {
                     if(this.chan.effect != 7)
                     {
                        if(this.chan.effect == 8)
                        {
                           this.chan.wavePanning = Number(this.chan.parameter) * 0.00390625;
                        }
                        else if(this.chan.effect == 9)
                        {
                           this.chan.wavePos += this.chan.parameter * 256;
                           if(this.chan.wavePos > this.chan.waveLength)
                           {
                              this.chan.wavePos = this.chan.waveLength;
                           }
                           this.chan.parameter = 0;
                        }
                        else if(this.chan.effect != 10)
                        {
                           if(this.chan.effect != 11)
                           {
                              if(this.chan.effect != 12)
                              {
                                 if(this.chan.effect == 13)
                                 {
                                    if(this.tickCnt == 0)
                                    {
                                       ++this.patternIndex;
                                       if(this.patternIndex == this.mod.songLength)
                                       {
                                          this.patternIndex = this.mod.restartPos;
                                       }
                                       this.pattern = this.mod.patterns[this.mod.patternOrder[this.patternIndex]];
                                       this.pattern.position = this.chan.parameter * 5 * this.mod.numChannels;
                                    }
                                 }
                                 else if(this.chan.effect == 14)
                                 {
                                    _loc2_ = this.chan.parameter & 240;
                                    if(_loc2_ != 16)
                                    {
                                       if(_loc2_ != 32)
                                       {
                                          if(_loc2_ != 48)
                                          {
                                             if(_loc2_ != 64)
                                             {
                                                if(_loc2_ != 80)
                                                {
                                                   if(_loc2_ != 96)
                                                   {
                                                      if(_loc2_ != 112)
                                                      {
                                                         if(_loc2_ != 144)
                                                         {
                                                            if(_loc2_ == 160)
                                                            {
                                                               if(this.chan.parameter == 0)
                                                               {
                                                                  this.chan.parameter = this.chan.oldParameter;
                                                               }
                                                            }
                                                            else if(_loc2_ != 176)
                                                            {
                                                               if(_loc2_ == 192)
                                                               {
                                                                  if(this.tickCnt >= (this.chan.parameter & 15))
                                                                  {
                                                                     this.chan.targetVolume = 0;
                                                                     this.chan.columnVolume = 0;
                                                                  }
                                                               }
                                                               else if(_loc2_ != 208)
                                                               {
                                                                  if(_loc2_ == 224)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                                 else if(this.chan.effect == 15)
                                 {
                                    if(this.chan.parameter > 0)
                                    {
                                       if(this.chan.parameter < 32)
                                       {
                                          this.mod.tempo = this.chan.parameter;
                                       }
                                       else
                                       {
                                          this.mod.bpm = this.chan.parameter;
                                          this.smpTick = int(110250 / this.mod.bpm);
                                       }
                                    }
                                 }
                                 else if(this.chan.effect == 16)
                                 {
                                    this.gVolume = this.chan.parameter * 0.015625;
                                 }
                                 else if(this.chan.effect == 17)
                                 {
                                    if(this.chan.parameter == 0)
                                    {
                                       this.chan.parameter = this.chan.oldParameter;
                                    }
                                    if((this.chan.parameter & 240) > 0)
                                    {
                                       this.gVolume += Number(this.chan.parameter >> 4) * 0.0625 / Number(this.mod.tempo);
                                    }
                                    else
                                    {
                                       this.gVolume -= Number(this.chan.parameter) * 0.0625 / Number(this.mod.tempo);
                                    }
                                    if(this.gVolume > 1)
                                    {
                                       this.gVolume = 1;
                                    }
                                    if(this.gVolume < 0)
                                    {
                                       this.gVolume = 0;
                                    }
                                 }
                                 else if(this.chan.effect != 21)
                                 {
                                    if(this.chan.effect != 25)
                                    {
                                       if(this.chan.effect == 27)
                                       {
                                          if(this.chan.parameter == 0)
                                          {
                                             this.chan.parameter = this.chan.oldParameter;
                                          }
                                          if(this.tickCnt % (this.chan.parameter & 15) == 0)
                                          {
                                             this.chan.wavePos = 0;
                                          }
                                          _loc3_ = this.chan.parameter >> 4;
                                          if(_loc3_ == 1)
                                          {
                                             this.chan.targetVolume -= 0.015625;
                                          }
                                          else if(_loc3_ == 2)
                                          {
                                             this.chan.targetVolume -= 0.03125;
                                          }
                                          else if(_loc3_ == 3)
                                          {
                                             this.chan.targetVolume -= 0.0625;
                                          }
                                          else if(_loc3_ == 4)
                                          {
                                             this.chan.targetVolume -= 0.125;
                                          }
                                          else if(_loc3_ == 5)
                                          {
                                             this.chan.targetVolume -= 0.25;
                                          }
                                          else if(_loc3_ == 6)
                                          {
                                             this.chan.targetVolume *= 0.666666666666667;
                                          }
                                          else if(_loc3_ == 7)
                                          {
                                             this.chan.targetVolume *= 0.5;
                                          }
                                          else if(_loc3_ == 9)
                                          {
                                             this.chan.targetVolume += 0.015625;
                                          }
                                          else if(_loc3_ == 10)
                                          {
                                             this.chan.targetVolume += 0.03125;
                                          }
                                          else if(_loc3_ == 11)
                                          {
                                             this.chan.targetVolume += 0.0625;
                                          }
                                          else if(_loc3_ == 12)
                                          {
                                             this.chan.targetVolume += 0.125;
                                          }
                                          else if(_loc3_ == 13)
                                          {
                                             this.chan.targetVolume += 0.25;
                                          }
                                          else if(_loc3_ == 14)
                                          {
                                             this.chan.targetVolume *= 1.5;
                                          }
                                          else if(_loc3_ == 15)
                                          {
                                             this.chan.targetVolume *= 2;
                                          }
                                          if(this.chan.targetVolume < 0)
                                          {
                                             this.chan.targetVolume = 0;
                                          }
                                          if(this.chan.targetVolume > 1)
                                          {
                                             this.chan.targetVolume = 1;
                                          }
                                       }
                                       else if(this.chan.effect != 29)
                                       {
                                          if(this.chan.effect != 33)
                                          {
                                             if(this.chan.effect == 34)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            if(this.chan.instrument != null)
            {
               if(this.chan.instrument.volON)
               {
                  this.chan.targetVolume *= this.chan.instrument.volumeEnvelope[this.chan.volEnvPos];
                  ++this.chan.volEnvPos;
                  if(this.chan.keyDown)
                  {
                     if(this.chan.instrument.volSUS)
                     {
                        if(this.chan.volEnvPos > this.chan.instrument.volSustain)
                        {
                           this.chan.volEnvPos = this.chan.instrument.volSustain;
                        }
                     }
                  }
                  else if(this.chan.fadeout > 0)
                  {
                     this.chan.fadeout -= this.chan.instrument.fadeout * 0.000030517578125;
                     if(this.chan.fadeout < 0)
                     {
                        this.chan.fadeout = 0;
                     }
                     this.chan.targetVolume *= this.chan.fadeout;
                  }
                  else
                  {
                     this.chan.targetVolume = 0;
                  }
                  if(this.chan.instrument.volLOOP)
                  {
                     if(this.chan.volEnvPos >= this.chan.instrument.volLoopEnd)
                     {
                        this.chan.volEnvPos = this.chan.instrument.volLoopStart;
                     }
                  }
                  else if(this.chan.volEnvPos >= this.chan.instrument.volEnvLength)
                  {
                     this.chan.volEnvPos = this.chan.instrument.volEnvLength - 1;
                  }
               }
               if(this.chan.instrument.panON)
               {
                  this.chan.targetPanning += (this.chan.instrument.panningEnvelope[this.chan.panEnvPos] - 0.5) * (0.5 - Math.abs(this.chan.targetPanning - 0.5));
                  ++this.chan.panEnvPos;
                  if(this.chan.keyDown)
                  {
                     if(this.chan.instrument.panSUS)
                     {
                        if(this.chan.panEnvPos > this.chan.instrument.panSustain)
                        {
                           this.chan.panEnvPos = this.chan.instrument.panSustain;
                        }
                     }
                  }
                  if(this.chan.instrument.panLOOP)
                  {
                     if(this.chan.panEnvPos >= this.chan.instrument.panLoopEnd)
                     {
                        this.chan.panEnvPos = this.chan.instrument.panLoopStart;
                     }
                  }
                  else if(this.chan.panEnvPos >= this.chan.instrument.panEnvLength)
                  {
                     this.chan.panEnvPos = this.chan.instrument.panEnvLength - 1;
                  }
               }
            }
            _loc1_++;
         }
      }
   }
}
