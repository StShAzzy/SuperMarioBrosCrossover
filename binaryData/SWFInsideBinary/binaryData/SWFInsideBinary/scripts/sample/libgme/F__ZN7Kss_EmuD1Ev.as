package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_321;
   
   public function F__ZN7Kss_EmuD1Ev() : void
   {
      var _loc7_:* = 0;
      var _loc12_:int = 0;
      var _loc34_:* = 0;
      var _loc22_:* = 0;
      var _loc23_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc35_:* = 0;
      var _loc17_:* = 0;
      var _loc33_:int = 0;
      var _loc32_:int = 0;
      var _loc29_:* = 0;
      var _loc31_:* = 0;
      var _loc30_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc26_:int = 0;
      var _loc24_:int = 0;
      var _loc28_:* = 0;
      var _loc2_:* = 0;
      var _loc15_:* = 0;
      var _loc13_:* = 0;
      var _loc36_:* = 0;
      var _loc25_:* = 0;
      var _loc19_:* = 0;
      var _loc27_:* = 0;
      var _loc20_:* = 0;
      var _loc21_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc12_)
            {
               _loc7_ = _loc3_;
               _loc3_ -= 80;
               si32(_loc17_ = li32(_loc7_),_loc7_ - 68);
               si32(_loc17_ = li32(_loc7_ - 68),_loc7_ - 64);
               _loc36_ = int(__ZTV7Kss_Emu + 8);
               _loc17_ = li32(_loc7_ - 64);
               si32(_loc36_,_loc17_);
               _loc34_ = li32((_loc35_ = li32(_loc7_ - 68)) + 68872);
               si32(L_LSDA_321,_loc7_ - 28);
               si32(___gxx_personality_sj0,_loc7_ - 32);
               si32(_loc17_ = _loc7_,_loc7_ - 24);
               si32(_loc17_ = _loc3_,_loc7_ - 16);
               _loc32_ = (_loc33_ = _loc7_ - 56) + 32;
               eax = setjmp(_loc32_,1,_loc3_);
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
               si32(_loc33_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Register();
               _loc3_ += 16;
               if(_loc34_ != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc34_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               _loc17_ = int(_loc35_ + 68872);
               si32(0,_loc17_);
               si32(_loc17_ = li32(_loc7_ - 68),_loc7_ - 60);
               _loc31_ = _loc33_ | 4;
               _loc30_ = li32(_loc7_ - 60);
               si32(1,_loc31_);
               _loc3_ -= 16;
               si32(_loc30_,_loc3_);
               ESP = _loc3_;
               F__ZN9Music_Emu6unloadEv();
               _loc3_ += 16;
            }
            else
            {
               while(true)
               {
                  if((_loc29_ = li32(_loc17_ = _loc33_ | 4)) <= 2)
                  {
                     if(_loc29_ != 0)
                     {
                        if(_loc29_ != 1)
                        {
                           if(_loc29_ == 2)
                           {
                              _loc21_ = li32(_loc7_ - 48);
                              _loc16_ = li32(_loc7_ - 44);
                              ESP = _loc3_;
                              F__ZSt9terminatev();
                              §§goto(addr485);
                           }
                           while(true)
                           {
                           }
                           addr839:
                        }
                        else
                        {
                           while(true)
                           {
                              _loc18_ = li32(_loc7_ - 48);
                              _loc19_ = li32(_loc7_ - 44);
                              _loc27_ = _loc33_ | 4;
                              _loc20_ = li32(_loc7_ - 60);
                              si32(3,_loc27_);
                              _loc3_ -= 16;
                              si32(_loc20_,_loc3_);
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
                        }
                     }
                  }
                  else
                  {
                     if(_loc29_ == 3)
                     {
                        _loc6_ = li32(_loc7_ - 48);
                        _loc4_ = li32(_loc7_ - 44);
                        _loc5_ = _loc33_ | 4;
                        _loc1_ = li32(_loc7_ - 60);
                        si32(7,_loc5_);
                        _loc3_ -= 16;
                        si32(_loc1_,_loc3_);
                        ESP = _loc3_;
                        F__ZN9Music_EmuD2Ev();
                        _loc3_ += 16;
                        si32(5,_loc5_);
                        _loc3_ -= 16;
                        si32(_loc6_,_loc3_);
                        ESP = _loc3_;
                        F__Unwind_SjLj_Resume();
                        _loc3_ += 16;
                        break;
                     }
                     if((uint(_loc17_ = int(_loc29_ + -4))) >= 2)
                     {
                        if(_loc29_ == 6)
                        {
                           continue;
                        }
                        §§goto(addr839);
                     }
                     else
                     {
                        _loc15_ = li32(_loc7_ - 48);
                        _loc13_ = li32(_loc7_ - 44);
                        ESP = _loc3_;
                        F__ZSt9terminatev();
                     }
                  }
                  _loc14_ = li32(_loc7_ - 48);
                  _loc10_ = li32(_loc7_ - 44);
                  if((_loc11_ = li32((_loc17_ = li32(_loc7_ - 68)) + 904)) != 0)
                  {
                     _loc3_ -= 16;
                     si32(_loc11_,_loc3_);
                     ESP = _loc3_;
                     F_idalloc();
                     _loc3_ += 16;
                  }
                  _loc36_ = int(__ZTV11Classic_Emu + 8);
                  _loc17_ = li32(_loc7_ - 64);
                  si32(_loc36_,_loc17_);
                  if((_loc8_ = li32((_loc17_ = li32(_loc7_ - 68)) + 256)) != 0)
                  {
                     _loc9_ = li32((_loc17_ = li32(_loc8_)) + 4);
                     _loc17_ = _loc33_ | 4;
                     si32(4,_loc17_);
                     _loc3_ -= 16;
                     si32(_loc8_,_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc9_]();
                     _loc3_ += 16;
                     break;
                  }
                  break;
               }
               _loc28_ = _loc33_ | 4;
               _loc2_ = li32(_loc7_ - 60);
               si32(6,_loc28_);
               _loc3_ -= 16;
               si32(_loc2_,_loc3_);
               ESP = _loc3_;
               F__ZN9Music_EmuD2Ev();
               _loc3_ += 16;
               si32(-1,_loc28_);
               _loc3_ -= 16;
               si32(_loc14_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Resume();
               _loc3_ += 16;
            }
            if((_loc22_ = li32((_loc17_ = li32(_loc7_ - 68)) + 904)) != 0)
            {
               _loc3_ -= 16;
               si32(_loc22_,_loc3_);
               ESP = _loc3_;
               F_idalloc();
               _loc3_ += 16;
            }
            _loc17_ = int(__ZTV11Classic_Emu + 8);
            _loc36_ = li32(_loc7_ - 64);
            si32(_loc17_,_loc36_);
            if((_loc23_ = li32((_loc17_ = li32(_loc7_ - 68)) + 256)) != 0)
            {
               _loc25_ = li32((_loc17_ = li32(_loc23_)) + 4);
               si32(2,_loc31_);
               _loc3_ -= 16;
               si32(_loc23_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc25_]();
               _loc3_ += 16;
            }
            addr485:
            _loc17_ = li32(_loc7_ - 60);
            si32(-1,_loc31_);
            _loc3_ -= 16;
            si32(_loc17_,_loc3_);
            ESP = _loc3_;
            F__ZN9Music_EmuD2Ev();
            _loc3_ += 16;
            _loc3_ -= 16;
            si32(_loc33_,_loc3_);
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
