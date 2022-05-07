package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   
   public function F_arena_run_dalloc() : void
   {
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc19_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc18_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc17_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc20_:* = 0;
      var _loc3_:* = int(ESP);
      _loc8_ = _loc3_;
      _loc3_ -= 32;
      _loc4_ = (_loc4_ = li32(_chunksize_mask)) ^ -1;
      _loc19_ = (_loc20_ = li32(_loc8_ + 4)) & _loc4_;
      _loc16_ = int((_loc17_ = int((_loc18_ = int(_loc20_ - _loc19_)) >>> 12)) * 12);
      _loc4_ = (_loc14_ = li32((_loc15_ = int(_loc19_ + _loc16_)) + 24)) & 2;
      _loc13_ = li32(_loc8_ + 8);
      _loc1_ = li32(_loc8_);
      if(_loc4_ != 0)
      {
         _loc14_ &= -4096;
      }
      else
      {
         _loc14_ = li32((_loc4_ = li32(_loc20_)) + 24);
      }
      _loc20_ = int(_loc14_ >>> 12);
      if(_loc13_ == 0)
      {
         if(_loc20_ != 0)
         {
            _loc18_ = int((_loc4_ = int((_loc4_ = int((_loc4_ = int(_loc18_ >>> 12)) * 12)) + _loc19_)) + 24);
            _loc13_ = int(_loc14_ >>> 12);
            do
            {
               si32(_loc4_ = (_loc4_ = li32(_loc18_)) & -4,_loc18_);
               _loc18_ += 12;
            }
            while((_loc13_ += -1) != 0);
            
         }
      }
      else
      {
         if(_loc20_ != 0)
         {
            _loc13_ = int((_loc4_ = int((_loc4_ = int((_loc4_ = int(_loc18_ >>> 12)) * 12)) + _loc19_)) + 24);
            _loc18_ = _loc20_;
            do
            {
               si32(8,_loc13_);
               _loc13_ += 12;
            }
            while((_loc18_ += -1) != 0);
            
         }
         if((_loc18_ = li32(_loc19_ + 12)) == 0)
         {
            _loc9_ = li32(_loc1_ + 4);
            si32(_loc9_,(_loc10_ = int(_loc8_ - 32)) | 4);
            si32(_loc4_ = (_loc11_ = int(_loc1_ + 8)) & -2,_loc8_ - 24);
            _loc12_ = 0;
            _loc13_ = _loc11_;
            while(true)
            {
               _loc2_ = _loc9_;
               _loc18_ = _loc10_;
               while(true)
               {
                  if(_loc11_ != _loc2_)
                  {
                     if((_loc4_ = (_loc9_ = li32((_loc12_ = li32(_loc2_ + 4)) + 8)) & 1) == 0)
                     {
                        break;
                     }
                     if((_loc4_ = (_loc4_ = li8((_loc4_ = li32(_loc12_ + 4)) + 8)) & 1) == 0)
                     {
                        break;
                     }
                     si32(_loc4_ = _loc9_ & -2,_loc2_ + 4);
                     si32(_loc4_ = (_loc4_ = (_loc4_ = li32(_loc12_ + 8)) & 1) | _loc2_,_loc12_ + 8);
                     var _loc5_:*;
                     si32(_loc5_ = (_loc5_ = li32((_loc4_ = li32(_loc12_ + 4)) + 8)) & -2,_loc4_ + 8);
                     if((_loc4_ = li32(_loc18_ + 4)) == _loc2_)
                     {
                        si32(_loc12_,_loc18_ + 4);
                        _loc2_ = _loc12_;
                        break;
                     }
                     si32(_loc4_ = (_loc4_ = (_loc4_ = li32(_loc18_ + 8)) & 1) | _loc12_,_loc18_ + 8);
                     si32(_loc4_ = _loc4_ & 1 | li32((_loc9_ = _loc12_ & -2) + 4),_loc18_ + 8);
                     si32(_loc18_,_loc9_ + 4);
                     si32(_loc4_ = (_loc5_ = (_loc5_ = li32(_loc9_ + 8)) & -2) | (_loc4_ = li32(_loc18_ + 8)) & 1,_loc9_ + 8);
                     si32(_loc4_ = (_loc4_ = li32(_loc18_ + 8)) | 1,_loc18_ + 8);
                     if((_loc4_ = li32(_loc13_ + 4)) == _loc18_)
                     {
                        si32(_loc9_,_loc13_ + 4);
                     }
                     else
                     {
                        si32(_loc4_ = (_loc4_ = (_loc4_ = li32(_loc13_ + 8)) & 1) | _loc9_,_loc13_ + 8);
                     }
                     _loc2_ = _loc18_ = 1;
                     if(uint(_loc9_) <= uint(_loc19_))
                     {
                        _loc2_ = 0;
                     }
                     if(uint(_loc9_) >= uint(_loc19_))
                     {
                        _loc18_ = 0;
                     }
                     _loc5_ = _loc2_ & 1;
                     if((_loc12_ = int((_loc4_ = _loc18_ & 1) - _loc5_)) <= -1)
                     {
                        _loc2_ = li32(_loc9_ + 4);
                        _loc18_ = _loc9_;
                     }
                     else
                     {
                        _loc2_ = (_loc4_ = li32(_loc9_ + 8)) & -2;
                        _loc18_ = _loc9_;
                     }
                     continue;
                  }
                  si32(_loc11_,_loc19_ + 4);
                  si32(_loc4_ = _loc11_ | 1,_loc19_ + 8);
                  if(_loc12_ >= 1)
                  {
                     si32(_loc4_ = (_loc4_ = (_loc4_ = li32(_loc18_ + 8)) & 1) | _loc19_,_loc18_ + 8);
                     _loc2_ = _loc19_ & -2;
                     si32(_loc4_ = _loc4_ & 1 | li32(_loc2_ + 4),_loc18_ + 8);
                     si32(_loc18_,_loc2_ + 4);
                     si32(_loc4_ = (_loc5_ = (_loc5_ = li32(_loc2_ + 8)) & -2) | (_loc4_ = li32(_loc18_ + 8)) & 1,_loc2_ + 8);
                     si32(_loc4_ = (_loc4_ = li32(_loc18_ + 8)) | 1,_loc18_ + 8);
                     if((_loc4_ = li32(_loc13_ + 4)) == _loc18_)
                     {
                        si32(_loc2_,_loc13_ + 4);
                     }
                     else if((_loc4_ = (_loc11_ = li32(_loc13_ + 8)) & -2) == _loc18_)
                     {
                        si32(_loc4_ = (_loc4_ = _loc11_ & 1) | _loc2_,_loc13_ + 8);
                     }
                  }
                  else
                  {
                     si32(_loc19_,_loc18_ + 4);
                  }
                  si32(_loc4_ = li32(_loc4_ = (_loc4_ = int(_loc8_ - 32)) | 4),_loc1_ + 4);
                  si32(_loc5_ = (_loc5_ = li32(_loc4_ + 8)) & -2,_loc4_ + 8);
                  _loc18_ = li32(_loc19_ + 12);
               }
               _loc13_ = _loc9_ = 1;
               if(uint(_loc2_) <= uint(_loc19_))
               {
                  _loc13_ = 0;
               }
               if(uint(_loc2_) >= uint(_loc19_))
               {
                  _loc9_ = 0;
               }
               _loc5_ = _loc13_ & 1;
               if((_loc12_ = int((_loc4_ = _loc9_ & 1) - _loc5_)) <= -1)
               {
                  _loc9_ = li32(_loc2_ + 4);
                  _loc10_ = _loc2_;
                  _loc13_ = _loc18_;
               }
               else
               {
                  _loc9_ = (_loc4_ = li32(_loc2_ + 8)) & -2;
                  _loc10_ = _loc2_;
                  _loc13_ = _loc18_;
               }
            }
         }
         si32(_loc4_ = int(_loc18_ + _loc20_),_loc19_ + 12);
         si32(_loc4_ = int((_loc4_ = li32(_loc1_ + 40)) + _loc20_),_loc1_ + 40);
      }
      si32(_loc4_ = (_loc4_ = (_loc4_ = li32(_loc15_ + 24)) & 4095) | _loc14_,_loc15_ + 24);
      var _loc6_:*;
      si32(_loc6_ = (_loc6_ = (_loc6_ = li32((_loc5_ = int((_loc18_ = int((_loc4_ = int(_loc20_ + _loc17_)) * 12)) + _loc19_)) + 12)) & 4095) | _loc14_,_loc5_ + 12);
      _loc5_ = li32(_chunk_npages);
      if(uint(_loc4_) < uint(_loc5_))
      {
         if((_loc4_ = (_loc20_ = li32((_loc4_ = int(_loc19_ + _loc18_)) + 24)) & 1) == 0)
         {
            _loc3_ -= 16;
            si32(_loc4_ = int(_loc1_ + 44),_loc3_);
            si32(_loc5_ = int((_loc4_ = int(_loc19_ + 16)) + _loc18_),_loc3_ + 4);
            _loc14_ = int((_loc5_ = _loc20_ & -4096) + _loc14_);
            ESP = _loc3_;
            F_arena_avail_tree_remove();
            _loc3_ += 16;
            si32(_loc5_ = (_loc5_ = (_loc5_ = li32(_loc15_ + 24)) & 4095) | _loc14_,_loc15_ + 24);
            si32(_loc5_ = (_loc5_ = (_loc5_ = li32((_loc4_ = int((_loc5_ = int((_loc5_ = int(_loc17_ + (int(_loc14_ >>> 12)))) * 12)) + _loc4_)) - 4)) & 4095) | _loc14_,_loc4_ - 4);
         }
      }
      _loc4_ = li32(_arena_chunk_header_npages);
      if(uint(_loc17_) > uint(_loc4_))
      {
         if((_loc4_ = (_loc15_ = li32((_loc4_ = int(_loc16_ + _loc19_)) + 12)) & 1) == 0)
         {
            _loc3_ -= 16;
            si32(_loc4_ = int(_loc1_ + 44),_loc3_);
            si32(_loc6_ = int((_loc5_ = int(_loc19_ + 16)) + int((_loc17_ -= int(_loc15_ >>> 12)) * 12)),_loc3_ + 4);
            _loc4_ = int((_loc4_ = _loc15_ & -4096) + _loc14_);
            ESP = _loc3_;
            F_arena_avail_tree_remove();
            _loc3_ += 16;
            var _loc7_:*;
            si32(_loc7_ = (_loc7_ = (_loc7_ = li32(_loc6_ + 8)) & 4095) | _loc4_,_loc6_ + 8);
            si32(_loc4_ = (_loc6_ = (_loc6_ = li32((_loc5_ = int((_loc6_ = int((_loc6_ = int(_loc17_ + (int(_loc4_ >>> 12)))) * 12)) + _loc5_)) - 4)) & 4095) | _loc4_,_loc5_ - 4);
         }
      }
      _loc3_ -= 16;
      si32(_loc15_ = int(_loc1_ + 44),_loc3_);
      _loc5_ = int(_loc17_ * 12);
      si32(_loc5_ = int((_loc4_ = int(_loc19_ + 16)) + _loc5_),_loc3_ + 4);
      ESP = _loc3_;
      F_arena_avail_tree_insert();
      _loc3_ += 16;
      _loc5_ = int((_loc17_ = li32(_arena_chunk_header_npages)) * 12);
      _loc5_ = (_loc4_ = li32((_loc4_ += _loc5_) + 8)) & -4095;
      _loc4_ = li32(_arena_maxclass);
      if(_loc5_ == _loc4_)
      {
         if((_loc16_ = li32(_loc1_ + 36)) != 0)
         {
            if((_loc4_ = li32(_loc16_ + 12)) != 0)
            {
               _loc3_ -= 16;
               si32(_loc16_,_loc3_ + 4);
               si32(_loc4_ = int(li32(_loc19_) + 4),_loc3_);
               ESP = _loc3_;
               F_arena_chunk_tree_dirty_remove();
               _loc3_ += 16;
               si32(_loc4_ = int(li32(_loc1_ + 40) - li32((_loc16_ = li32(_loc1_ + 36)) + 12)),_loc1_ + 40);
            }
            _loc4_ = li32(_chunksize);
            _loc3_ -= 16;
            si32(_loc4_,_loc3_ + 4);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            F_chunk_dealloc();
            _loc3_ += 16;
            _loc17_ = li32(_arena_chunk_header_npages);
         }
         _loc3_ -= 16;
         si32(_loc15_,_loc3_);
         _loc4_ = int(_loc17_ * 12);
         si32(_loc4_ = int((_loc4_ = int(_loc19_ + _loc4_)) + 16),_loc3_ + 4);
         ESP = _loc3_;
         F_arena_avail_tree_remove();
         _loc3_ += 16;
         si32(_loc19_,_loc1_ + 36);
      }
      _loc19_ = li32(_opt_dirty_max);
      if((uint(_loc17_ = li32(_loc1_ + 40))) > uint(_loc19_))
      {
         if(uint(_loc17_) > uint(int(_loc19_ >>> 1)))
         {
            _loc17_ = int(_loc1_ + 8);
            _loc19_ = int(_loc1_ + 4);
            loop4:
            do
            {
               _loc15_ = li32(_loc1_ + 4);
               while((_loc15_ = (_loc4_ = li32((_loc16_ = _loc15_) + 8)) & -2) != _loc17_)
               {
               }
               _loc15_ = 0;
               if(_loc17_ != _loc16_)
               {
                  _loc15_ = _loc16_;
               }
               _loc16_ = li32(_chunk_npages);
               while(true)
               {
                  _loc14_ = _loc16_;
                  if((_loc4_ = li32(_loc15_ + 12)) == 0)
                  {
                     break;
                  }
                  _loc16_ = int(_loc14_ + -1);
                  if((_loc4_ = (_loc20_ = li32((_loc18_ = int(_loc15_ + int(_loc14_ * 12))) + 12)) & 8) != 0)
                  {
                     si32(_loc4_ = _loc20_ ^ 8,_loc18_ + 12);
                     _loc16_ = int(_loc14_ + -1);
                     _loc20_ = -1;
                     while(true)
                     {
                        _loc4_ = li32(_arena_chunk_header_npages);
                        if(uint(_loc16_) <= uint(_loc4_))
                        {
                           break;
                        }
                        if((_loc4_ = (_loc14_ = li32((_loc18_ = int(_loc15_ + ((_loc4_ = int(_loc16_ * 3)) << 2))) + 12)) & 8) == 0)
                        {
                           break;
                        }
                        si32(_loc4_ = _loc14_ ^ 8,_loc18_ + 12);
                        _loc20_ += -1;
                        _loc16_ += -1;
                     }
                     si32(_loc4_ = int((_loc4_ = li32(_loc15_ + 12)) + _loc20_),_loc15_ + 12);
                     si32(_loc20_ = int((_loc4_ = li32(_loc1_ + 40)) + _loc20_),_loc1_ + 40);
                     _loc4_ = int((_loc14_ = li32(_opt_dirty_max)) >>> 1);
                     if(uint(_loc20_) > uint(_loc4_))
                     {
                        continue;
                     }
                     if((_loc4_ = li32(_loc15_ + 12)) == 0)
                     {
                        break;
                     }
                     continue loop4;
                  }
               }
               _loc3_ -= 16;
               si32(_loc15_,_loc3_ + 4);
               si32(_loc19_,_loc3_);
               ESP = _loc3_;
               F_arena_chunk_tree_dirty_remove();
               _loc3_ += 16;
               _loc20_ = li32(_loc1_ + 40);
               _loc14_ = li32(_opt_dirty_max);
            }
            while(_loc4_ = int(_loc14_ >>> 1), uint(_loc20_) > uint(_loc4_));
            
         }
      }
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
