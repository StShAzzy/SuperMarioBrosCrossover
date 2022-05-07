package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5129;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6130;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11File_Reader4skipElE8__func__;
   
   public function F__ZN11File_Reader4skipEl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ <= -1)
      {
         _loc2_ -= 16;
         si32(L__2E_str6130,_loc2_ + 12);
         si32(57,_loc2_ + 8);
         si32(L__2E_str5129,_loc2_ + 4);
         si32(__ZZN11File_Reader4skipElE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc8_ = 0;
      if(_loc1_ != 0)
      {
         var _loc6_:*;
         var _loc7_:*;
         var _loc5_:* = li32((_loc6_ = li32(_loc7_ = li32(_loc3_))) + 32);
         var _loc4_:* = li32(_loc6_ + 28);
         _loc2_ -= 16;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
         _loc2_ -= 16;
         si32(int((_loc6_ = int(eax)) + _loc1_),_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
         _loc8_ = eax;
      }
      eax = _loc8_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
