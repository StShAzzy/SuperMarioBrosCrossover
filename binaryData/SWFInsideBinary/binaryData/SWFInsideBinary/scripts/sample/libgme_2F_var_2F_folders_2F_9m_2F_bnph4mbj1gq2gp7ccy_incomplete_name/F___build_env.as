package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.F__write;
   import sample.libgme.F_calloc;
   import sample.libgme.F_realloc;
   import sample.libgme.F_strdup;
   import sample.libgme.___progname;
   import sample.libgme._environ;
   import sample.libgme.eax;
   
   public function F___build_env() : void
   {
      var _loc10_:* = 0;
      var _loc22_:* = 0;
      var _loc15_:* = 0;
      var _loc12_:int = 0;
      var _loc14_:* = 0;
      var _loc7_:int = 0;
      var _loc20_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc16_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc5_:*;
      _loc10_ = _loc5_ = int(ESP);
      _loc6_ = 0;
      if((_loc22_ = li32(_environ)) != 0)
      {
         _loc6_ = 0;
         if(li32(_loc22_) != 0)
         {
            si32(_loc6_ = 0,_envVarsTotal);
            var _loc21_:*;
            if((_loc21_ = li32(_loc22_)) != 0)
            {
               _loc20_ = 0;
               do
               {
                  si32(_loc6_ = int(_loc20_ + 1),_envVarsTotal);
                  _loc21_ = _loc20_ << 2;
                  _loc21_ = li32((_loc21_ = int(_loc22_ + _loc21_)) + 4);
                  _loc20_ = _loc6_;
               }
               while(_loc21_ != 0);
               
            }
            si32(_loc21_ = _loc6_ << 1,_envVarsSize);
            _loc5_ -= 16;
            si32(_loc21_ = int(_loc6_ * 40),_loc5_ + 4);
            si32(1,_loc5_);
            ESP = _loc5_;
            F_calloc();
            _loc5_ += 16;
            si32(_loc21_ = int(eax),_envVars);
            if(_loc21_ != 0)
            {
               _loc20_ = li32(_envVarsTotal);
               _loc19_ = int(0 - _loc20_);
               _loc22_ = 0;
               loop1:
               while(true)
               {
                  if(_loc20_ <= 0)
                  {
                     si32(_loc21_ = li32(_environ),_origEnviron);
                     si32(_loc22_,_environ);
                     _loc6_ = li32(_envVarsTotal);
                     _loc20_ = _loc6_;
                     if(li32(_environSize) < _loc6_)
                     {
                        si32(li32(_intEnviron),_loc5_ -= 16);
                        si32(_loc21_ = (_loc21_ = _loc6_ << 3) | 4,_loc5_ + 4);
                        ESP = _loc5_;
                        F_realloc();
                        _loc5_ += 16;
                        if((_loc20_ = int(eax)) == 0)
                        {
                           break;
                        }
                        si32(_loc21_ = _loc6_ << 1,_environSize);
                        si32(_loc20_,_intEnviron);
                        _loc20_ = li32(_envVarsTotal);
                     }
                     si32(_loc6_,_envActive);
                     addr2222:
                     _loc6_ = li32(_envVars);
                     if(_loc20_ > 0)
                     {
                        _loc20_ += -1;
                        if(li8((_loc21_ = int(_loc6_ + int(_loc20_ * 20))) - 4) != 0)
                        {
                           var _loc18_:*;
                           si32(_loc18_ = li32((_loc18_ = int(_loc6_ + ((_loc18_ = int(_loc20_ * 5)) << 2))) + 8),int((_loc21_ = li32(_intEnviron)) + _loc22_));
                           _loc22_ += 4;
                        }
                        §§goto(addr2222);
                     }
                     si32(_loc6_ = 0,int((_loc21_ = li32(_intEnviron)) + _loc22_));
                     si32(_loc21_ = li32(_intEnviron),_environ);
                     §§goto(addr2300);
                  }
                  si8(_loc22_,int((_loc21_ = li32(_envVars)) + int(_loc19_ * -20)) - 3);
                  _loc21_ = li32(_envVars);
                  si32(li32(_loc21_ = int((_loc21_ = li32(_environ)) + ((_loc21_ = int(_loc19_ + li32(_envVarsTotal))) << 2))),_loc5_ -= 16);
                  _loc17_ = (_loc18_ = int(_loc19_ * -5)) << 2;
                  ESP = _loc5_;
                  F_strdup();
                  _loc5_ += 16;
                  si32(_loc21_ = int(eax),int(_loc21_ + _loc17_) - 12);
                  if((_loc16_ = li32((_loc6_ = int((_loc21_ = li32(_envVars)) + _loc17_)) - 12)) != 0)
                  {
                     while(true)
                     {
                        _loc15_ = li8(_loc16_);
                        _loc1_ = _loc16_;
                        if(_loc15_ == 61)
                        {
                           break;
                        }
                        _loc1_ = 0;
                        if(_loc15_ == 0)
                        {
                           break;
                        }
                        _loc16_ += 1;
                     }
                     si32(_loc1_,_loc6_ - 8);
                     _loc1_ = int((_loc21_ = li32(_envVars)) + _loc17_);
                     if((_loc6_ = li32(_loc1_ - 8)) != 0)
                     {
                        si32(_loc21_ = int(_loc6_ + 1),_loc1_ - 8);
                        _loc1_ = int((_loc21_ = li32(_envVars)) + _loc17_);
                        if((_loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & int((_loc18_ = li32(_loc16_ = (_loc6_ = li32(_loc1_ - 8)) & -4)) + -16843009)) != 0)
                        {
                           _loc15_ = int(_loc16_ + 4);
                           _loc11_ = 0;
                           while(true)
                           {
                              if((uint(_loc12_ = _loc6_ + _loc11_)) < uint(_loc15_))
                              {
                                 continue;
                              }
                           }
                           addr498:
                           si32(_loc11_,_loc1_ - 16);
                           _loc21_ = li32((_loc18_ = int((_loc21_ = li32(_envVars)) + _loc17_)) - 12);
                           var _loc13_:*;
                           _loc1_ = int((_loc13_ = li32(_loc18_ - 8)) - _loc21_);
                           si32(_loc6_ = int(_loc1_ + -1),_loc18_ - 20);
                           _loc16_ = int((_loc18_ = int(_loc13_ + -1)) - _loc21_);
                           _loc14_ = li32((_loc17_ = int((_loc11_ = li32(_envVars)) + _loc17_)) - 12);
                           _loc12_ = (_loc21_ = li32(_envVarsTotal)) + -1;
                           loop4:
                           for(; _loc12_ > -1; _loc12_ += -1)
                           {
                              _loc4_ = int(_loc12_ * 5);
                              if((_loc21_ = li8((_loc15_ = int(_loc11_ + int(_loc12_ * 20))) + 17)) != 0)
                              {
                                 _loc8_ = li32((_loc7_ = _loc11_ + (_loc4_ << 2)) + 8);
                                 _loc9_ = _loc14_;
                                 _loc4_ = _loc8_;
                                 _loc3_ = _loc16_;
                                 if(_loc6_ != 0)
                                 {
                                    while(true)
                                    {
                                       _loc2_ = li8(_loc4_);
                                       _loc21_ = li8(_loc9_);
                                       if(_loc2_ != _loc21_)
                                       {
                                          continue loop4;
                                       }
                                       if(_loc2_ != 0)
                                       {
                                          _loc9_ += 1;
                                          _loc4_ += 1;
                                          _loc3_ += -1;
                                          if(_loc3_ != 0)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                 }
                                 if((_loc21_ = li8(_loc21_ = int(_loc8_ + _loc6_))) != 61)
                                 {
                                    continue;
                                 }
                                 _loc1_ = int((_loc21_ = li32(_loc7_ + 8)) + _loc1_);
                              }
                              else
                              {
                                 if((_loc21_ = li32(_loc21_ = int(_loc11_ + (_loc4_ << 2)))) != _loc6_)
                                 {
                                    continue;
                                 }
                                 _loc4_ = li32((_loc7_ = _loc11_ + (_loc4_ << 2)) + 8);
                                 _loc3_ = _loc14_;
                                 _loc8_ = _loc4_;
                                 _loc2_ = _loc16_;
                                 if(_loc6_ != 0)
                                 {
                                    while(true)
                                    {
                                       _loc9_ = li8(_loc8_);
                                       _loc21_ = li8(_loc3_);
                                       if(_loc9_ != _loc21_)
                                       {
                                          break;
                                       }
                                       if(_loc9_ != 0)
                                       {
                                          _loc3_ += 1;
                                          _loc8_ += 1;
                                          _loc2_ += -1;
                                          if(_loc2_ != 0)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    continue;
                                 }
                                 if((_loc21_ = li8(_loc21_ = int(_loc4_ + _loc6_))) != 61)
                                 {
                                    continue;
                                 }
                                 _loc1_ = li32(_loc7_ + 12);
                              }
                              if(_loc1_ == 0)
                              {
                                 break;
                              }
                              continue loop1;
                           }
                           _loc21_ = int((_loc18_ = li32(_loc19_ = (_loc20_ = li32(___progname)) & -4)) + -16843009);
                           _loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & _loc21_;
                           _loc22_ = li32(_loc17_ - 12);
                           if(_loc21_ != 0)
                           {
                              _loc1_ = int(_loc19_ + 4);
                              _loc15_ = 0;
                              addr1569:
                              if((uint(_loc17_ = int(_loc20_ + _loc15_))) < uint(_loc1_))
                              {
                                 if((_loc21_ = li8(_loc17_)) != 0)
                                 {
                                    _loc15_ += 1;
                                    §§goto(addr1569);
                                 }
                                 addr1695:
                                 _loc5_ -= 16;
                                 si32(_loc15_,_loc5_ + 8);
                                 si32(_loc20_,_loc5_ + 4);
                                 si32(2,_loc5_);
                                 ESP = _loc5_;
                                 F__write();
                                 _loc5_ = int((_loc5_ += 16) - 16);
                                 si32(2,_loc5_ + 8);
                                 si32(_progSep_2E_2358,_loc5_ + 4);
                                 si32(2,_loc5_);
                                 ESP = _loc5_;
                                 F__write();
                                 _loc5_ += 16;
                                 _loc21_ = int((_loc18_ = li32(_loc20_ = _CorruptEnvFindMsg & -4)) + -16843009);
                                 _loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & _loc21_;
                                 _loc17_ = int(_loc20_ + 4);
                                 _loc19_ = 0;
                                 if(_loc21_ != 0)
                                 {
                                    addr1838:
                                    _loc21_ = int(_CorruptEnvFindMsg + _loc19_);
                                    _loc17_ = int(_loc20_ + 4);
                                    if(uint(_loc21_) < uint(_loc17_))
                                    {
                                       _loc1_ = int(_loc20_ + 4);
                                       _loc17_ = int(_CorruptEnvFindMsg);
                                       if(uint(_CorruptEnvFindMsg) <= uint(_loc1_))
                                       {
                                          _loc17_ = _loc1_;
                                       }
                                       _loc21_ = _loc17_ ^ -1;
                                       if((uint(_loc17_ = int(_CorruptEnvFindMsg + _loc21_))) <= 4294967259)
                                       {
                                          _loc17_ = -37;
                                       }
                                       _loc17_ ^= -1;
                                       if((_loc19_ += 1) != 37)
                                       {
                                          §§goto(addr1838);
                                       }
                                       addr1960:
                                       _loc5_ -= 16;
                                       si32(_loc17_,_loc5_ + 8);
                                       si32(_CorruptEnvFindMsg,_loc5_ + 4);
                                       si32(2,_loc5_);
                                       ESP = _loc5_;
                                       F__write();
                                       _loc5_ = int((_loc5_ += 16) - 16);
                                       si32(_loc6_,_loc5_ + 8);
                                       si32(_loc22_,_loc5_ + 4);
                                       si32(2,_loc5_);
                                       ESP = _loc5_;
                                       F__write();
                                       _loc5_ = int((_loc5_ += 16) - 16);
                                       si32(1,_loc5_ + 8);
                                       si32(_nl_2E_2357,_loc5_ + 4);
                                       si32(2,_loc5_);
                                       ESP = _loc5_;
                                       F__write();
                                       ESP = _loc5_ += 16;
                                       F___error();
                                       _loc21_ = int(eax);
                                       si32(14,_loc21_);
                                       break;
                                    }
                                 }
                                 addr1854:
                                 _loc21_ = int((_loc20_ = li32(_loc17_)) + -16843009);
                                 if((_loc21_ = (_loc18_ = (_loc18_ = _loc20_ & -2139062144) ^ -2139062144) & _loc21_) != 0)
                                 {
                                    if((_loc21_ = _loc20_ & 255) != 0)
                                    {
                                       if((_loc21_ = li8(_loc17_ + 1)) != 0)
                                       {
                                          if((_loc21_ = li8(_loc17_ + 2)) != 0)
                                          {
                                             if((_loc21_ = li8(_loc17_ + 3)) != 0)
                                             {
                                                addr1953:
                                                _loc17_ += 4;
                                                §§goto(addr1854);
                                             }
                                             _loc17_ += int(3 - _CorruptEnvFindMsg);
                                             §§goto(addr1960);
                                          }
                                          _loc17_ += int(2 - _CorruptEnvFindMsg);
                                          §§goto(addr1960);
                                       }
                                       _loc17_ += int(1 - _CorruptEnvFindMsg);
                                       §§goto(addr1960);
                                    }
                                    _loc17_ -= _CorruptEnvFindMsg;
                                    §§goto(addr1960);
                                 }
                                 §§goto(addr1953);
                              }
                           }
                           _loc17_ = int(_loc19_ + 4);
                           addr1586:
                           _loc21_ = int((_loc19_ = li32(_loc17_)) + -16843009);
                           if((_loc21_ = (_loc18_ = (_loc18_ = _loc19_ & -2139062144) ^ -2139062144) & _loc21_) != 0)
                           {
                              if((_loc21_ = _loc19_ & 255) != 0)
                              {
                                 if((_loc21_ = li8(_loc17_ + 1)) != 0)
                                 {
                                    if((_loc21_ = li8(_loc17_ + 2)) != 0)
                                    {
                                       if((_loc21_ = li8(_loc17_ + 3)) != 0)
                                       {
                                          addr1688:
                                          _loc17_ += 4;
                                          §§goto(addr1586);
                                       }
                                       _loc15_ = int((_loc21_ = int(3 - _loc20_)) + _loc17_);
                                       §§goto(addr1695);
                                    }
                                    _loc15_ = int((_loc21_ = int(2 - _loc20_)) + _loc17_);
                                    §§goto(addr1695);
                                 }
                                 _loc15_ = int((_loc21_ = int(1 - _loc20_)) + _loc17_);
                                 §§goto(addr1695);
                              }
                              _loc15_ = int(_loc17_ - _loc20_);
                              §§goto(addr1695);
                           }
                           §§goto(addr1688);
                        }
                        _loc16_ += 4;
                        while(true)
                        {
                           _loc21_ = int((_loc15_ = li32(_loc16_)) + -16843009);
                           if((_loc21_ = (_loc18_ = (_loc18_ = _loc15_ & -2139062144) ^ -2139062144) & _loc21_) == 0)
                           {
                              continue;
                           }
                           if((_loc21_ = _loc15_ & 255) == 0)
                           {
                              _loc11_ = int(_loc16_ - _loc6_);
                           }
                           else if((_loc21_ = li8(_loc16_ + 1)) == 0)
                           {
                              _loc11_ = int((_loc21_ = int(1 - _loc6_)) + _loc16_);
                           }
                           else if((_loc21_ = li8(_loc16_ + 2)) == 0)
                           {
                              _loc11_ = int((_loc21_ = int(2 - _loc6_)) + _loc16_);
                           }
                           else
                           {
                              if((_loc21_ = li8(_loc16_ + 3)) != 0)
                              {
                                 continue;
                              }
                              _loc11_ = int((_loc21_ = int(3 - _loc6_)) + _loc16_);
                           }
                           §§goto(addr498);
                        }
                     }
                     else
                     {
                        if((_loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & int((_loc18_ = li32(_loc20_ = (_loc22_ = li32(_loc1_ - 12)) & -4)) + -16843009)) != 0)
                        {
                           _loc19_ = int(_loc20_ + 4);
                           _loc6_ = 0;
                           addr832:
                           if((uint(_loc17_ = int(_loc22_ + _loc6_))) < uint(_loc19_))
                           {
                              if((_loc21_ = li8(_loc17_)) != 0)
                              {
                                 _loc6_ += 1;
                                 §§goto(addr832);
                              }
                              addr958:
                              _loc21_ = int((_loc18_ = li32(_loc17_ = (_loc20_ = li32(___progname)) & -4)) + -16843009);
                              if((_loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & _loc21_) != 0)
                              {
                                 _loc1_ = int(_loc17_ + 4);
                                 _loc19_ = 0;
                                 addr1011:
                                 if((uint(_loc15_ = int(_loc20_ + _loc19_))) < uint(_loc1_))
                                 {
                                    if((_loc21_ = li8(_loc15_)) != 0)
                                    {
                                       _loc19_ += 1;
                                       §§goto(addr1011);
                                    }
                                    addr1137:
                                    _loc5_ -= 16;
                                    si32(_loc19_,_loc5_ + 8);
                                    si32(_loc20_,_loc5_ + 4);
                                    si32(2,_loc5_);
                                    ESP = _loc5_;
                                    F__write();
                                    _loc5_ = int((_loc5_ += 16) - 16);
                                    si32(2,_loc5_ + 8);
                                    si32(_progSep_2E_2358,_loc5_ + 4);
                                    si32(2,_loc5_);
                                    ESP = _loc5_;
                                    F__write();
                                    _loc5_ += 16;
                                    _loc21_ = int((_loc18_ = li32(_loc20_ = _CorruptEnvValueMsg & -4)) + -16843009);
                                    _loc21_ = (_loc18_ = (_loc18_ &= -2139062144) ^ -2139062144) & _loc21_;
                                    _loc17_ = int(_loc20_ + 4);
                                    _loc19_ = 0;
                                    if(_loc21_ != 0)
                                    {
                                       addr1280:
                                       _loc21_ = int(_CorruptEnvValueMsg + _loc19_);
                                       _loc17_ = int(_loc20_ + 4);
                                       if(uint(_loc21_) < uint(_loc17_))
                                       {
                                          _loc1_ = int(_loc20_ + 4);
                                          _loc17_ = int(_CorruptEnvValueMsg);
                                          if(uint(_CorruptEnvValueMsg) <= uint(_loc1_))
                                          {
                                             _loc17_ = _loc1_;
                                          }
                                          _loc21_ = _loc17_ ^ -1;
                                          if((uint(_loc17_ = int(_CorruptEnvValueMsg + _loc21_))) <= 4294967256)
                                          {
                                             _loc17_ = -40;
                                          }
                                          _loc17_ ^= -1;
                                          if((_loc19_ += 1) != 40)
                                          {
                                             §§goto(addr1280);
                                          }
                                          addr1402:
                                          _loc5_ -= 16;
                                          si32(_loc17_,_loc5_ + 8);
                                          si32(_CorruptEnvValueMsg,_loc5_ + 4);
                                          si32(2,_loc5_);
                                          ESP = _loc5_;
                                          F__write();
                                          _loc5_ = int((_loc5_ += 16) - 16);
                                          si32(_loc6_,_loc5_ + 8);
                                          si32(_loc22_,_loc5_ + 4);
                                          si32(2,_loc5_);
                                          ESP = _loc5_;
                                          F__write();
                                          _loc5_ = int((_loc5_ += 16) - 16);
                                          si32(1,_loc5_ + 8);
                                          si32(_nl_2E_2357,_loc5_ + 4);
                                          si32(2,_loc5_);
                                          ESP = _loc5_;
                                          F__write();
                                          ESP = _loc5_ += 16;
                                          F___error();
                                          _loc21_ = int(eax);
                                          si32(14,_loc21_);
                                          break;
                                       }
                                    }
                                    addr1296:
                                    _loc21_ = int((_loc20_ = li32(_loc17_)) + -16843009);
                                    if((_loc21_ = (_loc18_ = (_loc18_ = _loc20_ & -2139062144) ^ -2139062144) & _loc21_) != 0)
                                    {
                                       if((_loc21_ = _loc20_ & 255) != 0)
                                       {
                                          if((_loc21_ = li8(_loc17_ + 1)) != 0)
                                          {
                                             if((_loc21_ = li8(_loc17_ + 2)) != 0)
                                             {
                                                if((_loc21_ = li8(_loc17_ + 3)) != 0)
                                                {
                                                   addr1395:
                                                   _loc17_ += 4;
                                                   §§goto(addr1296);
                                                }
                                                _loc17_ += int(3 - _CorruptEnvValueMsg);
                                                §§goto(addr1402);
                                             }
                                             _loc17_ += int(2 - _CorruptEnvValueMsg);
                                             §§goto(addr1402);
                                          }
                                          _loc17_ += int(1 - _CorruptEnvValueMsg);
                                          §§goto(addr1402);
                                       }
                                       _loc17_ -= _CorruptEnvValueMsg;
                                       §§goto(addr1402);
                                    }
                                    §§goto(addr1395);
                                 }
                              }
                              _loc19_ = int(_loc17_ + 4);
                              addr1028:
                              _loc21_ = int((_loc17_ = li32(_loc19_)) + -16843009);
                              if((_loc21_ = (_loc18_ = (_loc18_ = _loc17_ & -2139062144) ^ -2139062144) & _loc21_) != 0)
                              {
                                 if((_loc21_ = _loc17_ & 255) != 0)
                                 {
                                    if((_loc21_ = li8(_loc19_ + 1)) != 0)
                                    {
                                       if((_loc21_ = li8(_loc19_ + 2)) != 0)
                                       {
                                          if((_loc21_ = li8(_loc19_ + 3)) != 0)
                                          {
                                             addr1130:
                                             _loc19_ += 4;
                                             §§goto(addr1028);
                                          }
                                          _loc19_ = int((_loc21_ = int(3 - _loc20_)) + _loc19_);
                                          §§goto(addr1137);
                                       }
                                       _loc19_ = int((_loc21_ = int(2 - _loc20_)) + _loc19_);
                                       §§goto(addr1137);
                                    }
                                    _loc19_ = int((_loc21_ = int(1 - _loc20_)) + _loc19_);
                                    §§goto(addr1137);
                                 }
                                 _loc19_ -= _loc20_;
                                 §§goto(addr1137);
                              }
                              §§goto(addr1130);
                           }
                        }
                        _loc20_ += 4;
                        addr849:
                        _loc21_ = int((_loc6_ = li32(_loc20_)) + -16843009);
                        if((_loc21_ = (_loc18_ = (_loc18_ = _loc6_ & -2139062144) ^ -2139062144) & _loc21_) != 0)
                        {
                           if((_loc21_ = _loc6_ & 255) != 0)
                           {
                              if((_loc21_ = li8(_loc20_ + 1)) != 0)
                              {
                                 if((_loc21_ = li8(_loc20_ + 2)) != 0)
                                 {
                                    if((_loc21_ = li8(_loc20_ + 3)) != 0)
                                    {
                                       addr951:
                                       _loc20_ += 4;
                                       §§goto(addr849);
                                    }
                                    _loc6_ = int((_loc21_ = int(3 - _loc22_)) + _loc20_);
                                    §§goto(addr958);
                                 }
                                 _loc6_ = int((_loc21_ = int(2 - _loc22_)) + _loc20_);
                                 §§goto(addr958);
                              }
                              _loc6_ = int((_loc21_ = int(1 - _loc22_)) + _loc20_);
                              §§goto(addr958);
                           }
                           _loc6_ = int(_loc20_ - _loc22_);
                           §§goto(addr958);
                        }
                        §§goto(addr951);
                     }
                  }
                  break;
               }
            }
            ESP = _loc5_;
            F___error();
            _loc18_ = li32(_loc21_ = int(eax));
            _loc5_ -= 16;
            si32(1,_loc5_);
            ESP = _loc5_;
            F___clean_env();
            ESP = _loc5_ += 16;
            F___error();
            _loc21_ = int(eax);
            si32(_loc18_,_loc21_);
            _loc6_ = -1;
         }
      }
      addr2300:
      eax = _loc6_;
      ESP = _loc5_ = _loc10_;
   }
}
