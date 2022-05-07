package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1232;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL10eh_globals;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL14emergency_used;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL16emergency_buffer;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL4init;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZN12_GLOBAL__N_115emergency_mutexE;
   
   public function F___cxa_allocate_exception() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc11_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc4_)
            {
               _loc3_ = _loc2_;
               _loc2_ -= 64;
               _loc2_ -= 16;
               _loc1_ = li32(_loc3_);
               si32(_loc11_ = int(_loc1_ + 80),_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc2_ += 16;
               _loc10_ = int(eax);
               si32(L_LSDA_1232,_loc3_ - 28);
               si32(___gxx_personality_sj0,_loc3_ - 32);
               _loc1_ = _loc3_;
               si32(_loc1_,_loc3_ - 24);
               _loc1_ = _loc2_;
               si32(_loc1_,_loc3_ - 16);
               _loc8_ = int((_loc9_ = int(_loc3_ - 56)) + 32);
               eax = setjmp(_loc8_,1,_loc2_);
            }
            else
            {
               switch(int(_loc4_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            _loc1_ = int(eax);
            if(_loc1_ != 0)
            {
               while(true)
               {
                  _loc1_ = _loc9_ | 4;
                  if((_loc8_ = li32(_loc1_)) <= 2)
                  {
                     if(uint(_loc8_) < 2)
                     {
                        _loc8_ = li32(_loc3_ - 48);
                        _loc9_ = li32(_loc3_ - 44);
                        continue;
                     }
                     if(_loc8_ != 2)
                     {
                        while(true)
                        {
                        }
                        addr915:
                     }
                     else
                     {
                        _loc8_ = li32(_loc3_ - 48);
                        _loc10_ = li32(_loc3_ - 44);
                        _loc9_ |= 4;
                        si32(7,_loc9_);
                        _loc2_ -= 16;
                        si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
                        ESP = _loc2_;
                        F_pthread_mutex_unlock();
                        _loc2_ += 16;
                        _loc10_ = int(eax);
                        if(_loc10_ == 0)
                        {
                           continue;
                        }
                        _loc2_ -= 16;
                        si32(4,_loc2_);
                        ESP = _loc2_;
                        F___cxa_allocate_exception();
                        _loc1_ = int(__ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8);
                        _loc2_ += 16;
                        _loc8_ = int(eax);
                        si32(_loc1_,_loc8_);
                        si32(8,_loc9_);
                        _loc2_ -= 16;
                        si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
                        si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F___cxa_throw();
                        _loc2_ += 16;
                     }
                  }
                  else
                  {
                     _loc1_ = int(_loc8_ + -3);
                     if(uint(_loc1_) >= 2)
                     {
                        if(_loc8_ != 5)
                        {
                           _loc1_ = int(_loc8_ + -6);
                           if(uint(_loc1_) < 2)
                           {
                              addr819:
                              _loc1_ = li32(_loc3_ - 48);
                              _loc9_ = li32(_loc3_ - 44);
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F___cxa_call_unexpected();
                              _loc2_ += 16;
                              continue;
                           }
                           §§goto(addr915);
                        }
                     }
                     else
                     {
                        §§goto(addr421);
                     }
                     §§goto(addr580);
                  }
                  §§goto(addr819);
               }
               addr611:
               _loc1_ = li32(_loc8_ + 4);
               _loc1_ += 1;
               si32(_loc1_,_loc8_ + 4);
               _loc2_ -= 16;
               si32(80,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
               _loc2_ -= 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               _loc1_ = int(_loc10_ + 80);
               eax = _loc1_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
            _loc2_ -= 16;
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F__Unwind_SjLj_Register();
            _loc2_ += 16;
            if(_loc10_ == 0)
            {
               _loc8_ = _loc9_ | 4;
               si32(1,_loc8_);
               _loc2_ -= 16;
               si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
               ESP = _loc2_;
               F_pthread_mutex_lock();
               _loc2_ += 16;
               _loc7_ = eax;
               if(_loc7_ != 0)
               {
                  _loc2_ -= 16;
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc1_ = int(__ZTVN9__gnu_cxx24__concurrence_lock_errorE + 8);
                  _loc2_ += 16;
                  _loc9_ = int(eax);
                  si32(_loc1_,_loc9_);
                  si32(2,_loc8_);
                  _loc2_ -= 16;
                  si32(__ZN9__gnu_cxx24__concurrence_lock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx24__concurrence_lock_errorE,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ += 16;
               }
               if(uint(_loc11_) <= 512)
               {
                  _loc7_ = __ZL16emergency_buffer;
                  _loc6_ = _loc11_ = li32(__ZL14emergency_used);
                  _loc5_ = 0;
                  do
                  {
                     _loc1_ = _loc6_ & 1;
                     if(_loc1_ == 0)
                     {
                        _loc1_ = 1 << _loc5_;
                        _loc1_ |= _loc11_;
                        si32(_loc1_,__ZL14emergency_used);
                        _loc10_ = _loc7_;
                        break;
                     }
                     _loc7_ += 512;
                     _loc6_ >>>= 1;
                  }
                  while((uint(_loc5_ += 1)) <= 31);
                  
               }
               if(_loc10_ == 0)
               {
                  si32(3,_loc8_);
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
               si32(4,_loc8_);
               _loc2_ -= 16;
               si32(__ZN12_GLOBAL__N_115emergency_mutexE,_loc2_);
               ESP = _loc2_;
               F_pthread_mutex_unlock();
               _loc2_ += 16;
               _loc11_ = int(eax);
               if(_loc11_ != 0)
               {
                  _loc2_ -= 16;
                  si32(4,_loc2_);
                  ESP = _loc2_;
                  F___cxa_allocate_exception();
                  _loc1_ = int(__ZTVN9__gnu_cxx26__concurrence_unlock_errorE + 8);
                  _loc2_ += 16;
                  _loc9_ = int(eax);
                  si32(_loc1_,_loc9_);
                  si32(5,_loc8_);
                  _loc2_ -= 16;
                  si32(__ZN9__gnu_cxx26__concurrence_unlock_errorD1Ev,_loc2_ + 8);
                  si32(__ZTIN9__gnu_cxx26__concurrence_unlock_errorE,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_throw();
                  _loc2_ += 16;
                  addr421:
                  _loc1_ = li32(_loc3_ - 48);
                  _loc9_ = li32(_loc3_ - 44);
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_call_unexpected();
                  _loc2_ += 16;
               }
            }
            _loc8_ = int(__ZL10eh_globals);
            _loc1_ = li8(__ZL4init + 4);
            if(_loc1_ != 0)
            {
               _loc1_ = li32(__ZL4init);
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_pthread_getspecific();
               _loc2_ += 16;
               if((_loc8_ = int(eax)) == 0)
               {
                  _loc2_ -= 16;
                  si32(8,_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ += 16;
                  if((_loc8_ = int(eax)) != 0)
                  {
                     _loc1_ = li32(__ZL4init);
                     _loc2_ -= 16;
                     si32(_loc8_,_loc2_ + 4);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_pthread_setspecific();
                     _loc2_ += 16;
                     _loc1_ = int(eax);
                     if(_loc1_ == 0)
                     {
                        si32(0,_loc8_);
                        si32(0,_loc8_ + 4);
                     }
                     §§goto(addr611);
                  }
                  _loc1_ = _loc9_ | 4;
                  si32(6,_loc1_);
                  ESP = _loc2_;
                  F__ZSt9terminatev();
                  addr580:
                  _loc1_ = li32(_loc3_ - 48);
                  _loc9_ = li32(_loc3_ - 44);
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_call_unexpected();
                  _loc2_ += 16;
               }
            }
            §§goto(addr611);
            §§goto(addr421);
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc3_)
            {
               throw l;
            }
         }
         ESP = _loc2_ = int(l.esp);
         eax = l.retval;
         _loc4_ = l.sjid;
      }
   }
}
