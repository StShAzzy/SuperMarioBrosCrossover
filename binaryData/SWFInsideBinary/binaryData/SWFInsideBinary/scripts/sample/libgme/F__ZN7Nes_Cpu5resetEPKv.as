package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4319;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5320;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZ24blargg_verify_byte_ordervE8__func__318;
   
   public function F__ZN7Nes_Cpu5resetEPKv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      si32(_loc7_ = int(_loc1_ + 2060),_loc1_ + 2056);
      si8(4,_loc1_ + 2053);
      si8(-1,_loc1_ + 2054);
      si32(0,_loc1_ + 2196);
      si32(0,_loc1_ + 2192);
      si8(0,_loc1_ + 2052);
      si32(0,_loc1_ + 2048);
      si32(1073741824,_loc1_ + 2200);
      si32(1073741824,_loc1_ + 2204);
      si32(0,_loc1_ + 2208);
      si32(_loc6_ = li32(_loc3_ + 4),_loc1_ + 2188);
      si32(_loc6_,_loc1_ + 2076);
      _loc5_ = -5;
      while(true)
      {
         var _loc4_:* = _loc5_ << 2;
         _loc4_ = int(_loc7_ - _loc4_);
         si32(_loc6_,_loc4_);
         if(_loc5_ == -31)
         {
            break;
         }
         _loc5_ += -1;
         _loc7_ = li32(_loc1_ + 2056);
      }
      si32(_loc1_,li32(_loc1_ + 2056));
      si32(_loc1_,li32(_loc1_ + 2056) + 4);
      si32(_loc1_,li32(_loc1_ + 2056) + 8);
      si32(_loc1_,li32(_loc1_ + 2056) + 12);
      si32(1,_loc3_ - 4);
      if((_loc4_ = li8(_loc3_ - 4)) == 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str5320,_loc2_ + 12);
         si32(62,_loc2_ + 8);
         si32(L__2E_str4319,_loc2_ + 4);
         si32(__ZZ24blargg_verify_byte_ordervE8__func__318,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
