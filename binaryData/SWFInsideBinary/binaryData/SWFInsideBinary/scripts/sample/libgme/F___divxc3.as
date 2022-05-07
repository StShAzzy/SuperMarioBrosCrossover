package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F___divxc3() : void
   {
      var _loc8_:int = 0;
      var _loc22_:* = 0;
      var _loc13_:* = NaN;
      var _loc14_:* = NaN;
      var _loc23_:* = 0;
      var _loc12_:Number = NaN;
      var _loc10_:Number = NaN;
      var _loc9_:* = NaN;
      var _loc11_:* = NaN;
      var _loc24_:* = 0;
      var _loc25_:int = 0;
      var _loc21_:* = 0;
      var _loc19_:int = 0;
      var _loc18_:int = 0;
      var _loc15_:int = 0;
      var _loc17_:int = 0;
      var _loc5_:Number = NaN;
      var _loc6_:Number = NaN;
      var _loc7_:* = int((_loc8_ = ESP) - 160);
      if(!((_loc9_ = lf64(_loc8_ + 20)) >= 0 | _loc10_ != _loc10_ | false))
      {
         _loc9_ = Number(-_loc10_);
      }
      if(!((_loc11_ = lf64(_loc8_ + 28)) >= 0 | _loc12_ != _loc12_ | false))
      {
         _loc11_ = Number(-_loc12_);
      }
      sf64(_loc11_,_loc8_ - 16);
      sf64(_loc9_,_loc8_ - 8);
      var _loc16_:* = li32(_loc16_ = (_loc16_ = int(_loc8_ - 16)) | 4);
      _loc24_ = _loc25_ = 1;
      if(_loc16_ >= 0)
      {
         _loc24_ = 0;
      }
      if((_loc23_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 8)) | 4)) >= 0)
      {
         _loc25_ = 0;
      }
      _loc14_ = lf64(_loc8_ + 12);
      _loc13_ = lf64(_loc8_ + 4);
      _loc22_ = li32(_loc8_);
      if((_loc16_ = (_loc16_ = _loc25_ ^ _loc24_) & 1) != 0)
      {
         if(_loc23_ >= 0)
         {
            _loc11_ = _loc9_;
         }
      }
      else
      {
         if(_loc9_ <= _loc11_)
         {
            _loc9_ = _loc11_;
         }
         _loc11_ = _loc9_;
      }
      sf64(_loc11_,_loc8_ - 24);
      _loc21_ = (_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 24)) | 4)) & 2147483647;
      _loc16_ = li32(_loc8_ - 24);
      if((_loc16_ = _loc21_ | _loc16_) == 0)
      {
         if(!(_loc11_ >= 0 | _loc11_ != _loc11_ | false))
         {
            _loc11_ = Number(-_loc11_);
         }
         _loc11_ = Number(-1 / _loc11_);
      }
      else if(uint(_loc21_) >= 2146435072)
      {
         _loc11_ *= _loc11_;
      }
      else if(uint(_loc21_) <= 1048575)
      {
         sf64(Number(_loc11_ * 18014398509481984),_loc8_ - 32);
         _loc11_ = Number(_loc16_ = int((_loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 32)) | 4)) >>> 20)) & 2047) + -1077));
      }
      else
      {
         _loc11_ = Number(_loc16_ = int((_loc16_ = int(_loc21_ >>> 20)) + -1023));
      }
      sf64(_loc11_,_loc8_ - 40);
      _loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 40)) | 4)) >>> 20)) & 2047;
      _loc21_ = 0;
      if(_loc16_ != 2047)
      {
         _loc7_ -= 16;
         sf64(_loc10_,_loc7_);
         _loc21_ = int(_loc11_);
         si32(_loc16_ = int(0 - _loc21_),_loc7_ + 8);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ += 16;
         _loc10_ = st0;
         _loc7_ -= 16;
         si32(_loc16_,_loc7_ + 8);
         sf64(_loc12_,_loc7_);
         ESP = _loc7_;
         F_scalbn();
         _loc7_ += 16;
         _loc12_ = st0;
      }
      _loc7_ -= 16;
      si32(_loc16_ = int(0 - _loc21_),_loc7_ + 8);
      var _loc2_:Number = _loc12_ * _loc14_;
      var _loc3_:* = Number(_loc10_ * _loc13_);
      var _loc4_:Number = _loc3_ + _loc2_;
      _loc2_ = _loc12_ * _loc12_;
      _loc3_ = Number(_loc10_ * _loc10_);
      _loc9_ = Number(_loc3_ + _loc2_);
      _loc3_ = Number(_loc4_ / _loc9_);
      sf64(_loc3_,_loc7_);
      ESP = _loc7_;
      F_scalbn();
      _loc7_ += 16;
      _loc6_ = st0;
      _loc7_ -= 16;
      si32(_loc16_,_loc7_ + 8);
      _loc3_ = Number(_loc12_ * _loc13_);
      var _loc1_:* = Number(_loc10_ * _loc14_);
      _loc1_ -= _loc3_;
      _loc1_ /= _loc9_;
      sf64(_loc1_,_loc7_);
      ESP = _loc7_;
      F_scalbn();
      _loc7_ += 16;
      _loc5_ = st0;
      if(!(_loc6_ == _loc6_ & _loc6_ == _loc6_))
      {
         if(!(_loc5_ == _loc5_ & _loc5_ == _loc5_))
         {
            if(!(_loc9_ != 0 | _loc9_ != _loc9_ | false))
            {
               if(!(_loc13_ == _loc13_ & _loc13_ == _loc13_))
               {
                  if(_loc14_ != _loc14_ | _loc14_ != _loc14_)
                  {
                     addr636:
                     _loc7_ -= 16;
                     sf64(_loc13_,_loc7_);
                     ESP = _loc7_;
                     F_isinf();
                     _loc7_ += 16;
                     if((_loc21_ = int(eax)) == 0)
                     {
                        _loc7_ -= 16;
                        sf64(_loc14_,_loc7_);
                        ESP = _loc7_;
                        F_isinf();
                        _loc7_ += 16;
                        if((_loc16_ = int(eax)) != 0)
                        {
                           addr692:
                           sf64(_loc10_,_loc8_ - 64);
                           if((_loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 64)) | 4)) >>> 20)) & 2047) != 2047)
                           {
                              sf64(_loc12_,_loc8_ - 72);
                              if((_loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 72)) | 4)) >>> 20)) & 2047) != 2047)
                              {
                                 sf64(_loc13_,_loc8_ - 80);
                                 _loc19_ = 0;
                                 if(_loc21_ != 0)
                                 {
                                    _loc19_ = 1072693248;
                                 }
                                 _loc16_ = (_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 80)) | 4)) & -2147483648;
                                 _loc16_ = _loc19_ | _loc16_;
                                 var _loc20_:* = (_loc20_ = int(_loc8_ - 88)) | 4;
                                 si32(_loc16_,_loc20_);
                                 _loc7_ -= 16;
                                 sf64(_loc14_,_loc7_);
                                 sf64(_loc14_,_loc8_ - 96);
                                 ESP = _loc7_;
                                 F_isinf();
                                 _loc7_ += 16;
                                 _loc16_ = int(eax);
                                 _loc18_ = 0;
                                 if(_loc16_ != 0)
                                 {
                                    _loc18_ = 1072693248;
                                 }
                                 _loc16_ = (_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 96)) | 4)) & -2147483648;
                                 _loc16_ = _loc18_ | _loc16_;
                                 _loc20_ = (_loc20_ = int(_loc8_ - 104)) | 4;
                                 si32(_loc16_,_loc20_);
                                 si32(0,_loc8_ - 88);
                                 si32(0,_loc8_ - 104);
                                 _loc3_ = lf64(_loc8_ - 88);
                                 _loc4_ = _loc3_ * _loc12_;
                                 _loc1_ = lf64(_loc8_ - 104);
                                 _loc2_ = _loc1_ * _loc10_;
                                 _loc2_ -= _loc4_;
                                 _loc5_ = _loc2_ * inf;
                                 _loc3_ *= _loc10_;
                                 _loc1_ *= _loc12_;
                                 _loc1_ = Number(_loc3_ + _loc1_);
                                 _loc6_ = _loc1_ * inf;
                              }
                              §§goto(addr1225);
                           }
                        }
                        _loc7_ -= 16;
                        sf64(_loc11_,_loc7_);
                        ESP = _loc7_;
                        F_isinf();
                        _loc7_ += 16;
                        if((_loc16_ = int(eax)) != 0)
                        {
                           if(!(_loc11_ <= 0 | _loc11_ != _loc11_ | false))
                           {
                              sf64(_loc13_,_loc8_ - 112);
                              if((_loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 112)) | 4)) >>> 20)) & 2047) != 2047)
                              {
                                 sf64(_loc14_,_loc8_ - 120);
                                 if((_loc16_ = (_loc16_ = int((_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 120)) | 4)) >>> 20)) & 2047) != 2047)
                                 {
                                    _loc7_ -= 16;
                                    sf64(_loc10_,_loc7_);
                                    sf64(_loc10_,_loc8_ - 128);
                                    ESP = _loc7_;
                                    F_isinf();
                                    _loc7_ += 16;
                                    _loc15_ = 0;
                                    if(int(eax) != 0)
                                    {
                                       _loc15_ = 1072693248;
                                    }
                                    _loc16_ = (_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 128)) | 4)) & -2147483648;
                                    _loc16_ = _loc15_ | _loc16_;
                                    _loc20_ = (_loc20_ = int(_loc8_ - 136)) | 4;
                                    si32(_loc16_,_loc20_);
                                    sf64(_loc12_,_loc8_ - 144);
                                    _loc7_ -= 16;
                                    sf64(_loc12_,_loc7_);
                                    ESP = _loc7_;
                                    F_isinf();
                                    _loc7_ += 16;
                                    _loc16_ = int(eax);
                                    _loc17_ = 0;
                                    if(_loc16_ != 0)
                                    {
                                       _loc17_ = 1072693248;
                                    }
                                    _loc16_ = (_loc16_ = li32(_loc16_ = (_loc16_ = int(_loc8_ - 144)) | 4)) & -2147483648;
                                    _loc16_ = _loc17_ | _loc16_;
                                    _loc20_ = (_loc20_ = int(_loc8_ - 152)) | 4;
                                    si32(_loc16_,_loc20_);
                                    si32(0,_loc8_ - 136);
                                    si32(0,_loc8_ - 152);
                                    _loc3_ = lf64(_loc8_ - 136);
                                    _loc2_ = _loc3_ * _loc14_;
                                    _loc1_ = lf64(_loc8_ - 152);
                                    _loc4_ = _loc1_ * _loc13_;
                                    _loc2_ -= _loc4_;
                                    _loc5_ = _loc2_ * 0;
                                    _loc3_ *= _loc13_;
                                    _loc1_ *= _loc14_;
                                    _loc1_ = Number(_loc3_ + _loc1_);
                                    _loc6_ = _loc1_ * 0;
                                 }
                              }
                           }
                        }
                        §§goto(addr1225);
                     }
                     §§goto(addr692);
                  }
                  §§goto(addr1225);
               }
               sf64(_loc10_,_loc8_ - 48);
               _loc16_ = (_loc16_ = int(_loc8_ - 56)) | 4;
               si32(_loc20_ = (_loc20_ = (_loc20_ = li32(_loc20_ = (_loc20_ = int(_loc8_ - 48)) | 4)) & -2147483648) | 2146435072,_loc16_);
               si32(0,_loc8_ - 56);
               _loc1_ = lf64(_loc8_ - 56);
               _loc5_ = _loc1_ * _loc14_;
               _loc6_ = _loc1_ * _loc13_;
               §§goto(addr1225);
            }
            §§goto(addr636);
         }
      }
      addr1225:
      sf64(_loc6_,_loc22_);
      sf64(_loc5_,_loc22_ + 8);
      ESP = _loc7_ = _loc8_;
   }
}
