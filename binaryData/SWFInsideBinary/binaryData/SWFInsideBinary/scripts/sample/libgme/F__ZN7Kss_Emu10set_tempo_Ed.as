package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.LCPI300_0;
   
   public function F__ZN7Kss_Emu10set_tempo_Ed() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = (_loc8_ = li8(_loc1_ + 943)) & 64;
      _loc7_ = 1;
      if(_loc8_ != 0)
      {
         _loc7_ = 0;
      }
      _loc6_ = 8;
      if(_loc7_ == 0)
      {
         _loc6_ = 0;
      }
      var _loc5_:* = lf64(_loc8_ = int(LCPI300_0 + _loc6_));
      var _loc4_:* = lf64(_loc3_ + 4);
      si32(_loc8_ = int(_loc5_ /= _loc4_),_loc1_ + 976);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
