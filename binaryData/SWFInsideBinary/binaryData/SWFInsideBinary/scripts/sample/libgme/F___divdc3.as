package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F___divdc3() : void
   {
      var _loc8_:int = 0;
      var _loc16_:* = 0;
      var _loc13_:* = NaN;
      var _loc14_:* = NaN;
      var _loc26_:* = 0;
      var _loc21_:* = 0;
      var _loc12_:Number = NaN;
      var _loc10_:Number = NaN;
      var _loc22_:int = 0;
      var _loc9_:* = NaN;
      var _loc11_:* = NaN;
      var _loc25_:* = 0;
      var _loc23_:int = 0;
      var _loc1_:* = NaN;
      var _loc20_:int = 0;
      var _loc15_:int = 0;
      var _loc17_:int = 0;
      var _loc18_:int = 0;
      var _loc19_:int = 0;
      var _loc5_:Number = NaN;
      var _loc7_:* = int((_loc8_ = ESP) - 176);
      if(!((_loc9_ = lf64(_loc8_ + 20)) >= 0 | _loc10_ != _loc10_ | false))
      {
         _loc9_ = Number(-_loc10_);
      }
      if(!((_loc11_ = lf64(_loc8_ + 28)) >= 0 | _loc12_ != _loc12_ | false))
      {
         _loc11_ = Number(-_loc12_);
      }
      _loc14_ = lf64(_loc8_ + 12);
      _loc13_ = lf64(_loc8_ + 4);
      _loc16_ = li32(_loc8_);
      sf64(_loc9_,_loc8_ - 16);
      sf64(_loc9_,_loc8_ - 24);
      sf64(_loc11_,_loc8_ - 32);
      sf64(_loc11_,_loc8_ - 8);
      var _loc27_:* = (_loc27_ = int((_loc26_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 24)) | 4)) >>> 20)) & 2047;
      _loc25_ = li32(_loc8_ - 32);
      if(_loc27_ == 2047)
      {
         _loc1_ = _loc11_;
         if(((_loc27_ = _loc26_ & 1048575) | li32(_loc8_ - 24)) == 0)
         {
            addr180:
            if((_loc27_ = (_loc27_ = int((_loc26_ = li32(_loc8_ - 4)) >>> 20)) & 2047) == 2047)
            {
               _loc1_ = _loc9_;
               if(((_loc27_ = _loc26_ & 1048575) | _loc25_) == 0)
               {
               }
               §§goto(addr277);
            }
            _loc25_ = _loc23_ = 1;
            if(_loc26_ >= 0)
            {
               _loc25_ = 0;
            }
            if((_loc26_ = li32(_loc27_ = (_loc22_ = _loc8_ - 16) | 4)) >= 0)
            {
               _loc23_ = 0;
            }
            if((_loc27_ = (_loc27_ = _loc23_ ^ _loc25_) & 1) != 0)
            {
               _loc1_ = lf64(_loc27_ = int(_loc22_ + (int((_loc27_ = _loc26_ & -2147483648) >>> 28))));
            }
            else
            {
               if(_loc9_ <= _loc11_)
               {
                  _loc9_ = _loc11_;
               }
               _loc1_ = _loc9_;
            }
         }
         addr277:
         sf64(_loc1_,_loc8_ - 40);
         _loc21_ = (_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 40)) | 4)) & 2147483647;
         _loc27_ = li32(_loc8_ - 40);
         if((_loc27_ = _loc21_ | _loc27_) == 0)
         {
            if(!(_loc1_ >= 0 | _loc1_ != _loc1_ | false))
            {
               _loc1_ = Number(-_loc1_);
            }
            _loc11_ = Number(-1 / _loc1_);
         }
         else if(uint(_loc21_) >= 2146435072)
         {
            _loc11_ = Number(_loc1_ * _loc1_);
         }
         else if(uint(_loc21_) <= 1048575)
         {
            sf64(Number(_loc1_ * 18014398509481984),_loc8_ - 48);
            _loc11_ = Number(_loc27_ = int((_loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 48)) | 4)) >>> 20)) & 2047) + -1077));
         }
         else
         {
            _loc11_ = Number(_loc27_ = int((_loc27_ = int(_loc21_ >>> 20)) + -1023));
         }
         sf64(_loc11_,_loc8_ - 56);
         _loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 56)) | 4)) >>> 20)) & 2047;
         _loc20_ = 0;
         if(_loc27_ != 2047)
         {
            _loc7_ -= 16;
            sf64(_loc10_,_loc7_);
            _loc20_ = _loc11_;
            si32(_loc27_ = int(0 - _loc20_),_loc7_ + 8);
            ESP = _loc7_;
            F_scalbn();
            _loc7_ += 16;
            _loc10_ = st0;
            _loc7_ -= 16;
            si32(_loc27_,_loc7_ + 8);
            sf64(_loc12_,_loc7_);
            ESP = _loc7_;
            F_scalbn();
            _loc7_ += 16;
            _loc12_ = st0;
         }
         _loc7_ -= 16;
         si32(_loc27_ = int(0 - _loc20_),_loc7_ + 8);
         var _loc3_:* = Number(_loc12_ * _loc14_);
         var _loc4_:Number = (_loc4_ = _loc10_ * _loc13_) + _loc3_;
         _loc3_ = Number(_loc12_ * _loc12_);
         var _loc6_:Number;
         _loc1_ = Number((_loc6_ = _loc10_ * _loc10_) + _loc3_);
         _loc3_ = Number(_loc4_ / _loc1_);
         sf64(_loc3_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ += 16;
         _loc5_ = st0;
         _loc7_ -= 16;
         si32(_loc27_,_loc7_ + 8);
         var _loc2_:* = Number(_loc12_ * _loc13_);
         _loc3_ = Number(_loc10_ * _loc14_);
         _loc2_ = Number(_loc3_ - _loc2_);
         _loc2_ /= _loc1_;
         sf64(_loc2_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ += 16;
         _loc9_ = Number(st0);
         if(!(_loc5_ == _loc5_ & _loc5_ == _loc5_))
         {
            if(!(_loc9_ == _loc9_ & _loc9_ == _loc9_))
            {
               if(!(_loc1_ != 0 | _loc1_ != _loc1_ | false))
               {
                  if(!(_loc13_ == _loc13_ & _loc13_ == _loc13_))
                  {
                     if(_loc14_ != _loc14_ | _loc14_ != _loc14_)
                     {
                        addr724:
                        _loc7_ -= 16;
                        sf64(_loc13_,_loc7_);
                        ESP = _loc7_;
                        F_isinf();
                        _loc7_ += 16;
                        if((_loc23_ = eax) == 0)
                        {
                           _loc7_ -= 16;
                           sf64(_loc14_,_loc7_);
                           ESP = _loc7_;
                           F_isinf();
                           _loc7_ += 16;
                           if((_loc27_ = int(eax)) != 0)
                           {
                              addr780:
                              sf64(_loc10_,_loc8_ - 80);
                              if((_loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 80)) | 4)) >>> 20)) & 2047) != 2047)
                              {
                                 sf64(_loc12_,_loc8_ - 88);
                                 if((_loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 88)) | 4)) >>> 20)) & 2047) != 2047)
                                 {
                                    sf64(_loc13_,_loc8_ - 96);
                                    _loc15_ = 0;
                                    if(_loc23_ != 0)
                                    {
                                       _loc15_ = 1072693248;
                                    }
                                    _loc27_ = (_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 96)) | 4)) & -2147483648;
                                    _loc27_ = _loc15_ | _loc27_;
                                    var _loc24_:* = (_loc24_ = int(_loc8_ - 104)) | 4;
                                    si32(_loc27_,_loc24_);
                                    _loc7_ -= 16;
                                    sf64(_loc14_,_loc7_);
                                    sf64(_loc14_,_loc8_ - 112);
                                    ESP = _loc7_;
                                    F_isinf();
                                    _loc7_ += 16;
                                    _loc27_ = int(eax);
                                    _loc17_ = 0;
                                    if(_loc27_ != 0)
                                    {
                                       _loc17_ = 1072693248;
                                    }
                                    _loc27_ = (_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 112)) | 4)) & -2147483648;
                                    _loc27_ = _loc17_ | _loc27_;
                                    _loc24_ = (_loc24_ = int(_loc8_ - 120)) | 4;
                                    si32(_loc27_,_loc24_);
                                    si32(0,_loc8_ - 104);
                                    si32(0,_loc8_ - 120);
                                    _loc3_ = lf64(_loc8_ - 104);
                                    _loc6_ = _loc3_ * _loc12_;
                                    _loc2_ = lf64(_loc8_ - 120);
                                    _loc9_ = Number((_loc4_ = (_loc4_ = _loc2_ * _loc10_) - _loc6_) * inf);
                                    _loc3_ *= _loc10_;
                                    _loc2_ *= _loc12_;
                                    _loc2_ = Number(_loc3_ + _loc2_);
                                    _loc5_ = _loc2_ * inf;
                                 }
                                 §§goto(addr1313);
                              }
                           }
                           _loc7_ -= 16;
                           sf64(_loc11_,_loc7_);
                           ESP = _loc7_;
                           F_isinf();
                           _loc7_ += 16;
                           if((_loc27_ = int(eax)) != 0)
                           {
                              if(!(_loc11_ <= 0 | _loc11_ != _loc11_ | false))
                              {
                                 sf64(_loc13_,_loc8_ - 128);
                                 if((_loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 128)) | 4)) >>> 20)) & 2047) != 2047)
                                 {
                                    sf64(_loc14_,_loc8_ - 136);
                                    if((_loc27_ = (_loc27_ = int((_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 136)) | 4)) >>> 20)) & 2047) != 2047)
                                    {
                                       _loc7_ -= 16;
                                       sf64(_loc10_,_loc7_);
                                       sf64(_loc10_,_loc8_ - 144);
                                       ESP = _loc7_;
                                       F_isinf();
                                       _loc7_ += 16;
                                       _loc18_ = 0;
                                       if(int(eax) != 0)
                                       {
                                          _loc18_ = 1072693248;
                                       }
                                       _loc27_ = (_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 144)) | 4)) & -2147483648;
                                       _loc27_ = _loc18_ | _loc27_;
                                       _loc24_ = (_loc24_ = int(_loc8_ - 152)) | 4;
                                       si32(_loc27_,_loc24_);
                                       sf64(_loc12_,_loc8_ - 160);
                                       _loc7_ -= 16;
                                       sf64(_loc12_,_loc7_);
                                       ESP = _loc7_;
                                       F_isinf();
                                       _loc7_ += 16;
                                       _loc27_ = int(eax);
                                       _loc19_ = 0;
                                       if(_loc27_ != 0)
                                       {
                                          _loc19_ = 1072693248;
                                       }
                                       _loc27_ = (_loc27_ = li32(_loc27_ = (_loc27_ = int(_loc8_ - 160)) | 4)) & -2147483648;
                                       _loc27_ = _loc19_ | _loc27_;
                                       _loc24_ = (_loc24_ = int(_loc8_ - 168)) | 4;
                                       si32(_loc27_,_loc24_);
                                       si32(0,_loc8_ - 152);
                                       si32(0,_loc8_ - 168);
                                       _loc3_ = lf64(_loc8_ - 152);
                                       _loc6_ = _loc3_ * _loc14_;
                                       _loc2_ = lf64(_loc8_ - 168);
                                       _loc4_ = _loc2_ * _loc13_;
                                       _loc9_ = Number((_loc4_ = _loc6_ - _loc4_) * 0);
                                       _loc3_ *= _loc13_;
                                       _loc2_ *= _loc14_;
                                       _loc2_ = Number(_loc3_ + _loc2_);
                                       _loc5_ = _loc2_ * 0;
                                    }
                                 }
                              }
                           }
                           §§goto(addr1313);
                        }
                        §§goto(addr780);
                     }
                     §§goto(addr1313);
                  }
                  sf64(_loc10_,_loc8_ - 64);
                  _loc27_ = (_loc27_ = int(_loc8_ - 72)) | 4;
                  si32(_loc24_ = (_loc24_ = (_loc24_ = li32(_loc24_ = (_loc24_ = int(_loc8_ - 64)) | 4)) & -2147483648) | 2146435072,_loc27_);
                  si32(0,_loc8_ - 72);
                  _loc2_ = lf64(_loc8_ - 72);
                  _loc9_ = Number(_loc2_ * _loc14_);
                  _loc5_ = _loc2_ * _loc13_;
                  §§goto(addr1313);
               }
               §§goto(addr724);
            }
         }
         addr1313:
         sf64(_loc5_,_loc16_);
         sf64(_loc9_,_loc16_ + 8);
         ESP = _loc7_ = _loc8_;
         return;
      }
      §§goto(addr180);
   }
}
