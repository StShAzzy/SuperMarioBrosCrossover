package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1415;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str414;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZ24blargg_verify_byte_ordervE8__func__413;
   
   public function F__ZN7Sap_Cpu5resetEPv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      var _loc4_:*;
      si32(_loc4_ = int(_loc1_ + 12),_loc1_ + 8);
      si32(_loc4_ = li32(_loc3_ + 4),_loc1_ + 28);
      si8(4,_loc1_ + 5);
      si8(-1,_loc1_ + 6);
      si32(0,_loc1_ + 16);
      si32(0,_loc1_ + 12);
      si8(0,_loc1_ + 4);
      si32(0,_loc1_);
      si32(1073741824,_loc1_ + 20);
      si32(1073741824,_loc1_ + 24);
      si32(1,_loc3_ - 4);
      _loc1_ = li8(_loc3_ - 4);
      if(_loc1_ == 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str1415,_loc2_ + 12);
         si32(62,_loc2_ + 8);
         si32(L__2E_str414,_loc2_ + 4);
         si32(__ZZ24blargg_verify_byte_ordervE8__func__413,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
