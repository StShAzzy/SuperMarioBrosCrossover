package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1744;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str743;
   
   public function F___assert() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(___stderrp);
      _loc7_ = li32(_loc3_ + 12);
      _loc6_ = li32(_loc3_ + 8);
      _loc5_ = li32(_loc3_ + 4);
      if((_loc4_ = li32(_loc3_)) == 0)
      {
         _loc2_ -= 32;
         si32(_loc6_,_loc2_ + 16);
         si32(_loc5_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(L__2E_str743,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_fprintf();
         _loc2_ += 32;
      }
      else
      {
         _loc2_ -= 32;
         si32(_loc6_,_loc2_ + 20);
         si32(_loc5_,_loc2_ + 16);
         si32(_loc4_,_loc2_ + 12);
         si32(_loc7_,_loc2_ + 8);
         si32(L__2E_str1744,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_fprintf();
         _loc2_ += 32;
      }
      ESP = _loc2_;
      F_abort();
   }
}
