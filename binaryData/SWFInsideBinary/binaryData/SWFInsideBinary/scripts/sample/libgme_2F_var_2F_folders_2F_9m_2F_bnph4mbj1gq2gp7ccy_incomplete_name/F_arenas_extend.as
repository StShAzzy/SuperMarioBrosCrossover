package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F__pthread_mutex_init_calloc_cb;
   import sample.libgme.F__spinlock;
   import sample.libgme.F__spinunlock;
   import sample.libgme.F_abort;
   import sample.libgme.___isthreaded;
   import sample.libgme.___progname;
   import sample.libgme.__malloc_message;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F_arenas_extend() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc1_:int = 0;
      var _loc7_:int = 0;
      var _loc10_:* = 0;
      var _loc11_:int = 0;
      var _loc3_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc3_ = li32(_nbins);
      var _loc14_:*;
      if((_loc14_ = li32(___isthreaded)) != 0)
      {
         _loc2_ -= 16;
         si32(_base_mtx,_loc2_);
         ESP = _loc2_;
         F__spinlock();
         _loc2_ += 16;
      }
      _loc13_ = (_loc14_ = int((_loc14_ = int(_loc3_ * 40)) + 123)) & -64;
      _loc3_ = li32(_base_next_addr);
      var _loc12_:* = int(_loc3_ + _loc13_);
      _loc14_ = li32(_base_past_addr);
      if(uint(_loc12_) > uint(_loc14_))
      {
         _loc2_ -= 16;
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         F_base_pages_alloc();
         _loc2_ += 16;
         if((_loc14_ = int(eax)) == 0)
         {
            _loc3_ = li32(_base_next_addr);
            addr150:
            si32(_loc14_ = int(_loc3_ + _loc13_),_base_next_addr);
            if((_loc14_ = li32(___isthreaded)) != 0)
            {
               _loc2_ -= 16;
               si32(_base_mtx,_loc2_);
               ESP = _loc2_;
               F__spinunlock();
               _loc2_ += 16;
            }
            if(_loc3_ != 0)
            {
               _loc2_ -= 16;
               si32(_base_calloc,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F__pthread_mutex_init_calloc_cb();
               _loc2_ += 16;
               if((_loc14_ = int(eax)) == 0)
               {
                  si32(_loc14_ = int(_loc3_ + 8),_loc3_ + 4);
                  si32(_loc14_,_loc3_ + 12);
                  si32(_loc14_ &= -2,_loc3_ + 16);
                  si32(0,_loc3_ + 36);
                  si32(0,_loc3_ + 40);
                  si32(_loc14_ = int(_loc3_ + 48),_loc3_ + 44);
                  si32(_loc14_,_loc3_ + 48);
                  si32(_loc14_ &= -2,_loc3_ + 52);
                  si32(0,_loc3_ + 60);
                  si32(_loc14_ = int(_loc3_ + 68),_loc3_ + 64);
                  si32(_loc14_,_loc3_ + 68);
                  si32(_loc14_ &= -2,_loc3_ + 72);
                  si32(2,_loc3_ + 80);
                  _loc2_ -= 16;
                  si32(4096,_loc2_ + 4);
                  si32(_loc14_ = int(_loc3_ + 60),_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc2_ += 16;
                  si32(0,_loc3_ + 100);
                  si32(_loc12_ = int(_loc3_ + 108),_loc3_ + 104);
                  si32(_loc12_,_loc3_ + 108);
                  si32(_loc12_ &= -2,_loc3_ + 112);
                  si32(4,_loc3_ + 120);
                  _loc2_ -= 16;
                  si32(int(eax),_loc2_ + 4);
                  si32(_loc14_ = int(_loc3_ + 100),_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc2_ += 16;
                  si32(0,_loc3_ + 140);
                  si32(_loc12_ = int(_loc3_ + 148),_loc3_ + 144);
                  si32(_loc12_,_loc3_ + 148);
                  si32(_loc12_ &= -2,_loc3_ + 152);
                  si32(8,_loc3_ + 160);
                  _loc2_ -= 16;
                  si32(int(eax),_loc2_ + 4);
                  si32(_loc14_ = int(_loc3_ + 140),_loc2_);
                  ESP = _loc2_;
                  F_arena_bin_run_size_calc();
                  _loc2_ += 16;
                  _loc11_ = eax;
                  _loc13_ = 3;
                  if(uint(int((_loc10_ = li32(_nqbins)) + 3)) >= 4)
                  {
                     _loc9_ = _loc3_ + 180;
                     _loc8_ = _loc3_ + 188;
                     _loc13_ = 3;
                     _loc7_ = 16;
                     _loc1_ = 0;
                     do
                     {
                        _loc14_ = int(_loc3_ + _loc1_);
                        si32(0,_loc14_ + 180);
                        si32(_loc12_ = int(_loc8_ + _loc1_),_loc14_ + 184);
                        si32(_loc12_ = int(_loc8_ + _loc1_),_loc14_ + 188);
                        si32(_loc12_ = (_loc12_ = int(_loc8_ + _loc1_)) & -2,_loc14_ + 192);
                        si32(_loc7_,_loc14_ + 200);
                        _loc2_ -= 16;
                        si32(_loc11_,_loc2_ + 4);
                        si32(_loc14_ = int(_loc9_ + _loc1_),_loc2_);
                        ESP = _loc2_;
                        F_arena_bin_run_size_calc();
                        _loc7_ += 16;
                        _loc1_ += 40;
                        _loc13_ += 1;
                        _loc2_ += 16;
                        _loc11_ = eax;
                     }
                     while((uint(_loc14_ = int((_loc10_ = li32(_nqbins)) + 3))) > uint(_loc13_));
                     
                  }
                  _loc14_ = li32(_ncbins);
                  if((uint(_loc14_ = int((_loc14_ = int(_loc10_ + _loc14_)) + 3))) > uint(_loc13_))
                  {
                     _loc8_ = _loc3_ + int(_loc13_ * 40);
                     _loc10_ = 68;
                     _loc1_ = 60;
                     _loc9_ = 0;
                     do
                     {
                        _loc14_ = (_loc14_ = int(_loc9_ * 10)) << 2;
                        _loc14_ = int(_loc8_ + _loc14_);
                        si32(0,_loc14_ + 60);
                        si32(_loc12_ = int(_loc8_ + _loc10_),_loc14_ + 64);
                        si32(_loc12_,_loc14_ + 68);
                        si32(_loc12_ &= -2,_loc14_ + 72);
                        _loc12_ = int(_loc13_ + _loc9_);
                        var _loc5_:* = li32(_nqbins);
                        _loc12_ = (_loc12_ -= _loc5_) << 6;
                        si32(_loc12_ = int((_loc12_ = int((_loc5_ = li32(_cspace_min)) + _loc12_)) + -192),_loc14_ + 80);
                        _loc2_ -= 16;
                        si32(_loc11_,_loc2_ + 4);
                        si32(_loc14_ = int(_loc8_ + _loc1_),_loc2_);
                        _loc9_ += 1;
                        _loc7_ = _loc13_ + _loc9_;
                        ESP = _loc2_;
                        F_arena_bin_run_size_calc();
                        _loc2_ += 16;
                        _loc11_ = eax;
                        _loc14_ = li32(_ncbins);
                        _loc14_ = int((_loc14_ = int((_loc12_ = li32(_nqbins)) + _loc14_)) + 3);
                        _loc1_ += 40;
                        _loc10_ += 40;
                     }
                     while(uint(_loc14_) > uint(_loc7_));
                     
                     _loc13_ = _loc7_;
                  }
                  _loc14_ = li32(_nbins);
                  if(uint(_loc13_) < uint(_loc14_))
                  {
                     _loc1_ = _loc3_ + int(_loc13_ * 40);
                     _loc9_ = 68;
                     _loc10_ = 60;
                     _loc8_ = 0;
                     do
                     {
                        _loc14_ = (_loc14_ = int(_loc8_ * 10)) << 2;
                        _loc14_ = int(_loc1_ + _loc14_);
                        si32(0,_loc14_ + 60);
                        si32(_loc12_ = int(_loc1_ + _loc9_),_loc14_ + 64);
                        si32(_loc12_,_loc14_ + 68);
                        si32(_loc12_ &= -2,_loc14_ + 72);
                        _loc12_ = int(_loc13_ + _loc8_);
                        _loc5_ = li32(_nqbins);
                        var _loc6_:int = 0 - _loc5_;
                        _loc5_ = li32(_ncbins);
                        _loc5_ = int(_loc6_ - _loc5_);
                        _loc12_ = (_loc12_ += _loc5_) << 8;
                        si32(_loc12_ = int((_loc12_ = int((_loc5_ = li32(_sspace_min)) + _loc12_)) + -768),_loc14_ + 80);
                        _loc2_ -= 16;
                        si32(_loc11_,_loc2_ + 4);
                        si32(_loc14_ = int(_loc1_ + _loc10_),_loc2_);
                        _loc8_ += 1;
                        _loc12_ = int(_loc13_ + _loc8_);
                        ESP = _loc2_;
                        F_arena_bin_run_size_calc();
                        _loc10_ += 40;
                        _loc9_ += 40;
                        _loc2_ += 16;
                        _loc11_ = eax;
                        _loc14_ = li32(_nbins);
                     }
                     while(uint(_loc12_) < uint(_loc14_));
                     
                  }
                  _loc12_ = (_loc14_ = li32(_loc4_)) << 2;
                  _loc14_ = int((_loc14_ = li32(_arenas)) + _loc12_);
                  si32(_loc3_,_loc14_);
               }
               else
               {
                  addr1003:
                  _loc12_ = li32(__malloc_message);
                  _loc14_ = li32(___progname);
                  _loc2_ -= 16;
                  si32(L__2E_str2793,_loc2_ + 12);
                  si32(L__2E_str2793,_loc2_ + 8);
                  si32(L__2E_str40831,_loc2_ + 4);
                  si32(_loc14_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc12_]();
                  _loc2_ += 16;
                  if((_loc14_ = li8(_opt_abort_2E_b)) == 1)
                  {
                     ESP = _loc2_;
                     F_abort();
                  }
                  _loc3_ = li32(_loc14_ = li32(_arenas));
               }
               eax = _loc3_;
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
         }
         else if((_loc14_ = li32(___isthreaded)) != 0)
         {
            _loc2_ -= 16;
            si32(_base_mtx,_loc2_);
            ESP = _loc2_;
            F__spinunlock();
            _loc2_ += 16;
         }
         §§goto(addr1003);
      }
      §§goto(addr150);
   }
}
