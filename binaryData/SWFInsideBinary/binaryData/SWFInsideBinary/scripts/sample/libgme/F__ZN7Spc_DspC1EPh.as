package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2489;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3490;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZ24blargg_verify_byte_ordervE8__func__488;
   
   public function F__ZN7Spc_DspC1EPh() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_ + 128);
      si32(256,_loc4_ + 216);
      si16(7,_loc4_ + 274);
      si16(7,_loc4_ + 306);
      si16(7,_loc4_ + 338);
      si16(7,_loc4_ + 370);
      si16(7,_loc4_ + 402);
      si16(7,_loc4_ + 434);
      si16(7,_loc4_ + 466);
      si16(7,_loc4_ + 498);
      si32(-32767,_loc4_ + 244);
      si32(1,_loc3_ - 4);
      _loc1_ = li8(_loc3_ - 4);
      if(_loc1_ == 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str3490,_loc2_ + 12);
         si32(62,_loc2_ + 8);
         si32(L__2E_str2489,_loc2_ + 4);
         si32(__ZZ24blargg_verify_byte_ordervE8__func__488,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
