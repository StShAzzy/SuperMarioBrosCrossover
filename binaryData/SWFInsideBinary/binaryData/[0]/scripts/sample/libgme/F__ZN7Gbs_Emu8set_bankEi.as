package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2169;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3170;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__168;
   
   public function F__ZN7Gbs_Emu8set_bankEi() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc1_ <<= 14;
      _loc9_ = li32(_loc3_);
      var _loc8_:*;
      if((_loc7_ = (_loc8_ = li32(_loc9_ + 352)) & _loc1_) == 0)
      {
         if(li32(_loc9_ + 356) <= 16384)
         {
            addr52:
            _loc1_ = li32(_loc9_ + 348);
            _loc6_ = _loc7_ - _loc1_;
            _loc5_ = li32(_loc9_ + 340);
            _loc1_ = _loc5_ + -16392;
            _loc7_ = 0;
            if(uint(_loc1_) >= uint(_loc6_))
            {
               _loc7_ = _loc6_;
            }
            if(uint(_loc5_) < uint(_loc7_))
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3170,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2169,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__168,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc1_ = li32(_loc9_ + 336);
            _loc1_ += _loc7_;
            _loc8_ = _loc1_ + 8192;
            var _loc4_:* = li32(_loc9_ + 292);
            si32(_loc8_,_loc4_ + 12);
            _loc8_ = li32(_loc9_ + 292);
            si32(_loc1_,_loc8_ + 8);
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr52);
   }
}
