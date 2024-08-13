package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1188;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str187;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2189;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3190;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__;
   
   public function F__ZNK8Gme_File12remap_track_EPi() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc1_);
      _loc8_ = li32(_loc3_);
      _loc7_ = li32(_loc8_ + 8);
      _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2189;
      if(uint(_loc9_) < uint(_loc7_))
      {
         _loc5_ = li32(_loc8_ + 32);
         if(uint(_loc9_) < uint(_loc5_))
         {
            if(uint(_loc5_) < uint(_loc9_))
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1188,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str187,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc7_ = li32(_loc8_ + 28);
            _loc5_ = 0;
            si32(_loc5_,_loc1_);
            var _loc4_:int = _loc9_ * 40;
            _loc6_ = _loc7_ + _loc4_;
            if((_loc9_ = li32(_loc6_ + 16)) >= 0)
            {
               si32(_loc9_,_loc1_);
               _loc5_ = _loc9_;
               _loc7_ = li32(_loc8_ + 4);
               if(((_loc7_ = li8(_loc7_ + 20)) & 2) == 0)
               {
                  _loc5_ = _loc9_ - li8(_loc6_ + 12);
                  si32(_loc5_,_loc1_);
               }
            }
            _loc7_ = li32(_loc8_ + 12);
            _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3190;
            if(_loc5_ < _loc7_)
            {
            }
            §§goto(addr177);
         }
         _loc6_ = 0;
      }
      addr177:
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
