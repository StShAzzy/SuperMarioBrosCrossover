package neoart.flod.xm
{
   import flash.utils.*;
   import neoart.flod.core.*;
   
   public final class XMPlayer extends SBPlayer
   {
       
      
      internal var patterns:Vector.<XMPattern>;
      
      internal var instruments:Vector.<XMInstrument>;
      
      internal var amiga:int;
      
      private var voices:Vector.<XMVoice>;
      
      private var order:int;
      
      private var position:int;
      
      private var nextOrder:int;
      
      private var nextPosition:int;
      
      private var pattern:XMPattern;
      
      private var patternDelay:int;
      
      private var tickTemp:int;
      
      public function XMPlayer(param1:Soundblaster = null)
      {
         super(param1);
      }
      
      override public function load(param1:ByteArray) : int
      {
         super.load(param1);
         XMLoader.load(param1,mixer);
         if(version)
         {
            setup();
         }
         return version;
      }
      
      override public function process() : void
      {
         var _loc1_:XMInstrument = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:XMRow = null;
         var _loc7_:XMSample = null;
         var _loc8_:XMVoice = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:XMPoint = null;
         var _loc13_:XMPoint = null;
         var _loc14_:int = 0;
         if(timer == 0)
         {
            if(this.nextOrder >= 0)
            {
               this.order = this.nextOrder;
            }
            if(this.nextPosition >= 0)
            {
               this.position = this.nextPosition;
            }
            this.nextOrder = this.nextPosition = -1;
            this.pattern = this.patterns[track[this.order]];
            _loc8_ = this.voices[0];
            while(_loc8_)
            {
               _loc6_ = this.pattern.rows[int(this.position + _loc8_.index)];
               if(_loc8_.arpeggioOn)
               {
                  _loc8_.arpeggioOn = 0;
                  _loc8_.frequency = _loc8_.period;
                  _loc8_.flags = XM.FLAG_PERIOD;
               }
               else if(_loc8_.vibratoOn)
               {
                  if(_loc6_.effect != XM.FX_VIBRATO && _loc6_.effect != XM.FX_VIBRATO_VOLUME_SLIDE)
                  {
                     _loc8_.frequency = _loc8_.period;
                     _loc8_.flags = XM.FLAG_PERIOD;
                  }
                  else
                  {
                     _loc8_.vibratoOn = 0;
                  }
               }
               _loc4_ = _loc6_.volume >> 4;
               _loc2_ = int(_loc6_.effect == XM.FX_TONE_PORTAMENTO || _loc6_.effect == XM.FX_TONE_PORTAMENTO_VOLUME_SLIDE || _loc4_ == XM.VX_TONE_PORTAMENTO);
               if(_loc6_.note == XM.NOTE_KEYOFF || _loc6_.effect == XM.FX_KEYOFF && _loc6_.param == 0)
               {
                  _loc8_.keyoff = 1;
                  _loc8_.isFading = 1;
               }
               else
               {
                  _loc8_.keyoff = 0;
               }
               if(Boolean(_loc6_.note) && !_loc8_.keyoff)
               {
                  if(!_loc2_)
                  {
                     _loc8_.note = _loc6_.note - 1;
                     _loc8_.flags |= XM.FLAG_PERIOD | XM.FLAG_TRIGGER;
                  }
               }
               if(_loc6_.instrument)
               {
                  _loc1_ = this.instruments[_loc6_.instrument];
                  if(!_loc1_)
                  {
                     _loc1_ = this.instruments[0];
                  }
                  _loc8_.sample = _loc1_.samples[_loc1_.noteSamples[_loc8_.note]];
                  if(!_loc2_)
                  {
                     _loc8_.instrument = _loc1_;
                     _loc8_.reset();
                  }
                  else
                  {
                     _loc8_.volume = _loc8_.sample.volume;
                     _loc8_.panning = _loc8_.sample.panning;
                     _loc8_.finetune = _loc8_.sample.finetune;
                     _loc8_.volEnvelope.reset(64);
                     _loc8_.panEnvelope.reset(32);
                     _loc8_.autoVibratoPos = 0;
                     _loc8_.autoSweepPos = 0;
                     _loc8_.flags |= XM.FLAG_VOLUME | XM.FLAG_PANNING;
                  }
               }
               _loc1_ = _loc8_.instrument;
               _loc7_ = _loc8_.sample;
               if(Boolean(_loc6_.note) && !_loc8_.keyoff)
               {
                  _loc9_ = (120 - (_loc6_.note + _loc7_.relative - 1) << 6) - (_loc8_.finetune >> 3 << 2);
                  if(!_loc2_)
                  {
                     _loc8_.frequency = _loc8_.period = _loc9_;
                  }
                  else
                  {
                     _loc8_.portaPeriod = _loc9_;
                  }
               }
               if(_loc6_.volume)
               {
                  if(_loc6_.volume >= 16 && _loc6_.volume <= 80)
                  {
                     _loc8_.volume = _loc6_.volume - 16;
                     _loc8_.flags |= XM.FLAG_VOLUME;
                  }
                  else
                  {
                     _loc5_ = _loc6_.volume & 0x0F;
                     switch(_loc4_)
                     {
                        case XM.VX_FINE_VOLUME_SLIDE_DOWN:
                           _loc8_.volume -= _loc5_;
                           if(_loc8_.volume < 0)
                           {
                              _loc8_.volume = 0;
                           }
                           _loc8_.flags |= XM.FLAG_VOLUME;
                           break;
                        case XM.VX_FINE_VOLUME_SLIDE_UP:
                           _loc8_.volume += _loc5_;
                           if(_loc8_.volume > 64)
                           {
                              _loc8_.volume = 64;
                           }
                           _loc8_.flags |= XM.FLAG_VOLUME;
                           break;
                        case XM.VX_SET_VIBRATO_SPEED:
                           if(_loc5_)
                           {
                              _loc8_.vibratoSpeed = _loc5_;
                           }
                           break;
                        case XM.VX_VIBRATO:
                           if(_loc5_)
                           {
                              _loc8_.vibratoDepth = _loc5_ << 2;
                           }
                           break;
                        case XM.VX_SET_PANNING:
                           _loc8_.panning = _loc5_ << 4;
                           _loc8_.flags |= XM.FLAG_PANNING;
                           break;
                        case XM.VX_TONE_PORTAMENTO:
                           if(_loc5_)
                           {
                              _loc8_.portaSpeed = _loc5_ << 4;
                           }
                     }
                  }
               }
               if(_loc6_.effect == XM.FX_EXTENDED_EFFECTS && _loc6_.param >> 4 == XM.EX_NOTE_DELAY)
               {
                  _loc8_.delay = _loc8_.flags;
                  _loc8_.flags = 0;
                  _loc8_ = _loc8_.next;
               }
               else
               {
                  if(_loc1_.hasVolume)
                  {
                     this.envelope(_loc8_.volEnvelope,_loc1_.volData,XM.FLAG_VOLUME,_loc8_);
                  }
                  else if(_loc8_.keyoff)
                  {
                     _loc8_.volume = 0;
                     _loc8_.flags |= XM.FLAG_VOLUME;
                  }
                  if(_loc1_.hasPanning)
                  {
                     this.envelope(_loc8_.panEnvelope,_loc1_.panData,XM.FLAG_PANNING,_loc8_);
                  }
                  if(_loc6_.effect)
                  {
                     _loc4_ = _loc6_.param >> 4;
                     _loc5_ = _loc6_.param & 0x0F;
                     switch(_loc6_.effect)
                     {
                        case XM.FX_PORTAMENTO_UP:
                           if(_loc6_.param)
                           {
                              _loc8_.portaUp = _loc6_.param << 2;
                           }
                           break;
                        case XM.FX_PORTAMENTO_DOWN:
                           if(_loc6_.param)
                           {
                              _loc8_.portaDown = _loc6_.param << 2;
                           }
                           break;
                        case XM.FX_TONE_PORTAMENTO:
                           if(_loc6_.param)
                           {
                              _loc8_.portaSpeed = _loc6_.param;
                           }
                           break;
                        case XM.FX_VIBRATO:
                           if(_loc4_)
                           {
                              _loc8_.vibratoSpeed = _loc4_;
                           }
                           if(_loc5_)
                           {
                              _loc8_.vibratoDepth = _loc5_ << 2;
                           }
                           _loc8_.vibratoOn = 1;
                           break;
                        case XM.FX_TONE_PORTAMENTO_VOLUME_SLIDE:
                           if(_loc6_.param)
                           {
                              _loc8_.volSlide = _loc6_.param;
                           }
                           break;
                        case XM.FX_VIBRATO_VOLUME_SLIDE:
                           if(_loc6_.param)
                           {
                              _loc8_.volSlide = _loc6_.param;
                           }
                           _loc8_.vibratoOn = 1;
                           break;
                        case XM.FX_TREMOLO:
                           if(_loc4_)
                           {
                              _loc8_.tremoloSpeed = _loc4_;
                           }
                           if(_loc5_)
                           {
                              _loc8_.tremoloDepth = _loc5_;
                           }
                           break;
                        case XM.FX_SET_PANNING:
                           _loc8_.panning = _loc6_.param;
                           _loc8_.flags |= XM.FLAG_PANNING;
                           break;
                        case XM.FX_SAMPLE_OFFSET:
                           if(_loc6_.param)
                           {
                              _loc8_.sampleOffset = _loc6_.param << 8;
                           }
                           if(_loc8_.sampleOffset >= _loc7_.length)
                           {
                              _loc8_.sampleOffset = 0;
                              _loc8_.flags &= ~XM.FLAG_TRIGGER;
                              _loc8_.flags |= XM.FLAG_STOP;
                           }
                           break;
                        case XM.FX_VOLUME_SLIDE:
                           if(_loc6_.param)
                           {
                              _loc8_.volSlide = _loc6_.param;
                           }
                           break;
                        case XM.FX_POSITION_JUMP:
                           this.nextOrder = _loc6_.param;
                           this.nextPosition = 0;
                           if(this.nextOrder >= length)
                           {
                              mixer.complete = 1;
                           }
                           _loc3_ = 1;
                           break;
                        case XM.FX_SET_VOLUME:
                           _loc8_.volume = _loc6_.param;
                           _loc8_.flags |= XM.FLAG_VOLUME;
                           break;
                        case XM.FX_PATTERN_BREAK:
                           this.nextPosition = (_loc6_.param * 10 + _loc5_) * channels;
                           if(!_loc3_)
                           {
                              this.nextOrder = this.order + 1;
                           }
                           break;
                        case XM.FX_EXTENDED_EFFECTS:
                           switch(_loc4_)
                           {
                              case XM.EX_FINE_PORTAMENTO_UP:
                                 if(_loc5_)
                                 {
                                    _loc8_.finePortaUp = _loc5_ << 2;
                                 }
                                 _loc8_.frequency -= _loc8_.finePortaUp;
                                 break;
                              case XM.EX_FINE_PORTAMENTO_DOWN:
                                 if(_loc5_)
                                 {
                                    _loc8_.finePortaDown = _loc5_ << 2;
                                 }
                                 _loc8_.frequency += _loc8_.finePortaDown;
                                 break;
                              case XM.EX_VIBRATO_CONTROL:
                                 _loc8_.waveControl = _loc8_.waveControl & 0xF0 | _loc5_;
                                 break;
                              case XM.EX_SET_FINETUNE:
                                 _loc8_.finetune = _loc5_;
                                 _loc8_.flags |= XM.FLAG_PERIOD;
                                 break;
                              case XM.EX_PATTERN_LOOP:
                                 if(!_loc5_)
                                 {
                                    _loc8_.patternLoopRow = this.position;
                                 }
                                 else
                                 {
                                    if(!_loc8_.patternLoopCnt)
                                    {
                                       _loc8_.patternLoopCnt = _loc5_;
                                    }
                                    else
                                    {
                                       --_loc8_.patternLoopCnt;
                                    }
                                    if(_loc8_.patternLoopCnt)
                                    {
                                       this.nextPosition = _loc8_.patternLoopRow;
                                    }
                                 }
                                 break;
                              case XM.EX_TREMOLO_CONTROL:
                                 _loc8_.waveControl = _loc8_.waveControl & 0x0F | _loc5_ << 4;
                                 break;
                              case XM.EX_FINE_VOLUME_SLIDE_UP:
                                 if(_loc5_)
                                 {
                                    _loc8_.fineVolSlideUp = _loc5_;
                                 }
                                 _loc8_.volume += _loc8_.fineVolSlideUp;
                                 if(_loc8_.volume > 64)
                                 {
                                    _loc8_.volume = 64;
                                 }
                                 _loc8_.flags |= XM.FLAG_VOLUME;
                                 break;
                              case XM.EX_FINE_VOLUME_SLIDE_DOWN:
                                 if(_loc5_)
                                 {
                                    _loc8_.fineVolSlideDown = _loc5_;
                                 }
                                 _loc8_.volume -= _loc8_.fineVolSlideDown;
                                 if(_loc8_.volume < 0)
                                 {
                                    _loc8_.volume = 0;
                                 }
                                 _loc8_.flags |= XM.FLAG_VOLUME;
                                 break;
                              case XM.EX_PATTERN_DELAY:
                                 this.patternDelay = _loc5_ * speed;
                           }
                           break;
                        case XM.FX_SET_SPEED:
                           if(_loc6_.param < 32)
                           {
                              counter = _loc6_.param;
                           }
                           else
                           {
                              mixer.samplesTick = 110250 / _loc6_.param;
                           }
                           break;
                        case XM.FX_SET_GLOBAL_VOLUME:
                           master = _loc6_.param;
                           if(master > 64)
                           {
                              master = 64;
                           }
                           _loc8_.flags |= XM.FLAG_VOLUME;
                           break;
                        case XM.FX_GLOBAL_VOLUME_SLIDE:
                           if(_loc6_.param)
                           {
                              _loc8_.volSlideMaster = _loc6_.param;
                           }
                           break;
                        case XM.FX_PANNING_SLIDE:
                           if(_loc6_.param)
                           {
                              _loc8_.panSlide = _loc6_.param;
                           }
                           break;
                        case XM.FX_SET_ENVELOPE_POSITION:
                           if(_loc1_.hasVolume)
                           {
                              _loc10_ = 0;
                              while(_loc10_ < _loc1_.volData.total)
                              {
                                 if(_loc6_.param < _loc1_.volData.points[_loc10_].frame)
                                 {
                                    break;
                                 }
                                 _loc10_++;
                              }
                              _loc8_.volEnvelope.position = _loc10_;
                              _loc11_ = _loc1_.volData.total - 1;
                              if(_loc10_ >= _loc11_)
                              {
                                 _loc8_.volEnvelope.value = _loc1_.volData.points[_loc11_].value;
                                 _loc8_.volEnvelope.stopped = 1;
                              }
                              else
                              {
                                 _loc8_.volEnvelope.stopped = 0;
                                 _loc8_.volEnvelope.frame = _loc6_.param;
                                 ++_loc8_.volEnvelope.position;
                                 _loc12_ = _loc1_.volData.points[_loc10_];
                                 _loc13_ = _loc1_.volData.points[_loc8_.volEnvelope.position];
                                 if(_loc11_ = _loc13_.frame - _loc12_.frame)
                                 {
                                    _loc8_.volEnvelope.delta = (_loc13_.value - _loc12_.value << 16) / _loc11_;
                                 }
                                 else
                                 {
                                    _loc8_.volEnvelope.delta = 0;
                                 }
                                 _loc11_ = _loc8_.volEnvelope.frame - _loc12_.frame;
                                 _loc8_.volEnvelope.fraction = (_loc12_.value << 16) + _loc8_.volEnvelope.delta * _loc11_;
                                 _loc8_.volEnvelope.value = _loc8_.volEnvelope.fraction >> 16;
                              }
                           }
                           break;
                        case XM.FX_MULTI_RETRIG_NOTE:
                           if(_loc4_)
                           {
                              _loc8_.retrigX = _loc4_;
                           }
                           if(_loc5_)
                           {
                              _loc8_.retrigY = _loc5_;
                           }
                           if(!_loc6_.volume)
                           {
                              if(_loc8_.retrigY)
                              {
                                 _loc14_ = timer;
                                 if(!_loc6_.volume)
                                 {
                                    _loc14_++;
                                 }
                                 if(_loc14_ % _loc8_.retrigY == 0)
                                 {
                                    if((!_loc6_.volume || _loc6_.volume > 80) && Boolean(_loc8_.retrigX))
                                    {
                                       switch(_loc8_.retrigX)
                                       {
                                          case 1:
                                             --_loc8_.volume;
                                             break;
                                          case 2:
                                             _loc8_.volume -= 2;
                                             break;
                                          case 3:
                                             _loc8_.volume -= 4;
                                             break;
                                          case 4:
                                             _loc8_.volume -= 8;
                                             break;
                                          case 5:
                                             _loc8_.volume -= 16;
                                             break;
                                          case 6:
                                             _loc8_.volume = (_loc8_.volume << 1) / 3;
                                             break;
                                          case 7:
                                             _loc8_.volume >>= 1;
                                             break;
                                          case 9:
                                             ++_loc8_.volume;
                                             break;
                                          case 10:
                                             _loc8_.volume += 2;
                                             break;
                                          case 11:
                                             _loc8_.volume += 4;
                                             break;
                                          case 12:
                                             _loc8_.volume += 8;
                                             break;
                                          case 13:
                                             _loc8_.volume += 16;
                                          case 14:
                                             _loc8_.volume = _loc8_.volume * 3 >> 1;
                                             break;
                                          case 15:
                                             _loc8_.volume <<= 1;
                                       }
                                       if(_loc8_.volume > 64)
                                       {
                                          _loc8_.volume = 64;
                                       }
                                       else if(_loc8_.volume < 0)
                                       {
                                          _loc8_.volume = 0;
                                       }
                                    }
                                 }
                              }
                           }
                           break;
                        case XM.FX_TREMOR:
                           if(_loc6_.param)
                           {
                              _loc8_.tremorOn = ++_loc4_;
                              _loc8_.tremorOff = ++_loc5_ + _loc4_;
                           }
                           break;
                        case XM.FX_EXTRA_FINE_PORTAMENTO:
                           if(_loc4_ == 1)
                           {
                              if(_loc5_)
                              {
                                 _loc8_.xtraPortaUp = _loc5_ << 2;
                              }
                              _loc8_.frequency -= _loc8_.xtraPortaUp;
                           }
                           else if(_loc4_ == 2)
                           {
                              if(_loc5_)
                              {
                                 _loc8_.xtraPortaDown = _loc5_ << 2;
                              }
                              _loc8_.frequency += _loc8_.xtraPortaDown;
                           }
                     }
                  }
                  if(_loc1_.vibratoSpeed)
                  {
                     _loc8_.autoVibrato();
                  }
                  this.update(_loc8_);
                  _loc8_ = _loc8_.next;
               }
            }
         }
         else
         {
            this.effects();
         }
         if(++timer >= counter + this.patternDelay)
         {
            this.patternDelay = timer = 0;
            if(this.nextPosition < 0)
            {
               this.nextPosition = this.position + channels;
               if(this.nextPosition >= this.pattern.size)
               {
                  this.nextOrder = this.order + 1;
                  this.nextPosition = 0;
                  if(this.nextOrder >= length)
                  {
                     this.nextOrder = restart;
                     mixer.complete = 1;
                  }
               }
            }
         }
      }
      
      override protected function initialize() : void
      {
         var _loc1_:int = 0;
         var _loc2_:XMVoice = null;
         super.initialize();
         this.order = 0;
         this.position = 0;
         this.nextOrder = -1;
         this.nextPosition = -1;
         this.patternDelay = 0;
         this.voices = new Vector.<XMVoice>(channels,true);
         _loc1_ = 0;
         while(_loc1_ < channels)
         {
            _loc2_ = new XMVoice(_loc1_);
            _loc2_.instrument = this.instruments[0];
            _loc2_.sample = _loc2_.instrument.samples[0];
            _loc2_.channel = mixer.channels[_loc1_];
            _loc2_.channel.sample = _loc2_.sample;
            _loc2_.channel.pointer = 0;
            _loc2_.channel.counter = _loc2_.sample.length;
            this.voices[_loc1_] = _loc2_;
            if(_loc1_)
            {
               this.voices[int(_loc1_ - 1)].next = _loc2_;
            }
            _loc1_++;
         }
      }
      
      private function effects() : void
      {
         var _loc1_:XMInstrument = null;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:XMRow = null;
         var _loc5_:XMSample = null;
         var _loc6_:int = 0;
         var _loc7_:XMVoice = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         _loc7_ = this.voices[0];
         while(_loc7_)
         {
            _loc4_ = this.pattern.rows[int(this.position + _loc7_.index)];
            _loc1_ = _loc7_.instrument;
            _loc5_ = _loc1_.samples[_loc1_.noteSamples[_loc7_.note]];
            _loc7_.flags = 0;
            if(_loc7_.delay)
            {
               if((_loc4_.param & 0x0F) != timer)
               {
                  _loc7_ = _loc7_.next;
                  continue;
               }
               _loc7_.flags = _loc7_.delay;
               _loc7_.delay = 0;
            }
            if(_loc4_.effect == XM.FX_KEYOFF)
            {
               if(timer == _loc4_.param)
               {
                  _loc7_.keyoff = 1;
                  _loc7_.isFading = 1;
               }
            }
            if(_loc1_.hasVolume)
            {
               this.envelope(_loc7_.volEnvelope,_loc1_.volData,XM.FLAG_VOLUME,_loc7_);
            }
            else if(_loc7_.keyoff)
            {
               _loc7_.volume = 0;
               _loc7_.flags |= XM.FLAG_VOLUME;
            }
            if(_loc1_.hasPanning)
            {
               this.envelope(_loc7_.panEnvelope,_loc1_.panData,XM.FLAG_PANNING,_loc7_);
            }
            if(_loc4_.volume)
            {
               _loc2_ = _loc4_.volume >> 4;
               _loc3_ = _loc4_.volume & 0x0F;
               switch(_loc2_)
               {
                  case XM.VX_VOLUME_SLIDE_DOWN:
                     _loc7_.volume -= _loc3_;
                     if(_loc7_.volume < 0)
                     {
                        _loc7_.volume = 0;
                     }
                     _loc7_.flags |= XM.FLAG_VOLUME;
                     break;
                  case XM.VX_VOLUME_SLIDE_UP:
                     _loc7_.volume += _loc3_;
                     if(_loc7_.volume > 64)
                     {
                        _loc7_.volume = 64;
                     }
                     _loc7_.flags |= XM.FLAG_VOLUME;
                     break;
                  case XM.VX_VIBRATO:
                     _loc7_.vibrato();
                     break;
                  case XM.VX_PANNING_SLIDE_LEFT:
                     _loc7_.panning -= _loc3_;
                     _loc7_.flags |= XM.FLAG_PANNING;
                     break;
                  case XM.VX_PANNING_SLIDE_RIGHT:
                     _loc7_.panning += _loc3_;
                     _loc7_.flags |= XM.FLAG_PANNING;
                     break;
                  case XM.VX_TONE_PORTAMENTO:
                     _loc7_.tonePortamento();
               }
            }
            _loc2_ = _loc4_.param >> 4;
            _loc3_ = _loc4_.param & 0x0F;
            switch(_loc4_.effect)
            {
               case XM.FX_ARPEGGIO:
                  if(!_loc4_.param)
                  {
                     break;
                  }
                  _loc7_.frequency = _loc7_.period;
                  _loc8_ = (timer - counter) % 3;
                  if(_loc8_ < 0)
                  {
                     _loc8_ += 3;
                  }
                  switch(_loc8_)
                  {
                     case 1:
                        _loc7_.frequency -= _loc3_ << 6;
                        break;
                     case 2:
                        _loc7_.frequency -= _loc2_ << 6;
                  }
                  _loc7_.arpeggioOn = 1;
                  _loc7_.flags |= XM.FLAG_PERIOD;
                  break;
               case XM.FX_PORTAMENTO_UP:
                  _loc7_.frequency = _loc7_.period - _loc7_.portaUp;
                  if(_loc7_.frequency < 0)
                  {
                     _loc7_.frequency = 1;
                  }
                  _loc7_.period = _loc7_.frequency;
                  _loc7_.flags |= XM.FLAG_PERIOD;
                  break;
               case XM.FX_PORTAMENTO_DOWN:
                  _loc7_.frequency = _loc7_.period + _loc7_.portaDown;
                  _loc7_.period = _loc7_.frequency;
                  _loc7_.flags |= XM.FLAG_PERIOD;
                  break;
               case XM.FX_TONE_PORTAMENTO:
                  _loc7_.tonePortamento();
                  break;
               case XM.FX_VIBRATO:
                  _loc7_.vibrato();
                  break;
               case XM.FX_TONE_PORTAMENTO_VOLUME_SLIDE:
                  _loc7_.tonePortamento();
                  _loc6_ = 1;
                  break;
               case XM.FX_VIBRATO_VOLUME_SLIDE:
                  _loc7_.vibrato();
                  _loc6_ = 1;
                  break;
               case XM.FX_TREMOLO:
                  _loc7_.tremolo();
                  break;
               case XM.FX_VOLUME_SLIDE:
                  _loc6_ = 1;
                  break;
               case XM.FX_EXTENDED_EFFECTS:
                  switch(_loc2_)
                  {
                     case XM.EX_NOTE_CUT:
                        if(timer == _loc3_)
                        {
                           _loc7_.volume = 0;
                           _loc7_.flags |= XM.FLAG_VOLUME;
                        }
                        break;
                     case XM.EX_RETRIG_NOTE:
                        if(timer % _loc3_ == 0)
                        {
                           _loc7_.volEnvelope.reset(64);
                           _loc7_.panEnvelope.reset(32);
                           _loc7_.flags |= XM.FLAG_VOLUME | XM.FLAG_PANNING | XM.FLAG_TRIGGER;
                        }
                  }
                  break;
               case XM.FX_GLOBAL_VOLUME_SLIDE:
                  _loc2_ = _loc7_.volSlideMaster >> 4;
                  _loc3_ = _loc7_.volSlideMaster & 0x0F;
                  if(_loc2_)
                  {
                     master += _loc2_;
                     if(master > 64)
                     {
                        master = 64;
                     }
                  }
                  else if(_loc3_)
                  {
                     master -= _loc3_;
                     if(master < 0)
                     {
                        master = 0;
                     }
                  }
                  _loc7_.flags |= XM.FLAG_VOLUME;
                  break;
               case XM.FX_PANNING_SLIDE:
                  _loc2_ = _loc7_.panSlide >> 4;
                  _loc3_ = _loc7_.panSlide & 0x0F;
                  if(_loc2_)
                  {
                     _loc7_.panning += _loc2_;
                     if(_loc7_.panning > 255)
                     {
                        _loc7_.panning = 255;
                     }
                  }
                  else if(_loc3_)
                  {
                     _loc7_.panning -= _loc3_;
                     if(_loc7_.panning < 0)
                     {
                        _loc7_.panning = 0;
                     }
                  }
                  _loc7_.flags |= XM.FLAG_PANNING;
                  break;
               case XM.FX_MULTI_RETRIG_NOTE:
                  _loc9_ = timer;
                  if(!_loc4_.volume)
                  {
                     _loc9_++;
                  }
                  if(_loc9_ % _loc7_.retrigY == 0)
                  {
                     if((!_loc4_.volume || _loc4_.volume > 80) && Boolean(_loc7_.retrigX))
                     {
                        switch(_loc7_.retrigX)
                        {
                           case 1:
                              --_loc7_.volume;
                              break;
                           case 2:
                              _loc7_.volume -= 2;
                              break;
                           case 3:
                              _loc7_.volume -= 4;
                              break;
                           case 4:
                              _loc7_.volume -= 8;
                              break;
                           case 5:
                              _loc7_.volume -= 16;
                              break;
                           case 6:
                              _loc7_.volume = (_loc7_.volume << 1) / 3;
                              break;
                           case 7:
                              _loc7_.volume >>= 1;
                              break;
                           case 9:
                              ++_loc7_.volume;
                              break;
                           case 10:
                              _loc7_.volume += 2;
                              break;
                           case 11:
                              _loc7_.volume += 4;
                              break;
                           case 12:
                              _loc7_.volume += 8;
                              break;
                           case 13:
                              _loc7_.volume += 16;
                           case 14:
                              _loc7_.volume = _loc7_.volume * 3 >> 1;
                              break;
                           case 15:
                              _loc7_.volume <<= 1;
                        }
                        if(_loc7_.volume > 64)
                        {
                           _loc7_.volume = 64;
                        }
                        else if(_loc7_.volume < 0)
                        {
                           _loc7_.volume = 0;
                        }
                        _loc7_.flags |= XM.FLAG_VOLUME;
                     }
                     _loc7_.flags |= XM.FLAG_TRIGGER;
                  }
                  break;
               case XM.FX_TREMOR:
                  _loc7_.tremor();
            }
            if(_loc6_)
            {
               _loc2_ = _loc7_.volSlide >> 4;
               _loc3_ = _loc7_.volSlide & 0x0F;
               if(_loc2_)
               {
                  _loc7_.volume += _loc2_;
                  if(_loc7_.volume > 64)
                  {
                     _loc7_.volume = 64;
                  }
               }
               else if(_loc3_)
               {
                  _loc7_.volume -= _loc3_;
                  if(_loc7_.volume < 0)
                  {
                     _loc7_.volume = 0;
                  }
               }
               _loc6_ = 0;
               _loc7_.flags |= XM.FLAG_VOLUME;
            }
            if(_loc1_.vibratoSpeed)
            {
               _loc7_.autoVibrato();
            }
            this.update(_loc7_);
            _loc7_ = _loc7_.next;
         }
      }
      
      private function update(param1:XMVoice) : void
      {
         var _loc2_:SBChannel = null;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         _loc2_ = param1.channel;
         _loc3_ = param1.flags;
         param1.flags = 0;
         if(_loc3_ & XM.FLAG_VOLUME)
         {
            if(param1.volume < 0)
            {
               param1.volume = 0;
            }
            else if(param1.volume > 64)
            {
               param1.volume = 64;
            }
            _loc4_ = param1.volEnvelope.value * param1.volume * param1.fadeout * master;
            _loc4_ = _loc4_ * (1 / (64 * 64 * 65536 * 64) * 0.5);
            _loc2_.volume = _loc4_;
            _loc2_.lvol = _loc4_ * (256 - _loc2_.panning) / 256;
            _loc2_.rvol = _loc4_ * _loc2_.panning / 256;
         }
         if(_loc3_ & XM.FLAG_PANNING)
         {
            _loc4_ = param1.panning + (param1.panEnvelope.value - 32) * ((128 - Math.abs(param1.panning - 128)) / 32);
            if(_loc4_ < 0)
            {
               _loc4_ = 0;
            }
            else if(_loc4_ > 255)
            {
               _loc4_ = 255;
            }
            _loc2_.panning = _loc4_;
            _loc2_.lvol = _loc2_.volume * (256 - _loc4_) / 256;
            _loc2_.rvol = _loc2_.volume * _loc4_ / 256;
         }
         if(_loc3_ & XM.FLAG_TRIGGER)
         {
            _loc2_.sample = param1.sample;
            _loc2_.pointer = param1.sampleOffset;
            _loc2_.counter = param1.sample.length;
            if(_loc2_.speed < 0)
            {
               _loc2_.speed = -_loc2_.speed;
            }
            param1.sampleOffset = 0;
         }
         if(_loc3_ & XM.FLAG_PERIOD)
         {
            _loc4_ = int(548077568 * Math.pow(2,(4608 - (param1.frequency + param1.frqDelta)) / 768) / 44100) / 65536;
            if(_loc2_.speed < 0)
            {
               _loc2_.speed = -_loc4_;
            }
            else
            {
               _loc2_.speed = _loc4_;
            }
            if(param1.frequency > 9212)
            {
               _loc2_.speed = 0;
            }
            param1.frqDelta = 0;
         }
         if(_loc3_ & XM.FLAG_STOP)
         {
            _loc2_.sample = null;
         }
      }
      
      private function envelope(param1:XMEnvelope, param2:XMData, param3:int, param4:XMVoice) : void
      {
         var _loc5_:XMPoint = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:XMPoint = null;
         var _loc9_:int = 0;
         if(param4.isFading)
         {
            param4.fadeout -= param4.instrument.fadeout << 1;
            if(param4.fadeout < 0)
            {
               param4.fadeout = 0;
               param4.isFading = 0;
            }
         }
         if(!param1.stopped)
         {
            _loc6_ = param1.position;
            _loc5_ = param2.points[_loc6_];
            if(param1.frame == _loc5_.frame)
            {
               if(Boolean(param2.flags & XM.ENVELOPE_LOOP) && _loc6_ == param2.loopEnd)
               {
                  _loc6_ = param1.position = param2.loopStart;
                  _loc5_ = param2.points[_loc6_];
                  param1.frame = _loc5_.frame;
               }
               if(_loc6_ == param2.total - 1)
               {
                  param1.value = _loc5_.value;
                  param1.stopped = 1;
                  param4.flags |= param3;
                  return;
               }
               _loc9_ = _loc6_ + 1;
               _loc8_ = param2.points[_loc9_];
               if(param2.flags & XM.ENVELOPE_SUSTAIN && _loc6_ == param2.sustain && !param4.keyoff)
               {
                  param1.value = _loc5_.value;
                  param4.flags |= param3;
                  return;
               }
               _loc7_ = _loc8_.frame - _loc5_.frame;
               if(_loc7_)
               {
                  param1.delta = (_loc8_.value - _loc5_.value << 16) / _loc7_;
               }
               else
               {
                  param1.delta = 0;
               }
               param1.fraction = _loc5_.value << 16;
               ++param1.position;
            }
            else
            {
               param1.fraction += param1.delta;
            }
            param1.value = param1.fraction >> 16;
            ++param1.frame;
         }
         param4.flags |= param3;
      }
   }
}
