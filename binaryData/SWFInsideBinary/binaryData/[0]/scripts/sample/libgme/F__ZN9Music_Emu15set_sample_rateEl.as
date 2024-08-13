package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Music_Emu15set_sample_rateEl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc8_:* = li32(_loc1_ + 192);
      if(_loc8_ != 0)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9276,_loc2_ + 12);
         si32(79,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu15set_sample_rateElE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc7_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc1_);
      var _loc6_:* = li32(_loc8_ + 40);
      _loc2_ -= 16;
      si32(_loc7_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc6_]();
      _loc2_ += 16;
      _loc5_ = eax;
      if(_loc5_ == 0)
      {
         _loc2_ -= 16;
         si32(4096,_loc2_ + 4);
         si32(li32(_loc1_ + 240),_loc2_);
         ESP = _loc2_;
         F_realloc();
         _loc5_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8275;
         _loc2_ += 16;
         _loc4_ = eax;
         if(_loc4_ != 0)
         {
            si32(_loc4_,_loc1_ + 240);
            si32(2048,_loc1_ + 244);
            si32(_loc7_,_loc1_ + 192);
            _loc5_ = 0;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
