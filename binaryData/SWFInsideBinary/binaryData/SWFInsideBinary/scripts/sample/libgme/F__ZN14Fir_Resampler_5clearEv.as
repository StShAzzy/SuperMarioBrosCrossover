package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZN14Fir_Resampler_5clearEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 16);
      if((_loc8_ = li32(_loc1_ + 4)) != 0)
      {
         _loc7_ = li32(_loc1_ + 24);
         if(uint(_loc8_) < uint(_loc7_))
         {
            _loc2_ -= 16;
            si32(L__2E_str1135,_loc2_ + 12);
            si32(51,_loc2_ + 8);
            si32(L__2E_str134,_loc2_ + 4);
            si32(__ZZNK13blargg_vectorIsEixEjE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         var _loc6_:* = _loc7_ << 1;
         var _loc4_:int;
         var _loc5_:*;
         si32(_loc4_ = (_loc5_ = li32(_loc1_)) + _loc6_,_loc1_ + 8);
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
