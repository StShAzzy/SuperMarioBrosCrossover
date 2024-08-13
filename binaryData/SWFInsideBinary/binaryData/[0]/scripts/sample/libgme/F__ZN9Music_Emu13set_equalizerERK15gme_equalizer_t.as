package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Music_Emu13set_equalizerERK15gme_equalizer_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = NaN;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc4_ = lf64(_loc1_);
      _loc7_ = li32(_loc3_);
      sf64(_loc4_,_loc7_ + 144);
      var _loc6_:* = li32(_loc1_ + 8);
      si32(_loc6_,_loc7_ + 152);
      _loc6_ = li32(_loc1_ + 12);
      si32(_loc6_,_loc7_ + 156);
      _loc6_ = li32(_loc7_);
      _loc5_ = li32(_loc6_ + 44);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
