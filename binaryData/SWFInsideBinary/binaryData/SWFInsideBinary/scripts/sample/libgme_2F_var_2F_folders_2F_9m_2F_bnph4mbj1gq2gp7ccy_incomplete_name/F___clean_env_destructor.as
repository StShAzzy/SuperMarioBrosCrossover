package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F___clean_env_destructor() : void
   {
      var _loc2_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ -= 16;
      si32(1,_loc1_);
      ESP = _loc1_;
      F___clean_env();
      _loc1_ += 16;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
