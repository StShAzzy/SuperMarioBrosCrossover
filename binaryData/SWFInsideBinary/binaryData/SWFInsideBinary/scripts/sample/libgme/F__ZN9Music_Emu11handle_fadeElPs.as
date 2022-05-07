package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   
   public function F__ZN9Music_Emu11handle_fadeElPs() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:int = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      if(_loc3_ >= 1)
      {
         _loc14_ = li32(_loc4_ + 8);
         _loc13_ = li32(_loc4_);
         _loc12_ = 0;
         _loc11_ = _loc3_;
         while(true)
         {
            _loc10_ = li32(_loc13_ + 212);
            _loc9_ = li32(_loc13_ + 200);
            _loc8_ = li32(_loc13_ + 216);
            _loc7_ = _loc11_;
            if(_loc11_ <= 512)
            {
               _loc7_ = 512;
            }
            var _loc1_:* = int(_loc9_ - _loc10_);
            _loc1_ = int(_loc12_ + _loc1_);
            var _loc5_:* = int((_loc5_ = _loc1_ >> 31) >>> 23);
            _loc1_ += _loc5_;
            _loc1_ = int((_loc5_ = _loc1_ >> 9) / _loc8_);
            var _loc6_:int = _loc1_ * _loc8_;
            _loc5_ = (_loc6_ = (_loc5_ = (_loc5_ -= _loc6_) << 14) / _loc8_) >> 1;
            if((_loc8_ = (_loc5_ = int((_loc6_ = 16384 - _loc6_) + _loc5_)) >> _loc1_) <= 63)
            {
               si8(1,_loc13_ + 208);
               si8(1,_loc13_ + 209);
            }
            _loc1_ = int(_loc11_ - _loc7_);
            _loc9_ = int(_loc1_ + 512);
            _loc7_ = _loc14_;
            if(_loc11_ != 0)
            {
               do
               {
                  _loc1_ = si16(li16(_loc7_));
                  _loc1_ *= _loc8_;
                  _loc1_ >>>= 14;
                  si16(_loc1_,_loc7_);
                  _loc7_ += 2;
               }
               while((_loc9_ += -1) != 0);
               
            }
            if((_loc12_ += 512) >= _loc3_)
            {
               break;
            }
            _loc14_ += 1024;
            _loc11_ += -512;
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
