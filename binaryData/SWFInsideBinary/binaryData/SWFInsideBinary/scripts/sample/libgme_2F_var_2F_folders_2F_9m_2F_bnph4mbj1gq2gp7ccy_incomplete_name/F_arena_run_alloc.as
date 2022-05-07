package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_arena_run_alloc() : void
   {
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:int = 0;
      var _loc5_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:int = 0;
      var _loc14_:int = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc16_ = _loc3_ & -4096;
      _loc14_ = (_loc15_ = li32(_loc4_)) + 48;
      _loc13_ = _loc15_ + 44;
      _loc12_ = 0;
      _loc11_ = li32(_loc4_ + 12);
      _loc10_ = li32(_loc4_ + 8);
      _loc9_ = _loc13_;
      loop0:
      while(true)
      {
         _loc9_ = li32(_loc9_);
         while(true)
         {
            _loc5_ = _loc12_;
            if(_loc14_ == _loc9_)
            {
               break;
            }
            _loc5_ = li32(_loc9_ + 8) & -4096;
            _loc7_ = _loc6_ = 1;
            if(uint(_loc16_) >= uint(_loc5_))
            {
               _loc7_ = 0;
            }
            if(uint(_loc16_) <= uint(_loc5_))
            {
               _loc6_ = 0;
            }
            var _loc1_:* = _loc7_ & 1;
            var _loc8_:*;
            _loc7_ = int((_loc8_ = _loc6_ & 1) - _loc1_);
            if(_loc16_ == _loc5_)
            {
               _loc7_ = -1;
               if(_loc9_ == 0)
               {
                  _loc7_ = 0;
               }
            }
            if(_loc7_ <= -1)
            {
               continue loop0;
            }
            _loc5_ = _loc9_;
            if(_loc7_ < 1)
            {
               break;
            }
            _loc9_ = li32(_loc9_ + 4) & -2;
         }
         if(_loc5_ != 0)
         {
            _loc2_ -= 32;
            si32(_loc11_,_loc2_ + 16);
            si32(_loc10_,_loc2_ + 12);
            si32(_loc3_,_loc2_ + 8);
            si32(_loc15_,_loc2_);
            _loc1_ = _loc5_ & (li32(_chunksize_mask) ^ -1);
            si32(_loc16_ = int((_loc8_ = (_loc8_ = int((uint(_loc8_ = int(_loc5_ - (int(_loc1_ + 16))))) / 12)) << 12) + _loc1_),_loc2_ + 4);
            ESP = _loc2_;
            F_arena_run_split();
            _loc2_ += 32;
         }
         else if((_loc9_ = li32(_loc15_ + 36)) != 0)
         {
            si32(0,_loc15_ + 36);
            addr435:
            _loc1_ = li32(_arena_chunk_header_npages);
            _loc2_ -= 16;
            si32(_loc13_,_loc2_);
            _loc1_ *= 12;
            _loc1_ = int(_loc9_ + _loc1_);
            _loc1_ += 16;
            si32(_loc1_,_loc2_ + 4);
            ESP = _loc2_;
            F_arena_avail_tree_insert();
            _loc2_ += 16;
            _loc16_ = 0;
            if(_loc9_ != 0)
            {
               _loc2_ -= 32;
               si32(_loc11_,_loc2_ + 16);
               si32(_loc10_,_loc2_ + 12);
               si32(_loc3_,_loc2_ + 8);
               si32(_loc15_,_loc2_);
               si32(_loc16_ = int((li32(_arena_chunk_header_npages) << 12) + _loc9_),_loc2_ + 4);
               ESP = _loc2_;
               F_arena_run_split();
               _loc2_ += 32;
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(1,_loc2_ + 4);
            si32(li32(_chunksize),_loc2_);
            ESP = _loc2_;
            F_chunk_alloc();
            _loc16_ = 0;
            _loc2_ += 16;
            if((_loc9_ = int(eax)) != 0)
            {
               si32(_loc15_,_loc9_);
               si32(_loc12_ = 0,_loc9_ + 12);
               if(li32(_arena_chunk_header_npages) != 0)
               {
                  _loc12_ = 0;
                  do
                  {
                     _loc1_ = int(_loc12_ * 3);
                     _loc1_ <<= 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     si32(0,_loc1_ + 24);
                     _loc12_ += 1;
                     _loc1_ = li32(_arena_chunk_header_npages);
                  }
                  while(uint(_loc12_) < uint(_loc1_));
                  
               }
               _loc16_ = int(_loc12_ * 12);
               _loc1_ = int(_loc9_ + _loc16_);
               si32(_loc8_ = (_loc8_ = li32(_arena_maxclass)) | 4,_loc1_ + 24);
               _loc12_ += 1;
               _loc1_ = li32(_chunk_npages);
               if((uint(_loc14_ = _loc1_ + -1)) > uint(_loc12_))
               {
                  _loc16_ = int(int(_loc16_ + _loc9_) + 36);
                  do
                  {
                     si32(4,_loc16_);
                     _loc12_ += 1;
                     _loc16_ += 12;
                     _loc1_ = li32(_chunk_npages);
                  }
                  while((uint(_loc14_ = _loc1_ + -1)) > uint(_loc12_));
                  
               }
               _loc1_ = int(_loc14_ * 12);
               _loc1_ = int(_loc9_ + _loc1_);
               si32(_loc8_ = (_loc8_ = li32(_arena_maxclass)) | 4,_loc1_ + 24);
               §§goto(addr435);
            }
         }
         eax = _loc16_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
   }
}
