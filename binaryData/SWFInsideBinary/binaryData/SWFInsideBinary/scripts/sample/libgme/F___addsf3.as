package sample.libgme
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public function F___addsf3() : void
   {
      var _loc6_:int = 0;
      var _loc2_:* = NaN;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = NaN;
      var _loc4_:* = int((_loc6_ = ESP) - 28);
      _loc1_ = lf32(_loc6_ + 4);
      sf32(_loc1_,_loc6_ - 8);
      _loc2_ = lf32(_loc6_);
      sf32(_loc2_,_loc6_ - 4);
      _loc14_ = (_loc5_ = li32(_loc6_ - 8)) & 2147483647;
      var _loc11_:*;
      if((uint(_loc11_ = int((_loc12_ = (_loc13_ = li32(_loc6_ - 4)) & 2147483647) + -1))) <= 2139095038)
      {
         if((uint(_loc11_ = int(_loc14_ + -1))) >= 2139095039)
         {
            §§goto(addr89);
         }
         §§goto(addr182);
      }
      addr89:
      if(uint(_loc12_) >= 2139095041)
      {
         si32(_loc11_ = _loc13_ | 4194304,_loc6_ - 28);
         _loc1_ = lf32(_loc6_ - 28);
      }
      else if(uint(_loc14_) >= 2139095041)
      {
         si32(_loc11_ = _loc5_ | 4194304,_loc6_ - 24);
         _loc1_ = lf32(_loc6_ - 24);
      }
      else if(_loc12_ == 2139095040)
      {
         _loc1_ = _loc2_;
         if((_loc5_ ^ _loc13_) == -2147483648)
         {
            _loc1_ = Number(nan);
         }
      }
      else if(_loc14_ != 2139095040)
      {
         if(_loc12_ == 0)
         {
            if(_loc14_ == 0)
            {
               si32(_loc11_ = _loc5_ & _loc13_,_loc6_ - 20);
               _loc1_ = lf32(_loc6_ - 20);
            }
         }
         else
         {
            _loc1_ = _loc2_;
            if(_loc14_ != 0)
            {
               addr182:
               _loc10_ = _loc13_;
               if(uint(_loc14_) <= uint(_loc12_))
               {
                  _loc10_ = _loc5_;
               }
               if(uint(_loc14_) <= uint(_loc12_))
               {
                  _loc5_ = _loc13_;
               }
               _loc13_ = _loc5_ & 8388607;
               if((_loc14_ = (_loc11_ = int(_loc5_ >>> 23)) & 255) == 0)
               {
                  var _loc9_:*;
                  _loc13_ <<= int((_loc9_ = int((_loc11_ = int((_loc11_ = (_loc11_ = int(_loc9_ + (int((_loc9_ = int(((_loc9_ = int(_loc11_ - ((_loc9_ = int((_loc11_ = (_loc11_ = _loc9_ | int((_loc9_ |= int((_loc9_ |= int((_loc9_ = _loc11_ | int((_loc11_ = _loc13_ | int(_loc13_ >>> 1)) >>> 2)) >>> 4)) >>> 8)) >>> 16)) ^ -1) >>> 1)) & 1431655765))) & 858993459) + ((_loc9_ >>>= 2) & 858993459))) >>> 4)))) & 252645135) * 16843009)) >>> 24)) + -8);
                  _loc14_ = int(9 - _loc9_);
               }
               _loc12_ = _loc10_ & 8388607;
               if((_loc8_ = (_loc11_ = int(_loc10_ >>> 23)) & 255) == 0)
               {
                  _loc12_ <<= int((_loc11_ = int((_loc11_ = int((_loc11_ = (_loc11_ = int(_loc9_ + (int((_loc9_ = int(((_loc9_ = int(_loc11_ - ((_loc9_ = int((_loc11_ = (_loc11_ |= int((_loc11_ |= int((_loc11_ = _loc9_ | int((_loc9_ |= int((_loc9_ = _loc12_ | int(_loc12_ >>> 1)) >>> 2)) >>> 4)) >>> 8)) >>> 16)) ^ -1) >>> 1)) & 1431655765))) & 858993459) + ((_loc9_ >>>= 2) & 858993459))) >>> 4)))) & 252645135) * 16843009)) >>> 24)) + -8);
                  _loc8_ = int(9 - _loc11_);
               }
               _loc12_ = _loc7_ = (_loc11_ = _loc12_ << 3) | 67108864;
               if(_loc14_ != _loc8_)
               {
                  _loc8_ = int(_loc14_ - _loc8_);
                  _loc12_ = 1;
                  if(uint(_loc8_) <= 31)
                  {
                     _loc12_ = 1;
                     if(_loc7_ << int(32 - _loc8_) == 0)
                     {
                        _loc12_ = 0;
                     }
                     _loc9_ = int(_loc7_ >>> _loc8_);
                     _loc12_ = (_loc11_ = _loc12_ & 1) | _loc9_;
                  }
               }
               _loc11_ = _loc5_ ^ _loc10_;
               _loc5_ &= -2147483648;
               _loc7_ = (_loc13_ <<= 3) | 67108864;
               if(_loc11_ <= -1)
               {
                  _loc1_ = 0;
                  if(_loc7_ != _loc12_)
                  {
                     if((uint(_loc10_ = int(_loc7_ - _loc12_))) <= 67108863)
                     {
                        _loc11_ = int((_loc11_ = int((_loc11_ = int((_loc11_ = (_loc11_ += int((_loc11_ = int(((_loc9_ = int(_loc11_ - ((_loc9_ = int((_loc11_ = (_loc11_ |= int((_loc11_ = _loc9_ | int((_loc9_ |= int((_loc9_ |= int((_loc9_ = _loc10_ | int(_loc10_ >>> 1)) >>> 2)) >>> 4)) >>> 8)) >>> 16)) ^ -1) >>> 1)) & 1431655765))) & 858993459) + ((_loc9_ >>>= 2) & 858993459))) >>> 4)) & 252645135) * 16843009)) >>> 24)) + -5);
                        _loc14_ -= _loc11_;
                        _loc10_ <<= _loc11_;
                     }
                  }
                  §§goto(addr813);
               }
               else if((_loc11_ = (_loc10_ = int(_loc12_ + _loc7_)) & 134217728) != 0)
               {
                  _loc10_ = (_loc11_ = int(_loc10_ >>> 1)) | (_loc11_ = int(_loc12_ + _loc13_)) & 1;
                  _loc14_ += 1;
               }
               if(_loc14_ >= 255)
               {
                  si32(_loc11_ = _loc5_ | 2139095040,_loc6_ - 16);
                  _loc1_ = lf32(_loc6_ - 16);
               }
               else
               {
                  if(_loc14_ <= 0)
                  {
                     _loc12_ = int(1 - _loc14_);
                     _loc13_ = 1;
                     if(_loc10_ << int(32 - _loc12_) == (_loc14_ = 0))
                     {
                        _loc13_ = _loc14_;
                     }
                     _loc11_ = int(_loc10_ >>> _loc12_);
                     _loc10_ = (_loc9_ = _loc13_ & 1) | _loc11_;
                  }
                  _loc12_ = _loc10_ & 7;
                  _loc13_ = 1;
                  if(uint(_loc12_) <= 4)
                  {
                     _loc13_ = 0;
                  }
                  _loc11_ = _loc13_ & 1;
                  _loc9_ = (_loc9_ = (_loc9_ = int(_loc10_ >>> 3)) & 8388607) | _loc5_;
                  var _loc3_:* = _loc14_ << 23;
                  _loc14_ = int((_loc9_ |= _loc3_) + _loc11_);
                  if(_loc12_ == 4)
                  {
                     _loc14_ = int((_loc11_ = _loc14_ & 1) + _loc14_);
                  }
                  si32(_loc14_,_loc6_ - 12);
                  _loc1_ = lf32(_loc6_ - 12);
               }
            }
         }
      }
      addr813:
      st0 = _loc1_;
      ESP = _loc4_ = _loc6_;
   }
}
