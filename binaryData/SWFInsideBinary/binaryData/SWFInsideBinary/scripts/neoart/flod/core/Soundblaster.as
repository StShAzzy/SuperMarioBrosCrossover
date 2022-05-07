package neoart.flod.core
{
   import flash.events.*;
   import flash.utils.*;
   
   public final class Soundblaster
   {
      
      public static const BUFFER_SIZE:int = 8192;
       
      
      public var player:SBPlayer;
      
      public var channels:Vector.<SBChannel>;
      
      public var record:int;
      
      public var samplesTick:int;
      
      private var buffer:Vector.<Sample>;
      
      private var completed:int;
      
      private var remains:int;
      
      private var samplesLeft:int;
      
      private var wave:ByteArray;
      
      public function Soundblaster()
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super();
         this.wave = new ByteArray();
         this.wave.endian = "littleEndian";
         _loc2_ = BUFFER_SIZE;
         this.buffer = new Vector.<Sample>(_loc2_,true);
         this.buffer[0] = new Sample();
         _loc1_ = 1;
         while(_loc1_ < _loc2_)
         {
            this.buffer[_loc1_] = this.buffer[int(_loc1_ - 1)].next = new Sample();
            _loc1_++;
         }
      }
      
      public function set complete(param1:int) : void
      {
         this.completed = param1 ^ this.player.loopSong;
      }
      
      public function get waveform() : ByteArray
      {
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.endian = "littleEndian";
         _loc1_.writeUTFBytes("RIFF");
         _loc1_.writeInt(this.wave.length + 44);
         _loc1_.writeUTFBytes("WAVEfmt ");
         _loc1_.writeInt(16);
         _loc1_.writeShort(1);
         _loc1_.writeShort(2);
         _loc1_.writeInt(44100);
         _loc1_.writeInt(44100 << 2);
         _loc1_.writeShort(4);
         _loc1_.writeShort(16);
         _loc1_.writeUTFBytes("data");
         _loc1_.writeInt(this.wave.length);
         _loc1_.writeBytes(this.wave);
         _loc1_.position = 0;
         return _loc1_;
      }
      
      function setup(param1:int) : void
      {
         var _loc2_:int = 0;
         this.channels = new Vector.<SBChannel>(param1,true);
         this.channels[0] = new SBChannel(0);
         _loc2_ = 1;
         while(_loc2_ < param1)
         {
            this.channels[_loc2_] = this.channels[int(_loc2_ - 1)].next = new SBChannel(_loc2_);
            _loc2_++;
         }
      }
      
      function initialize() : void
      {
         var _loc1_:SBChannel = this.channels[0];
         var _loc2_:Sample = this.buffer[0];
         this.wave.clear();
         this.completed = 0;
         this.remains = 0;
         this.samplesLeft = 0;
         while(_loc1_)
         {
            _loc1_.initialize();
            _loc1_ = _loc1_.next;
         }
         while(_loc2_)
         {
            _loc2_.l = _loc2_.r = 0;
            _loc2_ = _loc2_.next;
         }
      }
      
      function mix(param1:SampleDataEvent) : void
      {
         var _loc2_:SBChannel = null;
         var _loc3_:Vector.<Number> = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:SBSample = null;
         var _loc12_:Sample = null;
         var _loc14_:int = 0;
         var _loc4_:ByteArray = param1.data;
         var _loc13_:int = BUFFER_SIZE;
         var _loc15_:Number = 0;
         if(this.completed)
         {
            if(!this.remains)
            {
               return;
            }
            _loc13_ = this.remains;
         }
         _loc7_ = this.channels.length;
         while(_loc8_ < _loc13_)
         {
            if(!this.samplesLeft)
            {
               this.player.process();
               this.samplesLeft = this.samplesTick;
               if(this.completed)
               {
                  if((_loc13_ = _loc8_ + this.samplesTick) > BUFFER_SIZE)
                  {
                     this.remains = _loc13_ - BUFFER_SIZE;
                     _loc13_ = BUFFER_SIZE;
                  }
               }
            }
            _loc14_ = this.samplesLeft;
            if(_loc8_ + _loc14_ >= _loc13_)
            {
               _loc14_ = _loc13_ - _loc8_;
            }
            _loc9_ = _loc10_ + _loc14_;
            _loc2_ = this.channels[0];
            _loc5_ = 0;
            while(_loc5_ < _loc7_)
            {
               if(!_loc2_.sample || !_loc2_.sample.data)
               {
                  _loc2_ = _loc2_.next;
               }
               else
               {
                  _loc3_ = (_loc11_ = _loc2_.sample).data;
                  _loc12_ = this.buffer[_loc10_];
                  _loc6_ = _loc10_;
                  while(_loc6_ < _loc9_)
                  {
                     if(!_loc2_.mute)
                     {
                        _loc15_ = _loc3_[int(_loc2_.pointer)];
                     }
                     _loc2_.pointer += _loc2_.speed;
                     _loc12_.l += _loc15_ * _loc2_.lvol;
                     _loc12_.r += _loc15_ * _loc2_.rvol;
                     _loc12_ = _loc12_.next;
                     _loc15_ = 0;
                     if(_loc2_.speed < 0)
                     {
                        if(_loc2_.pointer <= _loc2_.counter)
                        {
                           _loc2_.pointer = _loc11_.loopStart + (_loc2_.counter - _loc2_.pointer);
                           _loc2_.counter = _loc11_.length;
                           _loc2_.speed = -_loc2_.speed;
                        }
                     }
                     else if(_loc2_.pointer >= _loc2_.counter)
                     {
                        if(_loc11_.loopMode == 1)
                        {
                           _loc2_.pointer = _loc11_.loopStart + (_loc2_.pointer - _loc2_.counter);
                           _loc2_.counter = _loc11_.length;
                        }
                        else
                        {
                           if(_loc11_.loopMode != 2)
                           {
                              _loc2_.sample = null;
                              break;
                           }
                           _loc2_.pointer = _loc11_.length - (_loc2_.pointer - _loc2_.counter);
                           if(_loc2_.pointer == _loc11_.length)
                           {
                              _loc2_.pointer -= 1e-11;
                           }
                           _loc2_.counter = _loc11_.loopStart;
                           _loc2_.speed = -_loc2_.speed;
                        }
                     }
                     _loc6_++;
                  }
                  _loc2_ = _loc2_.next;
               }
               _loc5_++;
            }
            _loc10_ = _loc9_;
            _loc8_ += _loc14_;
            this.samplesLeft -= _loc14_;
         }
         _loc12_ = this.buffer[0];
         if(this.record)
         {
            _loc5_ = 0;
            while(_loc5_ < _loc13_)
            {
               if(_loc12_.l > 1)
               {
                  _loc12_.l = 1;
               }
               else if(_loc12_.l < -1)
               {
                  _loc12_.l = -1;
               }
               if(_loc12_.r > 1)
               {
                  _loc12_.r = 1;
               }
               else if(_loc12_.r < -1)
               {
                  _loc12_.r = -1;
               }
               this.wave.writeShort(65536 + int(_loc12_.l * 65536));
               this.wave.writeShort(65536 + int(_loc12_.r * 65536));
               _loc4_.writeFloat(_loc12_.l);
               _loc4_.writeFloat(_loc12_.r);
               _loc12_.l = _loc12_.r = 0;
               _loc12_ = _loc12_.next;
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 0;
            while(_loc5_ < _loc13_)
            {
               if(_loc12_.l > 1)
               {
                  _loc12_.l = 1;
               }
               else if(_loc12_.l < -1)
               {
                  _loc12_.l = -1;
               }
               if(_loc12_.r > 1)
               {
                  _loc12_.r = 1;
               }
               else if(_loc12_.r < -1)
               {
                  _loc12_.r = -1;
               }
               _loc4_.writeFloat(_loc12_.l);
               _loc4_.writeFloat(_loc12_.r);
               _loc12_.l = _loc12_.r = 0;
               _loc12_ = _loc12_.next;
               _loc5_++;
            }
         }
      }
   }
}
