package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   
   public function F__ZN13Nes_Namco_Apu9run_untilEi() : void
   {
      var _loc2_:* = 0;
      var _loc10_:* = 0;
      var _loc19_:int = 0;
      var _loc23_:int = 0;
      var _loc21_:int = 0;
      var _loc20_:int = 0;
      var _loc22_:int = 0;
      var _loc5_:int = 0;
      var _loc16_:* = 0;
      var _loc14_:int = 0;
      var _loc8_:* = 0;
      var _loc3_:int = 0;
      var _loc13_:* = 0;
      var _loc25_:* = 0;
      var _loc24_:* = 0;
      var _loc15_:int = 0;
      var _loc12_:int = 0;
      var _loc9_:int = 0;
      var _loc7_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      var _loc26_:*;
      _loc24_ = (_loc26_ = int((_loc25_ = (_loc26_ = li8((_loc10_ = li32(_loc2_)) + 231)) & 240) >>> 4)) & 7;
      if((uint(_loc23_ = 8 - _loc24_)) <= 8)
      {
         _loc23_ = 8;
      }
      _loc26_ = int((_loc26_ = int(0 - _loc24_)) * 12);
      _loc22_ = _loc10_ + _loc26_;
      _loc21_ = (_loc26_ = int(7 - _loc23_)) - _loc24_;
      _loc26_ = _loc24_ << 3;
      _loc26_ = int(120 - _loc26_);
      _loc20_ = (_loc26_ = int(_loc10_ + _loc26_)) + 104;
      _loc23_ = _loc10_ + 232;
      _loc24_ += 1;
      _loc19_ = (_loc26_ = (_loc26_ = _loc25_ << 2) & 448) + 64;
      _loc25_ = li32(_loc2_ + 4);
      _loc7_ = 0;
      do
      {
         _loc26_ = (_loc26_ = int(_loc7_ * -3)) << 2;
         if((_loc16_ = li32((_loc15_ = _loc22_ + _loc26_) + 88)) != 0)
         {
            si32(1,_loc16_ + 40);
            _loc17_ = li32(_loc15_ + 84);
            _loc18_ = li32(_loc16_ + 4);
            var _loc11_:* = li32(_loc10_ + 96);
            si32(0,_loc15_ + 84);
            _loc13_ = int((_loc11_ = int((_loc12_ = li32(_loc16_) * _loc11_) + _loc18_)) + _loc17_);
            _loc14_ = (_loc26_ = int(li32(_loc16_) * _loc25_)) + _loc18_;
            if(uint(_loc13_) < uint(_loc14_))
            {
               if((_loc26_ = (_loc13_ = li8((_loc9_ = _loc20_ - (_loc7_ << 3)) + 4)) & 224) == 0)
               {
                  continue;
               }
               if((_loc8_ = (_loc26_ = li8(_loc9_ + 7)) & 15) == 0)
               {
                  continue;
               }
               var _loc6_:*;
               _loc4_ = (_loc11_ = (_loc11_ = li8(_loc9_ + 2) | (_loc6_ = _loc13_ << 8) & 768) << 8) | li8(_loc9_);
               if(uint(_loc19_) > uint(_loc4_))
               {
                  continue;
               }
               _loc5_ = _loc22_ + ((_loc26_ = int(_loc7_ * -6)) << 1);
               _loc18_ = int((_loc26_ = int(_loc18_ + _loc17_)) + _loc12_);
               _loc12_ = _loc24_ * (int((uint(_loc26_ = int((_loc26_ = li32(_loc16_)) * 983040))) / uint(_loc4_)));
               _loc4_ = si16(li16(_loc5_ + 94));
               _loc17_ = si16(li16(_loc5_ + 92));
               _loc3_ = 32 - (_loc13_ & 28);
               while(true)
               {
                  _loc26_ = (_loc26_ = (_loc11_ = int((_loc26_ = li8(_loc9_ + 6)) + _loc4_)) << 2) & 4;
                  _loc11_ >>= 1;
                  if((_loc13_ = int((_loc26_ = (_loc26_ = int((_loc11_ = li8((_loc11_ = int(_loc10_ + _loc11_)) + 104)) >>> _loc26_)) & 15) * _loc8_)) != _loc17_)
                  {
                     _loc1_ -= 16;
                     si32(_loc16_,_loc1_ + 12);
                     si32(_loc18_,_loc1_ + 4);
                     si32(_loc23_,_loc1_);
                     si32(_loc26_ = int(_loc13_ - _loc17_),_loc1_ + 8);
                     ESP = _loc1_;
                     F__ZNK10Blip_SynthILi12ELi15EE16offset_resampledEjiP11Blip_Buffer();
                     _loc1_ += 16;
                     _loc17_ = _loc13_;
                  }
                  if((_loc4_ += 1) >= _loc3_)
                  {
                     _loc4_ = 0;
                  }
                  if((uint(_loc13_ = int(_loc12_ + _loc18_))) >= uint(_loc14_))
                  {
                     break;
                  }
                  _loc18_ += _loc12_;
               }
               si16(_loc4_,_loc5_ + 94);
               si16(_loc17_,_loc5_ + 92);
            }
            si32(_loc26_ = int(_loc13_ - _loc14_),_loc15_ + 84);
         }
      }
      while(_loc7_ += -1, _loc21_ != _loc7_);
      
      si32(_loc25_,_loc10_ + 96);
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
