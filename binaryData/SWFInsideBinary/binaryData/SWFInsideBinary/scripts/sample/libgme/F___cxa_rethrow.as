package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1185;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL10eh_globals;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL4init;
   
   public function F___cxa_rethrow() : void
   {
      var _loc6_:* = 0;
      var _loc11_:int = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc18_:int = 0;
      var _loc17_:int = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc19_:* = 0;
      var _loc2_:int = 0;
      var _loc13_:* = 0;
      var _loc16_:int = 0;
      var _loc7_:int = 0;
      var _loc3_:int = ESP;
      while(true)
      {
         try
         {
            if(!_loc11_)
            {
               _loc6_ = _loc3_;
               _loc3_ -= 64;
               _loc4_ = li8(__ZL4init + 4);
               si32(L_LSDA_1185,_loc6_ - 28);
               si32(___gxx_personality_sj0,_loc6_ - 32);
               si32(_loc19_ = _loc6_,_loc6_ - 24);
               si32(_loc19_ = _loc3_,_loc6_ - 16);
               _loc17_ = (_loc18_ = _loc6_ - 56) + 32;
               eax = setjmp(_loc17_,1,_loc3_);
            }
            else
            {
               switch(int(_loc11_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc19_ = int(eax)) == 0)
            {
               _loc3_ -= 16;
               si32(_loc18_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Register();
               _loc3_ += 16;
               _loc19_ = _loc4_ & 255;
               _loc16_ = __ZL10eh_globals;
               if(_loc19_ != 0)
               {
                  _loc19_ = li32(__ZL4init);
                  _loc3_ -= 16;
                  si32(_loc19_,_loc3_);
                  ESP = _loc3_;
                  F_pthread_getspecific();
                  _loc3_ += 16;
                  if((_loc16_ = eax) == 0)
                  {
                     _loc3_ -= 16;
                     si32(8,_loc3_);
                     ESP = _loc3_;
                     F_malloc();
                     _loc3_ += 16;
                     if((_loc16_ = eax) != 0)
                     {
                        _loc19_ = li32(__ZL4init);
                        _loc3_ -= 16;
                        si32(_loc16_,_loc3_ + 4);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F_pthread_setspecific();
                        _loc3_ += 16;
                        if((_loc19_ = int(eax)) == 0)
                        {
                           si32(0,_loc16_);
                           si32(0,_loc16_ + 4);
                           addr286:
                           loop2:
                           while(true)
                           {
                              _loc14_ = li32(_loc16_);
                              si32(_loc19_ = int((_loc19_ = li32(_loc16_ + 4)) + 1),_loc16_ + 4);
                              if(_loc14_ != 0)
                              {
                                 _loc19_ = (_loc19_ = li32(_loc14_ + 52)) ^ 1196315971;
                                 if((_loc19_ = (_loc13_ = (_loc13_ = li32(_loc14_ + 48)) ^ 1126902528) | _loc19_) != 0)
                                 {
                                    si32(0,_loc16_);
                                 }
                                 else
                                 {
                                    _loc19_ = li32(_loc14_ + 20);
                                    si32(_loc19_ = int(0 - _loc19_),_loc14_ + 20);
                                 }
                                 _loc12_ = _loc18_ | 4;
                                 si32(-1,_loc12_);
                                 _loc3_ -= 16;
                                 _loc1_ = _loc14_ + 48;
                                 si32(_loc1_,_loc3_);
                                 ESP = _loc3_;
                                 F__Unwind_SjLj_Resume_or_Rethrow();
                                 _loc3_ += 16;
                                 _loc7_ = __ZL10eh_globals;
                                 if((_loc19_ = li8(__ZL4init + 4)) != 0)
                                 {
                                    _loc19_ = li32(__ZL4init);
                                    _loc3_ -= 16;
                                    si32(_loc19_,_loc3_);
                                    ESP = _loc3_;
                                    F_pthread_getspecific();
                                    _loc3_ += 16;
                                    if((_loc7_ = eax) == 0)
                                    {
                                       _loc3_ -= 16;
                                       si32(8,_loc3_);
                                       ESP = _loc3_;
                                       F_malloc();
                                       _loc3_ += 16;
                                       if((_loc7_ = eax) != 0)
                                       {
                                          _loc19_ = li32(__ZL4init);
                                          _loc3_ -= 16;
                                          si32(_loc7_,_loc3_ + 4);
                                          si32(_loc19_,_loc3_);
                                          ESP = _loc3_;
                                          F_pthread_setspecific();
                                          _loc3_ += 16;
                                          if((_loc19_ = int(eax)) == 0)
                                          {
                                             si32(0,_loc7_);
                                             si32(0,_loc7_ + 4);
                                             addr541:
                                             loop4:
                                             while(true)
                                             {
                                                _loc19_ = (_loc19_ = li32(_loc14_ + 52)) ^ 1196315971;
                                                _loc19_ = (_loc13_ = (_loc13_ = li32(_loc14_ + 48)) ^ 1126902528) | _loc19_;
                                                _loc9_ = _loc1_ + -48;
                                                _loc10_ = li32(_loc7_);
                                                if(_loc19_ != 0)
                                                {
                                                   if(_loc10_ != 0)
                                                   {
                                                      si32(3,_loc12_);
                                                      ESP = _loc3_;
                                                      F__ZSt9terminatev();
                                                   }
                                                   si32(_loc9_,_loc7_);
                                                   addr685:
                                                   loop5:
                                                   while(true)
                                                   {
                                                      _loc19_ = _loc18_ | 4;
                                                      si32(-1,_loc19_);
                                                      ESP = _loc3_;
                                                      F__ZSt9terminatev();
                                                      addr699:
                                                      while(true)
                                                      {
                                                         if((_loc5_ = li32(_loc19_ = _loc18_ | 4)) != 0)
                                                         {
                                                            if(_loc5_ != 1)
                                                            {
                                                               if(_loc5_ != 2)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop5;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop2;
                                                      }
                                                      while(true)
                                                      {
                                                      }
                                                   }
                                                   addr685:
                                                }
                                                else
                                                {
                                                   _loc19_ = (_loc13_ = li32(_loc1_ - 28)) >> 31;
                                                   si32(_loc19_ = int((_loc19_ = (_loc13_ += _loc19_) ^ _loc19_) + 1),_loc1_ - 28);
                                                   si32(_loc19_ = int((_loc19_ = li32(_loc7_ + 4)) + -1),_loc7_ + 4);
                                                   if(_loc9_ != _loc10_)
                                                   {
                                                      si32(_loc10_,_loc1_ - 32);
                                                      si32(_loc9_,_loc7_);
                                                   }
                                                   §§goto(addr685);
                                                }
                                                §§goto(addr685);
                                             }
                                             addr541:
                                          }
                                          else
                                          {
                                             addr497:
                                             si32(2,_loc12_);
                                             ESP = _loc3_;
                                             F__ZSt9terminatev();
                                          }
                                          while(true)
                                          {
                                             _loc19_ = li32(_loc6_ - 48);
                                             _loc8_ = li32(_loc6_ - 44);
                                             _loc3_ -= 16;
                                             si32(_loc19_,_loc3_);
                                             ESP = _loc3_;
                                             F___cxa_call_unexpected();
                                             _loc3_ += 16;
                                             §§goto(addr541);
                                          }
                                       }
                                       §§goto(addr497);
                                    }
                                 }
                                 §§goto(addr541);
                              }
                              §§goto(addr685);
                           }
                           addr286:
                        }
                        else
                        {
                           addr238:
                           _loc19_ = _loc18_ | 4;
                           si32(1,_loc19_);
                           ESP = _loc3_;
                           F__ZSt9terminatev();
                        }
                        while(true)
                        {
                           _loc19_ = li32(_loc6_ - 48);
                           _loc15_ = li32(_loc6_ - 44);
                           _loc3_ -= 16;
                           si32(_loc19_,_loc3_);
                           ESP = _loc3_;
                           F___cxa_call_unexpected();
                           _loc3_ += 16;
                           §§goto(addr286);
                        }
                     }
                     §§goto(addr238);
                  }
               }
               §§goto(addr286);
            }
            §§goto(addr699);
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc6_)
            {
               throw l;
            }
         }
         ESP = _loc3_ = l.esp;
         eax = l.retval;
         _loc11_ = l.sjid;
      }
   }
}
