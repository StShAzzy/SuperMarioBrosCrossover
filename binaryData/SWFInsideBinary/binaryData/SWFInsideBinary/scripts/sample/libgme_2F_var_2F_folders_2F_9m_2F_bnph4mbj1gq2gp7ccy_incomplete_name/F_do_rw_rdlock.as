package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_do_rw_rdlock() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc12_ = li32(_loc1_ + 4);
      _loc11_ = li32(_loc3_);
      si32(6,_loc11_ + 12);
      si32(0,_loc11_ + 16);
      si32(_loc1_,_loc11_ + 20);
      si32(0,_loc11_ + 24);
      si32(_loc10_ = int((_loc10_ = int(_loc1_ * -1640562687)) >>> 25),_loc11_ + 8);
      _loc10_ = (_loc10_ = li8(_loc3_ + 8)) & 2;
      _loc9_ = -2147483648;
      if(_loc10_ == 0)
      {
         _loc9_ = -2147483648;
         if((_loc12_ & 2) == 0)
         {
            _loc9_ = -1073741824;
         }
      }
      _loc12_ = li32(_loc3_ + 12);
      _loc8_ = 0;
      while(true)
      {
         loop1:
         while(true)
         {
            _loc7_ = li32(_loc1_);
            do
            {
               if((_loc10_ = (_loc6_ = _loc7_) & _loc9_) != 0)
               {
                  _loc5_ = _loc8_;
                  if(_loc8_ != 0)
                  {
                     break;
                  }
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  _loc10_ = int(threadId);
                  _loc2_ -= 16;
                  si32(_loc10_ += 8,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ += 16;
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  if((_loc10_ = li8(_loc5_ + 36)) != 0)
                  {
                     _loc6_ = li32(_loc5_ + 40);
                     do
                     {
                        si32(_loc10_ = int(_loc6_ + 1),_loc5_ + 40);
                        _loc2_ -= 16;
                        si32(0,_loc2_ + 8);
                        si32(_loc5_,_loc2_ + 4);
                        si32(_loc5_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_msleep();
                        _loc2_ += 16;
                        si32(_loc6_ = int((_loc10_ = li32(_loc5_ + 40)) + -1),_loc5_ + 40);
                     }
                     while((_loc10_ = li8(_loc5_ + 36)) != 0);
                     
                  }
                  si8(1,_loc5_ + 36);
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  _loc2_ -= 16;
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
                  _loc6_ = li32(_loc1_);
                  while((_loc6_ = (_loc5_ = _loc6_) & _loc9_) != 0)
                  {
                     if((_loc10_ = _loc5_ & 536870912) != 0)
                     {
                        break;
                     }
                     _loc2_ -= 16;
                     si32(_loc5_,_loc2_ + 4);
                     si32(_loc1_,_loc2_);
                     si32(_loc10_ = _loc5_ | 536870912,_loc2_ + 8);
                     ESP = _loc2_;
                     F_avm2_cmpSwapUns();
                     _loc2_ += 16;
                     if((_loc6_ = int(eax)) == _loc5_)
                     {
                        break loop1;
                     }
                  }
                  if(_loc6_ != 0)
                  {
                     break loop1;
                  }
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  _loc10_ = int(threadId);
                  _loc2_ -= 16;
                  si32(_loc10_ += 8,_loc2_ + 4);
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_lock_id();
                  _loc2_ += 16;
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  si8(0,_loc5_ + 36);
                  if((_loc10_ = li32(_loc5_ + 40)) != 0)
                  {
                     if((_loc10_ = li8(_sIsThreaded_2E_b)) == 1)
                     {
                        _loc2_ -= 16;
                        si32(_loc5_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_wake_one();
                        _loc2_ += 16;
                     }
                  }
                  _loc5_ = li32(_loc11_ + 8);
                  if((_loc10_ = li32(_loc11_ + 12)) <= 1)
                  {
                     _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
                  }
                  _loc2_ -= 16;
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
                  continue loop1;
               }
               _loc5_ = 35;
               if((_loc6_ & 536870911) == 536870911)
               {
                  break;
               }
               _loc2_ -= 16;
               si32(_loc6_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               si32(_loc10_ = int(_loc6_ + 1),_loc2_ + 8);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc5_ = 0;
               _loc2_ += 16;
            }
            while((_loc7_ = int(eax)) != _loc6_);
            
            eax = _loc5_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         si32(_loc10_ = int((_loc10_ = li32(_loc1_ + 8)) + 1),_loc1_ + 8);
         while((_loc10_ = _loc5_ & _loc9_) != 0)
         {
            _loc8_ = li32(_loc11_ + 8);
            if((_loc10_ = li32(_loc11_ + 12)) <= 1)
            {
               _loc8_ = int((_loc10_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
            }
            else
            {
               _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
            }
            _loc10_ = int(threadId);
            _loc2_ -= 16;
            si32(_loc10_ += 8,_loc2_ + 4);
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            _loc8_ = li32(_loc11_ + 8);
            if((_loc10_ = li32(_loc11_ + 12)) <= 1)
            {
               _loc8_ = int((_loc10_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
            }
            else
            {
               _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
            }
            si32(0,_loc11_);
            si32(_loc10_ = li32(_loc8_ + 24),_loc11_ + 4);
            _loc10_ = li32(_loc8_ + 24);
            si32(_loc11_,_loc10_);
            si32(_loc11_,_loc8_ + 24);
            si32(_loc10_ = (_loc10_ = li32(_loc11_ + 28)) | 1,_loc11_ + 28);
            _loc8_ = li32(_loc11_ + 8);
            if((_loc10_ = li32(_loc11_ + 12)) <= 1)
            {
               _loc8_ = int((_loc10_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
            }
            else
            {
               _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
            }
            si8(0,_loc8_ + 36);
            if((_loc10_ = li32(_loc8_ + 40)) != 0)
            {
               if((_loc10_ = li8(_sIsThreaded_2E_b)) == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
               }
            }
            _loc6_ = li32(_loc11_ + 12);
            _loc5_ = li32(_loc11_ + 8);
            if(_loc6_ <= 1)
            {
               _loc7_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
            }
            else
            {
               _loc7_ = int(_umtxq_chains + int(_loc5_ * 44));
            }
            _loc10_ = (_loc10_ = li8(_loc11_ + 28)) & 1;
            _loc8_ = 0;
            if(_loc10_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc12_,_loc2_ + 8);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_avm2_msleep();
               _loc8_ = 60;
               _loc2_ += 16;
               if((_loc10_ = int(eax)) != 0)
               {
                  _loc8_ = 0;
               }
               _loc6_ = li32(_loc11_ + 12);
               _loc5_ = li32(_loc11_ + 8);
            }
            if(_loc6_ <= 1)
            {
               _loc6_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
            }
            else
            {
               _loc6_ = int(_umtxq_chains + int(_loc5_ * 44));
            }
            if((_loc10_ = li8(_loc6_ + 36)) != 0)
            {
               _loc5_ = li32(_loc6_ + 40);
               do
               {
                  si32(_loc10_ = int(_loc5_ + 1),_loc6_ + 40);
                  _loc2_ -= 16;
                  si32(0,_loc2_ + 8);
                  si32(_loc6_,_loc2_ + 4);
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_msleep();
                  _loc2_ += 16;
                  si32(_loc5_ = int((_loc10_ = li32(_loc6_ + 40)) + -1),_loc6_ + 40);
               }
               while((_loc10_ = li8(_loc6_ + 36)) != 0);
               
            }
            si8(1,_loc6_ + 36);
            _loc7_ = li32(_loc11_ + 12);
            _loc6_ = li32(_loc11_ + 8);
            if(_loc7_ <= 1)
            {
               _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            if((_loc10_ = (_loc10_ = li8(_loc11_ + 28)) & 1) != 0)
            {
               _loc7_ = li32(_loc11_ + 4);
               if((_loc6_ = li32(_loc11_)) != 0)
               {
                  si32(_loc7_,_loc6_ + 4);
               }
               else
               {
                  si32(_loc7_,_loc5_ + 24);
               }
               var _loc4_:* = li32(_loc11_);
               _loc10_ = li32(_loc11_ + 4);
               si32(_loc4_,_loc10_);
               si32(_loc10_ = (_loc10_ = li32(_loc11_ + 28)) & -2,_loc11_ + 28);
               _loc7_ = li32(_loc11_ + 12);
               _loc6_ = li32(_loc11_ + 8);
            }
            if(_loc7_ <= 1)
            {
               _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
            }
            else
            {
               _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
            }
            _loc2_ -= 16;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            if(_loc8_ != 0)
            {
               break;
            }
            _loc5_ = li32(_loc1_);
            _loc8_ = 0;
         }
         si32(_loc10_ = int((_loc4_ = li32(_loc1_ + 8)) + -1),_loc1_ + 8);
         if(_loc4_ == 1)
         {
            _loc5_ = li32(_loc1_);
            do
            {
               _loc4_ = _loc5_;
               _loc2_ -= 16;
               si32(_loc4_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               si32(_loc10_ = _loc4_ & -536870913,_loc2_ + 8);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc2_ += 16;
            }
            while((_loc5_ = int(eax)) != _loc4_);
            
         }
         _loc5_ = li32(_loc11_ + 8);
         if((_loc10_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
         }
         _loc10_ = int(threadId);
         _loc2_ -= 16;
         si32(_loc10_ += 8,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         _loc5_ = li32(_loc11_ + 8);
         if((_loc10_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
         }
         si8(0,_loc5_ + 36);
         if((_loc10_ = li32(_loc5_ + 40)) != 0)
         {
            if((_loc10_ = li8(_sIsThreaded_2E_b)) == 1)
            {
               _loc2_ -= 16;
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F_avm2_wake_one();
               _loc2_ += 16;
            }
         }
         _loc5_ = li32(_loc11_ + 8);
         if((_loc10_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc5_ = int((_loc10_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
         }
         _loc2_ -= 16;
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
      }
   }
}
