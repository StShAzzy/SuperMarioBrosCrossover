package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2402;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3403;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__404;
   
   public function F__ZNK9Nsfe_Info11remap_trackEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li8(_loc1_ + 1188);
      _loc5_ = li32(_loc3_ + 4);
      if(_loc6_ == 0)
      {
         if((uint(_loc4_ = li32(_loc1_ + 1172))) > uint(_loc5_))
         {
            if(uint(_loc4_) < uint(_loc5_))
            {
               _loc2_ -= 16;
               si32(L__2E_str3403,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(L__2E_str2402,_loc2_ + 4);
               si32(__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc5_ = li8(_loc6_ = int((_loc6_ = li32(_loc1_ + 1168)) + _loc5_));
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
