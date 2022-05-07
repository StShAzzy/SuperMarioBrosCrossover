package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_pthread_key_create;
   import sample.libgme.eax;
   
   public function F__GLOBAL__I___cxa_get_globals_fast() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      si8(0,__ZL4init + 4);
      _loc2_ -= 16;
      si32(__ZL15eh_globals_dtorPv,_loc2_ + 4);
      si32(__ZL4init,_loc2_);
      ESP = _loc2_;
      F_pthread_key_create();
      _loc1_ = 1;
      _loc2_ += 16;
      var _loc4_:*;
      if((_loc4_ = int(eax)) != 0)
      {
         _loc1_ = 0;
      }
      si8(_loc4_ = _loc1_ & 1,__ZL4init + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
