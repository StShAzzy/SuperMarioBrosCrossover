package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10257;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9256;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Gme_File9load_m3u_EPKcE8__func__;
   
   public function F__ZN8Gme_File8load_m3uEPKc() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc9_ = li32(_loc3_);
      _loc1_ = _loc9_ + 28;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN12M3u_Playlist4loadEPKc();
      _loc2_ += 16;
      _loc8_ = sample.libgme.eax;
      _loc1_ = li32(_loc9_ + 12);
      if(_loc1_ == 0)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10257,_loc2_ + 12);
         si32(25,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9256,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Gme_File9load_m3u_EPKcE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      if(_loc8_ == 0)
      {
         _loc7_ = li32(_loc9_ + 32);
         if(_loc7_ != 0)
         {
            si32(_loc7_,_loc9_ + 8);
         }
         _loc6_ = li32(_loc9_ + 44);
         if(_loc6_ != 0)
         {
            si8(0,_loc9_ + 131);
            _loc5_ = _loc9_ + 108;
            do
            {
               _loc1_ = _loc6_;
               var _loc4_:int = _loc1_ % 10;
               si8(_loc4_ = _loc4_ + 48,_loc5_ + 22);
               _loc5_ += -1;
               _loc6_ = _loc1_ / 10;
            }
            while(_loc1_ > 9);
            
            si8(32,_loc5_ + 22);
            si16(25966,_loc5_ + 20);
            si32(1768693876,_loc5_ + 16);
            si32(1629517107,_loc5_ + 12);
            si32(1830841961,_loc5_ + 8);
            si32(544040300,_loc5_ + 4);
            si32(1651470928,_loc5_);
            si32(_loc5_,_loc9_ + 16);
         }
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
