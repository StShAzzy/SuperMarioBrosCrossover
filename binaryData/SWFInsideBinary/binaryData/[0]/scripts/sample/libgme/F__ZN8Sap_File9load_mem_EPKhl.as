package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F__ZL10parse_infoPKhlPN7Sap_Emu6info_tE;
   
   public function F__ZN8Sap_File9load_mem_EPKhl() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_);
      _loc5_ = li32(_loc3_);
      _loc1_ = _loc5_ + 252;
      si32(_loc1_,_loc2_ + 8);
      ESP = _loc2_;
      F__ZL10parse_infoPKhlPN7Sap_Emu6info_tE();
      _loc2_ += 16;
      _loc4_ = sample.libgme.eax;
      if(_loc4_ == 0)
      {
         si32(li32(_loc5_ + 276),_loc5_ + 12);
         si32(li32(_loc5_ + 276),_loc5_ + 8);
         _loc4_ = 0;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}