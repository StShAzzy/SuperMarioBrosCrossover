package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer8mix_monoEPsi() : void
   {
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:int = 0;
      var _loc18_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = int(ESP);
      _loc18_ = (_loc4_ = li32((_loc6_ = _loc3_) + 8)) >> 1;
      _loc16_ = li32((_loc17_ = li32(_loc6_)) + 36);
      _loc15_ = li32(_loc17_ + 28);
      _loc14_ = li32(_loc17_ + 40);
      _loc13_ = li32(_loc6_ + 4);
      if(_loc18_ != 0)
      {
         _loc12_ = _loc15_ + 4;
         _loc11_ = _loc13_ + 4;
         _loc7_ = _loc4_ << 1 & -4;
         do
         {
            _loc8_ = li32(_loc12_ - 4);
            _loc9_ = li32(_loc12_);
            _loc10_ = _loc16_ >> 14;
            var _loc1_:* = _loc16_ << 2;
            _loc1_ >>= 16;
            if(_loc1_ != _loc10_)
            {
               _loc10_ = int(32767 - (_loc16_ >> 31));
            }
            _loc1_ = _loc16_ >> _loc14_;
            _loc1_ = int(_loc8_ - _loc1_);
            _loc8_ = (_loc16_ = int(_loc1_ + _loc16_)) >> 14;
            var _loc2_:* = _loc10_ << 16;
            _loc1_ = _loc10_ & 65535;
            _loc1_ |= _loc2_;
            si32(_loc1_,_loc11_ - 4);
            _loc1_ = _loc16_ << 2;
            _loc1_ >>= 16;
            if(_loc1_ != _loc8_)
            {
               _loc8_ = int(32767 - (_loc16_ >> 31));
            }
            _loc2_ = _loc16_ >> _loc14_;
            _loc1_ = int(_loc16_ + _loc9_);
            _loc16_ = int(_loc1_ - _loc2_);
            _loc1_ = _loc8_ << 16;
            _loc2_ = _loc8_ & 65535;
            _loc1_ = _loc2_ | _loc1_;
            si32(_loc1_,_loc11_);
            _loc12_ += 8;
            _loc11_ += 8;
         }
         while((_loc18_ += -1) != 0);
         
         _loc13_ += _loc7_ << 1;
         _loc15_ += (_loc4_ & 1073741822) << 2;
      }
      _loc1_ = _loc4_ & 1;
      _loc7_ = _loc16_;
      if(_loc1_ != 0)
      {
         _loc1_ = _loc16_ >> 14;
         si16(_loc1_,_loc13_);
         si16(_loc1_,_loc13_ + 2);
         _loc7_ = int(int(li32(_loc15_) - (_loc16_ >> _loc14_)) + _loc16_);
         if(_loc16_ << 2 >> 16 != _loc1_)
         {
            si16(int(32767 - (_loc16_ >> 31)),_loc13_);
            si16(int(32767 - (_loc16_ >> 31)),_loc13_ + 2);
         }
      }
      si32(_loc7_,_loc17_ + 36);
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
