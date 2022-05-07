package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nes_Dmc3runEii() : void
   {
      var _loc2_:* = 0;
      var _loc11_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc26_:* = 0;
      var _loc27_:* = 0;
      var _loc25_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc12_:int = 0;
      var _loc19_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      var _loc3_:int = 0;
      var _loc4_:int = 0;
      var _loc9_:int = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:int = 0;
      var _loc17_:int = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc27_ = li32((_loc11_ = li32(_loc2_)) + 20);
      si32(_loc26_ = li32(_loc11_ + 48),_loc11_ + 20);
      _loc25_ = li32(_loc11_ + 8);
      _loc24_ = li32(_loc2_ + 8);
      _loc23_ = li32(_loc2_ + 4);
      if(_loc25_ == 0)
      {
         si8(1,_loc11_ + 45);
      }
      else
      {
         si32(1,_loc25_ + 40);
         if(_loc26_ != _loc27_)
         {
            var _loc21_:*;
            var _loc20_:* = li32((_loc21_ = li32(_loc11_ + 8)) + 4);
            var _loc8_:* = li32(_loc21_);
            _loc1_ -= 16;
            si32(_loc21_,_loc1_ + 12);
            si32(int(_loc26_ - _loc27_),_loc1_ + 8);
            var _loc22_:int;
            si32(_loc20_ = int((_loc22_ = _loc8_ * _loc23_) + _loc20_),_loc1_ + 4);
            si32(_loc20_ = int(_loc11_ + 72),_loc1_);
            ESP = _loc1_;
            F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
            _loc1_ += 16;
         }
      }
      if((_loc17_ = (_loc16_ = li32(_loc11_ + 16)) + _loc23_) < _loc24_)
      {
         _loc18_ = li8(_loc11_ + 45);
         _loc19_ = li32(_loc11_ + 36);
         if(_loc18_ != 0)
         {
            if((_loc20_ = li8(_loc11_ + 44)) == 0)
            {
               _loc19_ = int((_loc21_ -= (_loc8_ = int(_loc21_ + (int((_loc8_ = (_loc21_ = int((_loc21_ = int(_loc19_ + 7)) - (int(_loc22_ - ((_loc21_ = int(_loc22_ + (int((_loc21_ = (_loc22_ = (_loc22_ = int((_loc20_ = int(_loc24_ + -1)) - _loc17_) + (_loc20_ = li32(_loc11_ + 28))) / _loc20_) >> 31) >>> 29)))) & -8))))) >> 31) >>> 29)))) & -8) + 1);
               _loc17_ = (_loc20_ = int(_loc22_ * _loc20_)) + _loc17_;
            }
            else
            {
               addr299:
               _loc12_ = _loc11_ + 72;
               _loc13_ = li32(_loc11_ + 48);
               _loc14_ = li32(_loc11_ + 40);
               _loc15_ = li32(_loc11_ + 28);
               if((_loc10_ = li32(_loc11_ + 8)) == 0)
               {
                  _loc9_ = _loc16_ + _loc23_;
                  while(true)
                  {
                     if((_loc20_ = _loc18_ & 255) == 0)
                     {
                        _loc6_ = (_loc5_ = (_loc20_ = (_loc20_ = _loc14_ << 2) & 4) + -2) + _loc13_;
                        _loc14_ >>= 1;
                        if(uint(_loc6_) <= 127)
                        {
                           _loc1_ -= 16;
                           si32(_loc10_,_loc1_ + 12);
                           si32(_loc5_,_loc1_ + 8);
                           si32(_loc20_ = int((_loc22_ = li32(_loc10_) * _loc9_) + li32(_loc10_ + 4)),_loc1_ + 4);
                           si32(_loc12_,_loc1_);
                           ESP = _loc1_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc1_ += 16;
                           _loc13_ = _loc6_;
                        }
                     }
                     if((_loc19_ += -1) == 0)
                     {
                        if((_loc20_ = li8(_loc11_ + 44)) != 0)
                        {
                           _loc14_ = li32(_loc11_ + 32);
                           si8(0,_loc11_ + 44);
                           si8(1,_loc11_ + 45);
                           _loc1_ -= 16;
                           si32(_loc11_,_loc1_);
                           ESP = _loc1_;
                           F__ZN7Nes_Dmc11fill_bufferEv();
                           _loc1_ += 16;
                           _loc19_ = 8;
                        }
                        else
                        {
                           si8(1,_loc11_ + 45);
                           _loc19_ = 8;
                        }
                     }
                     if((_loc17_ = _loc15_ + _loc9_) >= _loc24_)
                     {
                        break;
                     }
                     _loc9_ += _loc15_;
                     _loc18_ = li8(_loc11_ + 45);
                  }
               }
               else
               {
                  _loc7_ = _loc16_ + _loc23_;
                  while(true)
                  {
                     if((_loc20_ = _loc18_ & 255) == 0)
                     {
                        _loc3_ = (_loc20_ = (_loc20_ = _loc14_ << 2) & 4) + -2;
                        _loc4_ = _loc3_ + _loc13_;
                        _loc14_ >>= 1;
                        if(uint(_loc4_) <= 127)
                        {
                           _loc1_ -= 16;
                           si32(_loc10_,_loc1_ + 12);
                           si32(_loc3_,_loc1_ + 8);
                           si32(_loc20_ = int((_loc22_ = li32(_loc10_) * _loc7_) + li32(_loc10_ + 4)),_loc1_ + 4);
                           si32(_loc12_,_loc1_);
                           ESP = _loc1_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc1_ += 16;
                           _loc13_ = _loc4_;
                        }
                     }
                     if((_loc19_ += -1) == 0)
                     {
                        if((_loc20_ = li8(_loc11_ + 44)) == 0)
                        {
                           si8(1,_loc11_ + 45);
                           _loc19_ = 8;
                        }
                        else
                        {
                           si8(0,_loc11_ + 45);
                           _loc14_ = li32(_loc11_ + 32);
                           si8(0,_loc11_ + 44);
                           _loc1_ -= 16;
                           si32(_loc11_,_loc1_);
                           ESP = _loc1_;
                           F__ZN7Nes_Dmc11fill_bufferEv();
                           _loc1_ += 16;
                           _loc19_ = 8;
                        }
                     }
                     if((_loc17_ = _loc15_ + _loc7_) >= _loc24_)
                     {
                        break;
                     }
                     _loc7_ += _loc15_;
                     _loc18_ = li8(_loc11_ + 45);
                  }
               }
               si32(_loc13_,_loc11_ + 48);
               si32(_loc13_,_loc11_ + 20);
               si32(_loc14_,_loc11_ + 40);
            }
            si32(_loc19_,_loc11_ + 36);
            §§goto(addr715);
         }
         §§goto(addr299);
      }
      addr715:
      si32(_loc20_ = int(_loc17_ - _loc24_),_loc11_ + 16);
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
