package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F__ZL28read_encoded_value_with_basehjPKhPj;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1177;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL10eh_globals;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL4init;
   
   public function F___cxa_call_unexpected() : void
   {
      var _loc2_:* = 0;
      var _loc7_:int = 0;
      var _loc20_:* = 0;
      var _loc15_:* = 0;
      var _loc54_:* = 0;
      var _loc14_:int = 0;
      var _loc45_:int = 0;
      var _loc49_:* = 0;
      var _loc51_:* = 0;
      var _loc40_:* = 0;
      var _loc38_:* = 0;
      var _loc34_:int = 0;
      var _loc16_:int = 0;
      var _loc21_:* = 0;
      var _loc23_:* = 0;
      var _loc33_:int = 0;
      var _loc5_:int = 0;
      var _loc8_:* = 0;
      var _loc48_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc30_:int = 0;
      var _loc28_:int = 0;
      var _loc26_:int = 0;
      var _loc60_:* = 0;
      var _loc22_:* = 0;
      var _loc55_:* = 0;
      var _loc56_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc32_:* = 0;
      var _loc46_:* = 0;
      var _loc18_:* = 0;
      var _loc57_:* = 0;
      var _loc37_:* = 0;
      var _loc35_:* = 0;
      var _loc36_:* = 0;
      var _loc17_:* = 0;
      var _loc25_:* = 0;
      var _loc29_:* = 0;
      var _loc27_:* = 0;
      var _loc31_:* = 0;
      var _loc4_:int = 0;
      var _loc3_:* = 0;
      var _loc52_:* = 0;
      var _loc10_:* = 0;
      var _loc50_:* = 0;
      var _loc59_:* = 0;
      var _loc58_:int = 0;
      var _loc61_:int = 0;
      var _loc24_:int = 0;
      var _loc47_:int = 0;
      var _loc44_:* = 0;
      var _loc43_:* = 0;
      var _loc39_:int = 0;
      var _loc41_:int = 0;
      var _loc53_:int = 0;
      var _loc42_:* = 0;
      var _loc19_:int = 0;
      var _loc13_:int = 0;
      var _loc1_:int = ESP;
      while(true)
      {
         try
         {
            if(!_loc7_)
            {
               _loc2_ = _loc1_;
               _loc1_ -= 112;
               _loc15_ = li8(__ZL4init + 4);
               si32(L_LSDA_1177,_loc2_ - 28);
               si32(___gxx_personality_sj0,_loc2_ - 32);
               si32(_loc32_ = _loc2_,_loc2_ - 24);
               si32(_loc32_ = _loc1_,_loc2_ - 16);
               _loc28_ = (_loc30_ = _loc2_ - 56) + 32;
               _loc26_ = 0;
               eax = setjmp(_loc28_,1,_loc1_);
            }
            else
            {
               switch(int(_loc7_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc32_ = int(eax)) == 0)
            {
               _loc1_ -= 16;
               si32(_loc30_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Register();
               _loc1_ += 16;
               _loc32_ = _loc15_ & 255;
               _loc24_ = __ZL10eh_globals;
               if(_loc32_ != 0)
               {
                  _loc32_ = li32(__ZL4init);
                  _loc1_ -= 16;
                  si32(_loc32_,_loc1_);
                  ESP = _loc1_;
                  F_pthread_getspecific();
                  _loc1_ += 16;
                  if((_loc24_ = eax) == 0)
                  {
                     _loc1_ -= 16;
                     si32(8,_loc1_);
                     ESP = _loc1_;
                     F_malloc();
                     _loc1_ += 16;
                     if((_loc24_ = eax) != 0)
                     {
                        _loc32_ = li32(__ZL4init);
                        _loc1_ -= 16;
                        si32(_loc24_,_loc1_ + 4);
                        si32(_loc32_,_loc1_);
                        ESP = _loc1_;
                        F_pthread_setspecific();
                        _loc1_ += 16;
                        if((_loc32_ = int(eax)) == 0)
                        {
                           si32(0,_loc24_);
                           si32(0,_loc24_ + 4);
                           addr372:
                           _loc32_ = (_loc32_ = li32((_loc20_ = li32(_loc2_)) + 4)) ^ 1196315971;
                           _loc32_ = (_loc18_ = (_loc18_ = li32(_loc20_)) ^ 1126902528) | _loc32_;
                           _loc14_ = _loc20_ + -48;
                           _loc54_ = li32(_loc24_);
                           if(_loc32_ != 0)
                           {
                              if(_loc54_ != 0)
                              {
                                 _loc32_ = _loc30_ | 4;
                                 si32(2,_loc32_);
                                 ESP = _loc1_;
                                 F__ZSt9terminatev();
                              }
                              si32(_loc14_,_loc24_);
                           }
                           else
                           {
                              _loc32_ = (_loc18_ = li32(_loc20_ - 28)) >> 31;
                              si32(_loc32_ = int((_loc32_ = (_loc18_ += _loc32_) ^ _loc32_) + 1),_loc20_ - 28);
                              si32(_loc32_ = int((_loc32_ = li32(_loc24_ + 4)) + -1),_loc24_ + 4);
                              if(_loc14_ != _loc54_)
                              {
                                 si32(_loc54_,_loc20_ - 32);
                                 si32(_loc14_,_loc24_);
                              }
                           }
                           si32(_loc32_ = li32(_loc20_ - 16),_loc2_ - 72);
                           si32(_loc32_ = li32(_loc20_ - 24),_loc2_ - 68);
                           si32(_loc32_ = li32(_loc20_ - 36),_loc2_ - 64);
                           _loc32_ = li32(_loc20_ - 12);
                           si32(_loc18_ = int((_loc18_ = int(_loc2_ - 112)) + 8),_loc2_ - 60);
                           _loc18_ = li32(_loc2_ - 60);
                           si32(_loc32_,_loc18_);
                           _loc56_ = li32(_loc20_ - 40);
                           _loc32_ = _loc30_ | 4;
                           si32(3,_loc32_);
                           _loc1_ -= 16;
                           si32(_loc56_,_loc1_);
                           ESP = _loc1_;
                           F__ZN10__cxxabiv112__unexpectedEPFvvE();
                           _loc1_ += 16;
                           loop4:
                           while(true)
                           {
                              _loc57_ = li32(_loc47_);
                              _loc32_ = li32(_loc2_ - 72);
                              _loc1_ -= 16;
                              si32(_loc18_ = int(_loc2_ - 112),_loc1_ + 8);
                              si32(_loc32_,_loc1_ + 4);
                              si32(_loc26_,_loc1_);
                              ESP = _loc1_;
                              F__ZL17parse_lsda_headerP15_Unwind_ContextPKhP16lsda_header_info();
                              _loc1_ += 16;
                              _loc49_ = li32(_loc57_);
                              _loc51_ = li32(_loc2_ - 100);
                              _loc32_ = (_loc32_ = li32(_loc2_ - 68)) ^ -1;
                              _loc53_ = _loc51_ + _loc32_;
                              _loc45_ = _loc57_ + 80;
                              _loc44_ = _loc53_;
                              _loc43_ = _loc26_;
                              while(true)
                              {
                                 _loc43_ = (_loc18_ = (_loc18_ = (_loc32_ = si8(li8(_loc44_))) & 127) << _loc26_) | _loc43_;
                                 _loc26_ += 7;
                                 _loc44_ += 1;
                                 if(_loc32_ >= 0)
                                 {
                                    _loc42_ = _loc41_ = 0;
                                    if(_loc43_ == 0)
                                    {
                                       break;
                                    }
                                    _loc39_ = 0;
                                    if((_loc40_ = li8(_loc2_ - 92)) != 255)
                                    {
                                       if((_loc37_ = _loc40_ & 7) <= 2)
                                       {
                                          _loc39_ = 4;
                                          if(_loc37_ != 0)
                                          {
                                             if(_loc37_ != 2)
                                             {
                                                addr775:
                                                ESP = _loc1_;
                                                F_abort();
                                             }
                                             else
                                             {
                                                _loc39_ = 2;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          _loc39_ = 4;
                                          if(_loc37_ != 3)
                                          {
                                             if(_loc37_ != 4)
                                             {
                                                §§goto(addr775);
                                             }
                                             else
                                             {
                                                _loc39_ = 8;
                                             }
                                          }
                                       }
                                    }
                                    _loc32_ = li32(_loc32_ = li32(_loc2_ - 60));
                                    _loc1_ -= 16;
                                    si32(_loc18_ = int(_loc2_ - 88),_loc1_ + 12);
                                    si32(_loc32_,_loc1_ + 4);
                                    si32(_loc40_,_loc1_);
                                    _loc32_ = int(0 - _loc43_);
                                    _loc32_ = int(_loc39_ * _loc32_);
                                    si32(_loc32_ = int(_loc51_ + _loc32_),_loc1_ + 8);
                                    ESP = _loc1_;
                                    F__ZL28read_encoded_value_with_basehjPKhPj();
                                    _loc1_ += 16;
                                    _loc38_ = li32(_loc2_ - 88);
                                    si32(_loc45_,_loc2_ - 80);
                                    _loc35_ = li32((_loc32_ = li32(_loc49_)) + 8);
                                    _loc36_ = _loc30_ | 4;
                                    si32(4,_loc36_);
                                    _loc1_ -= 16;
                                    si32(_loc49_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc35_]();
                                    _loc1_ += 16;
                                    _loc34_ = eax;
                                    if(_loc34_ != 0)
                                    {
                                       si32(_loc32_ = li32(_loc32_ = li32(_loc2_ - 80)),_loc2_ - 80);
                                    }
                                    _loc17_ = li32((_loc32_ = li32(_loc38_)) + 16);
                                    si32(5,_loc36_);
                                    _loc1_ -= 16;
                                    si32(1,_loc1_ + 12);
                                    si32(_loc32_ = int(_loc2_ - 80),_loc1_ + 8);
                                    si32(_loc49_,_loc1_ + 4);
                                    si32(_loc38_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc17_]();
                                    _loc1_ += 16;
                                    _loc16_ = eax;
                                    _loc43_ = _loc26_ = 0;
                                    if(_loc16_ != 0)
                                    {
                                       si32(6,_loc36_);
                                       ESP = _loc1_;
                                       F___cxa_rethrow();
                                       break;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 _loc42_ = (_loc18_ = (_loc18_ = (_loc32_ = si8(li8(_loc53_))) & 127) << _loc41_) | _loc42_;
                                 _loc41_ += 7;
                                 _loc53_ += 1;
                                 if(_loc32_ >= 0)
                                 {
                                    if(_loc42_ == 0)
                                    {
                                       break;
                                    }
                                    _loc21_ = li8(_loc2_ - 92);
                                    _loc19_ = 0;
                                    if(_loc21_ != 255)
                                    {
                                       _loc25_ = _loc21_ & 7;
                                       _loc19_ = 4;
                                       if(_loc25_ <= 2)
                                       {
                                          if(_loc25_ != 0)
                                          {
                                             if(_loc25_ != 2)
                                             {
                                                addr1080:
                                                ESP = _loc1_;
                                                F_abort();
                                             }
                                             else
                                             {
                                                _loc19_ = 2;
                                             }
                                          }
                                       }
                                       else if(_loc25_ != 3)
                                       {
                                          if(_loc25_ != 4)
                                          {
                                             §§goto(addr1080);
                                          }
                                          else
                                          {
                                             _loc19_ = 8;
                                          }
                                       }
                                    }
                                    _loc18_ = li32(_loc32_ = li32(_loc2_ - 60));
                                    _loc1_ -= 16;
                                    si32(_loc32_ = int(_loc2_ - 84),_loc1_ + 12);
                                    si32(_loc18_,_loc1_ + 4);
                                    si32(_loc21_,_loc1_);
                                    _loc32_ = int(0 - _loc42_);
                                    _loc32_ = int(_loc19_ * _loc32_);
                                    si32(_loc32_ = int(_loc51_ + _loc32_),_loc1_ + 8);
                                    ESP = _loc1_;
                                    F__ZL28read_encoded_value_with_basehjPKhPj();
                                    _loc1_ += 16;
                                    _loc23_ = li32(_loc2_ - 84);
                                    si32(0,_loc2_ - 76);
                                    _loc29_ = li32((_loc32_ = li32(__ZTISt13bad_exception)) + 8);
                                    _loc27_ = _loc30_ | 4;
                                    si32(7,_loc27_);
                                    _loc1_ -= 16;
                                    si32(__ZTISt13bad_exception,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc29_]();
                                    _loc1_ += 16;
                                    _loc33_ = eax;
                                    if(_loc33_ != 0)
                                    {
                                       si32(_loc32_ = li32(_loc32_ = li32(_loc2_ - 76)),_loc2_ - 76);
                                    }
                                    _loc31_ = li32((_loc32_ = li32(_loc23_)) + 16);
                                    si32(8,_loc27_);
                                    _loc1_ -= 16;
                                    si32(1,_loc1_ + 12);
                                    si32(_loc32_ = int(_loc2_ - 76),_loc1_ + 8);
                                    si32(__ZTISt13bad_exception,_loc1_ + 4);
                                    si32(_loc23_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc31_]();
                                    _loc1_ += 16;
                                    _loc5_ = eax;
                                    _loc42_ = _loc41_ = 0;
                                    if(_loc5_ != 0)
                                    {
                                       _loc1_ -= 16;
                                       si32(4,_loc1_);
                                       ESP = _loc1_;
                                       F___cxa_allocate_exception();
                                       _loc32_ = int(__ZTVSt13bad_exception + 8);
                                       _loc1_ += 16;
                                       _loc4_ = eax;
                                       si32(_loc32_,_loc4_);
                                       si32(9,_loc27_);
                                       _loc1_ -= 16;
                                       si32(__ZNSt13bad_exceptionD1Ev,_loc1_ + 8);
                                       si32(__ZTISt13bad_exception,_loc1_ + 4);
                                       si32(_loc4_,_loc1_);
                                       ESP = _loc1_;
                                       F___cxa_throw();
                                       _loc1_ += 16;
                                       break;
                                    }
                                 }
                              }
                              addr1357:
                              _loc32_ = _loc30_ | 4;
                              _loc3_ = li32(_loc2_ - 64);
                              si32(10,_loc32_);
                              _loc1_ -= 16;
                              si32(_loc3_,_loc1_);
                              ESP = _loc1_;
                              F__ZN10__cxxabiv111__terminateEPFvvE();
                              addr1392:
                              _loc1_ += 16;
                              while(true)
                              {
                                 si32(11,_loc10_);
                                 ESP = _loc1_;
                                 F___cxa_end_catch();
                                 si32(-1,_loc10_);
                                 _loc1_ -= 16;
                                 si32(_loc9_,_loc1_);
                                 ESP = _loc1_;
                                 F__Unwind_SjLj_Resume();
                                 _loc1_ += 16;
                                 addr1427:
                                 while(true)
                                 {
                                    _loc8_ = li32(_loc2_ - 48);
                                    _loc6_ = li32(_loc2_ - 44);
                                    _loc13_ = __ZL10eh_globals;
                                    if((_loc32_ = li8(__ZL4init + 4)) != 0)
                                    {
                                       _loc32_ = li32(__ZL4init);
                                       _loc1_ -= 16;
                                       si32(_loc32_,_loc1_);
                                       ESP = _loc1_;
                                       F_pthread_getspecific();
                                       _loc1_ += 16;
                                       if((_loc13_ = eax) == 0)
                                       {
                                          _loc1_ -= 16;
                                          si32(8,_loc1_);
                                          ESP = _loc1_;
                                          F_malloc();
                                          _loc1_ += 16;
                                          if((_loc13_ = eax) != 0)
                                          {
                                             _loc32_ = li32(__ZL4init);
                                             _loc1_ -= 16;
                                             si32(_loc13_,_loc1_ + 4);
                                             si32(_loc32_,_loc1_);
                                             ESP = _loc1_;
                                             F_pthread_setspecific();
                                             _loc1_ += 16;
                                             if((_loc32_ = int(eax)) == 0)
                                             {
                                                si32(_loc26_,_loc13_);
                                                si32(_loc26_,_loc13_ + 4);
                                                addr1597:
                                                while(true)
                                                {
                                                   _loc32_ = (_loc32_ = li32(_loc8_ + 4)) ^ 1196315971;
                                                   _loc32_ = (_loc18_ = (_loc18_ = li32(_loc8_)) ^ 1126902528) | _loc32_;
                                                   _loc11_ = _loc8_ + -48;
                                                   _loc48_ = li32(_loc13_);
                                                   if(_loc32_ != 0)
                                                   {
                                                      if(_loc48_ != 0)
                                                      {
                                                         _loc32_ = _loc30_ | 4;
                                                         si32(13,_loc32_);
                                                         ESP = _loc1_;
                                                         F__ZSt9terminatev();
                                                      }
                                                      si32(_loc11_,_loc13_);
                                                      addr1743:
                                                      while(true)
                                                      {
                                                         _loc47_ = __ZL10eh_globals;
                                                         if((_loc32_ = li8(__ZL4init + 4)) != 0)
                                                         {
                                                            _loc32_ = li32(__ZL4init);
                                                            _loc1_ -= 16;
                                                            si32(_loc32_,_loc1_);
                                                            ESP = _loc1_;
                                                            F_pthread_getspecific();
                                                            _loc1_ += 16;
                                                            _loc47_ = eax;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr1743:
                                                   }
                                                   else
                                                   {
                                                      _loc32_ = (_loc18_ = li32(_loc8_ - 28)) >> 31;
                                                      si32(_loc32_ = int((_loc32_ = (_loc18_ += _loc32_) ^ _loc32_) + 1),_loc8_ - 28);
                                                      si32(_loc32_ = int((_loc32_ = li32(_loc13_ + 4)) + -1),_loc13_ + 4);
                                                      if(_loc11_ != _loc48_)
                                                      {
                                                         si32(_loc48_,_loc8_ - 32);
                                                         si32(_loc11_,_loc13_);
                                                      }
                                                      §§goto(addr1743);
                                                   }
                                                   §§goto(addr1743);
                                                }
                                                addr1597:
                                             }
                                             §§goto(addr1597);
                                          }
                                          _loc32_ = _loc30_ | 4;
                                          si32(12,_loc32_);
                                          ESP = _loc1_;
                                          F__ZSt9terminatev();
                                          while(true)
                                          {
                                             _loc32_ = li32(_loc2_ - 48);
                                             _loc12_ = li32(_loc2_ - 44);
                                             _loc1_ -= 16;
                                             si32(_loc32_,_loc1_);
                                             ESP = _loc1_;
                                             F___cxa_call_unexpected();
                                             _loc1_ += 16;
                                          }
                                          addr1566:
                                       }
                                    }
                                    §§goto(addr1597);
                                 }
                                 §§goto(addr1357);
                              }
                           }
                        }
                        §§goto(addr372);
                     }
                     _loc32_ = _loc30_ | 4;
                     si32(1,_loc32_);
                     ESP = _loc1_;
                     F__ZSt9terminatev();
                     addr341:
                     _loc32_ = li32(_loc2_ - 48);
                     _loc22_ = li32(_loc2_ - 44);
                     _loc1_ -= 16;
                     si32(_loc32_,_loc1_);
                     ESP = _loc1_;
                     F___cxa_call_unexpected();
                     _loc1_ += 16;
                  }
               }
               §§goto(addr372);
            }
            else
            {
               while(true)
               {
                  if((_loc60_ = li32(_loc32_ = _loc30_ | 4)) <= 9)
                  {
                     if(_loc60_ <= 1)
                     {
                        if(_loc60_ != 0)
                        {
                           if(_loc60_ != 1)
                           {
                              addr1906:
                              while(true)
                              {
                              }
                              addr1906:
                           }
                           else
                           {
                              _loc32_ = li32(_loc2_ - 48);
                              _loc55_ = li32(_loc2_ - 44);
                              _loc1_ -= 16;
                              si32(_loc32_,_loc1_);
                              ESP = _loc1_;
                              F___cxa_call_unexpected();
                              _loc1_ += 16;
                           }
                        }
                        else
                        {
                           §§goto(addr341);
                        }
                        §§goto(addr372);
                     }
                     else if(_loc60_ != 2)
                     {
                        if((uint(_loc32_ = int(_loc60_ + -3))) >= 7)
                        {
                           §§goto(addr1906);
                        }
                        else
                        {
                           _loc9_ = li32(_loc2_ - 48);
                           _loc52_ = li32(_loc2_ - 44);
                           _loc10_ = _loc30_ | 4;
                           si32(14,_loc10_);
                           ESP = _loc1_;
                           F___cxa_end_catch();
                           §§goto(addr1392);
                        }
                     }
                     §§goto(addr1427);
                  }
                  else if(_loc60_ <= 11)
                  {
                     if(_loc60_ == 10)
                     {
                        continue;
                     }
                     if(_loc60_ == 11)
                     {
                        §§goto(addr1566);
                     }
                  }
                  else
                  {
                     if(_loc60_ == 12)
                     {
                        _loc32_ = li32(_loc2_ - 48);
                        _loc46_ = li32(_loc2_ - 44);
                        _loc1_ -= 16;
                        si32(_loc32_,_loc1_);
                        ESP = _loc1_;
                        F___cxa_call_unexpected();
                        _loc1_ += 16;
                        break;
                     }
                     if(_loc60_ == 13)
                     {
                        _loc50_ = li32(_loc2_ - 48);
                        _loc59_ = li32(_loc2_ - 44);
                        ESP = _loc1_;
                        F__ZSt9terminatev();
                        continue;
                     }
                  }
                  §§goto(addr1906);
               }
            }
            §§goto(addr1743);
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc2_)
            {
               throw l;
            }
         }
         ESP = _loc1_ = l.esp;
         eax = l.retval;
         _loc7_ = l.sjid;
      }
   }
}
