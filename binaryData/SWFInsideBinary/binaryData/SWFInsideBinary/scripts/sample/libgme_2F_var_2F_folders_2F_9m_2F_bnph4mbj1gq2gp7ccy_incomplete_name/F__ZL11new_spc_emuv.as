package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F__Unwind_SjLj_Register;
   import sample.libgme.F__Unwind_SjLj_Resume;
   import sample.libgme.F__Unwind_SjLj_Unregister;
   import sample.libgme.F__ZN7Spc_EmuC2Ev;
   import sample.libgme.F_malloc;
   import sample.libgme.LongJmp;
   import sample.libgme.___gxx_personality_sj0;
   import sample.libgme.eax;
   import sample.libgme.setjmp;
   
   public function F__ZL11new_spc_emuv() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
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
               si32(68664,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc2_ += 16;
               _loc1_ = int(eax);
               si32(_loc1_,_loc3_ - 60);
               _loc10_ = li32(_loc3_ - 60);
               si32(L_LSDA_611,_loc3_ - 28);
               si32(___gxx_personality_sj0,_loc3_ - 32);
               _loc1_ = _loc3_;
               si32(_loc1_,_loc3_ - 24);
               _loc1_ = _loc2_;
               si32(_loc1_,_loc3_ - 16);
               _loc8_ = (_loc9_ = _loc3_ - 56) + 32;
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
            if(_loc1_ == 0)
            {
               _loc2_ -= 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               _loc1_ = _loc9_ | 4;
               si32(1,_loc1_);
               _loc2_ -= 16;
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F__ZN7Spc_EmuC2Ev();
               _loc2_ += 16;
               _loc7_ = li32(_loc3_ - 60);
               _loc2_ -= 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               eax = _loc7_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
            while(true)
            {
               _loc1_ = _loc9_ | 4;
               _loc1_ = li32(_loc1_);
               if(_loc1_ != 0)
               {
                  break;
               }
               _loc6_ = li32(_loc3_ - 48);
               _loc5_ = li32(_loc3_ - 44);
               _loc1_ = li32(_loc3_ - 60);
               if(_loc1_ != 0)
               {
                  _loc1_ = li32(_loc3_ - 60);
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc1_ = _loc9_ | 4;
               si32(-1,_loc1_);
               _loc2_ -= 16;
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Resume();
               _loc2_ += 16;
            }
            while(true)
            {
            }
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc3_)
            {
               throw l;
            }
            continue;
         }
      }
   }
}
