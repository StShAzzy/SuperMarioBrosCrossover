package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_490;
   
   public function F__ZN7Nsf_EmuD1Ev() : void
   {
      var _loc7_:* = 0;
      var _loc12_:int = 0;
      var _loc40_:* = 0;
      var _loc39_:* = 0;
      var _loc33_:* = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc14_:* = 0;
      var _loc22_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc15_:* = 0;
      var _loc18_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc24_:* = 0;
      var _loc37_:int = 0;
      var _loc35_:int = 0;
      var _loc17_:* = 0;
      var _loc36_:* = 0;
      var _loc23_:* = 0;
      var _loc25_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc28_:* = 0;
      var _loc26_:* = 0;
      var _loc34_:* = 0;
      var _loc32_:int = 0;
      var _loc38_:int = 0;
      var _loc27_:* = 0;
      var _loc30_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc41_:* = 0;
      var _loc21_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc12_)
            {
               _loc7_ = _loc3_;
               _loc3_ -= 80;
               si32(_loc17_ = li32(_loc7_),_loc7_ - 72);
               si32(_loc17_ = li32(_loc7_ - 72),_loc7_ - 68);
               _loc41_ = int(__ZTV7Nsf_Emu + 8);
               _loc17_ = li32(_loc7_ - 68);
               si32(_loc41_,_loc17_);
               _loc39_ = li32((_loc40_ = li32(_loc7_ - 72)) + 2568);
               si32(L_LSDA_490,_loc7_ - 28);
               si32(___gxx_personality_sj0,_loc7_ - 32);
               si32(_loc17_ = _loc7_,_loc7_ - 24);
               si32(_loc17_ = _loc3_,_loc7_ - 16);
               _loc35_ = (_loc37_ = _loc7_ - 56) + 32;
               eax = setjmp(_loc35_,1,_loc3_);
            }
            else
            {
               switch(int(_loc12_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc17_ = int(eax)) == 0)
            {
               _loc3_ -= 16;
               si32(_loc37_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Register();
               _loc3_ += 16;
               if(_loc39_ != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc39_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               si32(0,_loc40_ + 2568);
               if((_loc31_ = li32((_loc33_ = li32(_loc7_ - 72)) + 2564)) != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc31_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               si32(0,_loc33_ + 2564);
               if((_loc14_ = li32((_loc29_ = li32(_loc7_ - 72)) + 2572)) != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc14_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               si32(0,_loc29_ + 2572);
               si32(_loc17_ = int((_loc17_ = li32(_loc7_ - 72)) + 2540),_loc7_ - 64);
               _loc22_ = li32(_loc17_ = li32(_loc7_ - 64));
               _loc17_ = li32(_loc7_ - 64);
               si32(0,_loc17_);
               _loc17_ = li32(_loc7_ - 72);
               si32(0,_loc17_ + 2544);
               if(_loc22_ != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc22_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               si32(_loc17_ = li32(_loc7_ - 72),_loc7_ - 60);
               _loc23_ = _loc37_ | 4;
               _loc25_ = li32(_loc7_ - 60);
               si32(1,_loc23_);
               _loc3_ -= 16;
               si32(_loc25_,_loc3_);
               ESP = _loc3_;
               F__ZN9Music_Emu6unloadEv();
               _loc3_ += 16;
            }
            else
            {
               while(true)
               {
                  if((_loc36_ = li32(_loc17_ = _loc37_ | 4)) <= 2)
                  {
                     if(_loc36_ != 0)
                     {
                        if(_loc36_ != 1)
                        {
                           if(_loc36_ == 2)
                           {
                              _loc11_ = li32(_loc7_ - 48);
                              _loc8_ = li32(_loc7_ - 44);
                              ESP = _loc3_;
                              F__ZSt9terminatev();
                              §§goto(addr633);
                           }
                           while(true)
                           {
                           }
                           addr985:
                        }
                        else
                        {
                           while(true)
                           {
                              _loc15_ = li32(_loc7_ - 48);
                              _loc13_ = li32(_loc7_ - 44);
                              _loc16_ = _loc37_ | 4;
                              _loc10_ = li32(_loc7_ - 60);
                              si32(3,_loc16_);
                              _loc3_ -= 16;
                              si32(_loc10_,_loc3_);
                              ESP = _loc3_;
                              F__ZN9Music_EmuD2Ev();
                              _loc3_ += 16;
                              si32(-1,_loc16_);
                              _loc3_ -= 16;
                              si32(_loc15_,_loc3_);
                              ESP = _loc3_;
                              F__Unwind_SjLj_Resume();
                              _loc3_ += 16;
                           }
                        }
                     }
                  }
                  else
                  {
                     if(_loc36_ == 3)
                     {
                        _loc24_ = li32(_loc7_ - 48);
                        _loc28_ = li32(_loc7_ - 44);
                        _loc26_ = _loc37_ | 4;
                        _loc34_ = li32(_loc7_ - 60);
                        si32(7,_loc26_);
                        _loc3_ -= 16;
                        si32(_loc34_,_loc3_);
                        ESP = _loc3_;
                        F__ZN9Music_EmuD2Ev();
                        _loc3_ += 16;
                        si32(5,_loc26_);
                        _loc3_ -= 16;
                        si32(_loc24_,_loc3_);
                        ESP = _loc3_;
                        F__Unwind_SjLj_Resume();
                        _loc3_ += 16;
                        break;
                     }
                     if((uint(_loc17_ = int(_loc36_ + -4))) >= 2)
                     {
                        if(_loc36_ == 6)
                        {
                           continue;
                        }
                        §§goto(addr985);
                     }
                     else
                     {
                        _loc9_ = li32(_loc7_ - 48);
                        _loc5_ = li32(_loc7_ - 44);
                        ESP = _loc3_;
                        F__ZSt9terminatev();
                     }
                  }
                  _loc18_ = li32(_loc7_ - 48);
                  _loc6_ = li32(_loc7_ - 44);
                  _loc2_ = li32(_loc17_ = li32(_loc7_ - 64));
                  if(_loc2_ != 0)
                  {
                     _loc3_ -= 16;
                     si32(_loc2_,_loc3_);
                     ESP = _loc3_;
                     F_idalloc();
                     _loc3_ += 16;
                  }
                  _loc41_ = int(__ZTV11Classic_Emu + 8);
                  _loc17_ = li32(_loc7_ - 68);
                  si32(_loc41_,_loc17_);
                  if((_loc4_ = li32((_loc17_ = li32(_loc7_ - 72)) + 256)) != 0)
                  {
                     _loc1_ = li32((_loc17_ = li32(_loc4_)) + 4);
                     _loc17_ = _loc37_ | 4;
                     si32(4,_loc17_);
                     _loc3_ -= 16;
                     si32(_loc4_,_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc1_]();
                     _loc3_ += 16;
                     break;
                  }
                  break;
               }
               _loc27_ = _loc37_ | 4;
               _loc30_ = li32(_loc7_ - 60);
               si32(6,_loc27_);
               _loc3_ -= 16;
               si32(_loc30_,_loc3_);
               ESP = _loc3_;
               F__ZN9Music_EmuD2Ev();
               _loc3_ += 16;
               si32(-1,_loc27_);
               _loc3_ -= 16;
               si32(_loc18_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Resume();
               _loc3_ += 16;
            }
            if((_loc19_ = li32(_loc17_ = li32(_loc7_ - 64))) != 0)
            {
               _loc3_ -= 16;
               si32(_loc19_,_loc3_);
               ESP = _loc3_;
               F_idalloc();
               _loc3_ += 16;
            }
            _loc17_ = int(__ZTV11Classic_Emu + 8);
            _loc41_ = li32(_loc7_ - 68);
            si32(_loc17_,_loc41_);
            if((_loc20_ = li32((_loc17_ = li32(_loc7_ - 72)) + 256)) != 0)
            {
               _loc21_ = li32((_loc17_ = li32(_loc20_)) + 4);
               si32(2,_loc23_);
               _loc3_ -= 16;
               si32(_loc20_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc21_]();
               _loc3_ += 16;
            }
            addr633:
            _loc17_ = li32(_loc7_ - 60);
            si32(-1,_loc23_);
            _loc3_ -= 16;
            si32(_loc17_,_loc3_);
            ESP = _loc3_;
            F__ZN9Music_EmuD2Ev();
            _loc3_ += 16;
            _loc3_ -= 16;
            si32(_loc37_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Unregister();
            _loc3_ += 16;
            _loc3_ = _loc7_;
            ESP = _loc3_;
            return;
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc7_)
            {
               throw l;
            }
         }
         ESP = _loc3_ = int(l.esp);
         eax = l.retval;
         _loc12_ = l.sjid;
      }
   }
}
