package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   
   public function F__ZN14Effects_Buffer17mix_mono_enhancedEPsi() : void
   {
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc13_:* = 0;
      var _loc26_:* = 0;
      var _loc27_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc17_:* = 0;
      var _loc25_:* = 0;
      var _loc23_:* = 0;
      var _loc22_:int = 0;
      var _loc28_:* = 0;
      var _loc24_:int = 0;
      var _loc1_:* = 0;
      var _loc33_:* = 0;
      var _loc32_:* = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc30_:* = 0;
      var _loc3_:* = sample.libgme.ESP;
      _loc7_ = _loc3_;
      _loc33_ = li32((_loc16_ = li32(_loc7_)) + 464);
      _loc32_ = li32(_loc16_ + 468);
      _loc31_ = li32(_loc16_ + 80);
      _loc30_ = li32(_loc16_ + 36);
      _loc29_ = li32(_loc16_ + 124);
      _loc28_ = li32(_loc7_ + 8);
      if(_loc28_ != 0)
      {
         _loc27_ = li32(_loc16_ + 456);
         _loc26_ = li32(_loc16_ + 448);
         _loc13_ = li32(_loc16_ + 128);
         var _loc21_:* = li32(_loc7_ + 4);
         _loc22_ = _loc21_ + 2;
         _loc23_ = li32(_loc16_ + 116);
         _loc25_ = li32(_loc16_ + 28);
         _loc17_ = li32(_loc16_ + 72);
         do
         {
            var _loc18_:* = _loc30_ >> 14;
            _loc21_ = li32(_loc16_ + 472);
            _loc21_ = (_loc21_ = _loc21_ * _loc18_) >> 15;
            var _loc19_:* = _loc31_ >> 14;
            var _loc20_:* = li32(_loc16_ + 480);
            _loc21_ = (_loc20_ = (_loc20_ = _loc20_ * _loc19_) >> 15) + _loc21_;
            _loc20_ = li32(_loc16_ + 500);
            _loc20_ = (_loc20_ = (_loc20_ = _loc20_ + _loc33_) & 0x3FFF) << 1;
            _loc20_ = _loc26_ + _loc20_;
            _loc20_ = si16(li16(_loc20_));
            _loc21_ += _loc20_;
            _loc20_ = li32(_loc16_ + 508);
            var _loc15_:*;
            var _loc14_:int = (_loc15_ = _loc20_ * _loc21_) >>> 15;
            _loc15_ = li32(_loc16_ + 504);
            _loc15_ = (_loc15_ = (_loc15_ = _loc15_ + _loc33_) & 0x3FFF) << 1;
            _loc15_ = _loc26_ + _loc15_;
            var _loc12_:* = si16(li16(_loc15_));
            _loc15_ = _loc33_ << 1;
            _loc15_ = _loc26_ + _loc15_;
            _loc10_ = li32(_loc25_);
            _loc11_ = li32(_loc17_);
            var _loc8_:* = li32(_loc16_ + 484);
            var _loc9_:* = li32(_loc16_ + 476);
            si16(_loc14_,_loc15_);
            _loc18_ = _loc9_ * _loc18_;
            _loc18_ = _loc18_ >> 15;
            _loc19_ = _loc8_ * _loc19_;
            si16(_loc18_ = (_loc18_ = (_loc5_ = (_loc18_ = (_loc19_ = _loc19_ >> 15) + _loc18_) + _loc12_) * _loc20_) >>> 15,_loc15_ + 2);
            _loc18_ = li32(_loc16_ + 488);
            _loc18_ = (_loc18_ = (_loc18_ = _loc18_ + _loc32_) & 0x0FFF) << 1;
            _loc18_ = _loc27_ + _loc18_;
            _loc18_ = si16(li16(_loc18_));
            _loc19_ = li32(_loc16_ + 492);
            _loc19_ = (_loc19_ = (_loc19_ = _loc19_ + _loc32_) & 0x0FFF) << 1;
            _loc19_ = _loc27_ + _loc19_;
            _loc6_ = si16(li16(_loc19_));
            _loc19_ = _loc32_ << 1;
            _loc19_ = _loc27_ + _loc19_;
            _loc2_ = li32(_loc23_);
            _loc4_ = li32(_loc16_ + 496);
            _loc1_ = _loc29_ >> 14;
            si16(_loc1_,_loc19_);
            _loc21_ += _loc1_;
            _loc18_ *= _loc4_;
            _loc18_ = _loc18_ *= _loc4_ >> 15;
            _loc24_ = _loc21_ + _loc18_;
            if((_loc21_ = (_loc21_ = _loc24_ << 16) >> 16) != _loc24_)
            {
               _loc24_ = 32767 - (_loc24_ >> 24);
            }
            _loc21_ = _loc5_ + _loc1_;
            _loc18_ = _loc6_ * _loc4_;
            _loc18_ = _loc18_ >> 15;
            _loc1_ = _loc21_ + _loc18_;
            si16(_loc24_,_loc22_ - 2);
            _loc21_ = _loc1_ << 16;
            if((_loc21_ = _loc21_ >> 16) != _loc1_)
            {
               _loc1_ = 32767 - (_loc1_ >> 24);
            }
            _loc21_ = _loc31_ >> _loc13_;
            _loc21_ = _loc11_ - _loc21_;
            _loc31_ = _loc21_ + _loc31_;
            _loc21_ = _loc30_ >> _loc13_;
            _loc21_ = _loc10_ - _loc21_;
            _loc30_ = _loc21_ + _loc30_;
            _loc21_ = _loc29_ >> _loc13_;
            _loc21_ = _loc2_ - _loc21_;
            _loc29_ = _loc21_ + _loc29_;
            _loc21_ = _loc32_ + 1;
            _loc32_ = _loc21_ & 0x0FFF;
            _loc21_ = _loc33_ + 2;
            _loc33_ = _loc21_ & 0x3FFF;
            si16(_loc1_,_loc22_);
            _loc17_ += 4;
            _loc25_ += 4;
            _loc23_ += 4;
            _loc22_ += 4;
         }
         while(_loc28_ += -1, _loc28_ += -1 != 0);
         
      }
      si32(_loc33_,_loc16_ + 464);
      si32(_loc32_,_loc16_ + 468);
      si32(_loc30_,_loc16_ + 36);
      si32(_loc31_,_loc16_ + 80);
      si32(_loc29_,_loc16_ + 124);
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
