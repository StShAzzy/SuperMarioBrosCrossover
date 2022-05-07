package neoart.flod.xm
{
   import flash.utils.*;
   import neoart.flod.core.*;
   
   public final class XMLoader
   {
       
      
      public function XMLoader()
      {
         super();
      }
      
      public static function load(param1:ByteArray, param2:Soundblaster) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:XMInstrument = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:XMPattern = null;
         var _loc11_:XMPlayer = null;
         var _loc12_:int = 0;
         var _loc13_:XMRow = null;
         var _loc14_:int = 0;
         var _loc15_:XMSample = null;
         var _loc16_:int = 0;
         if(param1.length < 336)
         {
            return;
         }
         param1.position = 17;
         (_loc11_ = XMPlayer(param2.player)).title = param1.readMultiByte(20,SBPlayer.ENCODING);
         param1.position += 21;
         _loc11_.version = param1.readUnsignedShort();
         _loc3_ = param1.readUnsignedInt();
         _loc11_.length = param1.readUnsignedShort();
         _loc11_.restart = param1.readUnsignedShort();
         _loc11_.channels = param1.readUnsignedShort();
         _loc11_.patterns = new Vector.<XMPattern>(param1.readUnsignedShort(),true);
         _loc11_.instruments = new Vector.<XMInstrument>(param1.readUnsignedShort() + 1,true);
         _loc11_.amiga = param1.readUnsignedShort();
         _loc11_.speed = param1.readUnsignedShort();
         _loc11_.tempo = param1.readUnsignedShort();
         _loc9_ = _loc11_.length;
         _loc11_.track = new Vector.<int>(_loc9_,true);
         _loc4_ = 0;
         while(_loc4_ < _loc9_)
         {
            _loc11_.track[_loc4_] = param1.readUnsignedByte();
            _loc4_++;
         }
         param1.position = _loc3_ + 60;
         _loc9_ = _loc11_.patterns.length;
         _loc12_ = param1.position;
         _loc4_ = 0;
         while(_loc4_ < _loc9_)
         {
            _loc3_ = param1.readUnsignedInt();
            ++param1.position;
            (_loc10_ = new XMPattern()).length = param1.readUnsignedShort();
            _loc10_.rows = new Vector.<XMRow>(_loc10_.size = int(_loc10_.length * _loc11_.channels),true);
            _loc16_ = param1.readUnsignedShort();
            param1.position = _loc12_ + _loc3_;
            _loc7_ = param1.position + _loc16_;
            if(_loc16_ > 0)
            {
               _loc8_ = 0;
               while(_loc8_ < _loc14_)
               {
                  _loc13_ = new XMRow();
                  if((_loc16_ = param1.readUnsignedByte()) & 128)
                  {
                     if(_loc16_ & 1)
                     {
                        _loc13_.note = param1.readUnsignedByte();
                     }
                     if(_loc16_ & 2)
                     {
                        _loc13_.instrument = param1.readUnsignedByte();
                     }
                     if(_loc16_ & 4)
                     {
                        _loc13_.volume = param1.readUnsignedByte();
                     }
                     if(_loc16_ & 8)
                     {
                        _loc13_.effect = param1.readUnsignedByte();
                     }
                     if(_loc16_ & 16)
                     {
                        _loc13_.param = param1.readUnsignedByte();
                     }
                  }
                  else
                  {
                     _loc13_.note = _loc16_;
                     _loc13_.instrument = param1.readUnsignedByte();
                     _loc13_.volume = param1.readUnsignedByte();
                     _loc13_.effect = param1.readUnsignedByte();
                     _loc13_.param = param1.readUnsignedByte();
                  }
                  if(_loc13_.note != 97)
                  {
                     if(_loc13_.note > 95)
                     {
                        _loc13_.note = 0;
                     }
                  }
                  if(_loc13_.instrument > _loc11_.instruments.length)
                  {
                     _loc13_.instrument = 0;
                  }
                  _loc10_.rows[_loc8_] = _loc13_;
                  _loc8_++;
               }
            }
            else
            {
               _loc8_ = 0;
               while(_loc8_ < _loc14_)
               {
                  _loc10_.rows[_loc8_] = new XMRow();
                  _loc8_++;
               }
            }
            _loc11_.patterns[_loc4_] = _loc10_;
            if((_loc12_ = param1.position) != _loc7_)
            {
               _loc12_ = param1.position = _loc7_;
            }
            _loc4_++;
         }
         _loc9_ = _loc11_.instruments.length;
         _loc7_ = param1.position;
         _loc4_ = 1;
         while(_loc4_ < _loc9_)
         {
            _loc5_ = param1.readUnsignedInt();
            if(param1.position + _loc5_ >= param1.length)
            {
               break;
            }
            (_loc6_ = new XMInstrument()).name = param1.readMultiByte(22,SBPlayer.ENCODING);
            ++param1.position;
            if((_loc16_ = param1.readUnsignedShort()) > 16)
            {
               _loc16_ = 16;
            }
            _loc3_ = param1.readUnsignedInt();
            if(_loc16_ > 0)
            {
               _loc6_.samples = new Vector.<XMSample>(_loc16_,true);
               _loc8_ = 0;
               while(_loc8_ < 96)
               {
                  _loc6_.noteSamples[_loc8_] = param1.readUnsignedByte();
                  _loc8_++;
               }
               _loc8_ = 0;
               while(_loc8_ < 12)
               {
                  _loc6_.volData.points[_loc8_] = new XMPoint(param1.readUnsignedShort(),param1.readUnsignedShort());
                  _loc8_++;
               }
               _loc8_ = 0;
               while(_loc8_ < 12)
               {
                  _loc6_.panData.points[_loc8_] = new XMPoint(param1.readUnsignedShort(),param1.readUnsignedShort());
                  _loc8_++;
               }
               _loc6_.volData.total = param1.readUnsignedByte();
               _loc6_.panData.total = param1.readUnsignedByte();
               _loc6_.volData.sustain = param1.readUnsignedByte();
               _loc6_.volData.loopStart = param1.readUnsignedByte();
               _loc6_.volData.loopEnd = param1.readUnsignedByte();
               _loc6_.panData.sustain = param1.readUnsignedByte();
               _loc6_.panData.loopStart = param1.readUnsignedByte();
               _loc6_.panData.loopEnd = param1.readUnsignedByte();
               _loc6_.volData.flags = param1.readUnsignedByte();
               _loc6_.panData.flags = param1.readUnsignedByte();
               if(_loc6_.volData.flags & XM.ENVELOPE_ON)
               {
                  _loc6_.hasVolume = 1;
               }
               if(_loc6_.panData.flags & XM.ENVELOPE_ON)
               {
                  _loc6_.hasPanning = 1;
               }
               _loc6_.vibratoType = param1.readUnsignedByte();
               _loc6_.vibratoSweep = param1.readUnsignedByte();
               _loc6_.vibratoDepth = param1.readUnsignedByte();
               _loc6_.vibratoSpeed = param1.readUnsignedByte();
               _loc6_.fadeout = param1.readUnsignedShort();
               param1.position += 22;
               _loc12_ = param1.position;
               _loc11_.instruments[_loc4_] = _loc6_;
               _loc8_ = 0;
               while(_loc8_ < _loc16_)
               {
                  (_loc15_ = new XMSample()).length = param1.readUnsignedInt();
                  _loc15_.loopStart = param1.readUnsignedInt();
                  _loc15_.loopLen = param1.readUnsignedInt();
                  _loc15_.volume = param1.readUnsignedByte();
                  _loc15_.finetune = param1.readByte();
                  _loc15_.loopMode = param1.readUnsignedByte();
                  _loc15_.panning = param1.readUnsignedByte();
                  _loc15_.relative = param1.readByte();
                  ++param1.position;
                  _loc15_.name = param1.readMultiByte(22,SBPlayer.ENCODING);
                  _loc6_.samples[_loc8_] = _loc15_;
                  param1.position = _loc12_ + _loc3_;
                  _loc12_ = param1.position;
                  _loc8_++;
               }
               _loc8_ = 0;
               while(_loc8_ < _loc16_)
               {
                  if((_loc15_ = _loc6_.samples[_loc8_]).length)
                  {
                     _loc12_ = param1.position + _loc15_.length;
                     if(_loc15_.loopMode & 16)
                     {
                        _loc15_.bits = 16;
                        _loc15_.loopMode ^= 16;
                        _loc15_.length >>= 1;
                        _loc15_.loopStart >>= 1;
                        _loc15_.loopLen >>= 1;
                     }
                     if(!_loc15_.loopLen)
                     {
                        _loc15_.loopMode = 0;
                     }
                     _loc15_.store(param1);
                     if(_loc15_.loopMode)
                     {
                        _loc15_.length = _loc15_.loopStart + _loc15_.loopLen;
                     }
                     param1.position = _loc12_;
                  }
                  _loc8_++;
               }
            }
            else
            {
               param1.position = _loc7_ + _loc5_;
            }
            if((_loc7_ = param1.position) == param1.length)
            {
               break;
            }
            _loc4_++;
         }
         (_loc6_ = new XMInstrument()).name = "FlodXM";
         _loc6_.volData = new XMData();
         _loc6_.panData = new XMData();
         _loc6_.samples = new Vector.<XMSample>(1,true);
         _loc4_ = 0;
         while(_loc4_ < 12)
         {
            _loc6_.volData.points[_loc4_] = new XMPoint();
            _loc6_.panData.points[_loc4_] = new XMPoint();
            _loc4_++;
         }
         (_loc15_ = new XMSample()).length = 220;
         _loc15_.data = new Vector.<Number>(220,true);
         _loc4_ = 0;
         while(_loc4_ < 220)
         {
            _loc15_.data[_loc4_] = 0;
            _loc4_++;
         }
         _loc6_.samples[0] = _loc15_;
         _loc11_.instruments[0] = _loc6_;
         _loc9_ = _loc11_.instruments.length;
      }
   }
}
