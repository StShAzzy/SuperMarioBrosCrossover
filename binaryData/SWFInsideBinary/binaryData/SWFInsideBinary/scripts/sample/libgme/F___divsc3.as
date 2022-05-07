package sample.libgme
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.si32;
   
   public function F___divsc3() : void
   {
      var _loc6_:int = 0;
      var _loc16_:* = NaN;
      var _loc21_:* = NaN;
      var _loc12_:* = NaN;
      var _loc18_:* = NaN;
      var _loc39_:* = 0;
      var _loc38_:* = 0;
      var _loc20_:* = NaN;
      var _loc22_:* = NaN;
      var _loc36_:* = 0;
      var _loc32_:* = 0;
      var _loc41_:* = 0;
      var _loc25_:* = 0;
      var _loc10_:* = NaN;
      var _loc37_:* = 0;
      var _loc19_:* = NaN;
      var _loc17_:* = NaN;
      var _loc3_:* = NaN;
      var _loc4_:* = NaN;
      var _loc34_:* = 0;
      var _loc43_:* = 0;
      var _loc30_:* = 0;
      var _loc8_:* = NaN;
      var _loc14_:* = NaN;
      var _loc11_:* = NaN;
      var _loc23_:* = 0;
      var _loc29_:* = 0;
      var _loc28_:int = 0;
      var _loc24_:* = 0;
      var _loc26_:* = 0;
      var _loc31_:int = 0;
      var _loc33_:* = NaN;
      var _loc35_:* = NaN;
      var _loc5_:* = int((_loc6_ = ESP) - 96);
      sf32(_loc20_ = lf32(_loc6_ + 12),_loc6_ - 8);
      sf32(_loc22_ = lf32(_loc6_ + 8),_loc6_ - 4);
      si32(_loc43_ = (_loc25_ = li32(_loc6_ - 8)) & 2147483647,_loc6_ - 16);
      si32(_loc43_ = (_loc41_ = li32(_loc6_ - 4)) & 2147483647,_loc6_ - 12);
      _loc43_ = (_loc43_ = int(_loc41_ >>> 23)) & 255;
      _loc21_ = lf32(_loc6_ + 4);
      _loc16_ = lf32(_loc6_);
      _loc18_ = lf32(_loc6_ - 16);
      _loc12_ = lf32(_loc6_ - 12);
      if(_loc43_ == 255)
      {
         _loc14_ = _loc18_;
         if((_loc41_ & 8388607) == 0)
         {
            addr166:
            if((_loc43_ = (_loc43_ = int(_loc25_ >>> 23)) & 255) == 255)
            {
               _loc14_ = _loc12_;
               if((_loc25_ & 8388607) == 0)
               {
               }
               §§goto(addr200);
            }
            _loc10_ = _loc18_;
            if((_loc8_ = _loc12_) <= _loc10_)
            {
               _loc8_ = _loc10_;
            }
            _loc14_ = _loc8_;
         }
         addr200:
         sf32(_loc14_,_loc6_ - 20);
         if((_loc39_ = (_loc43_ = li32(_loc6_ - 20)) & 2147483647) == 0)
         {
            si32(_loc39_,_loc6_ - 28);
            var _loc15_:*;
            var _loc9_:*;
            _loc11_ = _loc15_ = Number((_loc9_ = -1) / lf32(_loc6_ - 28));
         }
         else if(uint(_loc39_) >= 2139095040)
         {
            _loc15_ = _loc14_;
            _loc11_ = _loc15_ *= _loc15_;
         }
         else if(uint(_loc39_) <= 8388607)
         {
            var _loc7_:*;
            sf32(_loc15_ = Number(_loc14_ * (_loc7_ = 33554432)),_loc6_ - 24);
            _loc11_ = Number(_loc43_ = int((_loc43_ = (_loc43_ = int((_loc43_ = li32(_loc6_ - 24)) >>> 23)) & 255) + -152));
         }
         else
         {
            _loc11_ = Number(_loc43_ = int((_loc43_ = int(_loc39_ >>> 23)) + -127));
         }
         sf32(_loc11_,_loc6_ - 32);
         _loc37_ = (_loc43_ = int((_loc38_ = li32(_loc6_ - 32)) >>> 23)) & 255;
         _loc39_ = 0;
         if(_loc37_ != 255)
         {
            _loc5_ -= 16;
            sf32(_loc22_,_loc5_);
            _loc39_ = int(_loc11_);
            si32(_loc43_ = int(0 - _loc39_),_loc5_ + 4);
            ESP = _loc5_;
            F_scalbnf();
            _loc5_ += 16;
            _loc22_ = Number(st0);
            _loc5_ -= 16;
            si32(_loc43_,_loc5_ + 4);
            sf32(_loc20_,_loc5_);
            ESP = _loc5_;
            F_scalbnf();
            _loc5_ += 16;
            _loc20_ = Number(st0);
         }
         _loc5_ -= 16;
         si32(_loc43_ = int(0 - _loc39_),_loc5_ + 4);
         _loc8_ = _loc21_;
         var _loc13_:* = _loc7_ = _loc13_ = Number((_loc19_ = _loc20_) * _loc8_);
         _loc10_ = _loc16_;
         var _loc1_:* = Number((_loc17_ = _loc22_) * _loc10_);
         var _loc40_:*;
         _loc1_ = _loc40_ = _loc1_;
         _loc13_ = _loc7_ = _loc13_ = Number(_loc1_ + _loc13_);
         _loc1_ = Number(_loc19_ * _loc19_);
         _loc1_ = _loc40_ = _loc1_;
         var _loc2_:* = Number(_loc17_ * _loc17_);
         var _loc42_:*;
         _loc2_ = _loc42_ = _loc2_;
         _loc1_ = Number(_loc2_ + _loc1_);
         _loc3_ = _loc40_ = _loc1_;
         sf32(_loc13_ /= _loc3_,_loc5_);
         ESP = _loc5_;
         F_scalbnf();
         _loc5_ += 16;
         _loc33_ = Number(st0);
         _loc5_ -= 16;
         si32(_loc43_,_loc5_ + 4);
         _loc15_ = _loc9_ = _loc15_ = Number(_loc19_ * _loc10_);
         sf32(_loc15_ = Number((_loc15_ = _loc9_ = _loc15_ = Number((_loc13_ = _loc7_ = _loc13_ = Number(_loc17_ * _loc8_)) - _loc15_)) / _loc3_),_loc5_);
         ESP = _loc5_;
         F_scalbnf();
         _loc15_ = _loc33_;
         _loc5_ += 16;
         _loc35_ = Number(st0);
         if(!(_loc15_ == _loc15_ & _loc15_ == _loc15_))
         {
            _loc15_ = _loc35_;
            if(!(_loc15_ == _loc15_ & _loc15_ == _loc15_))
            {
               _loc4_ = _loc9_ = 0;
               if(!(_loc3_ != _loc4_ | _loc3_ != _loc3_ | _loc4_ != _loc4_))
               {
                  if(!(_loc10_ == _loc10_ & _loc10_ == _loc10_))
                  {
                     if(_loc8_ != _loc8_ | _loc8_ != _loc8_)
                     {
                        addr660:
                        sf32(_loc16_,_loc6_ - 44);
                        _loc34_ = (_loc43_ = int((_loc36_ = li32(_loc6_ - 44)) >>> 23)) & 255;
                        _loc23_ = _loc32_ = 1;
                        if(_loc34_ != 255)
                        {
                           _loc23_ = 0;
                        }
                        if((_loc43_ = _loc36_ & 8388607) != 0)
                        {
                           _loc32_ = 0;
                        }
                        if((_loc32_ = _loc23_ & _loc32_) == 0)
                        {
                           sf32(_loc21_,_loc6_ - 48);
                           if((_loc43_ = (_loc43_ = int((_loc23_ = li32(_loc6_ - 48)) >>> 23)) & 255) == 255)
                           {
                              if((_loc43_ = _loc23_ & 8388607) == 0)
                              {
                                 addr738:
                                 sf32(_loc22_,_loc6_ - 52);
                                 if((_loc43_ = (_loc43_ = int((_loc43_ = li32(_loc6_ - 52)) >>> 23)) & 255) != 255)
                                 {
                                    sf32(_loc20_,_loc6_ - 56);
                                    if((_loc43_ = (_loc43_ = int((_loc43_ = li32(_loc6_ - 56)) >>> 23)) & 255) != 255)
                                    {
                                       sf32(_loc21_,_loc6_ - 60);
                                       _loc29_ = _loc28_ = 1065353216;
                                       if(_loc32_ == 0)
                                       {
                                          _loc29_ = 0;
                                       }
                                       _loc43_ = _loc36_ & -2147483648;
                                       si32(_loc43_ = _loc29_ | _loc43_,_loc6_ - 64);
                                       _loc43_ = (_loc43_ = int((_loc39_ = li32(_loc6_ - 60)) >>> 23)) & 255;
                                       _loc30_ = _loc29_ = 1;
                                       if(_loc43_ != 255)
                                       {
                                          _loc30_ = 0;
                                       }
                                       if((_loc43_ = _loc39_ & 8388607) != 0)
                                       {
                                          _loc29_ = 0;
                                       }
                                       if((_loc43_ = _loc30_ & _loc29_) == 0)
                                       {
                                          _loc28_ = 0;
                                       }
                                       _loc43_ = _loc39_ & -2147483648;
                                       si32(_loc43_ = _loc28_ | _loc43_,_loc6_ - 68);
                                       _loc1_ = lf32(_loc6_ - 64);
                                       _loc13_ = _loc9_ = _loc15_ = Number(_loc1_ * _loc19_);
                                       _loc2_ = Number((_loc15_ = lf32(_loc6_ - 68)) * _loc17_);
                                       _loc2_ = _loc42_ = _loc2_;
                                       _loc2_ = _loc7_ = _loc13_ = Number(_loc2_ - _loc13_);
                                       _loc13_ = _loc7_ = Number(inf);
                                       _loc2_ *= _loc13_;
                                       _loc35_ = _loc2_;
                                       _loc1_ *= _loc17_;
                                       _loc1_ = _loc40_ = _loc1_;
                                       _loc15_ = _loc9_ = _loc15_ *= _loc19_;
                                       _loc33_ = _loc15_ = Number((_loc15_ = _loc9_ = _loc15_ = Number(_loc1_ + _loc15_)) * _loc13_);
                                    }
                                    §§goto(addr1239);
                                 }
                              }
                           }
                           _loc15_ = _loc11_;
                           _loc24_ = _loc31_ = 1;
                           if(!(_loc15_ <= _loc4_ | _loc15_ != _loc15_ | _loc4_ != _loc4_))
                           {
                              _loc24_ = 0;
                           }
                           _loc26_ = _loc31_;
                           if(_loc37_ == 255)
                           {
                              _loc26_ = 0;
                           }
                           if((_loc43_ = _loc38_ & 8388607) == 0)
                           {
                              _loc31_ = 0;
                           }
                           if(_loc34_ != 255)
                           {
                              if((_loc43_ = (_loc43_ = _loc26_ | _loc31_) | _loc24_) == 0)
                              {
                                 sf32(_loc21_,_loc6_ - 72);
                                 if((_loc43_ = (_loc43_ = int((_loc43_ = li32(_loc6_ - 72)) >>> 23)) & 255) != 255)
                                 {
                                    sf32(_loc20_,_loc6_ - 80);
                                    sf32(_loc22_,_loc6_ - 76);
                                    _loc29_ = _loc28_ = 1;
                                    if(((_loc43_ = int((_loc30_ = li32(_loc6_ - 80)) >>> 23)) & 255) != 255)
                                    {
                                       _loc29_ = 0;
                                    }
                                    _loc43_ = _loc30_ & 8388607;
                                    _loc26_ = _loc28_;
                                    if(_loc43_ != 0)
                                    {
                                       _loc26_ = 0;
                                    }
                                    _loc43_ = _loc29_ & _loc26_;
                                    _loc26_ = _loc29_ = 1065353216;
                                    if(_loc43_ == 0)
                                    {
                                       _loc26_ = 0;
                                    }
                                    _loc43_ = _loc30_ & -2147483648;
                                    si32(_loc43_ = _loc26_ | _loc43_,_loc6_ - 88);
                                    _loc43_ = (_loc43_ = int((_loc30_ = li32(_loc6_ - 76)) >>> 23)) & 255;
                                    _loc26_ = _loc28_;
                                    if(_loc43_ != 255)
                                    {
                                       _loc26_ = 0;
                                    }
                                    if((_loc43_ = _loc30_ & 8388607) != 0)
                                    {
                                       _loc28_ = 0;
                                    }
                                    if((_loc43_ = _loc26_ & _loc28_) == 0)
                                    {
                                       _loc29_ = 0;
                                    }
                                    _loc43_ = _loc30_ & -2147483648;
                                    si32(_loc43_ = _loc29_ | _loc43_,_loc6_ - 84);
                                    _loc1_ = _loc9_ = _loc15_ = Number((_loc13_ = lf32(_loc6_ - 88)) * _loc10_);
                                    _loc2_ = Number((_loc15_ = lf32(_loc6_ - 84)) * _loc8_);
                                    _loc2_ = _loc42_ = _loc2_;
                                    _loc1_ = Number(_loc2_ - _loc1_);
                                    _loc1_ = _loc40_ = _loc1_;
                                    _loc1_ *= _loc4_;
                                    _loc35_ = _loc1_;
                                    _loc13_ = _loc7_ = _loc13_ *= _loc8_;
                                    _loc33_ = _loc15_ = Number((_loc15_ = _loc9_ = _loc15_ = Number((_loc15_ = _loc9_ = _loc15_ *= _loc10_) + _loc13_)) * _loc4_);
                                 }
                              }
                           }
                           §§goto(addr1239);
                        }
                        §§goto(addr738);
                     }
                     §§goto(addr1239);
                  }
                  sf32(_loc22_,_loc6_ - 36);
                  si32(_loc43_ = (_loc43_ = (_loc43_ = li32(_loc6_ - 36)) & -2147483648) | 2139095040,_loc6_ - 40);
                  _loc35_ = _loc13_ = Number((_loc15_ = lf32(_loc6_ - 40)) * _loc8_);
                  _loc33_ = _loc15_ *= _loc10_;
                  §§goto(addr1239);
               }
               §§goto(addr660);
            }
         }
         addr1239:
         sf32(_loc33_,_loc6_ - 92);
         sf32(_loc35_,_loc6_ - 96);
         _loc43_ = li32(_loc6_ - 92);
         var _loc27_:* = li32(_loc6_ - 96);
         eax = _loc43_;
         edx = _loc27_;
         ESP = _loc5_ = _loc6_;
         return;
      }
      §§goto(addr166);
   }
}
