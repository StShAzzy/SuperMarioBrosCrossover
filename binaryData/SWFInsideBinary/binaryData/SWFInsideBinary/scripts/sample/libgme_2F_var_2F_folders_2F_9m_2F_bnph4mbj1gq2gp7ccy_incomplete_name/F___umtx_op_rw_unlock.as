package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F___umtx_op_rw_unlock() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32((_loc11_ = li32(_loc1_)) + 4);
      si32(6,_loc12_ + 12);
      si32(_loc9_ = 0,_loc12_ + 16);
      si32(_loc11_,_loc12_ + 20);
      si32(_loc9_,_loc12_ + 24);
      _loc1_ = int(_loc11_ * -1640562687);
      _loc1_ >>>= 25;
      si32(_loc1_,_loc12_ + 8);
      if((_loc8_ = li32(_loc11_)) <= -1)
      {
         while(true)
         {
            _loc2_ -= 16;
            si32(_loc8_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            _loc1_ = _loc8_ & 2147483647;
            si32(_loc1_,_loc2_ + 8);
            ESP = _loc2_;
            F_avm2_cmpSwapUns();
            _loc2_ += 16;
            if((_loc7_ = int(eax)) != _loc8_)
            {
               _loc6_ = 1;
               _loc8_ = _loc7_;
               if(_loc7_ <= -1)
               {
                  continue;
               }
            }
            else
            {
               addr202:
               _loc1_ = _loc10_ & 2;
               if(_loc1_ == 0)
               {
                  _loc10_ = _loc9_ = 1;
                  if((_loc8_ & 1073741824) == 0)
                  {
                     _loc10_ = 2147483647;
                     _loc6_ = _loc9_ = 0;
                     if((_loc8_ & 536870912) != 0)
                     {
                     }
                     §§goto(addr817);
                  }
               }
               else
               {
                  _loc10_ = 2147483647;
                  if((_loc8_ & 536870912) == 0)
                  {
                     _loc9_ = 1;
                     _loc6_ = 0;
                     _loc10_ = _loc9_;
                     if((_loc8_ & 1073741824) != 0)
                     {
                     }
                     §§goto(addr817);
                  }
               }
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc6_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc1_ = int(threadId);
               _loc2_ -= 16;
               _loc1_ += 8;
               si32(_loc1_,_loc2_ + 4);
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc8_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc8_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc1_ = li8(_loc8_ + 36);
               if(_loc1_ != 0)
               {
                  _loc6_ = li32(_loc8_ + 40);
                  do
                  {
                     _loc1_ = int(_loc6_ + 1);
                     si32(_loc1_,_loc8_ + 40);
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc8_,_loc2_ + 4);
                     si32(_loc8_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc2_ += 16;
                     _loc1_ = li32(_loc8_ + 40);
                     si32(_loc6_ = int(_loc1_ + -1),_loc8_ + 40);
                     _loc1_ = li8(_loc8_ + 36);
                  }
                  while(_loc1_ != 0);
                  
               }
               si8(1,_loc8_ + 36);
               _loc6_ = li32(_loc12_ + 8);
               _loc1_ = li32(_loc12_ + 12);
               if(_loc1_ <= 1)
               {
                  _loc6_ = int(int(_umtxq_chains + int(_loc6_ * 44)) + 5632);
               }
               else
               {
                  _loc6_ = int(_umtxq_chains + int(_loc6_ * 44));
               }
               _loc9_ <<= 3;
               _loc1_ = int(_loc6_ + _loc9_);
               _loc6_ = li32(_loc1_ + 20);
               _loc8_ = 0;
               loop2:
               while(true)
               {
                  _loc8_ += 1;
                  while((_loc11_ = _loc6_) != 0)
                  {
                     _loc7_ = li32(_loc11_ + 12);
                     _loc6_ = li32(_loc11_);
                     if(_loc7_ == li32(_loc12_ + 12))
                     {
                        if(li32(_loc11_ + 20) == li32(_loc12_ + 20))
                        {
                           if(li32(_loc11_ + 24) != li32(_loc12_ + 24))
                           {
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
                  addr680:
                  _loc10_ = li32(_loc12_ + 8);
                  _loc1_ = li32(_loc12_ + 12);
                  if(_loc1_ <= 1)
                  {
                     _loc10_ = int(int(_umtxq_chains + int(_loc10_ * 44)) + 5632);
                  }
                  else
                  {
                     _loc10_ = int(_umtxq_chains + int(_loc10_ * 44));
                  }
                  si8(_loc6_ = 0,_loc10_ + 36);
                  _loc1_ = li32(_loc10_ + 40);
                  if(_loc1_ != 0)
                  {
                     if(li8(_sIsThreaded_2E_b) == 1)
                     {
                        _loc2_ -= 16;
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_wake_one();
                        _loc2_ += 16;
                     }
                  }
                  _loc10_ = li32(_loc12_ + 8);
                  _loc1_ = li32(_loc12_ + 12);
                  if(_loc1_ <= 1)
                  {
                     _loc12_ = int(int(_umtxq_chains + int(_loc10_ * 44)) + 5632);
                  }
                  else
                  {
                     _loc12_ = int(_umtxq_chains + int(_loc10_ * 44));
                  }
                  _loc2_ -= 16;
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
               }
            }
         }
      }
      else
      {
         _loc6_ = 1;
         if((_loc8_ & 536870911) != 0)
         {
            do
            {
               _loc2_ -= 16;
               si32(_loc8_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               _loc1_ = int(_loc8_ + -1);
               si32(_loc1_,_loc2_ + 8);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc2_ += 16;
               if((_loc7_ = int(eax)) != _loc8_)
               {
                  continue;
               }
               §§goto(addr202);
            }
            while(_loc6_ = 1, _loc8_ = _loc7_, (_loc7_ & 536870911) != 0);
            
         }
      }
      addr817:
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
