package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZNK8Gme_File10track_infoEP12track_info_ti() : void
   {
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc19_:* = 0;
      var _loc17_:* = 0;
      var _loc16_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc20_:* = 0;
      var _loc13_:int = 0;
      var _loc2_:int = 0;
      var _loc15_:* = 0;
      var _loc18_:int = 0;
      var _loc3_:* = ESP;
      _loc8_ = _loc3_;
      _loc20_ = li32((_loc4_ = li32(_loc8_)) + 8);
      _loc19_ = li32(_loc8_ + 4);
      si32(_loc20_,_loc19_);
      si32(-1,_loc19_ + 4);
      si32(-1,_loc19_ + 12);
      si32(-1,_loc19_ + 8);
      si8(0,_loc19_ + 528);
      si8(0,_loc19_ + 272);
      si8(0,_loc19_ + 784);
      si8(0,_loc19_ + 1040);
      si8(0,_loc19_ + 1296);
      si8(0,_loc19_ + 1552);
      si8(0,_loc19_ + 16);
      _loc20_ = li32(_loc4_ + 4);
      _loc20_ = li32(_loc20_);
      _loc3_ -= 16;
      si32(255,_loc3_ + 8);
      si32(_loc20_,_loc3_ + 4);
      _loc20_ = _loc19_ + 16;
      si32(_loc20_,_loc3_);
      ESP = _loc3_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc3_ += 16;
      _loc20_ = li32(_loc4_ + 8);
      _loc18_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2189;
      _loc17_ = li32(_loc8_ + 8);
      if(uint(_loc20_) > uint(_loc17_))
      {
         _loc16_ = li32(_loc4_ + 32);
         _loc15_ = _loc17_;
         if(uint(_loc16_) > uint(_loc17_))
         {
            if(uint(_loc16_) < uint(_loc17_))
            {
               _loc3_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1188,_loc3_ + 12);
               si32(51,_loc3_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str187,_loc3_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__,_loc3_);
               ESP = _loc3_;
               F___assert();
               _loc3_ += 16;
            }
            _loc20_ = _loc17_ * 40;
            var _loc14_:* = li32(_loc4_ + 28);
            _loc1_ = li32((_loc13_ = _loc14_ + _loc20_) + 16);
            _loc15_ = 0;
            if(_loc1_ >= 0)
            {
               _loc15_ = _loc1_;
               _loc20_ = li32(_loc4_ + 4);
               if(((_loc20_ = li8(_loc20_ + 20)) & 2) == 0)
               {
                  _loc15_ = _loc1_ - li8(_loc13_ + 12);
               }
            }
            _loc20_ = li32(_loc4_ + 12);
            _loc18_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3190;
            if(_loc15_ < _loc20_)
            {
            }
            §§goto(addr642);
         }
         _loc20_ = li32(_loc4_);
         var _loc9_:* = li32(_loc20_ + 20);
         _loc3_ -= 16;
         si32(_loc15_,_loc3_ + 8);
         si32(_loc19_,_loc3_ + 4);
         si32(_loc4_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc9_]();
         _loc3_ += 16;
         _loc18_ = eax;
         if(_loc18_ == 0)
         {
            _loc18_ = 0;
            if(li32(_loc4_ + 32) != 0)
            {
               _loc3_ -= 16;
               si32(255,_loc3_ + 8);
               si32(li32(_loc4_ + 48),_loc3_ + 4);
               si32(_loc19_ + 272,_loc3_);
               ESP = _loc3_;
               F__ZN8Gme_File11copy_field_EPcPKci();
               _loc3_ += 16;
               _loc3_ -= 16;
               si32(255,_loc3_ + 8);
               si32(li32(_loc4_ + 56),_loc3_ + 4);
               si32(_loc19_ + 784,_loc3_);
               ESP = _loc3_;
               F__ZN8Gme_File11copy_field_EPcPKci();
               _loc3_ += 16;
               _loc3_ -= 16;
               si32(255,_loc3_ + 8);
               si32(li32(_loc4_ + 52),_loc3_ + 4);
               si32(_loc19_ + 784,_loc3_);
               ESP = _loc3_;
               F__ZN8Gme_File11copy_field_EPcPKci();
               _loc3_ += 16;
               _loc3_ -= 16;
               si32(255,_loc3_ + 8);
               si32(li32(_loc4_ + 60),_loc3_ + 4);
               si32(_loc19_ + 1552,_loc3_);
               ESP = _loc3_;
               F__ZN8Gme_File11copy_field_EPcPKci();
               _loc3_ += 16;
               _loc20_ = li32(_loc4_ + 32);
               if((uint(_loc20_)) < uint(_loc17_))
               {
                  _loc3_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1188,_loc3_ + 12);
                  si32(51,_loc3_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str187,_loc3_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__,_loc3_);
                  ESP = _loc3_;
                  F___assert();
                  _loc3_ += 16;
               }
               _loc20_ = _loc19_ + 528;
               var _loc12_:int = _loc17_ * 40;
               _loc14_ = li32(_loc4_ + 28);
               _loc2_ = _loc14_ + _loc12_;
               _loc14_ = li32(_loc2_ + 8);
               _loc3_ -= 16;
               si32(255,_loc3_ + 8);
               si32(_loc14_,_loc3_ + 4);
               si32(_loc20_,_loc3_);
               ESP = _loc3_;
               F__ZN8Gme_File11copy_field_EPcPKci();
               _loc3_ += 16;
               _loc5_ = li32(_loc2_ + 20);
               if(_loc5_ >= 0)
               {
                  _loc20_ = _loc5_ * 1000;
                  si32(_loc20_,_loc19_ + 4);
               }
               _loc6_ = li32(_loc2_ + 24);
               if(_loc6_ >= 0)
               {
                  _loc20_ = _loc6_ * 1000;
                  si32(_loc20_,_loc19_ + 8);
               }
               _loc7_ = li32(_loc2_ + 28);
               _loc18_ = 0;
               if(_loc7_ >= 0)
               {
                  _loc20_ = _loc7_ * 1000;
                  si32(_loc20_,_loc19_ + 12);
                  _loc18_ = 0;
               }
            }
         }
      }
      addr642:
      eax = _loc18_;
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
