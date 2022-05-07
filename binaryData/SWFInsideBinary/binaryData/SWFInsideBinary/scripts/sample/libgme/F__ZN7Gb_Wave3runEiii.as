package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Gb_Wave3runEiii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc15_ = li32(_loc3_ + 52);
      _loc15_ = li8((_loc15_ = int(_loc3_ + _loc15_)) + 56);
      _loc13_ = (_loc14_ = int((_loc14_ = li32(_loc3_ + 36)) + 7)) & 7;
      _loc15_ >>>= _loc13_;
      _loc12_ = li32(_loc4_ + 12);
      _loc11_ = (_loc15_ &= _loc12_) << 1;
      _loc15_ = li8((_loc14_ = li32(_loc3_ + 24)) + 3);
      if((uint(_loc15_ = int((_loc10_ = (_loc14_ = (_loc14_ = (_loc14_ = li8(_loc14_ + 4)) << 8) & 1792) | _loc15_) + -1))) >= 2045)
      {
         _loc11_ = (_loc15_ = int(30 >>> _loc13_)) & _loc12_;
         _loc12_ = 0;
      }
      _loc9_ = li32(_loc4_ + 4);
      _loc8_ = li32(_loc3_ + 32);
      if(_loc11_ != _loc8_)
      {
         si32(_loc11_,_loc3_ + 32);
         _loc14_ = li32(li32(_loc3_ + 16) + 4);
         var _loc5_:* = li32(li32(_loc3_ + 16));
         _loc2_ -= 16;
         si32(li32(_loc3_ + 16),_loc2_ + 12);
         si32(int(_loc11_ - _loc8_),_loc2_ + 8);
         si32(_loc14_ = int((_loc5_ *= _loc9_) + _loc14_),_loc2_ + 4);
         si32(li32(_loc3_ + 48),_loc2_);
         ESP = _loc2_;
         F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
         _loc2_ += 16;
      }
      _loc11_ = _loc8_ = li32(_loc4_ + 8);
      if(_loc12_ != 0)
      {
         _loc11_ = int((_loc15_ = li32(_loc3_ + 28)) + _loc9_);
      }
      if(_loc11_ < _loc8_)
      {
         _loc12_ = li32(_loc3_ + 52);
         _loc9_ = li32(_loc3_ + 16);
         _loc10_ = int(4096 - (_loc10_ << 1));
         while(true)
         {
            _loc12_ = (_loc15_ = int(_loc12_ + 1)) & 31;
            _loc6_ = (_loc15_ = int((_loc15_ = li8((_loc15_ = int(_loc3_ + _loc12_)) + 56)) >>> _loc13_)) << 1;
            _loc7_ = li32(_loc3_ + 32);
            if(_loc6_ != _loc7_)
            {
               si32(_loc6_,_loc3_ + 32);
               _loc2_ -= 16;
               si32(_loc9_,_loc2_ + 12);
               si32(int(_loc6_ - _loc7_),_loc2_ + 8);
               si32(_loc14_ = int((_loc5_ = int(li32(_loc9_) * _loc11_)) + li32(_loc9_ + 4)),_loc2_ + 4);
               si32(li32(_loc3_ + 48),_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            if((_loc7_ = int(_loc10_ + _loc11_)) >= _loc8_)
            {
               break;
            }
            _loc11_ += _loc10_;
         }
         si32(_loc12_,_loc3_ + 52);
         _loc11_ = _loc7_;
      }
      si32(_loc15_ = int(_loc11_ - _loc8_),_loc3_ + 28);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
