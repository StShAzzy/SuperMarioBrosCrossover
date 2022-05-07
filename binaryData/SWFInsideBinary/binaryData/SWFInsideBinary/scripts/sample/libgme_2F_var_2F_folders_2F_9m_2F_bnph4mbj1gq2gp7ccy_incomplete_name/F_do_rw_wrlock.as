package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_do_rw_wrlock() : void
   {
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc13_ = li32(_loc3_ + 4);
      _loc13_ = li32(_loc4_);
      si32(6,_loc13_ + 12);
      si32(0,_loc13_ + 16);
      si32(_loc3_,_loc13_ + 20);
      si32(0,_loc13_ + 24);
      var _loc12_:*;
      si32(_loc12_ = int((_loc12_ = int(_loc3_ * -1640562687)) >>> 25),_loc13_ + 8);
      _loc11_ = li32(_loc4_ + 8);
      _loc10_ = 0;
      _loc9_ = 0;
      while(true)
      {
         loop1:
         while(true)
         {
            _loc8_ = li32(_loc3_);
            while((_loc7_ = _loc8_) >= 0)
            {
               if((_loc12_ = _loc7_ & 536870911) != 0)
               {
                  break;
               }
               _loc2_ -= 16;
               si32(_loc7_,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               si32(_loc12_ = _loc7_ | -2147483648,_loc2_ + 8);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc6_ = 0;
               _loc2_ += 16;
               if((_loc8_ = int(eax)) == _loc7_)
               {
                  eax = _loc6_;
                  _loc2_ = _loc4_;
                  ESP = _loc2_;
               }
               else
               {
                  addr2233:
               }
               continue;
               return;
            }
            if(_loc9_ == 0)
            {
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               _loc12_ = int(threadId);
               _loc2_ -= 16;
               si32(_loc12_ += 8,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc6_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               if((_loc12_ = li8(_loc6_ + 36)) != 0)
               {
                  _loc7_ = li32(_loc6_ + 40);
                  do
                  {
                     si32(_loc12_ = int(_loc7_ + 1),_loc6_ + 40);
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc6_,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ += 16;
                     si32(_loc7_ = int((_loc12_ = li32(_loc6_ + 40)) + -1),_loc6_ + 40);
                  }
                  while((_loc12_ = li8(_loc6_ + 36)) != 0);
                  
               }
               si8(1,_loc6_ + 36);
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               _loc2_ -= 16;
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ += 16;
               _loc6_ = li32(_loc3_);
               while(true)
               {
                  _loc7_ = _loc6_;
                  _loc8_ = 1;
                  if(_loc7_ >= 0)
                  {
                     _loc8_ = 0;
                  }
                  _loc5_ = _loc7_ & 536870911;
                  _loc6_ = 1;
                  if(_loc5_ == 0)
                  {
                     _loc6_ = 0;
                  }
                  if((_loc12_ = _loc7_ & 1073741824) != 0)
                  {
                     break;
                  }
                  if((_loc12_ = _loc8_ | _loc6_) == 0)
                  {
                     break;
                  }
                  _loc2_ -= 16;
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc3_,_loc2_);
                  si32(_loc12_ = _loc7_ | 1073741824,_loc2_ + 8);
                  ESP = _loc2_;
                  F_avm2_cmpSwapUns();
                  _loc2_ += 16;
                  if((_loc6_ = int(eax)) == _loc7_)
                  {
                     break loop1;
                  }
               }
               if(_loc7_ < 0)
               {
                  break;
               }
               if(_loc5_ != 0)
               {
                  break;
               }
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               _loc12_ = int(threadId);
               _loc2_ -= 16;
               si32(_loc12_ += 8,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               si8(0,_loc7_ + 36);
               if((_loc12_ = li32(_loc7_ + 40)) != 0)
               {
                  if((_loc12_ = li8(_sIsThreaded_2E_b)) == 1)
                  {
                     _loc2_ -= 16;
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_wake_one();
                     _loc2_ += 16;
                  }
               }
               _loc7_ = li32(_loc13_ + 8);
               if((_loc12_ = li32(_loc13_ + 12)) <= 1)
               {
                  _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
               }
               else
               {
                  _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
               }
               _loc2_ -= 16;
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_avm2_unlock();
               _loc2_ += 16;
               continue;
            }
            _loc6_ = _loc9_;
            if(uint(_loc7_) <= 1073741823)
            {
               _loc6_ = _loc9_;
               if(_loc10_ != 0)
               {
                  _loc3_ = li32(_loc13_ + 8);
                  if((_loc12_ = li32(_loc13_ + 12)) <= 1)
                  {
                     _loc3_ = int((_loc12_ = int(_umtxq_chains + int(_loc3_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                  }
                  _loc12_ = int(threadId);
                  _loc2_ -= 16;
                  si32(_loc12_ += 8,_loc2_ + 4);
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ += 16;
                  _loc3_ = li32(_loc13_ + 8);
                  if((_loc12_ = li32(_loc13_ + 12)) <= 1)
                  {
                     _loc3_ = int((_loc12_ = int(_umtxq_chains + int(_loc3_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                  }
                  if((_loc12_ = li8(_loc3_ + 36)) != 0)
                  {
                     _loc11_ = li32(_loc3_ + 40);
                     do
                     {
                        si32(_loc12_ = int(_loc11_ + 1),_loc3_ + 40);
                        _loc2_ -= 16;
                        si32(0,_loc2_ + 8);
                        si32(_loc3_,_loc2_ + 4);
                        si32(_loc3_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_msleep();
                        _loc2_ += 16;
                        si32(_loc11_ = int((_loc12_ = li32(_loc3_ + 40)) + -1),_loc3_ + 40);
                     }
                     while((_loc12_ = li8(_loc3_ + 36)) != 0);
                     
                  }
                  si8(1,_loc3_ + 36);
                  _loc3_ = li32(_loc13_ + 8);
                  if((_loc12_ = li32(_loc13_ + 12)) <= 1)
                  {
                     _loc3_ = int((_loc12_ = int(_umtxq_chains + int(_loc3_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                  }
                  _loc11_ = li32(_loc3_ + 20);
                  _loc10_ = 2147483647;
                  loop9:
                  while(true)
                  {
                     while(true)
                     {
                        _loc3_ = _loc11_;
                        if(_loc3_ == 0)
                        {
                           break;
                        }
                        _loc6_ = li32(_loc3_ + 12);
                        _loc11_ = li32(_loc3_);
                        if(_loc6_ == li32(_loc13_ + 12))
                        {
                           if((_loc12_ = li32(_loc3_ + 20)) == li32(_loc13_ + 20))
                           {
                              if(li32(_loc3_ + 24) != li32(_loc13_ + 24))
                              {
                                 continue;
                              }
                              continue loop9;
                           }
                        }
                     }
                     addr589:
                     _loc3_ = li32(_loc13_ + 8);
                     if((_loc12_ = li32(_loc13_ + 12)) <= 1)
                     {
                        _loc3_ = int((_loc12_ = int(_umtxq_chains + int(_loc3_ * 44))) + 5632);
                     }
                     else
                     {
                        _loc3_ = int(_umtxq_chains + int(_loc3_ * 44));
                     }
                     si8(0,_loc3_ + 36);
                     if((_loc12_ = li32(_loc3_ + 40)) != 0)
                     {
                        if((_loc12_ = li8(_sIsThreaded_2E_b)) == 1)
                        {
                           _loc2_ -= 16;
                           si32(_loc3_,_loc2_);
                           ESP = _loc2_;
                           F_avm2_wake_one();
                           _loc2_ += 16;
                        }
                     }
                     _loc3_ = li32(_loc13_ + 8);
                     if((_loc12_ = li32(_loc13_ + 12)) <= 1)
                     {
                        _loc13_ = int((_loc12_ = int(_umtxq_chains + int(_loc3_ * 44))) + 5632);
                     }
                     else
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc3_ * 44));
                     }
                     _loc2_ -= 16;
                     si32(_loc13_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_unlock();
                     _loc2_ += 16;
                     _loc6_ = _loc9_;
                  }
               }
            }
            §§goto(addr2233);
         }
         si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 12)) + 1),_loc3_ + 12);
         while(true)
         {
            if(_loc7_ >= 0)
            {
               if((_loc12_ = _loc7_ & 536870911) == 0)
               {
                  break;
               }
            }
            _loc9_ = li32(_loc13_ + 8);
            if((_loc12_ = li32(_loc13_ + 12)) <= 1)
            {
               _loc9_ = int((_loc12_ = int(_umtxq_chains + int(_loc9_ * 44))) + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            _loc12_ = int(threadId);
            _loc2_ -= 16;
            si32(_loc12_ += 8,_loc2_ + 4);
            si32(_loc9_,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            _loc9_ = li32(_loc13_ + 8);
            if((_loc12_ = li32(_loc13_ + 12)) <= 1)
            {
               _loc9_ = int((_loc12_ = int(_umtxq_chains + int(_loc9_ * 44))) + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            si32(0,_loc13_);
            si32(_loc12_ = li32(_loc9_ + 32),_loc13_ + 4);
            _loc12_ = li32(_loc9_ + 32);
            si32(_loc13_,_loc12_);
            si32(_loc13_,_loc9_ + 32);
            si32(_loc12_ = (_loc12_ = li32(_loc13_ + 28)) | 1,_loc13_ + 28);
            _loc9_ = li32(_loc13_ + 8);
            if((_loc12_ = li32(_loc13_ + 12)) <= 1)
            {
               _loc9_ = int((_loc12_ = int(_umtxq_chains + int(_loc9_ * 44))) + 5632);
            }
            else
            {
               _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
            }
            si8(0,_loc9_ + 36);
            if((_loc12_ = li32(_loc9_ + 40)) != 0)
            {
               if((_loc12_ = li8(_sIsThreaded_2E_b)) == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
               }
            }
            _loc7_ = li32(_loc13_ + 12);
            _loc6_ = li32(_loc13_ + 8);
            if(_loc7_ <= 1)
            {
               _loc10_ = int((_loc12_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            _loc12_ = (_loc12_ = li8(_loc13_ + 28)) & 1;
            _loc9_ = 0;
            if(_loc12_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc11_,_loc2_ + 8);
               si32(_loc10_,_loc2_ + 4);
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F_avm2_msleep();
               _loc9_ = 60;
               _loc2_ += 16;
               if((_loc12_ = int(eax)) != 0)
               {
                  _loc9_ = 0;
               }
               _loc7_ = li32(_loc13_ + 12);
               _loc6_ = li32(_loc13_ + 8);
            }
            if(_loc7_ <= 1)
            {
               _loc10_ = int((_loc12_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            if((_loc12_ = li8(_loc10_ + 36)) != 0)
            {
               _loc7_ = li32(_loc10_ + 40);
               do
               {
                  si32(_loc12_ = int(_loc7_ + 1),_loc10_ + 40);
                  _loc2_ -= 16;
                  si32(0,_loc2_ + 8);
                  si32(_loc10_,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_msleep();
                  _loc2_ += 16;
                  si32(_loc7_ = int((_loc12_ = li32(_loc10_ + 40)) + -1),_loc10_ + 40);
               }
               while((_loc12_ = li8(_loc10_ + 36)) != 0);
               
            }
            si8(1,_loc10_ + 36);
            _loc7_ = li32(_loc13_ + 12);
            _loc6_ = li32(_loc13_ + 8);
            if(_loc7_ <= 1)
            {
               _loc10_ = int((_loc12_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            if((_loc12_ = (_loc12_ = li8(_loc13_ + 28)) & 1) != 0)
            {
               _loc7_ = li32(_loc13_ + 4);
               if((_loc6_ = li32(_loc13_)) != 0)
               {
                  si32(_loc7_,_loc6_ + 4);
               }
               else
               {
                  si32(_loc7_,_loc10_ + 32);
               }
               _loc12_ = li32(_loc13_);
               var _loc1_:* = li32(_loc13_ + 4);
               si32(_loc12_,_loc1_);
               si32(_loc12_ = (_loc12_ = li32(_loc13_ + 28)) & -2,_loc13_ + 28);
               _loc7_ = li32(_loc13_ + 12);
               _loc6_ = li32(_loc13_ + 8);
            }
            if(_loc7_ <= 1)
            {
               _loc10_ = int((_loc12_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            _loc2_ -= 16;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            if(_loc9_ != 0)
            {
               break;
            }
            _loc7_ = li32(_loc3_);
            _loc9_ = 0;
         }
         _loc1_ = li32(_loc3_ + 12);
         si32(_loc12_ = int(_loc1_ + -1),_loc3_ + 12);
         _loc10_ = 0;
         if(_loc1_ == 1)
         {
            _loc10_ = li32(_loc3_);
            do
            {
               _loc1_ = _loc10_;
               _loc2_ -= 16;
               si32(_loc1_,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               si32(_loc12_ = _loc1_ & -1073741825,_loc2_ + 8);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc2_ += 16;
            }
            while((_loc10_ = int(eax)) != _loc1_);
            
            _loc10_ = li32(_loc3_ + 8);
         }
         _loc7_ = li32(_loc13_ + 8);
         if((_loc12_ = li32(_loc13_ + 12)) <= 1)
         {
            _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         _loc12_ = int(threadId);
         _loc2_ -= 16;
         si32(_loc12_ += 8,_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         _loc7_ = li32(_loc13_ + 8);
         if((_loc12_ = li32(_loc13_ + 12)) <= 1)
         {
            _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         si8(0,_loc7_ + 36);
         if((_loc12_ = li32(_loc7_ + 40)) != 0)
         {
            if((_loc12_ = li8(_sIsThreaded_2E_b)) == 1)
            {
               _loc2_ -= 16;
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_avm2_wake_one();
               _loc2_ += 16;
            }
         }
         _loc7_ = li32(_loc13_ + 8);
         if((_loc12_ = li32(_loc13_ + 12)) <= 1)
         {
            _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         _loc2_ -= 16;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
      }
   }
}
