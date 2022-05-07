package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10370;
   
   public function F__ZNK8Nsf_File11track_info_EP12track_info_ti() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      si32(32,_loc2_ + 8);
      _loc1_ = li32(_loc3_);
      var _loc5_:int;
      si32(_loc5_ = _loc1_ + 266,_loc2_ + 4);
      si32(_loc5_ = (_loc4_ = li32(_loc3_ + 4)) + 272,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(32,_loc2_ + 8);
      si32(_loc5_ = _loc1_ + 298,_loc2_ + 4);
      si32(_loc5_ = _loc4_ + 784,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(32,_loc2_ + 8);
      si32(_loc5_ = _loc1_ + 330,_loc2_ + 4);
      si32(_loc5_ = _loc4_ + 1040,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc1_ = li8(_loc1_ + 375);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(255,_loc2_ + 8);
         si32(L__2E_str10370,_loc2_ + 4);
         si32(int(_loc4_ + 16),_loc2_);
         ESP = _loc2_;
         F__ZN8Gme_File11copy_field_EPcPKci();
         _loc2_ += 16;
      }
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
