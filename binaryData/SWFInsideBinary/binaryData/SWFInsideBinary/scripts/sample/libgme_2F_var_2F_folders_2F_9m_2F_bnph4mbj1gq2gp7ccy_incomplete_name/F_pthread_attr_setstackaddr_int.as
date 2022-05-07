package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.___thr_jtable;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F_pthread_attr_setstackaddr_int() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___thr_jtable + 140);
      _loc2_ -= 16;
      var _loc4_:*;
      si32(_loc4_ = li32(_loc3_ + 4),_loc2_ + 4);
      si32(_loc4_ = li32(_loc3_),_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc1_]();
      _loc2_ += 16;
      _loc1_ = int(eax);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
