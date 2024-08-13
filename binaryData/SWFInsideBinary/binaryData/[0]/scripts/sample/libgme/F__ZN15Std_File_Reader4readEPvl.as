package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2126;
   
   public function F__ZN15Std_File_Reader4readEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 4);
      _loc2_ -= 16;
      si32(_loc6_,_loc2_ + 12);
      _loc6_ = li32(_loc3_ + 8);
      si32(_loc6_,_loc2_ + 8);
      si32(1,_loc2_ + 4);
      var _loc5_:* = li32(_loc3_ + 4);
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_fread();
      _loc4_ = 0;
      _loc2_ += 16;
      _loc5_ = sample.libgme.eax;
      if(_loc5_ != _loc6_)
      {
         _loc4_ = li32(_loc1_ + 4);
         _loc6_ = li32(sample.libgme.___isthreaded);
         if(_loc6_ == 0)
         {
            _loc6_ = li16(_loc4_ + 12);
            _loc1_ = _loc6_ & 0x20;
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F_feof();
            _loc2_ += 16;
            _loc1_ = sample.libgme.eax;
         }
         _loc4_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2126;
         if(_loc1_ != 0)
         {
            _loc4_ = sample.libgme.__ZN11Data_Reader9eof_errorE;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
