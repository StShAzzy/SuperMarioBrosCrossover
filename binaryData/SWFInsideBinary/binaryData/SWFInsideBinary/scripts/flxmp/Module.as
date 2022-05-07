package flxmp
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class Module
   {
       
      
      public var numChannels:int;
      
      public var songLength:int;
      
      public var restartPos:int;
      
      public var defaultTempo:int;
      
      public var defaultBPM:int;
      
      public var bpm:int;
      
      public var tempo:int;
      
      public var patternOrder:Vector.<uint>;
      
      public var instruments:Vector.<Instrument>;
      
      public var patterns:Vector.<ByteArray>;
      
      public var channels:Vector.<Channel>;
      
      public function Module(param1:Class)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         var _loc11_:uint = 0;
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:int = 0;
         var _loc15_:uint = 0;
         var _loc16_:int = 0;
         var _loc17_:Vector.<int> = null;
         var _loc18_:Vector.<int> = null;
         var _loc19_:Vector.<int> = null;
         var _loc20_:Vector.<int> = null;
         var _loc21_:uint = 0;
         var _loc22_:uint = 0;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:int = 0;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:uint = 0;
         var _loc30_:Number = NaN;
         var _loc31_:Number = NaN;
         super();
         var _loc5_:ByteArray;
         (_loc5_ = new param1() as ByteArray).endian = Endian.LITTLE_ENDIAN;
         _loc5_.position = 60;
         _loc6_ = _loc5_.readUnsignedInt();
         this.songLength = _loc5_.readUnsignedShort();
         this.restartPos = _loc5_.readUnsignedShort();
         this.numChannels = _loc5_.readUnsignedShort();
         _loc7_ = _loc5_.readUnsignedShort();
         _loc8_ = _loc5_.readUnsignedShort();
         _loc5_.position = 76;
         this.defaultTempo = _loc5_.readUnsignedShort();
         this.defaultBPM = _loc5_.readUnsignedShort();
         this.bpm = this.defaultBPM;
         this.tempo = this.defaultTempo;
         this.patternOrder = new Vector.<uint>(this.songLength,true);
         _loc2_ = 0;
         while(_loc2_ < this.songLength)
         {
            this.patternOrder[_loc2_] = _loc5_.readUnsignedByte();
            _loc2_++;
         }
         _loc5_.position = _loc6_ + 60;
         this.channels = new Vector.<Channel>(this.numChannels,true);
         _loc2_ = 0;
         while(_loc2_ < this.numChannels)
         {
            this.channels[_loc2_] = new Channel(this);
            _loc2_++;
         }
         this.patterns = new Vector.<ByteArray>(_loc7_,true);
         _loc2_ = 0;
         while(_loc2_ < _loc7_)
         {
            _loc9_ = _loc5_.readUnsignedInt();
            ++_loc5_.position;
            _loc10_ = _loc5_.readUnsignedShort();
            _loc11_ = _loc5_.readUnsignedShort();
            this.patterns[_loc2_] = new ByteArray();
            _loc3_ = 0;
            while(_loc3_ < _loc11_)
            {
               if(((_loc12_ = _loc5_.readUnsignedByte()) & 128) > 0)
               {
                  _loc13_ = 1;
                  _loc4_ = 0;
                  while(_loc4_ < 5)
                  {
                     if((_loc12_ & _loc13_) > 0)
                     {
                        this.patterns[_loc2_].writeByte(_loc5_.readUnsignedByte());
                        _loc3_++;
                     }
                     else
                     {
                        this.patterns[_loc2_].writeByte(0);
                     }
                     _loc13_ <<= 1;
                     _loc4_++;
                  }
               }
               else
               {
                  this.patterns[_loc2_].writeByte(_loc12_);
                  this.patterns[_loc2_].writeByte(_loc5_.readUnsignedByte());
                  this.patterns[_loc2_].writeByte(_loc5_.readUnsignedByte());
                  this.patterns[_loc2_].writeByte(_loc5_.readUnsignedByte());
                  this.patterns[_loc2_].writeByte(_loc5_.readUnsignedByte());
                  _loc3_ += 4;
               }
               _loc3_++;
            }
            _loc2_++;
         }
         this.instruments = new Vector.<Instrument>(_loc8_,true);
         _loc2_ = 0;
         while(_loc2_ < _loc8_)
         {
            _loc14_ = _loc5_.position;
            this.instruments[_loc2_] = new Instrument();
            _loc15_ = _loc5_.readUnsignedInt();
            this.instruments[_loc2_].name = _loc5_.readMultiByte(22,"us-ascii");
            ++_loc5_.position;
            this.instruments[_loc2_].numSamples = _loc5_.readUnsignedShort();
            if(this.instruments[_loc2_].numSamples > 0)
            {
               _loc16_ = _loc5_.readUnsignedInt();
               _loc3_ = 0;
               while(_loc3_ < 96)
               {
                  this.instruments[_loc2_].smpNotes[_loc3_] = _loc5_.readUnsignedByte();
                  _loc3_++;
               }
               _loc17_ = new Vector.<int>(12,true);
               _loc18_ = new Vector.<int>(12,true);
               _loc19_ = new Vector.<int>(12,true);
               _loc20_ = new Vector.<int>(12,true);
               _loc3_ = 0;
               while(_loc3_ < 12)
               {
                  _loc17_[_loc3_] = _loc5_.readUnsignedShort();
                  _loc18_[_loc3_] = _loc5_.readUnsignedShort();
                  _loc3_++;
               }
               _loc3_ = 0;
               while(_loc3_ < 12)
               {
                  _loc19_[_loc3_] = _loc5_.readUnsignedShort();
                  _loc20_[_loc3_] = _loc5_.readUnsignedShort();
                  _loc3_++;
               }
               _loc21_ = _loc5_.readUnsignedByte();
               _loc22_ = _loc5_.readUnsignedByte();
               if(_loc21_ > 0)
               {
                  this.instruments[_loc2_].volumeEnvelope = new Vector.<Number>(_loc17_[_loc21_ - 1],true);
                  this.instruments[_loc2_].volEnvLength = this.instruments[_loc2_].volumeEnvelope.length;
                  _loc27_ = 0;
                  _loc3_ = 0;
                  while(_loc3_ < this.instruments[_loc2_].volumeEnvelope.length)
                  {
                     if(_loc3_ > _loc25_)
                     {
                        _loc27_++;
                     }
                     _loc23_ = _loc17_[_loc27_];
                     _loc24_ = _loc18_[_loc27_];
                     _loc25_ = _loc17_[_loc27_ + 1];
                     _loc26_ = _loc18_[_loc27_ + 1];
                     this.instruments[_loc2_].volumeEnvelope[_loc3_] = (_loc24_ + (_loc26_ - _loc24_) / (_loc25_ - _loc23_) * (_loc3_ - _loc23_)) / 64;
                     _loc3_++;
                  }
               }
               if(_loc22_ > 0)
               {
                  this.instruments[_loc2_].panningEnvelope = new Vector.<Number>(_loc19_[_loc22_ - 1],true);
                  this.instruments[_loc2_].panEnvLength = this.instruments[_loc2_].panningEnvelope.length;
                  _loc27_ = 0;
                  _loc3_ = 0;
                  while(_loc3_ < this.instruments[_loc2_].panningEnvelope.length)
                  {
                     if(_loc3_ > _loc25_)
                     {
                        _loc27_++;
                     }
                     _loc23_ = _loc19_[_loc27_];
                     _loc24_ = _loc20_[_loc27_];
                     _loc25_ = _loc19_[_loc27_ + 1];
                     _loc26_ = _loc20_[_loc27_ + 1];
                     this.instruments[_loc2_].panningEnvelope[_loc3_] = (_loc24_ + (_loc26_ - _loc24_) / (_loc25_ - _loc23_) * (_loc3_ - _loc23_)) / 64;
                     _loc3_++;
                  }
               }
               this.instruments[_loc2_].volSustain = _loc17_[_loc5_.readUnsignedByte()];
               this.instruments[_loc2_].volLoopStart = _loc17_[_loc5_.readUnsignedByte()];
               this.instruments[_loc2_].volLoopEnd = _loc17_[_loc5_.readUnsignedByte()] - 1;
               this.instruments[_loc2_].panSustain = _loc19_[_loc5_.readUnsignedByte()];
               this.instruments[_loc2_].panLoopStart = _loc19_[_loc5_.readUnsignedByte()];
               this.instruments[_loc2_].panLoopEnd = _loc19_[_loc5_.readUnsignedByte()] - 1;
               if(((_loc28_ = _loc5_.readUnsignedByte()) & 1) > 0)
               {
                  this.instruments[_loc2_].volON = true;
               }
               else
               {
                  this.instruments[_loc2_].volON = false;
               }
               if((_loc28_ & 2) > 0)
               {
                  this.instruments[_loc2_].volSUS = true;
               }
               else
               {
                  this.instruments[_loc2_].volSUS = false;
               }
               if((_loc28_ & 4) > 0)
               {
                  this.instruments[_loc2_].volLOOP = true;
               }
               else
               {
                  this.instruments[_loc2_].volLOOP = false;
               }
               if(((_loc29_ = _loc5_.readUnsignedByte()) & 1) > 0)
               {
                  this.instruments[_loc2_].panON = true;
               }
               else
               {
                  this.instruments[_loc2_].panON = false;
               }
               if((_loc29_ & 2) > 0)
               {
                  this.instruments[_loc2_].panSUS = true;
               }
               else
               {
                  this.instruments[_loc2_].panSUS = false;
               }
               if((_loc29_ & 4) > 0)
               {
                  this.instruments[_loc2_].panLOOP = true;
               }
               else
               {
                  this.instruments[_loc2_].panLOOP = false;
               }
               this.instruments[_loc2_].vibType = _loc5_.readUnsignedByte();
               this.instruments[_loc2_].vibSweep = _loc5_.readUnsignedByte();
               this.instruments[_loc2_].vibDepth = _loc5_.readUnsignedByte();
               this.instruments[_loc2_].vibRate = _loc5_.readUnsignedByte();
               this.instruments[_loc2_].fadeout = Number(_loc5_.readUnsignedShort());
               _loc5_.position += _loc15_ - 241;
               this.instruments[_loc2_].waves = new Vector.<Wave>(this.instruments[_loc2_].numSamples,true);
               _loc3_ = 0;
               while(_loc3_ < this.instruments[_loc2_].numSamples)
               {
                  this.instruments[_loc2_].waves[_loc3_] = new Wave();
                  this.instruments[_loc2_].waves[_loc3_].length = _loc5_.readUnsignedInt();
                  this.instruments[_loc2_].waves[_loc3_].samples = new Vector.<Number>(this.instruments[_loc2_].waves[_loc3_].length,true);
                  this.instruments[_loc2_].waves[_loc3_].loopStart = _loc5_.readUnsignedInt();
                  this.instruments[_loc2_].waves[_loc3_].loopLength = _loc5_.readUnsignedInt();
                  this.instruments[_loc2_].waves[_loc3_].loopEnd = this.instruments[_loc2_].waves[_loc3_].loopStart + this.instruments[_loc2_].waves[_loc3_].loopLength;
                  this.instruments[_loc2_].waves[_loc3_].volume = Number(_loc5_.readUnsignedByte()) / 64;
                  this.instruments[_loc2_].waves[_loc3_].finetune = Number(_loc5_.readByte());
                  this.instruments[_loc2_].waves[_loc3_].type = _loc5_.readUnsignedByte();
                  if((this.instruments[_loc2_].waves[_loc3_].type & 16) > 0)
                  {
                     this.instruments[_loc2_].waves[_loc3_].sixteenbit = true;
                  }
                  else
                  {
                     this.instruments[_loc2_].waves[_loc3_].sixteenbit = false;
                  }
                  this.instruments[_loc2_].waves[_loc3_].type &= 3;
                  this.instruments[_loc2_].waves[_loc3_].panning = Number(_loc5_.readUnsignedByte()) / 256;
                  this.instruments[_loc2_].waves[_loc3_].relNote = _loc5_.readByte();
                  _loc5_.position += 1;
                  this.instruments[_loc2_].waves[_loc3_].name = _loc5_.readMultiByte(22,"us-ascii");
                  _loc5_.position += 40 - _loc16_;
                  _loc30_ = 0;
                  if(this.instruments[_loc2_].waves[_loc3_].sixteenbit)
                  {
                     this.instruments[_loc2_].waves[_loc3_].length >>= 1;
                     _loc4_ = 0;
                     while(_loc4_ < this.instruments[_loc2_].waves[_loc3_].length)
                     {
                        this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] = _loc5_.readShort();
                        if(_loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] < -32768)
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] + 65536;
                        }
                        else if(_loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] > 32767)
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] - 65536;
                        }
                        else
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_];
                        }
                        this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] = Number(_loc31_) * 0.000030517578125;
                        _loc30_ = _loc31_;
                        _loc4_++;
                     }
                  }
                  else
                  {
                     _loc4_ = 0;
                     while(_loc4_ < this.instruments[_loc2_].waves[_loc3_].length)
                     {
                        this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] = _loc5_.readByte();
                        if(_loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] < -128)
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] + 256;
                        }
                        else if(_loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] > 127)
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] - 256;
                        }
                        else
                        {
                           _loc31_ = _loc30_ + this.instruments[_loc2_].waves[_loc3_].samples[_loc4_];
                        }
                        this.instruments[_loc2_].waves[_loc3_].samples[_loc4_] = _loc31_ * 0.0078125;
                        _loc30_ = _loc31_;
                        _loc4_++;
                     }
                  }
                  _loc3_++;
               }
            }
            else
            {
               _loc5_.position = _loc14_ + _loc15_;
            }
            _loc2_++;
         }
      }
   }
}
