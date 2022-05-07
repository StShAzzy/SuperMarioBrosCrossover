package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___divmodsi4() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:int = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc14_ = li32(_loc4_);
      _loc13_ = 0;
      if(_loc3_ != 0)
      {
         if(_loc14_ != 0)
         {
            var _loc11_:*;
            var _loc12_:*;
            _loc10_ = (_loc11_ = (_loc12_ = _loc3_ >> 31) ^ _loc3_) - _loc12_;
            _loc8_ = (_loc11_ = int((_loc11_ = (_loc11_ += int((_loc11_ = int(((_loc12_ = int(_loc11_ - ((_loc12_ = int((_loc11_ = (_loc11_ = _loc12_ | int((_loc12_ |= int((_loc12_ |= int((_loc12_ |= int((_loc12_ = _loc9_ | int((_loc9_ = (_loc11_ = (_loc12_ = _loc14_ >> 31) ^ _loc14_) - _loc12_) >>> 1)) >>> 2)) >>> 4)) >>> 8)) >>> 16)) ^ -1) >>> 1)) & 1431655765))) & 858993459) + ((_loc12_ >>>= 2) & 858993459))) >>> 4)) & 252645135) * 16843009)) >>> 24;
            _loc1_ = int((_loc7_ = (_loc11_ = int((_loc11_ = (_loc11_ += int((_loc11_ = int(((_loc12_ = int(_loc11_ - ((_loc12_ = int((_loc11_ = (_loc11_ |= int((_loc11_ |= int((_loc11_ |= int((_loc11_ |= int((_loc11_ = _loc10_ | int(_loc10_ >>> 1)) >>> 2)) >>> 4)) >>> 8)) >>> 16)) ^ -1) >>> 1)) & 1431655765))) & 858993459) + ((_loc12_ >>>= 2) & 858993459))) >>> 4)) & 252645135) * 16843009)) >>> 24) - _loc8_);
            _loc13_ = 0;
            if(uint(_loc1_) <= 31)
            {
               _loc13_ = _loc9_;
               if(_loc1_ != 31)
               {
                  _loc13_ = _loc9_ << int(31 - _loc1_);
                  _loc5_ = _loc1_ + 1;
                  _loc1_ = 0;
                  if(_loc5_ != 0)
                  {
                     _loc9_ >>>= _loc5_;
                     _loc8_ = (_loc11_ = int(_loc7_ + 1)) - _loc8_;
                     _loc7_ = _loc10_ + -1;
                     _loc1_ = 0;
                     do
                     {
                        _loc11_ = _loc9_ << 1;
                        _loc12_ = (_loc12_ = int(_loc13_ >>> 31)) | _loc11_;
                        var _loc6_:* = (_loc11_ = (_loc11_ = int(_loc7_ - _loc12_)) >> 31) & _loc10_;
                        _loc9_ = _loc12_ - _loc6_;
                        _loc13_ = (_loc12_ = _loc13_ << 1) | _loc1_;
                        _loc1_ = _loc11_ & 1;
                     }
                     while((_loc8_ += -1) != 0);
                     
                  }
                  _loc13_ = (_loc11_ = _loc13_ << 1) | _loc1_;
               }
            }
         }
      }
      _loc12_ = (_loc11_ = _loc3_ ^ _loc14_) >> 31;
      _loc11_ = li32(_loc4_ + 8);
      _loc6_ = int((_loc12_ = int((_loc6_ = _loc13_ ^ _loc12_) - _loc12_)) * _loc3_);
      si32(_loc6_ = int(_loc14_ - _loc6_),_loc11_);
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
