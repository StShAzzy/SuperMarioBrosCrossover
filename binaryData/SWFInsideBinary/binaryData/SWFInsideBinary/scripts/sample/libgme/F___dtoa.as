package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._freelist;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._pmem_next;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._private_mem;
   
   public function F___dtoa() : void
   {
      var _loc14_:int = 0;
      var _loc42_:* = 0;
      var _loc44_:* = 0;
      var _loc45_:* = 0;
      var _loc46_:* = 0;
      var _loc40_:* = 0;
      var _loc47_:* = 0;
      var _loc48_:* = 0;
      var _loc21_:* = NaN;
      var _loc26_:* = 0;
      var _loc34_:* = 0;
      var _loc35_:* = 0;
      var _loc22_:* = NaN;
      var _loc30_:* = 0;
      var _loc27_:* = 0;
      var _loc33_:* = 0;
      var _loc28_:* = 0;
      var _loc18_:* = 0;
      var _loc25_:* = NaN;
      var _loc24_:* = NaN;
      var _loc19_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = NaN;
      var _loc3_:Number = NaN;
      var _loc7_:* = NaN;
      var _loc5_:Number = NaN;
      var _loc4_:* = NaN;
      var _loc31_:* = 0;
      var _loc37_:* = 0;
      var _loc13_:* = 0;
      var _loc43_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:Number = NaN;
      var _loc36_:* = 0;
      var _loc6_:Number = NaN;
      var _loc32_:* = 0;
      var _loc41_:* = 0;
      var _loc17_:* = 0;
      var _loc10_:* = int((_loc14_ = ESP) - 176);
      var _loc29_:*;
      _loc48_ = li32(_loc29_ = (_loc29_ = _loc14_) | 4);
      _loc47_ = li32(_loc14_);
      _loc46_ = li32(_loc14_ + 24);
      _loc45_ = li32(_loc14_ + 20);
      _loc44_ = li32(_loc14_ + 16);
      _loc43_ = li32(_loc14_ + 12);
      _loc42_ = li32(_loc14_ + 8);
      if(_loc48_ <= -1)
      {
         si32(_loc40_ = 1,_loc45_);
         _loc48_ &= 2147483647;
      }
      else
      {
         si32(_loc40_ = 0,_loc45_);
      }
      if((_loc29_ = _loc48_ & 2146435072) == 2146435072)
      {
         si32(9999,_loc44_);
         _loc10_ -= 16;
         si32(0,_loc10_);
         ESP = _loc10_;
         F___Balloc_D2A();
         _loc10_ += 16;
         _loc44_ = int(eax);
         si32(0,_loc44_);
         _loc43_ = int(_loc44_ + 4);
         if(_loc47_ == 0)
         {
            if((_loc29_ = 0 | _loc48_ & 1048575) == 0)
            {
               si8(73,_loc43_);
               si8(110,_loc43_ + 1);
               si8(102,_loc43_ + 2);
               si8(105,_loc43_ + 3);
               si8(110,_loc43_ + 4);
               si8(105,_loc43_ + 5);
               si8(116,_loc43_ + 6);
               si8(121,_loc43_ + 7);
               si8(0,_loc43_ + 8);
               if(_loc46_ != 0)
               {
                  si32(_loc29_ = int(_loc44_ + 12),_loc46_);
               }
            }
            §§goto(addr5425);
         }
         si8(78,_loc43_);
         si8(97,_loc43_ + 1);
         si8(78,_loc43_ + 2);
         si8(0,_loc43_ + 3);
         if(_loc46_ != 0)
         {
            si32(_loc29_ = int(_loc43_ + 3),_loc46_);
         }
      }
      else
      {
         si32(_loc48_,(_loc29_ = int(_loc14_ - 16)) | 4);
         si32(_loc47_,_loc14_ - 16);
         if(!((_loc21_ = lf64(_loc14_ - 16)) != 0 | _loc21_ != _loc21_ | false))
         {
            si32(1,_loc44_);
            _loc10_ -= 16;
            si32(0,_loc10_);
            ESP = _loc10_;
            F___Balloc_D2A();
            _loc10_ += 16;
            _loc29_ = int(eax);
            si32(0,_loc29_);
            si8(48,_loc29_ + 4);
            si8(0,_loc29_ + 5);
            _loc43_ = int(_loc29_ + 4);
            if(_loc46_ != 0)
            {
               si32(_loc29_ = int(_loc43_ + 1),_loc46_);
            }
         }
         else
         {
            _loc26_ = 1;
            _loc10_ -= 16;
            si32(_loc29_ = int(_loc14_ - 4),_loc10_ + 12);
            si32(_loc29_ = int(_loc14_ - 8),_loc10_ + 8);
            sf64(_loc21_,_loc10_);
            ESP = _loc10_;
            F___d2b_D2A();
            _loc40_ = (_loc29_ = int(_loc48_ >>> 20)) & 2047;
            _loc10_ += 16;
            _loc45_ = int(eax);
            if(_loc40_ != 0)
            {
               _loc34_ = int(_loc40_ + -1023);
               _loc40_ = (_loc29_ = _loc48_ & 1048575) | 1072693248;
               _loc35_ = 0;
               _loc37_ = _loc47_;
            }
            else
            {
               if((_loc29_ = int((_loc34_ = int((_loc29_ = li32(_loc14_ - 8)) + li32(_loc14_ - 4))) + 1074)) >= 33)
               {
                  var _loc39_:*;
                  _loc40_ = (_loc39_ = _loc48_ << int(-1010 - _loc34_)) | int(_loc47_ >>> int(_loc34_ + 1042));
               }
               else
               {
                  _loc40_ = _loc47_ << int(-1042 - _loc34_);
               }
               var _loc20_:*;
               sf64(_loc20_ = Number(uint(_loc40_)),_loc14_ - 24);
               _loc34_ += -1;
               _loc40_ = int((_loc29_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 24)) | 4)) + -32505856);
               _loc35_ = 1;
               _loc37_ = li32(_loc14_ - 24);
            }
            _loc29_ = (_loc29_ = int(_loc14_ - 32)) | 4;
            si32(_loc40_,_loc29_);
            si32(_loc37_,_loc14_ - 32);
            _loc20_ = Number((_loc20_ = Number(_loc34_)) * 0.301029995663981);
            var _loc23_:*;
            if(!((_loc40_ = int(Number((_loc23_ = Number((_loc23_ = Number((_loc23_ = Number((_loc23_ = lf64(_loc14_ - 32)) + -1.5)) * 0.289529654602168)) + 0.1760912590558)) + _loc20_))) >= 0 | _loc22_ != _loc22_ | false))
            {
               if((_loc20_ = Number(_loc40_)) != _loc22_)
               {
                  _loc40_ += -1;
               }
            }
            _loc30_ = 1;
            if(uint(_loc40_) <= 22)
            {
               _loc30_ = 0;
               _loc37_ = 1;
               if(_loc21_ >= lf64(_loc29_ = int(___tens_D2A + (_loc40_ << 3))))
               {
                  _loc37_ = _loc30_;
               }
               _loc29_ = _loc37_ & 1;
               _loc40_ -= _loc29_;
            }
            _loc37_ = int((_loc31_ = li32(_loc14_ - 4)) - _loc34_);
            _loc32_ = 0;
            if(_loc37_ <= 0)
            {
               _loc32_ = int(1 - _loc37_);
            }
            _loc33_ = int(_loc37_ + -1);
            if(_loc37_ <= 0)
            {
               _loc33_ = 0;
            }
            if(_loc40_ >= 0)
            {
               _loc33_ += _loc40_;
               _loc28_ = 0;
               _loc27_ = _loc40_;
            }
            else
            {
               _loc32_ -= _loc40_;
               _loc28_ = int(0 - _loc40_);
               _loc27_ = 0;
            }
            _loc37_ = 0;
            if(uint(_loc42_) <= 9)
            {
               _loc37_ = _loc42_;
            }
            _loc42_ = int(_loc37_ + -4);
            if(_loc37_ <= 5)
            {
               _loc42_ = _loc37_;
            }
            _loc19_ = 1;
            if(_loc42_ <= 2)
            {
               _loc17_ = -1;
               _loc18_ = 0;
               _loc15_ = _loc17_;
               _loc16_ = _loc19_;
               _loc12_ = 0;
               if(uint(_loc42_) >= 2)
               {
                  _loc13_ = _loc19_;
                  if(_loc42_ == 2)
                  {
                     _loc13_ = 0;
                     addr806:
                     _loc15_ = _loc19_;
                     if(_loc43_ >= _loc19_)
                     {
                        _loc15_ = _loc43_;
                     }
                     _loc17_ = _loc15_;
                     _loc34_ = _loc15_;
                     _loc43_ = _loc15_;
                  }
                  addr847:
                  _loc16_ = _loc13_;
                  _loc18_ = _loc43_;
                  _loc43_ = 4;
                  _loc12_ = 0;
                  if(uint(_loc34_) >= 20)
                  {
                     do
                     {
                        _loc12_ += 1;
                     }
                     while((uint(_loc29_ = int((_loc43_ <<= 1) + 16))) <= uint(_loc34_));
                     
                  }
               }
            }
            else
            {
               if(_loc42_ != 3)
               {
                  _loc13_ = _loc19_;
                  if(_loc42_ != 4)
                  {
                     _loc16_ = _loc19_;
                     _loc13_ = _loc19_;
                     if(_loc42_ == 5)
                     {
                        addr825:
                        _loc17_ = int((_loc15_ = int(_loc40_ + _loc43_)) + 1);
                        _loc12_ = 0;
                        _loc13_ = _loc16_;
                        _loc34_ = _loc17_;
                        _loc18_ = _loc43_;
                        if(_loc15_ >= 0)
                        {
                        }
                        addr880:
                        _loc10_ -= 16;
                        si32(_loc12_,_loc10_);
                        ESP = _loc10_;
                        F___Balloc_D2A();
                        _loc10_ += 16;
                        _loc34_ = int(eax);
                        si32(_loc12_,_loc34_);
                        _loc12_ = 2;
                        _loc43_ = _loc19_;
                        if(_loc42_ >= _loc12_)
                        {
                           _loc43_ = 0;
                        }
                        _loc13_ = _loc19_;
                        if(_loc26_ != _loc19_)
                        {
                           _loc13_ = 0;
                        }
                        if((_loc29_ = _loc43_ | _loc13_) == 0)
                        {
                           _loc16_ = 0;
                        }
                        if(_loc26_ == _loc19_)
                        {
                           _loc19_ = 0;
                        }
                        _loc43_ = int(_loc34_ + 4);
                        if(uint(_loc17_) <= 14)
                        {
                           if(_loc37_ <= 5)
                           {
                              if(_loc19_ == 0)
                              {
                                 if(_loc40_ >= 1)
                                 {
                                    _loc12_ = 2;
                                    _loc9_ = _loc47_;
                                    _loc11_ = _loc48_;
                                    if(((_loc19_ = _loc40_ >> 4) & 16) != 0)
                                    {
                                       sf64(_loc20_ = Number(_loc21_ / 1e+256),_loc14_ - 64);
                                       _loc19_ &= 15;
                                       _loc11_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 64)) | 4);
                                       _loc12_ = 3;
                                       _loc9_ = li32(_loc14_ - 64);
                                    }
                                    _loc29_ = (_loc29_ = _loc40_ & 15) << 3;
                                    _loc22_ = lf64(_loc29_ = int(___tens_D2A + _loc29_));
                                    _loc13_ = int(___bigtens_D2A);
                                    if(_loc19_ != 0)
                                    {
                                       do
                                       {
                                          if((_loc29_ = _loc19_ & 1) != 0)
                                          {
                                             _loc22_ = Number((_loc20_ = lf64(_loc13_)) * _loc22_);
                                             _loc12_ += 1;
                                          }
                                          _loc13_ += 8;
                                       }
                                       while((_loc19_ >>= 1) != 0);
                                       
                                    }
                                    _loc29_ = (_loc29_ = int(_loc14_ - 72)) | 4;
                                    si32(_loc11_,_loc29_);
                                    si32(_loc9_,_loc14_ - 72);
                                    sf64(_loc20_ = Number((_loc20_ = lf64(_loc14_ - 72)) / _loc22_),_loc14_ - 80);
                                    _loc11_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 80)) | 4);
                                    _loc9_ = li32(_loc14_ - 80);
                                 }
                                 else
                                 {
                                    _loc9_ = _loc47_;
                                    _loc11_ = _loc48_;
                                    if(_loc40_ != 0)
                                    {
                                       sf64(_loc23_ = Number(_loc21_ * lf64(_loc39_ = int(___tens_D2A + ((_loc39_ = (_loc29_ = int(0 - _loc40_)) & 15) << 3)))),_loc14_ - 40);
                                       _loc19_ = _loc29_ >> 4;
                                       _loc11_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 40)) | 4);
                                       _loc37_ = int(___bigtens_D2A);
                                       _loc12_ = 2;
                                       _loc9_ = li32(_loc14_ - 40);
                                       if(_loc19_ != 0)
                                       {
                                          do
                                          {
                                             if((_loc29_ = _loc19_ & 1) != 0)
                                             {
                                                si32(_loc11_,(_loc29_ = int(_loc14_ - 48)) | 4);
                                                si32(_loc9_,_loc14_ - 48);
                                                sf64(_loc20_ = Number((_loc23_ = lf64(_loc14_ - 48)) * lf64(_loc37_)),_loc14_ - 56);
                                                _loc12_ += 1;
                                                _loc11_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 56)) | 4);
                                                _loc9_ = li32(_loc14_ - 56);
                                             }
                                             _loc37_ += 8;
                                          }
                                          while((_loc19_ >>= 1) != 0);
                                          
                                       }
                                    }
                                 }
                                 _loc13_ = _loc40_;
                                 _loc37_ = _loc17_;
                                 if(_loc30_ != 0)
                                 {
                                    si32(_loc11_,(_loc29_ = int(_loc14_ - 88)) | 4);
                                    si32(_loc9_,_loc14_ - 88);
                                    _loc25_ = lf64(_loc14_ - 88);
                                    _loc13_ = _loc40_;
                                    _loc37_ = _loc17_;
                                    if(!(_loc25_ >= 1 | _loc25_ != _loc25_ | false))
                                    {
                                       _loc13_ = _loc40_;
                                       _loc37_ = _loc17_;
                                       if(_loc17_ >= 1)
                                       {
                                          if(_loc15_ >= 1)
                                          {
                                             sf64(_loc20_ = Number(_loc25_ * 10),_loc14_ - 96);
                                             _loc12_ += 1;
                                             _loc13_ = int(_loc40_ + -1);
                                             _loc11_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 96)) | 4);
                                             _loc9_ = li32(_loc14_ - 96);
                                             _loc37_ = _loc15_;
                                          }
                                          addr1822:
                                          if((_loc12_ = li32(_loc14_ - 8)) >= 0)
                                          {
                                             if(_loc40_ <= 14)
                                             {
                                                _loc7_ = lf64(_loc29_ = int(___tens_D2A + (_loc40_ << 3)));
                                                if(_loc18_ <= -1)
                                                {
                                                   if(_loc17_ >= 1)
                                                   {
                                                      addr1854:
                                                      _loc37_ = int(_loc17_ + -1);
                                                      _loc19_ = int(_loc34_ + 5);
                                                      while(true)
                                                      {
                                                         _loc29_ = (_loc29_ = int(_loc14_ - 160)) | 4;
                                                         si32(_loc48_,_loc29_);
                                                         si32(_loc47_,_loc14_ - 160);
                                                         _loc23_ = Number((_loc23_ = Number(_loc47_ = int(_loc23_ = Number((_loc20_ = lf64(_loc14_ - 160)) / _loc7_)))) * _loc7_);
                                                         if(!((_loc6_ = _loc20_ - _loc23_) >= 0 | _loc6_ != _loc6_ | false))
                                                         {
                                                            _loc6_ += _loc7_;
                                                            _loc47_ += 255;
                                                         }
                                                         si8(_loc29_ = int(_loc47_ + 48),_loc19_ - 1);
                                                         _loc13_ = _loc40_;
                                                         if(_loc6_ != 0)
                                                         {
                                                            if(_loc37_ != 0)
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc42_ >= 2)
                                                            {
                                                               _loc13_ = _loc40_;
                                                               if(_loc26_ != 0)
                                                               {
                                                                  _loc12_ = _loc40_;
                                                                  if(_loc26_ != 2)
                                                                  {
                                                                     addr2004:
                                                                     _loc5_ = _loc6_ + _loc6_;
                                                                     _loc12_ = _loc40_;
                                                                     if(_loc5_ <= _loc7_)
                                                                     {
                                                                        _loc13_ = _loc40_;
                                                                        if(!(_loc5_ != _loc7_ | _loc5_ != _loc5_ | _loc7_ != _loc7_))
                                                                        {
                                                                           _loc12_ = _loc40_;
                                                                           _loc13_ = _loc40_;
                                                                           if((_loc47_ & 1) != 0)
                                                                           {
                                                                           }
                                                                        }
                                                                        §§goto(addr5291);
                                                                     }
                                                                  }
                                                                  addr2065:
                                                                  _loc34_ += 4;
                                                                  while(true)
                                                                  {
                                                                     if((_loc26_ = li8((_loc40_ = _loc19_) - 1)) != 57)
                                                                     {
                                                                        _loc34_ = int(_loc26_ + 1);
                                                                        _loc13_ = _loc12_;
                                                                        break;
                                                                     }
                                                                     _loc19_ = int(_loc40_ + -1);
                                                                     if(_loc34_ == _loc19_)
                                                                     {
                                                                        si8(48,_loc19_);
                                                                        _loc13_ = int(_loc12_ + 1);
                                                                        _loc34_ = 49;
                                                                        break;
                                                                     }
                                                                  }
                                                                  si8(_loc34_,_loc40_ - 1);
                                                                  _loc19_ = _loc40_;
                                                               }
                                                               §§goto(addr5291);
                                                            }
                                                            §§goto(addr2004);
                                                         }
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc12_ = _loc37_ = 0;
                                                      if(_loc17_ >= 0)
                                                      {
                                                         _loc20_ = Number(_loc7_ * 5);
                                                         _loc12_ = _loc37_ = 0;
                                                         _loc13_ = _loc40_;
                                                         _loc11_ = _loc37_;
                                                         if(_loc21_ > _loc20_ | _loc21_ != _loc21_ | _loc20_ != _loc20_)
                                                         {
                                                            addr3429:
                                                            si8(49,_loc43_);
                                                            _loc40_ = int(_loc13_ + 1);
                                                            _loc19_ = int(_loc43_ + 1);
                                                            _loc42_ = 0;
                                                            _loc12_ = _loc11_;
                                                         }
                                                         §§goto(addr4924);
                                                      }
                                                      addr3419:
                                                      _loc40_ = _loc18_ ^ -1;
                                                      _loc42_ = 0;
                                                      _loc19_ = _loc43_;
                                                      addr4924:
                                                      if(_loc12_ != 0)
                                                      {
                                                         if((_loc34_ = li32(_loc12_ + 4)) >= 10)
                                                         {
                                                            _loc10_ -= 16;
                                                            si32(_loc12_,_loc10_);
                                                            ESP = _loc10_;
                                                            F_idalloc();
                                                            _loc10_ += 16;
                                                         }
                                                         else
                                                         {
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_lock();
                                                               _loc10_ += 16;
                                                               _loc34_ = li32(_loc12_ + 4);
                                                            }
                                                            _loc29_ = _loc34_ << 2;
                                                            si32(_loc39_ = li32(_loc29_ = int(_freelist + _loc29_)),_loc12_);
                                                            si32(_loc12_,_loc29_);
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_unlock();
                                                               _loc10_ += 16;
                                                            }
                                                         }
                                                      }
                                                      _loc13_ = _loc40_;
                                                      if(_loc37_ != 0)
                                                      {
                                                         if(_loc42_ != 0)
                                                         {
                                                            if(_loc42_ != _loc37_)
                                                            {
                                                               if(_loc42_ != 0)
                                                               {
                                                                  if((_loc34_ = li32(_loc42_ + 4)) >= 10)
                                                                  {
                                                                     _loc10_ -= 16;
                                                                     si32(_loc42_,_loc10_);
                                                                     ESP = _loc10_;
                                                                     F_idalloc();
                                                                     _loc10_ += 16;
                                                                  }
                                                                  else
                                                                  {
                                                                     if((_loc29_ = li32(___isthreaded)) != 0)
                                                                     {
                                                                        _loc10_ -= 16;
                                                                        si32(___gdtoa_locks,_loc10_);
                                                                        ESP = _loc10_;
                                                                        F__pthread_mutex_lock();
                                                                        _loc10_ += 16;
                                                                        _loc34_ = li32(_loc42_ + 4);
                                                                     }
                                                                     _loc29_ = _loc34_ << 2;
                                                                     si32(_loc29_ = li32(_loc39_ = int(_freelist + _loc29_)),_loc42_);
                                                                     si32(_loc42_,_loc39_);
                                                                     if((_loc29_ = li32(___isthreaded)) != 0)
                                                                     {
                                                                        _loc10_ -= 16;
                                                                        si32(___gdtoa_locks,_loc10_);
                                                                        ESP = _loc10_;
                                                                        F__pthread_mutex_unlock();
                                                                        _loc10_ += 16;
                                                                     }
                                                                  }
                                                               }
                                                               _loc13_ = _loc40_;
                                                               if(_loc37_ != 0)
                                                               {
                                                               }
                                                               §§goto(addr5291);
                                                            }
                                                         }
                                                         if((_loc34_ = li32(_loc37_ + 4)) >= 10)
                                                         {
                                                            _loc10_ -= 16;
                                                            si32(_loc37_,_loc10_);
                                                            ESP = _loc10_;
                                                            F_idalloc();
                                                            _loc10_ += 16;
                                                            _loc13_ = _loc40_;
                                                         }
                                                         else
                                                         {
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_lock();
                                                               _loc10_ += 16;
                                                               _loc34_ = li32(_loc37_ + 4);
                                                            }
                                                            _loc29_ = _loc34_ << 2;
                                                            si32(_loc29_ = li32(_loc39_ = int(_freelist + _loc29_)),_loc37_);
                                                            si32(_loc37_,_loc39_);
                                                            _loc29_ = li32(___isthreaded);
                                                            _loc13_ = _loc40_;
                                                            if(_loc29_ != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_unlock();
                                                               _loc10_ += 16;
                                                               _loc13_ = _loc40_;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr5291);
                                                   }
                                                   §§goto(addr5291);
                                                }
                                                §§goto(addr1854);
                                             }
                                             else
                                             {
                                                addr2136:
                                                _loc37_ = 0;
                                                _loc41_ = _loc32_;
                                                if(_loc16_ != 0)
                                                {
                                                   _loc37_ = int(54 - _loc31_);
                                                   if(_loc35_ != 0)
                                                   {
                                                      _loc37_ = int(_loc12_ + 1075);
                                                   }
                                                   if((_loc29_ = li32(___isthreaded)) != 0)
                                                   {
                                                      _loc10_ -= 16;
                                                      si32(___gdtoa_locks,_loc10_);
                                                      ESP = _loc10_;
                                                      F__pthread_mutex_lock();
                                                      _loc10_ += 16;
                                                   }
                                                   _loc33_ = int(_loc37_ + _loc33_);
                                                   _loc41_ = int(_loc37_ + _loc32_);
                                                   if((_loc37_ = li32(_freelist + 4)) != 0)
                                                   {
                                                      si32(_loc29_ = li32(_loc37_),_freelist + 4);
                                                   }
                                                   else
                                                   {
                                                      if((uint(_loc29_ = int((_loc29_ = (_loc29_ = int((_loc37_ = li32(_pmem_next)) - _private_mem)) >> 3) + 4))) <= 288)
                                                      {
                                                         si32(_loc29_ = int(_loc37_ + 32),_pmem_next);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ -= 16;
                                                         si32(32,_loc10_);
                                                         ESP = _loc10_;
                                                         F_malloc();
                                                         _loc10_ += 16;
                                                         _loc37_ = int(eax);
                                                      }
                                                      si32(1,_loc37_ + 4);
                                                      si32(2,_loc37_ + 8);
                                                   }
                                                   if((_loc29_ = li32(___isthreaded)) != 0)
                                                   {
                                                      _loc10_ -= 16;
                                                      si32(___gdtoa_locks,_loc10_);
                                                      ESP = _loc10_;
                                                      F__pthread_mutex_unlock();
                                                      _loc10_ += 16;
                                                   }
                                                   si32(0,_loc37_ + 12);
                                                   si32(1,_loc37_ + 20);
                                                   si32(1,_loc37_ + 16);
                                                }
                                                if(_loc32_ >= 1)
                                                {
                                                   if(_loc33_ >= 1)
                                                   {
                                                      _loc12_ = _loc33_;
                                                      if(_loc33_ > _loc32_)
                                                      {
                                                         _loc12_ = _loc32_;
                                                      }
                                                      _loc33_ -= _loc12_;
                                                      _loc32_ -= _loc12_;
                                                      _loc41_ -= _loc12_;
                                                   }
                                                }
                                                _loc35_ = _loc45_;
                                                if(_loc28_ >= 1)
                                                {
                                                   if(_loc16_ != 0)
                                                   {
                                                      _loc10_ -= 16;
                                                      si32(_loc28_,_loc10_ + 4);
                                                      si32(_loc37_,_loc10_);
                                                      ESP = _loc10_;
                                                      F___pow5mult_D2A();
                                                      _loc10_ += 16;
                                                      _loc37_ = int(eax);
                                                      _loc10_ -= 16;
                                                      si32(_loc45_,_loc10_ + 4);
                                                      si32(_loc37_,_loc10_);
                                                      ESP = _loc10_;
                                                      F___mult_D2A();
                                                      _loc10_ += 16;
                                                      _loc35_ = int(eax);
                                                      if(_loc45_ != 0)
                                                      {
                                                         if((_loc12_ = li32(_loc45_ + 4)) >= 10)
                                                         {
                                                            _loc10_ -= 16;
                                                            si32(_loc45_,_loc10_);
                                                            ESP = _loc10_;
                                                            F_idalloc();
                                                            _loc10_ += 16;
                                                            addr2567:
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_lock();
                                                               _loc10_ += 16;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_lock();
                                                               _loc10_ += 16;
                                                               _loc12_ = li32(_loc45_ + 4);
                                                            }
                                                            _loc29_ = _loc12_ << 2;
                                                            si32(_loc29_ = li32(_loc39_ = int(_freelist + _loc29_)),_loc45_);
                                                            si32(_loc45_,_loc39_);
                                                            if((_loc29_ = li32(___isthreaded)) != 0)
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(___gdtoa_locks,_loc10_);
                                                               ESP = _loc10_;
                                                               F__pthread_mutex_unlock();
                                                               _loc10_ += 16;
                                                               §§goto(addr2567);
                                                            }
                                                         }
                                                         if((_loc12_ = li32(_freelist + 4)) != 0)
                                                         {
                                                            si32(_loc29_ = li32(_loc12_),_freelist + 4);
                                                         }
                                                         else
                                                         {
                                                            if((uint(_loc29_ = int((_loc29_ = (_loc29_ = int((_loc12_ = li32(_pmem_next)) - _private_mem)) >> 3) + 4))) <= 288)
                                                            {
                                                               si32(_loc29_ = int(_loc12_ + 32),_pmem_next);
                                                            }
                                                            else
                                                            {
                                                               _loc10_ -= 16;
                                                               si32(32,_loc10_);
                                                               ESP = _loc10_;
                                                               F_malloc();
                                                               _loc10_ += 16;
                                                               _loc12_ = int(eax);
                                                            }
                                                            si32(1,_loc12_ + 4);
                                                            si32(2,_loc12_ + 8);
                                                         }
                                                         if((_loc29_ = li32(___isthreaded)) != 0)
                                                         {
                                                            _loc10_ -= 16;
                                                            si32(___gdtoa_locks,_loc10_);
                                                            ESP = _loc10_;
                                                            F__pthread_mutex_unlock();
                                                            _loc10_ += 16;
                                                         }
                                                         si32(_loc19_ = 0,_loc12_ + 12);
                                                         si32(_loc45_ = 1,_loc12_ + 20);
                                                         si32(_loc45_,_loc12_ + 16);
                                                         if(_loc27_ >= 1)
                                                         {
                                                            _loc10_ -= 16;
                                                            si32(_loc27_,_loc10_ + 4);
                                                            si32(_loc12_,_loc10_);
                                                            ESP = _loc10_;
                                                            F___pow5mult_D2A();
                                                            _loc10_ += 16;
                                                            _loc12_ = int(eax);
                                                         }
                                                         _loc28_ = _loc45_;
                                                         if(_loc42_ >= 2)
                                                         {
                                                            _loc28_ = _loc19_;
                                                         }
                                                         if(_loc16_ == _loc19_)
                                                         {
                                                            _loc45_ = _loc19_;
                                                         }
                                                         if(_loc26_ == 1)
                                                         {
                                                            if((_loc29_ = (_loc29_ = _loc28_ | _loc45_) & 1) != 0)
                                                            {
                                                               _loc19_ = 0;
                                                               if((_loc48_ & 1048575) == 0)
                                                               {
                                                                  if(_loc47_ == 0)
                                                                  {
                                                                     if((_loc29_ = _loc19_ | _loc48_ & 2145386496) != 0)
                                                                     {
                                                                        _loc33_ += 1;
                                                                        _loc41_ += 1;
                                                                        _loc19_ = 1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         _loc45_ = 1;
                                                         if(_loc27_ != 0)
                                                         {
                                                            _loc28_ = (_loc31_ = li32((_loc29_ = int((_loc29_ = (_loc29_ = li32(_loc12_ + 16)) << 2) + _loc12_)) + 16)) << 16;
                                                            if(uint(_loc31_) >= 65536)
                                                            {
                                                               _loc28_ = _loc31_;
                                                            }
                                                            _loc27_ = _loc28_ << 8;
                                                            if(uint(_loc28_) >= 16777216)
                                                            {
                                                               _loc27_ = _loc28_;
                                                            }
                                                            _loc45_ = _loc27_ << 4;
                                                            if(uint(_loc27_) >= 268435456)
                                                            {
                                                               _loc45_ = _loc27_;
                                                            }
                                                            _loc48_ = _loc45_ << 2;
                                                            if(uint(_loc45_) >= 1073741824)
                                                            {
                                                               _loc48_ = _loc45_;
                                                            }
                                                            _loc13_ = 16;
                                                            if(uint(_loc31_) >= 65536)
                                                            {
                                                               _loc13_ = 0;
                                                            }
                                                            _loc31_ = _loc13_ | 8;
                                                            if(uint(_loc28_) >= 16777216)
                                                            {
                                                               _loc31_ = _loc13_;
                                                            }
                                                            _loc28_ = _loc31_ | 4;
                                                            if(uint(_loc27_) >= 268435456)
                                                            {
                                                               _loc28_ = _loc31_;
                                                            }
                                                            _loc27_ = _loc28_ | 2;
                                                            if(uint(_loc45_) >= 1073741824)
                                                            {
                                                               _loc27_ = _loc28_;
                                                            }
                                                            if(_loc48_ >= 0)
                                                            {
                                                               _loc27_ += 1;
                                                               _loc45_ = 32;
                                                               if((_loc48_ & 1073741824) != 0)
                                                               {
                                                                  addr2955:
                                                                  _loc45_ = _loc27_;
                                                               }
                                                               _loc45_ = int(32 - _loc45_);
                                                               addr2964:
                                                               if((_loc45_ = (_loc29_ = int(_loc45_ + _loc33_)) & 31) != 0)
                                                               {
                                                                  _loc45_ = int(32 - _loc45_);
                                                               }
                                                               if(uint(_loc45_) >= 5)
                                                               {
                                                                  _loc33_ = int((_loc29_ = int(_loc45_ + -4)) + _loc33_);
                                                                  _loc32_ = int(_loc29_ + _loc32_);
                                                                  _loc41_ = int(_loc29_ + _loc41_);
                                                               }
                                                               else if(uint(_loc45_) <= 3)
                                                               {
                                                                  _loc33_ = int((_loc29_ = int(_loc45_ + 28)) + _loc33_);
                                                                  _loc32_ = int(_loc29_ + _loc32_);
                                                                  _loc41_ = int(_loc29_ + _loc41_);
                                                               }
                                                               if(_loc41_ >= 1)
                                                               {
                                                                  _loc10_ -= 16;
                                                                  si32(_loc41_,_loc10_ + 4);
                                                                  si32(_loc35_,_loc10_);
                                                                  ESP = _loc10_;
                                                                  F___lshift_D2A();
                                                                  _loc10_ += 16;
                                                                  _loc35_ = int(eax);
                                                               }
                                                               _loc45_ = _loc35_;
                                                               if(_loc33_ >= 1)
                                                               {
                                                                  _loc10_ -= 16;
                                                                  si32(_loc33_,_loc10_ + 4);
                                                                  si32(_loc12_,_loc10_);
                                                                  ESP = _loc10_;
                                                                  F___lshift_D2A();
                                                                  _loc10_ += 16;
                                                                  _loc12_ = int(eax);
                                                               }
                                                               if(_loc30_ != 0)
                                                               {
                                                                  _loc30_ = li32(_loc12_ + 16);
                                                                  if((_loc33_ = li32(_loc45_ + 16)) != _loc30_)
                                                                  {
                                                                     _loc48_ = int(_loc33_ - _loc30_);
                                                                     addr3197:
                                                                     if(_loc48_ <= -1)
                                                                     {
                                                                        _loc10_ -= 16;
                                                                        si32(0,_loc10_ + 8);
                                                                        si32(10,_loc10_ + 4);
                                                                        si32(_loc45_,_loc10_);
                                                                        ESP = _loc10_;
                                                                        F___multadd_D2A();
                                                                        _loc40_ += -1;
                                                                        _loc10_ += 16;
                                                                        _loc45_ = int(eax);
                                                                        _loc17_ = _loc15_;
                                                                        if(_loc16_ != 0)
                                                                        {
                                                                           _loc10_ -= 16;
                                                                           si32(0,_loc10_ + 8);
                                                                           si32(10,_loc10_ + 4);
                                                                           si32(_loc37_,_loc10_);
                                                                           ESP = _loc10_;
                                                                           F___multadd_D2A();
                                                                           _loc10_ += 16;
                                                                           _loc37_ = int(eax);
                                                                           _loc17_ = _loc15_;
                                                                        }
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc48_ = int((_loc29_ = int((_loc39_ = _loc30_ << 2) + _loc45_)) + 20);
                                                                     _loc41_ = int((_loc29_ = int(_loc39_ + _loc12_)) + 16);
                                                                     _loc27_ = int(_loc45_ + 20);
                                                                     while(true)
                                                                     {
                                                                        _loc30_ = li32(_loc41_);
                                                                        if((_loc33_ = li32(_loc48_ - 4)) == _loc30_)
                                                                        {
                                                                           _loc48_ += -4;
                                                                           _loc41_ += -4;
                                                                           if(uint(_loc48_) <= uint(_loc27_))
                                                                           {
                                                                              break;
                                                                           }
                                                                           continue;
                                                                        }
                                                                        _loc48_ = -1;
                                                                        if(uint(_loc33_) >= uint(_loc30_))
                                                                        {
                                                                           _loc48_ = 1;
                                                                        }
                                                                        §§goto(addr3197);
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc17_ <= 0)
                                                               {
                                                                  if(_loc42_ != 3)
                                                                  {
                                                                     if(_loc42_ != 5)
                                                                     {
                                                                        addr3448:
                                                                        if(_loc16_ == 0)
                                                                        {
                                                                           _loc19_ = int(_loc34_ + 5);
                                                                           _loc18_ = 1;
                                                                           _loc47_ = 0;
                                                                           while(true)
                                                                           {
                                                                              _loc10_ -= 16;
                                                                              si32(_loc12_,_loc10_ + 4);
                                                                              si32(_loc45_,_loc10_);
                                                                              ESP = _loc10_;
                                                                              F___quorem_D2A();
                                                                              _loc10_ += 16;
                                                                              si8(_loc30_ = int((_loc29_ = int(eax)) + 48),_loc19_ - 1);
                                                                              if((_loc29_ = li32(_loc45_ + 20)) != 0)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              _loc42_ = 0;
                                                                              if(li32(_loc45_ + 16) >= 2)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              §§goto(addr4924);
                                                                           }
                                                                           addr4695:
                                                                           _loc42_ = _loc47_;
                                                                           if(_loc26_ != 0)
                                                                           {
                                                                              _loc47_ = _loc42_;
                                                                              if(_loc26_ != 2)
                                                                              {
                                                                                 _loc10_ -= 16;
                                                                                 si32(1,_loc10_ + 4);
                                                                                 si32(_loc45_,_loc10_);
                                                                                 ESP = _loc10_;
                                                                                 F___lshift_D2A();
                                                                                 _loc10_ += 16;
                                                                                 _loc45_ = int(eax);
                                                                                 _loc47_ = li32(_loc12_ + 16);
                                                                                 if((_loc26_ = li32(_loc45_ + 16)) != _loc47_)
                                                                                 {
                                                                                    _loc17_ = int(_loc26_ - _loc47_);
                                                                                    addr4826:
                                                                                    _loc47_ = _loc42_;
                                                                                    if(_loc17_ <= 0)
                                                                                    {
                                                                                       if(_loc17_ == 0)
                                                                                       {
                                                                                       }
                                                                                       addr4853:
                                                                                       _loc34_ = int(_loc19_ + 1);
                                                                                       while(true)
                                                                                       {
                                                                                          _loc19_ = int(_loc34_ + -1);
                                                                                          _loc29_ = li8(_loc34_ - 2);
                                                                                          _loc34_ = _loc19_;
                                                                                          if(_loc29_ == 48)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr4924);
                                                                                       }
                                                                                    }
                                                                                    _loc26_ = int(_loc34_ + 4);
                                                                                    while(true)
                                                                                    {
                                                                                       if((_loc42_ = li8((_loc34_ = _loc19_) - 1)) != 57)
                                                                                       {
                                                                                          si8(_loc29_ = int(_loc42_ + 1),_loc34_ - 1);
                                                                                          _loc42_ = _loc47_;
                                                                                          _loc19_ = _loc34_;
                                                                                          break;
                                                                                       }
                                                                                       _loc19_ = int(_loc34_ + -1);
                                                                                       if(_loc26_ == _loc19_)
                                                                                       {
                                                                                          si8(49,_loc19_);
                                                                                          _loc40_ += 1;
                                                                                          _loc42_ = _loc47_;
                                                                                          _loc19_ = _loc34_;
                                                                                          break;
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr4924);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc32_ = int((_loc39_ = int((_loc29_ = _loc47_ << 2) + _loc45_)) + 20);
                                                                                    _loc18_ = int((_loc29_ += _loc12_) + 16);
                                                                                    _loc17_ = int(_loc45_ + 20);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc47_ = li32(_loc18_);
                                                                                       if((_loc26_ = li32(_loc32_ - 4)) == _loc47_)
                                                                                       {
                                                                                          _loc32_ += -4;
                                                                                          _loc18_ += -4;
                                                                                          if(uint(_loc32_) <= uint(_loc17_))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       _loc17_ = -1;
                                                                                       if(uint(_loc26_) >= uint(_loc47_))
                                                                                       {
                                                                                          _loc17_ = 1;
                                                                                       }
                                                                                       §§goto(addr4826);
                                                                                    }
                                                                                 }
                                                                                 _loc29_ = _loc30_ & 1;
                                                                                 _loc47_ = _loc42_;
                                                                                 if(_loc29_ == 0)
                                                                                 {
                                                                                    §§goto(addr4853);
                                                                                 }
                                                                                 §§goto(addr4924);
                                                                              }
                                                                              §§goto(addr4826);
                                                                           }
                                                                           §§goto(addr4853);
                                                                        }
                                                                        else
                                                                        {
                                                                           if(_loc32_ >= 1)
                                                                           {
                                                                              _loc10_ -= 16;
                                                                              si32(_loc32_,_loc10_ + 4);
                                                                              si32(_loc37_,_loc10_);
                                                                              ESP = _loc10_;
                                                                              F___lshift_D2A();
                                                                              _loc10_ += 16;
                                                                              _loc37_ = int(eax);
                                                                           }
                                                                           _loc18_ = _loc37_;
                                                                           if(_loc19_ != 0)
                                                                           {
                                                                              si32(li32(_loc37_ + 4),_loc10_ -= 16);
                                                                              ESP = _loc10_;
                                                                              F___Balloc_D2A();
                                                                              _loc10_ += 16;
                                                                              _loc10_ -= 16;
                                                                              si32(_loc39_ = int((_loc39_ = li32(_loc37_ + 16) << 2) + 8),_loc10_ + 8);
                                                                              si32(_loc39_ = int(_loc37_ + 12),_loc10_ + 4);
                                                                              si32(_loc39_ = int(int(eax) + 12),_loc10_);
                                                                              ESP = _loc10_;
                                                                              Fmemcpy();
                                                                              _loc10_ = int((_loc10_ += 16) - 16);
                                                                              si32(1,_loc10_ + 4);
                                                                              si32(int(eax),_loc10_);
                                                                              ESP = _loc10_;
                                                                              F___lshift_D2A();
                                                                              _loc10_ += 16;
                                                                              _loc18_ = int(eax);
                                                                           }
                                                                           _loc19_ = 1;
                                                                           if(_loc26_ >= _loc19_)
                                                                           {
                                                                              _loc19_ = 0;
                                                                           }
                                                                           _loc16_ = (_loc32_ = _loc47_ & 1) | _loc19_;
                                                                           _loc15_ = int(_loc17_ + -1);
                                                                           _loc19_ = int(_loc34_ + 5);
                                                                           _loc47_ = _loc37_;
                                                                           _loc37_ = _loc18_;
                                                                           while(true)
                                                                           {
                                                                              _loc10_ -= 16;
                                                                              si32(_loc12_,_loc10_ + 4);
                                                                              si32(_loc45_,_loc10_);
                                                                              ESP = _loc10_;
                                                                              F___quorem_D2A();
                                                                              _loc10_ += 16;
                                                                              _loc17_ = int(eax);
                                                                              _loc33_ = li32(_loc47_ + 16);
                                                                              _loc30_ = li32(_loc45_ + 16);
                                                                              _loc18_ = int(_loc17_ + 48);
                                                                              if(_loc30_ != _loc33_)
                                                                              {
                                                                                 _loc30_ -= _loc33_;
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc29_ = _loc33_ << 2;
                                                                                 _loc35_ = int((_loc41_ = int(_loc45_ + 20)) + _loc29_);
                                                                                 _loc27_ = int((_loc29_ = int(_loc47_ + _loc29_)) + 16);
                                                                                 do
                                                                                 {
                                                                                    _loc33_ = li32(_loc27_);
                                                                                    if((_loc48_ = li32(_loc35_ - 4)) != _loc33_)
                                                                                    {
                                                                                       _loc30_ = -1;
                                                                                       if(uint(_loc48_) >= uint(_loc33_))
                                                                                       {
                                                                                          _loc30_ = 1;
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    _loc35_ += -4;
                                                                                    _loc27_ += -4;
                                                                                    _loc30_ = 0;
                                                                                 }
                                                                                 while(uint(_loc35_) > uint(_loc41_));
                                                                                 
                                                                              }
                                                                              _loc10_ -= 16;
                                                                              si32(_loc37_,_loc10_ + 4);
                                                                              si32(_loc12_,_loc10_);
                                                                              ESP = _loc10_;
                                                                              F___diff_D2A();
                                                                              _loc10_ += 16;
                                                                              if((_loc29_ = li32((_loc48_ = int(eax)) + 12)) != 0)
                                                                              {
                                                                                 _loc33_ = 1;
                                                                                 if(_loc48_ != 0)
                                                                                 {
                                                                                    if((_loc33_ = li32(_loc48_ + 4)) >= 10)
                                                                                    {
                                                                                       _loc10_ -= 16;
                                                                                       si32(_loc48_,_loc10_);
                                                                                       ESP = _loc10_;
                                                                                       F_idalloc();
                                                                                       _loc10_ += 16;
                                                                                       _loc33_ = 1;
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       if((_loc29_ = li32(___isthreaded)) != 0)
                                                                                       {
                                                                                          _loc10_ -= 16;
                                                                                          si32(___gdtoa_locks,_loc10_);
                                                                                          ESP = _loc10_;
                                                                                          F__pthread_mutex_lock();
                                                                                          _loc10_ += 16;
                                                                                          _loc33_ = li32(_loc48_ + 4);
                                                                                       }
                                                                                       _loc29_ = _loc33_ << 2;
                                                                                       si32(_loc29_ = li32(_loc39_ = int(_freelist + _loc29_)),_loc48_);
                                                                                       si32(_loc48_,_loc39_);
                                                                                       _loc33_ = 1;
                                                                                       if((_loc29_ = li32(___isthreaded)) != 0)
                                                                                       {
                                                                                          _loc10_ -= 16;
                                                                                          si32(___gdtoa_locks,_loc10_);
                                                                                          ESP = _loc10_;
                                                                                          F__pthread_mutex_unlock();
                                                                                          _loc10_ += 16;
                                                                                          _loc33_ = 1;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc33_ = li32(_loc48_ + 16);
                                                                                 if((_loc41_ = li32(_loc45_ + 16)) != _loc33_)
                                                                                 {
                                                                                    _loc33_ = int(_loc41_ - _loc33_);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    _loc29_ = _loc33_ << 2;
                                                                                    _loc27_ = int((_loc41_ = int(_loc45_ + 20)) + _loc29_);
                                                                                    _loc35_ = int((_loc29_ = int(_loc48_ + _loc29_)) + 16);
                                                                                    while(true)
                                                                                    {
                                                                                       _loc31_ = li32(_loc35_);
                                                                                       if((_loc28_ = li32(_loc27_ - 4)) == _loc31_)
                                                                                       {
                                                                                          _loc27_ += -4;
                                                                                          _loc35_ += -4;
                                                                                          _loc33_ = 0;
                                                                                          if(uint(_loc27_) <= uint(_loc41_))
                                                                                          {
                                                                                             addr4002:
                                                                                             if(_loc48_ != 0)
                                                                                             {
                                                                                                addr4006:
                                                                                                if((_loc41_ = li32(_loc48_ + 4)) >= 10)
                                                                                                {
                                                                                                   _loc10_ -= 16;
                                                                                                   si32(_loc48_,_loc10_);
                                                                                                   ESP = _loc10_;
                                                                                                   F_idalloc();
                                                                                                   _loc10_ += 16;
                                                                                                   break;
                                                                                                }
                                                                                                if((_loc29_ = li32(___isthreaded)) != 0)
                                                                                                {
                                                                                                   _loc10_ -= 16;
                                                                                                   si32(___gdtoa_locks,_loc10_);
                                                                                                   ESP = _loc10_;
                                                                                                   F__pthread_mutex_lock();
                                                                                                   _loc10_ += 16;
                                                                                                   _loc41_ = li32(_loc48_ + 4);
                                                                                                }
                                                                                                _loc29_ = _loc41_ << 2;
                                                                                                si32(_loc29_ = li32(_loc39_ = int(_freelist + _loc29_)),_loc48_);
                                                                                                si32(_loc48_,_loc39_);
                                                                                                if((_loc29_ = li32(___isthreaded)) != 0)
                                                                                                {
                                                                                                   _loc10_ -= 16;
                                                                                                   si32(___gdtoa_locks,_loc10_);
                                                                                                   ESP = _loc10_;
                                                                                                   F__pthread_mutex_unlock();
                                                                                                   _loc10_ += 16;
                                                                                                   break;
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue;
                                                                                       }
                                                                                       _loc33_ = -1;
                                                                                       if(uint(_loc28_) >= uint(_loc31_))
                                                                                       {
                                                                                          _loc33_ = 1;
                                                                                       }
                                                                                       §§goto(addr4006);
                                                                                    }
                                                                                    if(_loc42_ != (_loc41_ = 1))
                                                                                    {
                                                                                       _loc41_ = 0;
                                                                                    }
                                                                                    if(_loc33_ == 0)
                                                                                    {
                                                                                       _loc48_ = 0;
                                                                                    }
                                                                                    if((_loc29_ = (_loc29_ = _loc48_ | _loc41_) | _loc16_) == 0)
                                                                                    {
                                                                                       if(_loc18_ != 57)
                                                                                       {
                                                                                          if(_loc30_ >= 1)
                                                                                          {
                                                                                             _loc18_ = int(_loc17_ + 49);
                                                                                          }
                                                                                          si8(_loc18_,_loc19_ - 1);
                                                                                          _loc42_ = _loc47_;
                                                                                       }
                                                                                       §§goto(addr4924);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr4167:
                                                                                       if(_loc30_ >= 0)
                                                                                       {
                                                                                          if(_loc42_ != (_loc41_ = 1))
                                                                                          {
                                                                                             _loc41_ = 0;
                                                                                          }
                                                                                          if(_loc30_ == 0)
                                                                                          {
                                                                                             _loc48_ = 0;
                                                                                          }
                                                                                          if((_loc29_ = (_loc29_ = _loc48_ | _loc41_) | _loc32_) != 0)
                                                                                          {
                                                                                             if(_loc33_ <= 0)
                                                                                             {
                                                                                                _loc30_ = _loc18_;
                                                                                                addr4436:
                                                                                                si8(_loc30_,_loc19_ - 1);
                                                                                                if(_loc15_ != 0)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§goto(addr4695);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc48_ = _loc18_;
                                                                                                if(_loc26_ == 0)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(_loc18_ == 57)
                                                                                                {
                                                                                                   addr4417:
                                                                                                   si8(57,_loc19_ - 1);
                                                                                                   §§goto(addr4826);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   si8(_loc29_ = int(_loc18_ + 1),_loc19_ - 1);
                                                                                                   _loc42_ = _loc47_;
                                                                                                   §§goto(addr4924);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr4924);
                                                                                          }
                                                                                          §§goto(addr4417);
                                                                                       }
                                                                                       if((_loc29_ = li32(_loc45_ + 20)) == 0)
                                                                                       {
                                                                                          _loc30_ = _loc18_;
                                                                                          _loc48_ = _loc18_;
                                                                                          if(li32(_loc45_ + 16) >= 2)
                                                                                          {
                                                                                             addr4223:
                                                                                             if(_loc42_ >= 2)
                                                                                             {
                                                                                                _loc48_ = _loc30_;
                                                                                                if(_loc26_ != 0)
                                                                                                {
                                                                                                   if(_loc26_ == 2)
                                                                                                   {
                                                                                                      §§goto(addr4436);
                                                                                                   }
                                                                                                   §§goto(addr4924);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             _loc48_ = _loc30_;
                                                                                             if(_loc33_ >= 1)
                                                                                             {
                                                                                                _loc10_ -= 16;
                                                                                                si32(1,_loc10_ + 4);
                                                                                                si32(_loc45_,_loc10_);
                                                                                                ESP = _loc10_;
                                                                                                F___lshift_D2A();
                                                                                                _loc10_ += 16;
                                                                                                _loc45_ = int(eax);
                                                                                                _loc42_ = li32(_loc12_ + 16);
                                                                                                if((_loc26_ = li32(_loc45_ + 16)) != _loc42_)
                                                                                                {
                                                                                                   _loc32_ = int(_loc26_ - _loc42_);
                                                                                                   addr4362:
                                                                                                   if(_loc32_ <= 0)
                                                                                                   {
                                                                                                      _loc48_ = _loc30_;
                                                                                                      if(_loc32_ == 0)
                                                                                                      {
                                                                                                         addr4372:
                                                                                                         _loc29_ = _loc18_ & 1;
                                                                                                         _loc48_ = _loc30_;
                                                                                                         if(_loc29_ != 0)
                                                                                                         {
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   if((_loc48_ = int(_loc17_ + 49)) != 58)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr4417);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   _loc15_ = int((_loc29_ = int((_loc39_ = _loc42_ << 2) + _loc45_)) + 20);
                                                                                                   _loc16_ = int((_loc29_ = int(_loc39_ + _loc12_)) + 16);
                                                                                                   _loc32_ = int(_loc45_ + 20);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc26_ = li32(_loc16_);
                                                                                                      if((_loc42_ = li32(_loc15_ - 4)) == _loc26_)
                                                                                                      {
                                                                                                         _loc15_ += -4;
                                                                                                         _loc16_ += -4;
                                                                                                         if(uint(_loc15_) <= uint(_loc32_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      _loc32_ = -1;
                                                                                                      if(uint(_loc42_) >= uint(_loc26_))
                                                                                                      {
                                                                                                         _loc32_ = 1;
                                                                                                      }
                                                                                                      §§goto(addr4362);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr4372);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       _loc30_ = _loc18_;
                                                                                       §§goto(addr4223);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr4002);
                                                                              }
                                                                              §§goto(addr4167);
                                                                           }
                                                                           si8(_loc48_,_loc19_ - 1);
                                                                           _loc42_ = _loc47_;
                                                                           §§goto(addr4924);
                                                                        }
                                                                     }
                                                                     §§goto(addr4924);
                                                                  }
                                                                  if(_loc17_ >= 0)
                                                                  {
                                                                     _loc10_ -= 16;
                                                                     si32(0,_loc10_ + 8);
                                                                     si32(5,_loc10_ + 4);
                                                                     si32(_loc12_,_loc10_);
                                                                     ESP = _loc10_;
                                                                     F___multadd_D2A();
                                                                     _loc10_ += 16;
                                                                     _loc26_ = li32((_loc12_ = int(eax)) + 16);
                                                                     if((_loc34_ = li32(_loc45_ + 16)) != _loc26_)
                                                                     {
                                                                        _loc34_ -= _loc26_;
                                                                        addr3411:
                                                                        _loc13_ = _loc40_;
                                                                        _loc11_ = _loc12_;
                                                                        if(_loc34_ > 0)
                                                                        {
                                                                        }
                                                                        §§goto(addr3429);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc34_ = int(_loc45_ + 20);
                                                                        _loc47_ = _loc26_ << 2;
                                                                        while(true)
                                                                        {
                                                                           _loc42_ = li32((_loc29_ = int(_loc12_ + _loc47_)) + 16);
                                                                           if((_loc26_ = li32((_loc29_ = int(_loc45_ + _loc47_)) + 16)) == _loc42_)
                                                                           {
                                                                              _loc47_ += -4;
                                                                              if((uint(_loc29_ = int(_loc34_ + _loc47_))) <= uint(_loc34_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           _loc34_ = -1;
                                                                           if(uint(_loc26_) >= uint(_loc42_))
                                                                           {
                                                                              _loc34_ = 1;
                                                                           }
                                                                           §§goto(addr3411);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr3419);
                                                               }
                                                               §§goto(addr3448);
                                                            }
                                                            §§goto(addr2955);
                                                         }
                                                         §§goto(addr2964);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc10_ -= 16;
                                                      si32(_loc28_,_loc10_ + 4);
                                                      si32(_loc45_,_loc10_);
                                                      ESP = _loc10_;
                                                      F___pow5mult_D2A();
                                                      _loc10_ += 16;
                                                      _loc35_ = int(eax);
                                                   }
                                                }
                                                §§goto(addr2567);
                                             }
                                          }
                                          §§goto(addr2136);
                                       }
                                    }
                                 }
                                 _loc29_ = (_loc29_ = int(_loc14_ - 104)) | 4;
                                 si32(_loc11_,_loc29_);
                                 si32(_loc9_,_loc14_ - 104);
                                 _loc20_ = Number(_loc12_);
                                 _loc24_ = lf64(_loc14_ - 104);
                                 sf64(_loc20_ = Number((_loc20_ *= _loc24_) + 7),_loc14_ - 112);
                                 _loc12_ = int((_loc29_ = li32(_loc29_ = (_loc29_ = int(_loc14_ - 112)) | 4)) + -54525952);
                                 _loc19_ = li32(_loc14_ - 112);
                                 if(_loc37_ == 0)
                                 {
                                    si32(_loc12_,(_loc29_ = int(_loc14_ - 152)) | 4);
                                    si32(_loc19_,_loc14_ - 152);
                                    _loc25_ = Number(_loc24_ + -5);
                                    _loc37_ = 0;
                                    _loc1_ = lf64(_loc14_ - 152);
                                    _loc11_ = _loc37_;
                                    if(_loc25_ <= _loc1_)
                                    {
                                       _loc12_ = _loc37_ = 0;
                                       if(_loc25_ >= Number(-_loc1_))
                                       {
                                          §§goto(addr1822);
                                       }
                                       §§goto(addr3419);
                                    }
                                    §§goto(addr3429);
                                 }
                                 else if(_loc16_ != 0)
                                 {
                                    si32(_loc12_,(_loc29_ = int(_loc14_ - 120)) | 4);
                                    si32(_loc19_,_loc14_ - 120);
                                    _loc2_ = 0.5 / lf64((_loc29_ = int((_loc29_ = _loc37_ << 3) + ___tens_D2A)) - 8) - lf64(_loc14_ - 120);
                                    _loc19_ = int(_loc34_ + 5);
                                    _loc8_ = 1;
                                    while(true)
                                    {
                                       _loc29_ = (_loc29_ = int(_loc14_ - 128)) | 4;
                                       si32(_loc11_,_loc29_);
                                       si32(_loc9_,_loc14_ - 128);
                                       var _loc38_:int;
                                       si8(_loc39_ = int((_loc38_ = _loc20_ = lf64(_loc14_ - 128)) + 48),_loc19_ - 1);
                                       _loc23_ = Number(_loc38_);
                                       _loc3_ = _loc20_ - _loc23_;
                                       if(_loc3_ >= _loc2_)
                                       {
                                          _loc12_ = _loc13_;
                                          if(Number(1 - _loc3_) >= _loc2_)
                                          {
                                             if(_loc8_ < _loc37_)
                                             {
                                                continue;
                                             }
                                             §§goto(addr1822);
                                          }
                                          §§goto(addr2065);
                                       }
                                       break;
                                    }
                                    §§goto(addr5291);
                                 }
                                 else
                                 {
                                    si32(_loc12_,(_loc29_ = int(_loc14_ - 144)) | 4);
                                    si8(_loc39_ = int((_loc29_ = int(_loc24_)) + 48),_loc43_);
                                    si32(_loc19_,_loc14_ - 144);
                                    _loc3_ = _loc24_ - _loc29_;
                                    _loc8_ = 1;
                                    if(_loc3_ != 0)
                                    {
                                       _loc8_ = _loc37_;
                                    }
                                    _loc4_ = lf64(_loc14_ - 144);
                                    _loc19_ = int(_loc43_ + 1);
                                    if(_loc8_ != 1)
                                    {
                                       _loc19_ = int(_loc34_ + 5);
                                       _loc9_ = 1;
                                       _loc12_ = 2;
                                       do
                                       {
                                          si8(_loc38_ = (_loc39_ = int(_loc20_ = Number(_loc3_ * 10))) + 48,_loc19_);
                                          _loc23_ = Number(_loc39_);
                                          _loc3_ = _loc20_ - _loc23_;
                                          _loc36_ = _loc12_;
                                          if(_loc3_ != 0)
                                          {
                                             _loc36_ = _loc8_;
                                          }
                                          _loc12_ += 1;
                                          _loc9_ += 1;
                                          _loc19_ += 1;
                                          _loc8_ = _loc36_;
                                       }
                                       while(_loc9_ != _loc36_);
                                       
                                    }
                                    _loc20_ = lf64((_loc29_ = int((_loc29_ = _loc37_ << 3) + ___tens_D2A)) - 8);
                                    _loc20_ = Number((_loc22_ = Number(_loc4_ * _loc20_)) + 0.5);
                                    _loc12_ = _loc13_;
                                    if(_loc3_ <= _loc20_)
                                    {
                                       _loc20_ = Number(0.5 - _loc22_);
                                       if(!(_loc3_ >= _loc20_ | _loc3_ != _loc3_ | _loc20_ != _loc20_))
                                       {
                                          _loc40_ = int(_loc19_ + 1);
                                          do
                                          {
                                             _loc19_ = int(_loc40_ + -1);
                                             _loc29_ = li8(_loc40_ - 2);
                                             _loc40_ = _loc19_;
                                          }
                                          while(_loc29_ == 48);
                                          
                                       }
                                       else
                                       {
                                          §§goto(addr1822);
                                       }
                                       addr5291:
                                       if(_loc45_ != 0)
                                       {
                                          if((_loc40_ = li32(_loc45_ + 4)) >= 10)
                                          {
                                             _loc10_ -= 16;
                                             si32(_loc45_,_loc10_);
                                             ESP = _loc10_;
                                             F_idalloc();
                                             _loc10_ += 16;
                                          }
                                          else
                                          {
                                             if((_loc29_ = li32(___isthreaded)) != 0)
                                             {
                                                _loc10_ -= 16;
                                                si32(___gdtoa_locks,_loc10_);
                                                ESP = _loc10_;
                                                F__pthread_mutex_lock();
                                                _loc10_ += 16;
                                                _loc40_ = li32(_loc45_ + 4);
                                             }
                                             _loc29_ = _loc40_ << 2;
                                             si32(_loc39_ = li32(_loc29_ = int(_freelist + _loc29_)),_loc45_);
                                             si32(_loc45_,_loc29_);
                                             if((_loc29_ = li32(___isthreaded)) != 0)
                                             {
                                                _loc10_ -= 16;
                                                si32(___gdtoa_locks,_loc10_);
                                                ESP = _loc10_;
                                                F__pthread_mutex_unlock();
                                                _loc10_ += 16;
                                             }
                                          }
                                       }
                                       si8(0,_loc19_);
                                       si32(_loc29_ = int(_loc13_ + 1),_loc44_);
                                       if(_loc46_ != 0)
                                       {
                                          si32(_loc19_,_loc46_);
                                       }
                                       §§goto(addr5425);
                                    }
                                 }
                                 §§goto(addr2065);
                              }
                           }
                        }
                        §§goto(addr1822);
                     }
                     §§goto(addr880);
                  }
                  else
                  {
                     §§goto(addr806);
                  }
               }
               else
               {
                  _loc16_ = 0;
               }
               §§goto(addr825);
            }
            §§goto(addr825);
         }
      }
      addr5425:
      eax = _loc43_;
      ESP = _loc10_ = _loc14_;
   }
}
