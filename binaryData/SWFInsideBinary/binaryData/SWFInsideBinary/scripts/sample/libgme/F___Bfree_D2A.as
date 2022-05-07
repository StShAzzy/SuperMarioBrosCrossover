package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._freelist;
   
   public function F___Bfree_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         if((_loc6_ = li32(_loc1_ + 4)) >= 10)
         {
            _loc2_ -= 16;
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_idalloc();
            _loc2_ += 16;
         }
         else
         {
            var _loc5_:*;
            if((_loc5_ = li32(___isthreaded)) != 0)
            {
               _loc2_ -= 16;
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_lock();
               _loc2_ += 16;
               _loc6_ = li32(_loc1_ + 4);
            }
            _loc5_ = _loc6_ << 2;
            var _loc4_:*;
            si32(_loc4_ = li32(_loc5_ = int(_freelist + _loc5_)),_loc1_);
            si32(_loc1_,_loc5_);
            if((_loc5_ = li32(___isthreaded)) != 0)
            {
               _loc2_ -= 16;
               si32(___gdtoa_locks,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_unlock();
               _loc2_ += 16;
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
