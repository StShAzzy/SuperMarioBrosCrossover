package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F___umtx_op_set_ceiling() : void
   {
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc13_ = (_loc13_ = li32((_loc14_ = li32(_loc3_)) + 4)) & 8;
      _loc12_ = 22;
      if(_loc13_ != 0)
      {
         if((uint(_loc11_ = li32(_loc3_ + 8))) <= 31)
         {
            _loc3_ = li32(_loc3_ + 12);
            _loc10_ = li32(_loc13_ = li32(_loc4_));
            _loc9_ = li32(_loc13_ + 4);
            si32(5,_loc9_ + 12);
            si32(0,_loc9_ + 16);
            si32(_loc14_,_loc9_ + 20);
            si32(0,_loc9_ + 24);
            si32(_loc8_ = int((_loc13_ = int(_loc14_ * -1640562687)) >>> 25),_loc9_ + 8);
            _loc7_ = _loc10_ | -2147483648;
            _loc12_ = 0;
            _loc1_ = 0;
            while(true)
            {
               if((_loc13_ = _loc12_ & 1) != 0)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc8_ * 44));
               }
               _loc13_ = int(threadId);
               _loc2_ -= 16;
               si32(_loc13_ += 8,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               _loc12_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc12_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               if((_loc13_ = li8(_loc12_ + 36)) != 0)
               {
                  _loc8_ = li32(_loc12_ + 40);
                  do
                  {
                     si32(_loc13_ = int(_loc8_ + 1),_loc12_ + 40);
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc12_,_loc2_ + 4);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ += 16;
                     si32(_loc8_ = int((_loc13_ = li32(_loc12_ + 40)) + -1),_loc12_ + 40);
                  }
                  while((_loc13_ = li8(_loc12_ + 36)) != 0);
                  
               }
               si8(1,_loc12_ + 36);
               _loc12_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc12_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               _loc2_ -= 16;
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ += 16;
               _loc8_ = li32(_loc14_ + 8);
               _loc2_ -= 16;
               si32(_loc7_,_loc2_ + 8);
               si32(-2147483648,_loc2_ + 4);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc12_ = 14;
               _loc2_ += 16;
               if((_loc5_ = int(eax)) == -1)
               {
                  break;
               }
               if(_loc5_ == -2147483648)
               {
                  si32(_loc11_,_loc14_ + 8);
                  si32(-2147483648,_loc14_);
                  _loc12_ = 0;
                  break;
               }
               if((_loc13_ = _loc5_ & 2147483647) == _loc10_)
               {
                  si32(_loc11_,_loc14_ + 8);
                  _loc12_ = 0;
                  break;
               }
               _loc12_ = _loc1_;
               if(_loc1_ != 0)
               {
                  break;
               }
               _loc12_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc12_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               _loc13_ = int(threadId);
               _loc2_ -= 16;
               si32(_loc13_ += 8,_loc2_ + 4);
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               _loc12_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc12_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               si32(0,_loc9_);
               si32(_loc13_ = li32(_loc12_ + 24),_loc9_ + 4);
               _loc13_ = li32(_loc12_ + 24);
               si32(_loc9_,_loc13_);
               si32(_loc9_,_loc12_ + 24);
               si32(_loc13_ = (_loc13_ = li32(_loc9_ + 28)) | 1,_loc9_ + 28);
               _loc12_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc12_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc12_ * 44));
               }
               si8(0,_loc12_ + 36);
               if((_loc13_ = li32(_loc12_ + 40)) != 0)
               {
                  if((_loc13_ = li8(_sIsThreaded_2E_b)) == 1)
                  {
                     _loc2_ -= 16;
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_wake_one();
                     _loc2_ += 16;
                  }
               }
               _loc8_ = li32(_loc9_ + 12);
               _loc5_ = li32(_loc9_ + 8);
               if(_loc8_ <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc5_ * 44));
               }
               _loc13_ = (_loc13_ = li8(_loc9_ + 28)) & 1;
               _loc1_ = 0;
               if(_loc13_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc12_,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  si32(0,_loc2_ + 8);
                  ESP = _loc2_;
                  F_avm2_msleep();
                  _loc1_ = 60;
                  _loc2_ += 16;
                  if((_loc13_ = int(eax)) != 0)
                  {
                     _loc1_ = 0;
                  }
                  _loc8_ = li32(_loc9_ + 12);
                  _loc5_ = li32(_loc9_ + 8);
               }
               if(_loc8_ <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc5_ * 44));
               }
               if((_loc13_ = (_loc13_ = li8(_loc9_ + 28)) & 1) != 0)
               {
                  _loc5_ = li32(_loc9_ + 4);
                  if((_loc8_ = li32(_loc9_)) != 0)
                  {
                     si32(_loc5_,_loc8_ + 4);
                  }
                  else
                  {
                     si32(_loc5_,_loc12_ + 24);
                  }
                  _loc13_ = li32(_loc9_);
                  var _loc6_:* = li32(_loc9_ + 4);
                  si32(_loc13_,_loc6_);
                  si32(_loc13_ = (_loc13_ = li32(_loc9_ + 28)) & -2,_loc9_ + 28);
                  _loc8_ = li32(_loc9_ + 12);
                  _loc5_ = li32(_loc9_ + 8);
               }
               if(_loc8_ <= 1)
               {
                  _loc12_ = int((_loc13_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
               }
               else
               {
                  _loc12_ = int(_umtxq_chains + int(_loc5_ * 44));
               }
               _loc2_ -= 16;
               si32(_loc12_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ += 16;
               _loc13_ = li32(_loc9_ + 12);
               _loc12_ = 1;
               if(_loc13_ >= 2)
               {
                  _loc12_ = 0;
               }
               _loc8_ = li32(_loc9_ + 8);
            }
            _loc11_ = li32(_loc9_ + 8);
            if((_loc13_ = li32(_loc9_ + 12)) <= 1)
            {
               _loc11_ = int((_loc13_ = int(_umtxq_chains + int(_loc11_ * 44))) + 5632);
            }
            else
            {
               _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            _loc13_ = int(threadId);
            _loc2_ -= 16;
            si32(_loc13_ += 8,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            if(_loc12_ == 0)
            {
               _loc11_ = li32(_loc9_ + 8);
               if((_loc13_ = li32(_loc9_ + 12)) <= 1)
               {
                  _loc11_ = int((_loc13_ = int(_umtxq_chains + int(_loc11_ * 44))) + 5632);
               }
               else
               {
                  _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
               }
               _loc14_ = li32(_loc11_ + 20);
               _loc11_ = 2147483647;
               loop2:
               while(true)
               {
                  while((_loc7_ = _loc14_) != 0)
                  {
                     _loc10_ = li32(_loc7_ + 12);
                     _loc14_ = li32(_loc7_);
                     if(_loc10_ == li32(_loc9_ + 12))
                     {
                        if((_loc6_ = li32(_loc7_ + 20)) == li32(_loc9_ + 20))
                        {
                           if((_loc6_ = li32(_loc7_ + 24)) != li32(_loc9_ + 24))
                           {
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            _loc11_ = li32(_loc9_ + 8);
            if((_loc13_ = li32(_loc9_ + 12)) <= 1)
            {
               _loc11_ = int((_loc13_ = int(_umtxq_chains + int(_loc11_ * 44))) + 5632);
            }
            else
            {
               _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            si8(0,_loc11_ + 36);
            if((_loc13_ = li32(_loc11_ + 40)) != 0)
            {
               if((_loc13_ = li8(_sIsThreaded_2E_b)) == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
               }
            }
            _loc11_ = li32(_loc9_ + 8);
            if((_loc13_ = li32(_loc9_ + 12)) <= 1)
            {
               _loc9_ = int((_loc13_ = int(_umtxq_chains + int(_loc11_ * 44))) + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc11_ * 44));
            }
            _loc2_ -= 16;
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            if(_loc12_ == 0)
            {
               if(_loc3_ != 0)
               {
                  si32(_loc8_,_loc3_);
               }
            }
         }
      }
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
