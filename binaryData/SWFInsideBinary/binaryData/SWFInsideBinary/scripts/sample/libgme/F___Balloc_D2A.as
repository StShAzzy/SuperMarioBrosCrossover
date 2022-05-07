package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._freelist;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._pmem_next;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._private_mem;
   
   public function F___Balloc_D2A() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(___gdtoa_locks,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_lock();
         _loc2_ += 16;
      }
      if((_loc9_ = li32(_loc3_)) >= 10)
      {
         _loc7_ = ((_loc8_ = 1 << _loc9_) << 2) + 27;
      }
      else
      {
         if((_loc5_ = li32(_loc6_ = _freelist + (_loc9_ << 2))) != 0)
         {
            si32(li32(_loc5_),_loc6_);
         }
         else
         {
            var _loc4_:*;
            if(uint(int((int((_loc5_ = li32(_pmem_next)) - _private_mem) >> 3) + (_loc6_ = (_loc7_ = (_loc4_ = (_loc8_ = 1 << _loc9_) << 2) + 27) >>> 3))) <= 288)
            {
               si32(int(_loc5_ + (_loc6_ << 3)),_pmem_next);
            }
            else
            {
               addr137:
               _loc2_ -= 16;
               _loc1_ = _loc7_ & -8;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc2_ += 16;
               _loc5_ = int(eax);
            }
            si32(_loc9_,_loc5_ + 4);
            si32(_loc8_,_loc5_ + 8);
         }
         _loc1_ = li32(___isthreaded);
         if(_loc1_ != 0)
         {
            _loc2_ -= 16;
            si32(___gdtoa_locks,_loc2_);
            ESP = _loc2_;
            F__pthread_mutex_unlock();
            _loc2_ += 16;
         }
         si32(0,_loc5_ + 16);
         si32(0,_loc5_ + 12);
         eax = _loc5_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr137);
   }
}
