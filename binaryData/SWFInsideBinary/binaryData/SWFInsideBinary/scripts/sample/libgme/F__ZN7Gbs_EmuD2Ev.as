package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_271;
   
   public function F__ZN7Gbs_EmuD2Ev() : void
   {
      var _loc5_:* = 0;
      var _loc10_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc2_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc10_)
            {
               _loc5_ = _loc3_;
               _loc3_ -= 64;
               si32(_loc4_ = li32(_loc5_),_loc5_ - 60);
               _loc4_ = int(__ZTV7Gbs_Emu + 8);
               _loc18_ = li32(_loc5_ - 60);
               si32(_loc4_,_loc18_);
               _loc17_ = li32((_loc4_ = li32(_loc5_ - 60)) + 336);
               si32(L_LSDA_271,_loc5_ - 28);
               si32(___gxx_personality_sj0,_loc5_ - 32);
               si32(_loc4_ = _loc5_,_loc5_ - 24);
               si32(_loc4_ = _loc3_,_loc5_ - 16);
               _loc15_ = (_loc16_ = _loc5_ - 56) + 32;
               eax = setjmp(_loc15_,1,_loc3_);
            }
            else
            {
               switch(int(_loc10_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc4_ = int(eax)) == 0)
            {
               _loc3_ -= 16;
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__Unwind_SjLj_Register();
               _loc3_ += 16;
               if(_loc17_ != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc17_,_loc3_);
                  ESP = _loc3_;
                  F_idalloc();
                  _loc3_ += 16;
               }
               si32(_loc4_ = int(__ZTV11Classic_Emu + 8),_loc18_);
               if((_loc14_ = li32((_loc4_ = li32(_loc5_ - 60)) + 256)) != 0)
               {
                  _loc13_ = li32((_loc4_ = li32(_loc14_)) + 4);
                  _loc4_ = _loc16_ | 4;
                  si32(1,_loc4_);
                  _loc3_ -= 16;
                  si32(_loc14_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc13_]();
                  _loc3_ += 16;
               }
            }
            else
            {
               _loc2_ = li32(_loc4_ = _loc16_ | 4);
               if(_loc2_ != 0)
               {
                  if(_loc2_ != 1)
                  {
                     while(true)
                     {
                     }
                  }
                  else
                  {
                     _loc7_ = li32(_loc5_ - 48);
                     _loc8_ = li32(_loc5_ - 44);
                     ESP = _loc3_;
                     F__ZSt9terminatev();
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc11_ = li32(_loc5_ - 48);
                     _loc1_ = li32(_loc5_ - 44);
                     _loc12_ = _loc16_ | 4;
                     _loc6_ = li32(_loc5_ - 60);
                     si32(2,_loc12_);
                     _loc3_ -= 16;
                     si32(_loc6_,_loc3_);
                     ESP = _loc3_;
                     F__ZN9Music_EmuD2Ev();
                     _loc3_ += 16;
                     si32(-1,_loc12_);
                     _loc3_ -= 16;
                     si32(_loc11_,_loc3_);
                     ESP = _loc3_;
                     F__Unwind_SjLj_Resume();
                     _loc3_ += 16;
                  }
               }
            }
            _loc4_ = _loc16_ | 4;
            _loc9_ = li32(_loc5_ - 60);
            si32(-1,_loc4_);
            _loc3_ -= 16;
            si32(_loc9_,_loc3_);
            ESP = _loc3_;
            F__ZN9Music_EmuD2Ev();
            _loc3_ += 16;
            _loc3_ -= 16;
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F__Unwind_SjLj_Unregister();
            _loc3_ += 16;
            _loc3_ = _loc5_;
            ESP = _loc3_;
            return;
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc5_)
            {
               throw l;
            }
         }
         ESP = _loc3_ = int(l.esp);
         eax = l.retval;
         _loc10_ = l.sjid;
      }
   }
}
