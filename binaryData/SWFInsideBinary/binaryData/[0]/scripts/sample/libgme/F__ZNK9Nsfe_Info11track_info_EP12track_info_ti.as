package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2402;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3403;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__404;
   
   public function F__ZNK9Nsfe_Info11track_info_EP12track_info_ti() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = li8(_loc1_ + 1188);
      _loc8_ = li32(_loc3_ + 8);
      if(_loc9_ == 0)
      {
         _loc7_ = li32(_loc1_ + 1172);
         if((uint(_loc7_)) > uint(_loc8_))
         {
            if(uint(_loc7_) < uint(_loc8_))
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3403,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2402,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc9_ = li32(_loc1_ + 1168);
            _loc8_ = li8(_loc9_ = _loc9_ + _loc8_);
         }
      }
      _loc7_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc1_ + 1180);
      if(uint(_loc8_) < uint(_loc6_))
      {
         if(uint(_loc6_) < uint(_loc8_))
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3403,_loc2_ + 12);
            si32(51,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2402,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         _loc9_ = _loc8_ << 2;
         var _loc5_:* = li32(_loc1_ + 1176);
         _loc5_ = li8((_loc9_ = _loc5_ + _loc9_) + 2);
         var _loc4_:* = li8(_loc9_ + 3);
         _loc4_ = (_loc5_ = (_loc4_ = _loc4_ << 8) | _loc5_) << 8;
         _loc5_ = li8(_loc9_ + 1);
         _loc5_ = _loc4_ | _loc5_;
         _loc5_ = _loc5_ << 8;
         _loc9_ = li8(_loc9_);
         _loc6_ = _loc5_ | _loc9_;
         if(_loc6_ >= 1)
         {
            si32(_loc6_,_loc7_ + 4);
         }
      }
      _loc6_ = li32(_loc1_ + 1164);
      if(uint(_loc8_) < uint(_loc6_))
      {
         if(uint(_loc6_) < uint(_loc8_))
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3403,_loc2_ + 12);
            si32(51,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2402,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__404,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         _loc9_ = _loc8_ << 2;
         _loc5_ = li32(_loc1_ + 1160);
         _loc9_ = li32(_loc9_ = _loc5_ + _loc9_);
         _loc2_ -= 16;
         si32(255,_loc2_ + 8);
         si32(_loc9_,_loc2_ + 4);
         _loc9_ = _loc7_ + 528;
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc2_ += 16;
      }
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      _loc9_ = _loc1_ + 128;
      si32(_loc9_,_loc2_ + 4);
      _loc9_ = _loc7_ + 272;
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      _loc9_ = _loc1_ + 384;
      si32(_loc9_,_loc2_ + 4);
      _loc9_ = _loc7_ + 784;
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      _loc9_ = _loc1_ + 640;
      si32(_loc9_,_loc2_ + 4);
      _loc9_ = _loc7_ + 1040;
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      _loc9_ = _loc1_ + 896;
      si32(_loc9_,_loc2_ + 4);
      _loc9_ = _loc7_ + 1552;
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
