package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5308;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu9run_untilEiE8__func__;
   
   public function F__ZN7Nes_Apu9run_untilEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = li32(_loc1_ + 1948);
      _loc8_ = li32(_loc3_ + 4);
      if(_loc9_ > _loc8_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5308,_loc2_ + 12);
         si32(139,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu9run_untilEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      var _loc7_:* = li32(_loc1_ + 1316);
      _loc6_ = 1073741824;
      if(_loc7_ != 0)
      {
         var _loc5_:*;
         var _loc4_:*;
         _loc6_ = (_loc5_ = li32(_loc1_ + 1320) + li32((_loc4_ = li32(_loc1_ + 1372)) + 1948)) + (_loc5_ = (_loc5_ = li32(_loc1_ + 1340)) + -1) * li32(_loc1_ + 1332);
      }
      if(_loc6_ < _loc8_)
      {
         si32(_loc8_,_loc1_ + 1948);
         _loc2_ -= 16;
         si32(_loc8_,_loc2_ + 8);
         si32(_loc9_,_loc2_ + 4);
         _loc7_ = _loc1_ + 1304;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__ZN7Nes_Dmc3runEii();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
