package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1256;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1617;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2618;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3619;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4620;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str616;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b;
   
   public function F__ZN9__gnu_cxx27__verbose_terminate_handlerEv() : void
   {
      var _loc9_:* = 0;
      var _loc14_:int = 0;
      var _loc5_:* = 0;
      var _loc19_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:int = 0;
      var _loc16_:* = 0;
      var _loc13_:* = 0;
      var _loc21_:int = 0;
      var _loc20_:int = 0;
      var _loc2_:* = 0;
      var _loc3_:* = 0;
      var _loc15_:int = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc22_:* = 0;
      var _loc4_:int = ESP;
      while(true)
      {
         try
         {
            if(!_loc14_)
            {
               _loc9_ = _loc4_;
               _loc4_ -= 64;
               _loc5_ = li8(__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
               si32(L_LSDA_1256,_loc9_ - 28);
               si32(___gxx_personality_sj0,_loc9_ - 32);
               si32(_loc22_ = _loc9_,_loc9_ - 24);
               si32(_loc22_ = _loc4_,_loc9_ - 16);
               _loc20_ = (_loc21_ = _loc9_ - 56) + 32;
               eax = setjmp(_loc20_,1,_loc4_);
            }
            else
            {
               switch(int(_loc14_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc22_ = int(eax)) == 0)
            {
               _loc4_ -= 16;
               si32(_loc21_,_loc4_);
               ESP = _loc4_;
               F__Unwind_SjLj_Register();
               _loc4_ += 16;
               if((_loc22_ = _loc5_ & 1) != 0)
               {
                  _loc22_ = li32(___stderrp);
                  _loc4_ -= 16;
                  si32(_loc22_,_loc4_ + 12);
                  si32(29,_loc4_ + 8);
                  si32(1,_loc4_ + 4);
                  si32(L__2E_str616,_loc4_);
                  ESP = _loc4_;
                  F_fwrite();
                  ESP = _loc4_ += 16;
                  F_abort();
               }
               si8(1,__ZZN9__gnu_cxx27__verbose_terminate_handlerEvE11terminating_2E_b);
               ESP = _loc4_;
               F___cxa_current_exception_type();
               addr648:
               if((_loc19_ = eax) != 0)
               {
                  _loc18_ = li32(_loc19_ + 4);
                  si32(-1,_loc9_ - 60);
                  _loc4_ -= 16;
                  si32(_loc22_ = int(_loc9_ - 60),_loc4_ + 12);
                  si32(0,_loc4_ + 8);
                  si32(0,_loc4_ + 4);
                  si32(_loc18_,_loc4_);
                  ESP = _loc4_;
                  F___cxa_demangle();
                  _loc4_ += 16;
                  _loc17_ = eax;
                  _loc22_ = li32(___stderrp);
                  _loc4_ -= 16;
                  si32(_loc22_,_loc4_ + 12);
                  si32(48,_loc4_ + 8);
                  si32(1,_loc4_ + 4);
                  si32(L__2E_str1617,_loc4_);
                  ESP = _loc4_;
                  F_fwrite();
                  _loc4_ += 16;
                  _loc16_ = li32(___stderrp);
                  if((_loc22_ = li32(_loc9_ - 60)) == 0)
                  {
                     _loc4_ -= 16;
                     si32(_loc16_,_loc4_ + 4);
                     si32(_loc17_,_loc4_);
                     ESP = _loc4_;
                     F_fputs();
                     _loc4_ += 16;
                  }
                  else
                  {
                     _loc4_ -= 16;
                     si32(_loc16_,_loc4_ + 4);
                     si32(_loc18_,_loc4_);
                     ESP = _loc4_;
                     F_fputs();
                     _loc4_ += 16;
                  }
                  _loc22_ = li32(___stderrp);
                  _loc4_ -= 16;
                  si32(_loc22_,_loc4_ + 12);
                  si32(2,_loc4_ + 8);
                  si32(1,_loc4_ + 4);
                  si32(L__2E_str2618,_loc4_);
                  ESP = _loc4_;
                  F_fwrite();
                  _loc4_ += 16;
                  if((_loc22_ = li32(_loc9_ - 60)) == 0)
                  {
                     if(_loc17_ != 0)
                     {
                        _loc4_ -= 16;
                        si32(_loc17_,_loc4_);
                        ESP = _loc4_;
                        F_idalloc();
                        _loc4_ += 16;
                     }
                  }
                  _loc22_ = _loc21_ | 4;
                  si32(1,_loc22_);
                  ESP = _loc4_;
                  F___cxa_rethrow();
                  while(true)
                  {
                     _loc1_ = li32((_loc22_ = li32(_loc15_)) + 8);
                     _loc10_ = _loc21_ | 4;
                     si32(2,_loc10_);
                     _loc4_ -= 16;
                     si32(_loc15_,_loc4_);
                     ESP = _loc4_;
                     ptr2fun[_loc1_]();
                     _loc4_ += 16;
                     _loc11_ = eax;
                     addr508:
                     while(true)
                     {
                        _loc22_ = li32(___stderrp);
                        _loc4_ -= 16;
                        si32(_loc22_,_loc4_ + 12);
                        si32(11,_loc4_ + 8);
                        si32(1,_loc4_ + 4);
                        si32(L__2E_str3619,_loc4_);
                        ESP = _loc4_;
                        F_fwrite();
                        _loc4_ += 16;
                        _loc22_ = li32(___stderrp);
                        _loc4_ -= 16;
                        si32(_loc22_,_loc4_ + 4);
                        si32(_loc11_,_loc4_);
                        ESP = _loc4_;
                        F_fputs();
                        _loc4_ += 16;
                        _loc22_ = li32(___stderrp);
                        _loc4_ -= 16;
                        si32(_loc22_,_loc4_ + 4);
                        si32(10,_loc4_);
                        ESP = _loc4_;
                        F_fputc();
                        _loc4_ += 16;
                        si32(-1,_loc10_);
                        ESP = _loc4_;
                        F___cxa_end_catch();
                     }
                  }
                  addr439:
               }
               else
               {
                  _loc22_ = li32(___stderrp);
                  _loc4_ -= 16;
                  si32(_loc22_,_loc4_ + 12);
                  si32(45,_loc4_ + 8);
                  si32(1,_loc4_ + 4);
                  si32(L__2E_str4620,_loc4_);
                  ESP = _loc4_;
                  F_fwrite();
                  _loc4_ += 16;
               }
               while(true)
               {
                  ESP = _loc4_;
                  F_abort();
               }
               addr648:
            }
            else
            {
               _loc2_ = li32(_loc22_ = _loc21_ | 4);
               if(_loc2_ != 0)
               {
                  if(_loc2_ != 1)
                  {
                     if(_loc2_ != 2)
                     {
                        while(true)
                        {
                        }
                     }
                     else
                     {
                        _loc7_ = li32(_loc9_ - 48);
                        _loc8_ = li32(_loc9_ - 44);
                        ESP = _loc4_;
                        F__ZSt9terminatev();
                        while(true)
                        {
                           _loc22_ = _loc21_ | 4;
                           si32(-1,_loc22_);
                           ESP = _loc4_;
                           F___cxa_end_catch();
                           §§goto(addr648);
                           addr692:
                        }
                     }
                  }
                  else
                  {
                     _loc13_ = li32(_loc9_ - 48);
                     _loc6_ = li32(_loc9_ - 44);
                     _loc12_ = _loc21_ | 4;
                     si32(3,_loc12_);
                     ESP = _loc4_;
                     F___cxa_end_catch();
                     si32(-1,_loc12_);
                     _loc4_ -= 16;
                     si32(_loc13_,_loc4_);
                     ESP = _loc4_;
                     F__Unwind_SjLj_Resume();
                     _loc4_ += 16;
                  }
                  §§goto(addr508);
               }
            }
            while(true)
            {
               _loc22_ = li32(_loc9_ - 48);
               _loc3_ = li32(_loc9_ - 44);
               _loc4_ -= 16;
               si32(_loc22_,_loc4_);
               ESP = _loc4_;
               F___cxa_begin_catch();
               _loc4_ += 16;
               _loc15_ = eax;
               if(_loc3_ != 2)
               {
                  §§goto(addr692);
               }
               else
               {
                  §§goto(addr439);
               }
            }
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc9_)
            {
               throw l;
            }
            continue;
         }
      }
   }
}
