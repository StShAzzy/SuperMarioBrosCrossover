package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___d2b_D2A;
   import sample.libgme.F___error;
   import sample.libgme.F___increment_D2A;
   import sample.libgme.F___lshift_D2A;
   import sample.libgme.F__pthread_mutex_lock;
   import sample.libgme.F__pthread_mutex_unlock;
   import sample.libgme.___gdtoa_locks;
   import sample.libgme.___isthreaded;
   import sample.libgme.eax;
   
   public function F_rvOK() : void
   {
      var _loc10_:int = 0;
      var _loc22_:* = 0;
      var _loc1_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:* = 0;
      var _loc17_:* = 0;
      var _loc21_:* = 0;
      var _loc20_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc19_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:int = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc23_:int = 0;
      var _loc5_:* = int((_loc5_ = int((_loc10_ = ESP) - 16)) - 16);
      var _loc6_:*;
      si32(_loc6_ = int(_loc10_ - 4),_loc5_ + 12);
      si32(_loc6_ = int(_loc10_ - 8),_loc5_ + 8);
      var _loc18_:*;
      sf64(_loc18_ = lf64(_loc10_),_loc5_);
      ESP = _loc5_;
      F___d2b_D2A();
      _loc5_ += 16;
      _loc23_ = eax;
      _loc21_ = li32(_loc22_ = li32(_loc10_ + 8));
      si32(_loc20_ = int((_loc6_ = li32(_loc10_ - 4)) - _loc21_),_loc10_ - 4);
      si32(_loc19_ = (_loc6_ = li32(_loc10_ - 8)) + _loc20_,_loc10_ - 8);
      _loc17_ = li32(_loc10_ + 28);
      _loc16_ = li32(_loc10_ + 20);
      _loc15_ = li32(_loc10_ + 16);
      _loc1_ = li32(_loc10_ + 12);
      if(_loc20_ <= 0)
      {
         _loc11_ = 0;
         if(_loc16_ != 0)
         {
            addr876:
            _loc12_ = _loc7_ = 0;
            if(_loc20_ <= -1)
            {
               _loc5_ -= 16;
               si32(_loc23_,_loc5_);
               si32(_loc6_ = int(0 - _loc20_),_loc5_ + 4);
               ESP = _loc5_;
               F___lshift_D2A();
               _loc7_ = 0;
               _loc5_ += 16;
               _loc23_ = eax;
               _loc12_ = _loc7_;
            }
            addr921:
            if((_loc11_ = li32(_loc22_ + 4)) > _loc19_)
            {
               si32(_loc11_,_loc10_ - 8);
               if((_loc9_ = int(_loc11_ - _loc19_)) <= _loc21_)
               {
                  if((_loc6_ = li32(_loc22_ + 16)) == 0)
                  {
                     if((_loc19_ = _loc9_ + -1) >= 1)
                     {
                        if(_loc12_ == 0)
                        {
                           _loc22_ = _loc19_ >> 5;
                           if(_loc22_ <= (_loc11_ = li32(_loc23_ + 16)))
                           {
                              _loc11_ = _loc22_;
                              if(_loc22_ < _loc12_)
                              {
                                 _loc12_ = _loc19_ & 31;
                                 _loc11_ = _loc22_;
                                 if(_loc12_ != 0)
                                 {
                                    _loc12_ = 1;
                                    _loc11_ = _loc22_;
                                    var _loc13_:*;
                                    if((_loc13_ = int((_loc6_ = li32((_loc6_ = int(_loc23_ + (_loc22_ << 2))) + 20)) >>> _loc12_)) << _loc12_ == _loc6_)
                                    {
                                    }
                                    §§goto(addr1067);
                                 }
                              }
                           }
                           do
                           {
                              _loc12_ = 0;
                              if(_loc11_ <= 0)
                              {
                                 break;
                              }
                              _loc11_ += -1;
                              _loc12_ = 1;
                           }
                           while(li32((_loc6_ = int(_loc23_ + (_loc11_ << 2))) + 16) == 0);
                           
                        }
                     }
                     addr1067:
                     _loc6_ = _loc12_ | _loc16_;
                     _loc11_ = 0;
                     if(_loc6_ != 0)
                     {
                        _loc11_ = int(_loc23_ + 20);
                        _loc16_ = li32(_loc6_ = int(_loc11_ + ((_loc6_ = _loc19_ >> 5) << 2)));
                        _loc4_ = li32(_loc23_ + 16);
                        _loc14_ = _loc9_ >> 5;
                        _loc22_ = _loc11_;
                        if(_loc4_ > _loc14_)
                        {
                           _loc8_ = int((_loc6_ = int(_loc23_ + (_loc4_ << 2))) + 20);
                           if((_loc20_ = _loc9_ & 31) == 0)
                           {
                              _loc22_ = _loc11_;
                              if(_loc14_ < _loc4_)
                              {
                                 _loc9_ = _loc14_ << 2;
                                 _loc22_ = int(_loc23_ + 20);
                                 do
                                 {
                                    si32(_loc6_ = li32(_loc6_ = int(_loc22_ + _loc9_)),_loc22_);
                                 }
                                 while((uint(_loc6_ = int((_loc22_ += 4) + _loc9_))) < uint(_loc8_));
                                 
                              }
                           }
                           else
                           {
                              _loc3_ = int(_loc23_ + (_loc14_ << 2));
                              _loc9_ = int((_loc6_ = li32(_loc3_ + 20)) >>> _loc20_);
                              _loc22_ = _loc11_;
                              if(int(_loc14_ + 1) < _loc4_)
                              {
                                 _loc4_ = int(32 - _loc20_);
                                 _loc14_ = int(_loc3_ + 24);
                                 _loc22_ = int(_loc23_ + 20);
                                 do
                                 {
                                    si32(_loc6_ = (_loc6_ = (_loc6_ = li32(_loc14_)) << _loc4_) | _loc9_,_loc22_);
                                    _loc9_ = int((_loc6_ = li32(_loc14_)) >>> _loc20_);
                                    _loc14_ += 4;
                                    _loc22_ += 4;
                                 }
                                 while(uint(_loc14_) < uint(_loc8_));
                                 
                              }
                              si32(_loc9_,_loc22_);
                              if(_loc9_ != 0)
                              {
                                 _loc22_ += 4;
                              }
                           }
                        }
                        si32(_loc6_ = (_loc6_ = int(_loc22_ - _loc11_)) >> 2,_loc23_ + 16);
                        if(_loc6_ == 0)
                        {
                           si32(0,_loc11_);
                        }
                        _loc6_ = _loc19_ & 31;
                        _loc6_ = 1 << _loc6_;
                        _loc16_ &= _loc6_;
                        si32(2,_loc17_);
                        if(_loc16_ != 0)
                        {
                           _loc5_ -= 16;
                           si32(_loc23_,_loc5_);
                           ESP = _loc5_;
                           F___increment_D2A();
                           _loc7_ = 96;
                           _loc5_ += 16;
                           _loc23_ = eax;
                        }
                        else if((_loc6_ = _loc16_ | _loc12_) != 0)
                        {
                           _loc7_ = 80;
                        }
                        §§goto(addr1394);
                        _loc21_ = int((_loc6_ = int((_loc6_ = (_loc6_ = (_loc6_ = int(_loc21_ + -1)) >> 5) << 2) + _loc15_)) + 4);
                        if(uint(_loc1_) < uint(_loc21_))
                        {
                           do
                           {
                              si32(0,_loc1_);
                              _loc1_ += 4;
                           }
                           while(uint(_loc1_) < uint(_loc21_));
                           
                        }
                        si32(_loc6_ = (_loc6_ = li32(_loc17_)) | _loc7_,_loc17_);
                        _loc11_ = 1;
                        §§goto(addr1512);
                     }
                     addr1512:
                     if(_loc23_ != 0)
                     {
                        if((_loc17_ = li32(_loc23_ + 4)) >= 10)
                        {
                           _loc5_ -= 16;
                           si32(_loc23_,_loc5_);
                           ESP = _loc5_;
                           F_idalloc();
                           _loc5_ += 16;
                        }
                        else
                        {
                           if((_loc6_ = li32(___isthreaded)) != 0)
                           {
                              _loc5_ -= 16;
                              si32(___gdtoa_locks,_loc5_);
                              ESP = _loc5_;
                              F__pthread_mutex_lock();
                              _loc5_ += 16;
                              _loc17_ = li32(_loc23_ + 4);
                           }
                           _loc6_ = _loc17_ << 2;
                           si32(_loc13_ = li32(_loc6_ = int(_freelist + _loc6_)),_loc23_);
                           si32(_loc23_,_loc6_);
                           if((_loc6_ = li32(___isthreaded)) != 0)
                           {
                              _loc5_ -= 16;
                              si32(___gdtoa_locks,_loc5_);
                              ESP = _loc5_;
                              F__pthread_mutex_unlock();
                              _loc5_ += 16;
                           }
                        }
                     }
                     eax = _loc11_;
                     ESP = _loc5_ = _loc10_;
                     return;
                  }
                  §§goto(addr1394);
               }
               si32(_loc7_ = 0,_loc23_ + 16);
               si32(80,_loc17_);
            }
            else if((_loc12_ = li32(_loc22_ + 8)) < _loc19_)
            {
               si32(_loc6_ = int(_loc12_ + 1),_loc10_ - 8);
               si32(163,_loc17_);
               ESP = _loc5_;
               F___error();
               si32(34,int(eax));
               si32(_loc7_ = 0,_loc23_ + 16);
            }
         }
         §§goto(addr1394);
      }
      else
      {
         if(_loc21_ == 53)
         {
            _loc11_ = 0;
            if(_loc16_ != 0)
            {
               _loc11_ = 0;
               if(li32(_loc22_ + 12) == 1)
               {
                  addr269:
                  if(_loc20_ >= 1)
                  {
                     _loc14_ = _loc20_ >> 5;
                     if(_loc14_ <= (_loc7_ = li32(_loc23_ + 16)))
                     {
                        _loc7_ = _loc14_;
                        if(_loc14_ < _loc4_)
                        {
                           _loc12_ = _loc20_ & 31;
                           _loc7_ = _loc14_;
                           if(_loc12_ != 0)
                           {
                              _loc12_ = 1;
                              _loc7_ = _loc14_;
                              if((_loc13_ = int((_loc6_ = li32((_loc6_ = int(_loc23_ + (_loc14_ << 2))) + 20)) >>> _loc12_)) << _loc12_ == _loc6_)
                              {
                                 addr332:
                                 do
                                 {
                                    _loc12_ = 0;
                                    if(_loc7_ <= 0)
                                    {
                                       break;
                                    }
                                    _loc7_ += -1;
                                    _loc12_ = 1;
                                 }
                                 while(li32((_loc6_ = int(_loc23_ + (_loc7_ << 2))) + 16) == 0);
                                 
                              }
                              _loc8_ = _loc7_ = int(_loc23_ + 20);
                              if(_loc4_ > _loc14_)
                              {
                                 _loc9_ = int((_loc6_ = int(_loc23_ + (_loc4_ << 2))) + 20);
                                 _loc3_ = _loc20_ & 31;
                                 if(_loc3_ == 0)
                                 {
                                    _loc8_ = _loc7_;
                                    if(_loc14_ < _loc4_)
                                    {
                                       _loc20_ = _loc14_ << 2;
                                       _loc8_ = int(_loc23_ + 20);
                                       do
                                       {
                                          si32(_loc6_ = li32(_loc6_ = int(_loc8_ + _loc20_)),_loc8_);
                                       }
                                       while((uint(_loc6_ = int((_loc8_ += 4) + _loc20_))) < uint(_loc9_));
                                       
                                    }
                                 }
                                 else
                                 {
                                    _loc2_ = _loc23_ + (_loc14_ << 2);
                                    _loc20_ = int((_loc6_ = li32(_loc2_ + 20)) >>> _loc3_);
                                    _loc8_ = _loc7_;
                                    if(int(_loc14_ + 1) < _loc4_)
                                    {
                                       _loc4_ = int(32 - _loc3_);
                                       _loc14_ = int(_loc2_ + 24);
                                       _loc8_ = int(_loc23_ + 20);
                                       do
                                       {
                                          si32(_loc6_ = (_loc6_ = (_loc6_ = li32(_loc14_)) << _loc4_) | _loc20_,_loc8_);
                                          _loc20_ = int((_loc6_ = li32(_loc14_)) >>> _loc3_);
                                          _loc14_ += 4;
                                          _loc8_ += 4;
                                       }
                                       while(uint(_loc14_) < uint(_loc9_));
                                       
                                    }
                                    si32(_loc20_,_loc8_);
                                    if(_loc20_ != 0)
                                    {
                                       _loc8_ += 4;
                                    }
                                 }
                              }
                              si32(_loc6_ = (_loc6_ = int(_loc8_ - _loc7_)) >> 2,_loc23_ + 16);
                              if(_loc6_ == 0)
                              {
                                 si32(0,_loc7_);
                              }
                              if(_loc11_ == 0)
                              {
                                 _loc7_ = 0;
                                 if(_loc12_ != _loc7_)
                                 {
                                    _loc7_ = 16;
                                 }
                                 §§goto(addr921);
                              }
                              else
                              {
                                 _loc5_ -= 16;
                                 si32(_loc23_,_loc5_);
                                 ESP = _loc5_;
                                 F___increment_D2A();
                                 _loc5_ += 16;
                                 _loc4_ = (_loc14_ = li32((_loc6_ = int((_loc9_ = (_loc11_ = li32((_loc23_ = eax) + 16)) << 2) + _loc23_)) + 16)) << 16;
                                 if(uint(_loc14_) >= 65536)
                                 {
                                    _loc4_ = _loc14_;
                                 }
                                 _loc20_ = _loc4_ << 8;
                                 if(uint(_loc4_) >= 16777216)
                                 {
                                    _loc20_ = _loc4_;
                                 }
                                 _loc8_ = _loc20_ << 4;
                                 if(uint(_loc20_) >= 268435456)
                                 {
                                    _loc8_ = _loc20_;
                                 }
                                 _loc7_ = _loc8_ << 2;
                                 if(uint(_loc8_) >= 1073741824)
                                 {
                                    _loc7_ = _loc8_;
                                 }
                                 _loc3_ = 16;
                                 if(uint(_loc14_) >= 65536)
                                 {
                                    _loc3_ = 0;
                                 }
                                 _loc14_ = _loc3_ | 8;
                                 if(uint(_loc4_) >= 16777216)
                                 {
                                    _loc14_ = _loc3_;
                                 }
                                 _loc4_ = _loc14_ | 4;
                                 if(uint(_loc20_) >= 268435456)
                                 {
                                    _loc4_ = _loc14_;
                                 }
                                 _loc20_ = _loc4_ | 2;
                                 if(uint(_loc8_) >= 1073741824)
                                 {
                                    _loc20_ = _loc4_;
                                 }
                                 if((_loc8_ = _loc21_ & 31) != 0)
                                 {
                                    _loc8_ = int(32 - _loc8_);
                                 }
                                 if(_loc7_ >= 0)
                                 {
                                    _loc20_ += 1;
                                    _loc4_ = 32;
                                    if((_loc7_ & 1073741824) != 0)
                                    {
                                       addr726:
                                       _loc4_ = _loc20_;
                                    }
                                    _loc7_ = 32;
                                    if(_loc4_ != _loc8_)
                                    {
                                       _loc20_ = int(_loc23_ + 20);
                                       if(_loc12_ == 0)
                                       {
                                          _loc12_ = (_loc6_ = li32(_loc20_)) & 1;
                                       }
                                       _loc7_ = _loc20_;
                                       if(_loc11_ >= 1)
                                       {
                                          _loc8_ = int((_loc6_ = li32(_loc23_ + 20)) >>> 1);
                                          _loc7_ = _loc20_;
                                          if(_loc11_ >= 2)
                                          {
                                             _loc11_ = int((_loc7_ = int(_loc23_ + 20)) + _loc9_);
                                             _loc9_ = int(_loc23_ + 24);
                                             do
                                             {
                                                si32(_loc13_ = (_loc13_ = (_loc6_ = li32(_loc7_ + 4)) << 31) | _loc8_,_loc7_);
                                                _loc9_ += 4;
                                                _loc7_ += 4;
                                                _loc8_ = int(_loc6_ >>> 1);
                                             }
                                             while(uint(_loc9_) < uint(_loc11_));
                                             
                                          }
                                          si32(_loc8_,_loc7_);
                                          if(_loc8_ != 0)
                                          {
                                             _loc7_ += 4;
                                          }
                                       }
                                       si32(_loc6_ = (_loc6_ = int(_loc7_ - _loc20_)) >> 2,_loc23_ + 16);
                                       if(_loc6_ == 0)
                                       {
                                          si32(0,_loc20_);
                                       }
                                       si32(_loc19_ += 1,_loc10_ - 8);
                                       _loc7_ = 32;
                                    }
                                    §§goto(addr921);
                                 }
                                 §§goto(addr726);
                              }
                           }
                        }
                     }
                     §§goto(addr332);
                  }
                  else
                  {
                     §§goto(addr876);
                  }
               }
            }
            §§goto(addr1394);
         }
         else
         {
            _loc12_ = li32(_loc10_ + 24);
            _loc11_ = 0;
            if(_loc12_ != 1)
            {
               if(_loc12_ != 2)
               {
                  _loc12_ = int(_loc20_ + -1);
                  _loc11_ = 0;
                  if(_loc12_ >= 0)
                  {
                     if(_loc12_ == 0)
                     {
                        _loc11_ = 0;
                        if(_loc16_ != 0)
                        {
                           _loc11_ = 0;
                           if(((_loc6_ = li8(_loc23_ + 20)) & 2) != 0)
                           {
                              addr266:
                              _loc11_ = 1;
                           }
                           §§goto(addr269);
                        }
                        §§goto(addr1394);
                     }
                     else
                     {
                        _loc11_ = 0;
                        if(((_loc13_ = li32((_loc13_ = int(_loc23_ + ((_loc13_ = _loc12_ >> 5) << 2))) + 20)) & 1 << (_loc12_ & 31)) != 0)
                        {
                        }
                        §§goto(addr269);
                     }
                  }
                  §§goto(addr269);
               }
               §§goto(addr266);
            }
         }
         §§goto(addr269);
      }
   }
}
