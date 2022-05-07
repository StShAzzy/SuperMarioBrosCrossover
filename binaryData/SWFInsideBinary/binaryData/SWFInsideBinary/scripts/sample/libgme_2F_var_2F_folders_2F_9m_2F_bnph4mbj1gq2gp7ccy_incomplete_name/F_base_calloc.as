package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F__spinlock;
   import sample.libgme.F__spinunlock;
   import sample.libgme.Fmemset;
   import sample.libgme.___isthreaded;
   import sample.libgme.eax;
   
   public function F_base_calloc() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(_base_mtx,_loc2_);
         ESP = _loc2_;
         F__spinlock();
         _loc2_ += 16;
      }
      _loc1_ = li32(_loc3_);
      var _loc7_:*;
      _loc1_ = int((_loc6_ = (_loc7_ = li32(_loc3_ + 4)) * _loc1_) + 63);
      _loc5_ = _loc1_ & -64;
      _loc1_ = int((_loc4_ = li32(_base_next_addr)) + _loc5_);
      _loc7_ = li32(_base_past_addr);
      if(uint(_loc1_) > uint(_loc7_))
      {
         _loc2_ -= 16;
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_base_pages_alloc();
         _loc2_ += 16;
         if(int(eax) == 0)
         {
            _loc4_ = li32(_base_next_addr);
            addr147:
            _loc1_ = int(_loc4_ + _loc5_);
            si32(_loc1_,_base_next_addr);
            _loc1_ = li32(___isthreaded);
            if(_loc1_ != 0)
            {
               _loc2_ -= 16;
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ += 16;
            }
         }
         else
         {
            _loc4_ = 0;
            if(li32(___isthreaded) != 0)
            {
               _loc2_ -= 16;
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ += 16;
               _loc4_ = 0;
            }
         }
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr147);
   }
}
