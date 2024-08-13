package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZNK15Std_File_Reader4sizeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_);
      _loc7_ = li32(_loc8_ + 28);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc7_]();
      _loc2_ += 16;
      _loc6_ = eax;
      _loc8_ = li32(_loc1_ + 4);
      _loc2_ -= 16;
      si32(2,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_fseek();
      _loc2_ += 16;
      _loc8_ = li32(_loc1_);
      _loc5_ = li32(_loc8_ + 28);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ += 16;
      _loc4_ = eax;
      _loc8_ = li32(_loc1_ + 4);
      _loc2_ -= 16;
      si32(0,_loc2_ + 8);
      si32(_loc6_,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F_fseek();
      _loc2_ += 16;
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
