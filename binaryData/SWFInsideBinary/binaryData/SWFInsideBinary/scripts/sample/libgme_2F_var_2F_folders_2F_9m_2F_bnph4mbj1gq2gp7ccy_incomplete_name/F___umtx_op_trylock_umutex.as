package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F___umtx_op_trylock_umutex() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc5_ = li32((_loc6_ = li32(_loc1_)) + 4);
      _loc4_ = 14;
      if(_loc5_ != -1)
      {
         _loc2_ -= 32;
         si32(1,_loc2_ + 16);
         si32(0,_loc2_ + 12);
         si32(_loc5_,_loc2_ + 8);
         si32(_loc6_,_loc2_ + 4);
         si32(li32(_loc3_),_loc2_);
         ESP = _loc2_;
         F__do_lock_umutex();
         _loc2_ += 32;
         if((_loc4_ = eax) == 4)
         {
            _loc4_ = -1;
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
