package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   
   public function F__ZN11Mono_BufferD2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = sample.libgme.__ZTV11Mono_Buffer + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      _loc1_ = li32(_loc4_ + 32);
      if(_loc1_ != 1)
      {
         _loc4_ = li32(_loc4_ + 28);
         if(_loc4_ != 0)
         {
            _loc2_ -= 16;
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F_idalloc();
            _loc2_ += 16;
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
