package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._freelist;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._pmem_next;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._private_mem;
   
   public function F___diff_D2A() : void
   {
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc17_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = 0;
      var _loc9_:int = 0;
      var _loc16_:* = 0;
      var _loc4_:* = 0;
      var _loc3_:* = int(ESP);
      _loc17_ = li32((_loc4_ = li32((_loc5_ = _loc3_) + 4)) + 16);
      if((_loc15_ = li32((_loc16_ = li32(_loc5_)) + 16)) == _loc17_)
      {
         var _loc13_:*;
         var _loc14_:*;
         _loc12_ = (_loc13_ = int((_loc14_ = _loc17_ << 2) + _loc16_)) + 20;
         _loc11_ = int((_loc14_ += _loc4_) + 16);
         _loc10_ = int(_loc16_ + 20);
         while(true)
         {
            _loc17_ = li32(_loc11_);
            if((_loc15_ = li32(_loc12_ - 4)) == _loc17_)
            {
               _loc12_ += -4;
               _loc11_ += -4;
               if(uint(_loc12_) <= uint(_loc10_))
               {
                  if((_loc14_ = li32(___isthreaded)) != 0)
                  {
                     _loc3_ -= 16;
                     si32(___gdtoa_locks,_loc3_);
                     ESP = _loc3_;
                     F__pthread_mutex_lock();
                     _loc3_ += 16;
                  }
                  if((_loc17_ = li32(_freelist)) != 0)
                  {
                     si32(_loc14_ = li32(_loc17_),_freelist);
                  }
                  else
                  {
                     if((uint(_loc14_ = int((_loc14_ = (_loc14_ = int((_loc17_ = li32(_pmem_next)) - _private_mem)) >> 3) + 3))) <= 288)
                     {
                        si32(_loc14_ = int(_loc17_ + 24),_pmem_next);
                     }
                     else
                     {
                        _loc3_ -= 16;
                        si32(24,_loc3_);
                        ESP = _loc3_;
                        F_malloc();
                        _loc3_ += 16;
                        _loc17_ = int(eax);
                     }
                     si32(0,_loc17_ + 4);
                     si32(1,_loc17_ + 8);
                  }
                  if((_loc14_ = li32(___isthreaded)) != 0)
                  {
                     _loc3_ -= 16;
                     si32(___gdtoa_locks,_loc3_);
                     ESP = _loc3_;
                     F__pthread_mutex_unlock();
                     _loc3_ += 16;
                  }
                  si32(0,_loc17_ + 12);
                  si32(1,_loc17_ + 16);
                  si32(0,_loc17_ + 20);
                  break;
               }
               continue;
            }
            _loc12_ = -1;
            if(uint(_loc15_) >= uint(_loc17_))
            {
               _loc12_ = 1;
            }
         }
         §§goto(addr587);
      }
      else
      {
         _loc12_ = _loc15_ - _loc17_;
      }
      _loc11_ = _loc4_;
      if(_loc12_ >= 0)
      {
         _loc11_ = _loc16_;
      }
      _loc14_ = li32(_loc11_ + 4);
      _loc3_ -= 16;
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      F___Balloc_D2A();
      _loc14_ = int(_loc12_ >>> 31);
      _loc3_ += 16;
      _loc17_ = int(eax);
      si32(_loc14_,_loc17_ + 12);
      if(_loc12_ >= 0)
      {
         _loc16_ = _loc4_;
      }
      _loc14_ = (_loc14_ = li32(_loc16_ + 16)) << 2;
      _loc1_ = (_loc14_ = int(_loc16_ + _loc14_)) + 20;
      _loc4_ = li32(_loc11_ + 16);
      _loc12_ = 20;
      _loc15_ = 0;
      _loc6_ = 0;
      do
      {
         _loc7_ = li32(_loc14_ = int(_loc16_ + _loc12_));
         _loc13_ = int((_loc14_ = int((_loc10_ = li32(_loc14_ = int(_loc11_ + _loc12_))) - _loc7_)) - _loc15_);
         var _loc8_:int = _loc17_ + _loc12_;
         si32(_loc13_,_loc8_);
         _loc2_ = _loc9_ = 1;
         if(uint(_loc14_) >= uint(_loc15_))
         {
            _loc2_ = 0;
         }
         if(uint(_loc10_) >= uint(_loc7_))
         {
            _loc9_ = 0;
         }
         _loc15_ = (_loc14_ = int((_loc14_ = int((_loc14_ = int(0 - _loc9_)) - _loc6_)) - _loc2_)) & 1;
         _loc12_ += 4;
         _loc14_ = int(_loc16_ + _loc12_);
         _loc6_ = 0;
      }
      while(uint(_loc14_) < uint(_loc1_));
      
      _loc16_ = int(_loc17_ + _loc12_);
      _loc12_ = _loc11_ + _loc12_;
      _loc7_ = int((_loc14_ = int(_loc11_ + (_loc4_ << 2))) + 20);
      _loc11_ = 0;
      if(uint(_loc12_) < uint(_loc7_))
      {
         do
         {
            si32(_loc14_ = int((_loc13_ = li32(_loc12_)) - _loc15_),_loc16_);
            _loc10_ = 1;
            if(uint(_loc13_) >= uint(_loc15_))
            {
               _loc10_ = 0;
            }
            _loc15_ = (_loc14_ = int((_loc14_ = int(0 - _loc11_)) - _loc10_)) & 1;
            _loc12_ += 4;
            _loc16_ += 4;
            _loc11_ = 0;
         }
         while(uint(_loc12_) < uint(_loc7_));
         
      }
      if((_loc14_ = li32(_loc16_ - 4)) == 0)
      {
         _loc16_ += -8;
         do
         {
            _loc13_ = int(_loc16_ + -4);
            _loc4_ += -1;
            _loc14_ = li32(_loc16_);
            _loc16_ = _loc13_;
         }
         while(_loc14_ == 0);
         
      }
      si32(_loc4_,_loc17_ + 16);
      addr587:
      eax = _loc17_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
