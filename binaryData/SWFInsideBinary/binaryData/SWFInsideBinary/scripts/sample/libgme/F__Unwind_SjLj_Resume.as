package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F__Unwind_ForcedUnwind_Phase2;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F__Unwind_RaiseException_Phase2;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_fc_key_init_once;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_uw_install_context;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._fc_key;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._fc_static;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._use_fc_key;
   
   public function F__Unwind_SjLj_Resume() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_use_fc_key);
      if(_loc1_ <= -1)
      {
         ESP = _loc2_;
         F_fc_key_init_once();
         _loc1_ = li32(_use_fc_key);
      }
      _loc7_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(li32(_fc_key),_loc2_);
         ESP = _loc2_;
         F_pthread_getspecific();
         _loc2_ += 16;
         _loc5_ = int(eax);
      }
      else
      {
         _loc5_ = li32(_fc_static);
      }
      si32(_loc5_,_loc3_ - 8);
      var _loc6_:*;
      if((_loc6_ = li32(_loc7_ + 12)) == 0)
      {
         _loc2_ -= 16;
         si32(_loc6_ = int(_loc3_ - 8),_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__Unwind_RaiseException_Phase2();
         _loc2_ += 16;
         _loc4_ = eax;
      }
      else
      {
         _loc2_ -= 16;
         si32(_loc6_ = int(_loc3_ - 8),_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__Unwind_ForcedUnwind_Phase2();
         _loc2_ += 16;
         _loc4_ = eax;
      }
      if(_loc4_ != 7)
      {
         ESP = _loc2_;
         F_abort();
      }
      _loc2_ -= 16;
      si32(_loc6_ = int(_loc3_ - 8),_loc2_);
      ESP = _loc2_;
      F_uw_install_context();
      _loc2_ += 16;
   }
}
