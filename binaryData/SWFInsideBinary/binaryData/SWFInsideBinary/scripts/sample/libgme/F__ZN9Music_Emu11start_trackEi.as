package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1188;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str187;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2189;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3190;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__;
   
   public function F__ZN9Music_Emu11start_trackEi() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:int = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      si32(-1,_loc3_ + 196);
      si32(0,_loc3_ + 200);
      si32(0,_loc3_ + 204);
      si8(1,_loc3_ + 208);
      si8(1,_loc3_ + 209);
      si32(1073741824,_loc3_ + 212);
      si32(1,_loc3_ + 216);
      si32(0,_loc3_ + 228);
      si32(0,_loc3_ + 232);
      si32(0,_loc3_ + 236);
      si32(0,_loc3_ + 16);
      _loc14_ = li32(_loc3_ + 8);
      _loc13_ = int(L__2E_str2189);
      _loc12_ = li32(_loc4_ + 4);
      if(uint(_loc14_) > uint(_loc12_))
      {
         _loc11_ = li32(_loc3_ + 32);
         _loc10_ = _loc12_;
         if(uint(_loc11_) > uint(_loc12_))
         {
            if(uint(_loc11_) < uint(_loc12_))
            {
               _loc2_ -= 16;
               si32(L__2E_str1188,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(L__2E_str187,_loc2_ + 4);
               si32(__ZZNK13blargg_vectorIN12M3u_Playlist7entry_tEEixEjE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc14_ = int(_loc12_ * 40);
            var _loc9_:*;
            _loc7_ = li32((_loc8_ = (_loc9_ = li32(_loc3_ + 28)) + _loc14_) + 16);
            _loc10_ = 0;
            if(_loc7_ >= 0)
            {
               _loc10_ = _loc7_;
               if(((_loc14_ = li8((_loc14_ = li32(_loc3_ + 4)) + 20)) & 2) == 0)
               {
                  _loc10_ = int(_loc7_ - li8(_loc8_ + 12));
               }
            }
            _loc14_ = li32(_loc3_ + 12);
            _loc13_ = int(L__2E_str3190);
            if(_loc10_ < _loc14_)
            {
            }
            §§goto(addr410);
         }
         si32(_loc12_,_loc3_ + 196);
         var _loc1_:* = li32((_loc14_ = li32(_loc3_)) + 56);
         _loc2_ -= 16;
         si32(_loc10_,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         if((_loc13_ = int(eax)) == 0)
         {
            si8(0,_loc3_ + 208);
            si8(0,_loc3_ + 209);
            if((_loc14_ = li8(_loc3_ + 224)) == 0)
            {
               _loc5_ = (_loc14_ = int((_loc14_ = li32(_loc3_ + 160)) * li32(_loc3_ + 192))) << 1;
               do
               {
                  if((_loc14_ = li32(_loc3_ + 204)) >= _loc5_)
                  {
                     _loc6_ = li32(_loc3_ + 236);
                     break;
                  }
                  _loc2_ -= 16;
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  F__ZN9Music_Emu8fill_bufEv();
                  _loc2_ += 16;
                  _loc6_ = li32(_loc3_ + 236);
               }
               while((_loc14_ = (_loc14_ = li8(_loc3_ + 208)) | _loc6_) == 0);
               
               si32(_loc6_,_loc3_ + 204);
               si32(0,_loc3_ + 200);
               si32(0,_loc3_ + 228);
               si32(0,_loc3_ + 232);
            }
            _loc14_ = li8(_loc3_ + 209);
            _loc13_ = 0;
            if(_loc14_ != 0)
            {
               _loc13_ = li32(_loc3_ + 16);
               si32(0,_loc3_ + 16);
            }
         }
      }
      addr410:
      eax = _loc13_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
