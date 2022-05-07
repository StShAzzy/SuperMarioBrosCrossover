package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN9Sms_Noise3runEii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:int = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc15_ = li32(_loc3_ + 32);
      _loc14_ = (_loc14_ = li8(_loc3_ + 40)) & 1;
      _loc13_ = _loc15_;
      if(_loc14_ != 0)
      {
         _loc13_ = int(0 - _loc15_);
      }
      _loc12_ = li32(_loc3_ + 28);
      _loc11_ = li32(_loc4_ + 4);
      if(_loc13_ != _loc12_)
      {
         si32(_loc13_,_loc3_ + 28);
         _loc2_ -= 16;
         si32(_loc10_,_loc2_ + 12);
         var _loc10_:*;
         si32(_loc10_ = int(_loc13_ - _loc12_),_loc2_ + 8);
         var _loc9_:int;
         si32(_loc14_ = int((_loc9_ = li32(_loc10_) * _loc11_) + li32((_loc10_ = li32(_loc3_ + 16)) + 4)),_loc2_ + 4);
         si32(_loc14_ = int(_loc3_ + 48),_loc2_);
         ESP = _loc2_;
         F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
         _loc2_ += 16;
         _loc15_ = li32(_loc3_ + 32);
      }
      _loc8_ = _loc12_ = li32(_loc4_ + 8);
      if(_loc15_ != 0)
      {
         _loc8_ = int((_loc14_ = li32(_loc3_ + 24)) + _loc11_);
      }
      if(_loc8_ < _loc12_)
      {
         _loc15_ = (_loc14_ = li32(_loc14_ = li32(_loc3_ + 36))) << 1;
         _loc11_ = 16;
         if(_loc15_ != 0)
         {
            _loc11_ = _loc15_;
         }
         _loc15_ = int(_loc3_ + 48);
         _loc1_ = _loc13_ << 1;
         _loc5_ = li32(_loc3_ + 40);
         _loc13_ = li32(_loc3_ + 16);
         while(true)
         {
            _loc6_ = li32(_loc3_ + 44);
            if((_loc14_ = (_loc14_ = int(_loc5_ + 1)) & 2) != 0)
            {
               _loc2_ -= 16;
               si32(_loc13_,_loc2_ + 12);
               _loc1_ = int(0 - _loc1_);
               si32(_loc1_,_loc2_ + 8);
               si32(_loc14_ = int((_loc9_ = li32(_loc13_) * _loc8_) + li32(_loc13_ + 4)),_loc2_ + 4);
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            _loc7_ = _loc11_ + _loc8_;
            _loc14_ = _loc5_ & 1;
            _loc14_ = int(0 - _loc14_);
            _loc14_ = _loc6_ & _loc14_;
            _loc9_ = _loc5_ >>> 1;
            _loc5_ = _loc14_ ^ _loc9_;
            if(_loc7_ >= _loc12_)
            {
               break;
            }
            _loc8_ += _loc11_;
         }
         si32(_loc5_,_loc3_ + 40);
         si32(_loc14_ = _loc1_ >> 1,_loc3_ + 28);
         _loc8_ = _loc7_;
      }
      si32(_loc14_ = int(_loc8_ - _loc12_),_loc3_ + 24);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
