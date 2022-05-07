package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   
   public function F__ZN14Effects_Buffer12mix_enhancedEPsi() : void
   {
      var _loc7_:* = 0;
      var _loc21_:* = 0;
      var _loc26_:* = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc27_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc25_:* = 0;
      var _loc24_:int = 0;
      var _loc23_:int = 0;
      var _loc8_:* = 0;
      var _loc28_:* = 0;
      var _loc34_:* = 0;
      var _loc32_:* = 0;
      var _loc40_:int = 0;
      var _loc44_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc17_:* = 0;
      var _loc11_:int = 0;
      var _loc16_:int = 0;
      var _loc46_:* = 0;
      var _loc47_:* = 0;
      var _loc45_:* = 0;
      var _loc43_:* = 0;
      var _loc18_:* = 0;
      var _loc33_:* = 0;
      var _loc35_:* = 0;
      var _loc37_:* = 0;
      var _loc39_:* = 0;
      var _loc41_:* = 0;
      var _loc3_:* = int(ESP);
      _loc47_ = li32((_loc21_ = li32(_loc7_ = _loc3_)) + 464);
      _loc45_ = li32(_loc21_ + 468);
      _loc43_ = li32(_loc21_ + 80);
      _loc41_ = li32(_loc21_ + 36);
      _loc39_ = li32(_loc21_ + 300);
      _loc37_ = li32(_loc21_ + 256);
      _loc35_ = li32(_loc21_ + 212);
      _loc33_ = li32(_loc21_ + 168);
      _loc18_ = li32(_loc21_ + 124);
      if((_loc26_ = li32(_loc7_ + 8)) != 0)
      {
         _loc27_ = li32(_loc21_ + 456);
         _loc29_ = li32(_loc21_ + 448);
         _loc31_ = li32(_loc21_ + 128);
         var _loc22_:*;
         _loc23_ = (_loc22_ = li32(_loc7_ + 4)) + 2;
         _loc24_ = 0 - _loc26_;
         _loc25_ = li32(_loc21_ + 116);
         _loc20_ = li32(_loc21_ + 160);
         _loc19_ = li32(_loc21_ + 204);
         _loc15_ = li32(_loc21_ + 248);
         _loc13_ = li32(_loc21_ + 292);
         _loc14_ = li32(_loc21_ + 28);
         _loc9_ = li32(_loc21_ + 72);
         _loc11_ = 0;
         do
         {
            var _loc5_:* = _loc41_ >> 14;
            _loc22_ = (_loc22_ = int((_loc22_ = li32(_loc21_ + 472)) * _loc5_)) >> 15;
            var _loc6_:* = _loc33_ >> 14;
            _loc22_ += _loc6_;
            var _loc2_:* = _loc43_ >> 14;
            _loc6_ = (_loc6_ = int((_loc6_ = li32(_loc21_ + 480)) * _loc2_)) >> 15;
            _loc22_ += _loc6_;
            _loc6_ = (_loc6_ = (_loc6_ = int((_loc6_ = li32(_loc21_ + 500)) + _loc47_)) & 16383) << 1;
            _loc6_ = si16(li16(_loc6_ = int(_loc29_ + _loc6_)));
            _loc22_ += _loc6_;
            var _loc4_:*;
            var _loc1_:* = int((_loc6_ = int((_loc4_ = li32(_loc21_ + 508)) * _loc22_)) >>> 15);
            _loc6_ = _loc11_ << 2;
            var _loc30_:*;
            _loc28_ = li32(_loc30_ = int(_loc14_ - _loc6_));
            _loc34_ = li32(_loc30_ = int(_loc9_ - _loc6_));
            _loc26_ = li32(_loc30_ = int(_loc20_ - _loc6_));
            _loc32_ = li32(_loc30_ = int(_loc19_ - _loc6_));
            _loc30_ = (_loc30_ = (_loc30_ = int((_loc30_ = li32(_loc21_ + 504)) + _loc47_)) & 16383) << 1;
            var _loc38_:* = si16(li16(_loc30_ = int(_loc29_ + _loc30_)));
            _loc30_ = _loc47_ << 1;
            _loc30_ = int(_loc29_ + _loc30_);
            var _loc36_:* = li32(_loc21_ + 484);
            var _loc42_:* = li32(_loc21_ + 476);
            si16(_loc1_,_loc30_);
            _loc1_ = (_loc5_ = int(_loc42_ * _loc5_)) >> 15;
            _loc5_ = _loc35_ >> 14;
            _loc5_ = int(_loc1_ + _loc5_);
            _loc2_ = int(_loc36_ * _loc2_);
            _loc2_ >>= 15;
            _loc2_ = int(_loc5_ + _loc2_);
            _loc40_ = _loc2_ + _loc38_;
            _loc2_ = int(_loc4_ * _loc40_);
            _loc2_ >>>= 15;
            si16(_loc2_,_loc30_ + 2);
            _loc2_ = li32(_loc21_ + 488);
            _loc2_ += _loc45_;
            _loc2_ &= 4095;
            _loc2_ <<= 1;
            _loc2_ = int(_loc27_ + _loc2_);
            _loc2_ = si16(li16(_loc2_));
            _loc5_ = (_loc5_ = (_loc5_ = int((_loc5_ = li32(_loc21_ + 492)) + _loc45_)) & 4095) << 1;
            _loc46_ = si16(li16(_loc5_ = int(_loc27_ + _loc5_)));
            _loc44_ = li32(_loc5_ = int(_loc25_ - _loc6_));
            _loc12_ = li32(_loc5_ = int(_loc15_ - _loc6_));
            _loc10_ = li32(_loc6_ = int(_loc13_ - _loc6_));
            _loc6_ = _loc45_ << 1;
            _loc6_ = int(_loc27_ + _loc6_);
            _loc8_ = li32(_loc21_ + 496);
            si16(_loc17_ = _loc18_ >> 14,_loc6_);
            _loc22_ = int((_loc6_ = int((_loc6_ = _loc37_ >> 14) + _loc17_)) + _loc22_);
            _loc6_ = (_loc6_ = int(_loc2_ * _loc8_)) >> 15;
            if((_loc22_ = (_loc22_ = (_loc16_ = _loc22_ + _loc6_) << 16) >> 16) != _loc16_)
            {
               _loc16_ = 32767 - (_loc16_ >> 24);
            }
            _loc22_ = int((_loc22_ = int((_loc22_ = _loc39_ >> 14) + _loc17_)) + _loc40_);
            _loc6_ = (_loc6_ = int(_loc46_ * _loc8_)) >> 15;
            _loc46_ = int(_loc22_ + _loc6_);
            _loc22_ = (_loc22_ = _loc11_ << 1) << 1;
            _loc8_ = int(_loc23_ - _loc22_);
            si16(_loc16_,_loc8_ - 2);
            if((_loc22_ = (_loc22_ = _loc46_ << 16) >> 16) != _loc46_)
            {
               _loc46_ = int(32767 - (_loc46_ >> 24));
            }
            _loc22_ = _loc35_ >> _loc31_;
            _loc35_ = int((_loc22_ = int(_loc32_ - _loc22_)) + _loc35_);
            _loc22_ = _loc33_ >> _loc31_;
            _loc33_ = int((_loc22_ = int(_loc26_ - _loc22_)) + _loc33_);
            _loc22_ = _loc43_ >> _loc31_;
            _loc43_ = int((_loc22_ = int(_loc34_ - _loc22_)) + _loc43_);
            _loc22_ = _loc41_ >> _loc31_;
            _loc41_ = int((_loc22_ = int(_loc28_ - _loc22_)) + _loc41_);
            _loc22_ = _loc39_ >> _loc31_;
            _loc39_ = int((_loc22_ = int(_loc10_ - _loc22_)) + _loc39_);
            _loc22_ = _loc37_ >> _loc31_;
            _loc37_ = int((_loc22_ = int(_loc12_ - _loc22_)) + _loc37_);
            _loc22_ = _loc18_ >> _loc31_;
            _loc18_ = int((_loc22_ = int(_loc44_ - _loc22_)) + _loc18_);
            _loc45_ = (_loc22_ = int(_loc45_ + 1)) & 4095;
            _loc47_ = (_loc22_ = int(_loc47_ + 2)) & 16383;
            si16(_loc46_,_loc8_);
            _loc11_ += -1;
         }
         while(_loc24_ != _loc11_);
         
      }
      si32(_loc47_,_loc21_ + 464);
      si32(_loc45_,_loc21_ + 468);
      si32(_loc33_,_loc21_ + 168);
      si32(_loc35_,_loc21_ + 212);
      si32(_loc37_,_loc21_ + 256);
      si32(_loc39_,_loc21_ + 300);
      si32(_loc41_,_loc21_ + 36);
      si32(_loc43_,_loc21_ + 80);
      si32(_loc18_,_loc21_ + 124);
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
