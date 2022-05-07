package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F___umtx_op_wake_umutex() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc11_ = li32(_loc1_));
      _loc9_ = 14;
      if(_loc10_ != -1)
      {
         _loc9_ = 0;
         if((_loc10_ & 2147483647) == 0)
         {
            _loc8_ = li32(_loc11_ + 4);
            _loc2_ -= 16;
            si32(int(int(threadId) + 8),_loc2_ + 4);
            si32(_loc8_ = int(_umtxq_chains + int((int(int(_loc11_ * -1640562687) >>> 25)) * 44)),_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            if(li8(_loc8_ + 36) != 0)
            {
               _loc9_ = li32(_loc8_ + 40);
               do
               {
                  _loc1_ = int(_loc9_ + 1);
                  si32(_loc1_,_loc8_ + 40);
                  _loc2_ -= 16;
                  si32(0,_loc2_ + 8);
                  si32(_loc8_,_loc2_ + 4);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_msleep();
                  _loc2_ += 16;
                  _loc1_ = li32(_loc8_ + 40);
                  si32(_loc9_ = int(_loc1_ + -1),_loc8_ + 40);
                  _loc1_ = li8(_loc8_ + 36);
               }
               while(_loc1_ != 0);
               
            }
            si8(1,_loc8_ + 36);
            _loc7_ = int(_loc8_ + 20);
            _loc6_ = 0;
            _loc5_ = _loc7_;
            while(true)
            {
               _loc9_ = _loc6_;
               if((_loc5_ = li32(_loc5_)) == 0)
               {
                  break;
               }
               _loc6_ = _loc9_;
               if(li32(_loc5_ + 12) == 3)
               {
                  _loc6_ = _loc9_;
                  if(li32(_loc5_ + 20) == _loc11_)
                  {
                     _loc6_ = _loc9_;
                     if(li32(_loc5_ + 24) == 0)
                     {
                        _loc6_ = int(_loc9_ + 1);
                        if(_loc9_ > 0)
                        {
                           break;
                        }
                     }
                  }
               }
            }
            _loc2_ -= 16;
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            if(_loc6_ >= 2)
            {
               _loc2_ -= 16;
               si32(int(int(threadId) + 8),_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               addr354:
               _loc1_ = _loc10_ & 2147483647;
               if(_loc1_ == 0)
               {
                  _loc9_ = li32(_loc7_);
                  while((_loc10_ = _loc9_) != 0)
                  {
                     _loc7_ = li32(_loc10_ + 12);
                     _loc9_ = li32(_loc10_);
                     if(_loc7_ == 3)
                     {
                        if(li32(_loc10_ + 20) == _loc11_)
                        {
                           if(li32(_loc10_ + 24) == 0)
                           {
                              _loc11_ = li32(_loc10_ + 8);
                              if(_loc7_ <= 1)
                              {
                                 _loc7_ = int(int(_umtxq_chains + int(_loc11_ * 44)) + 5632);
                              }
                              else
                              {
                                 _loc7_ = int(_umtxq_chains + int(_loc11_ * 44));
                              }
                              _loc1_ = li8(_loc10_ + 28);
                              _loc1_ &= 1;
                              if(_loc1_ != 0)
                              {
                                 _loc11_ = li32(_loc10_ + 4);
                                 if(_loc9_ != 0)
                                 {
                                    si32(_loc11_,_loc9_ + 4);
                                 }
                                 else
                                 {
                                    si32(_loc11_,_loc7_ + 24);
                                 }
                                 var _loc4_:* = li32(_loc10_);
                                 _loc1_ = li32(_loc10_ + 4);
                                 si32(_loc4_,_loc1_);
                                 _loc1_ = li32(_loc10_ + 28);
                                 _loc1_ &= -2;
                                 si32(_loc1_,_loc10_ + 28);
                              }
                           }
                           continue;
                           _loc1_ = li8(_sIsThreaded_2E_b);
                           if(_loc1_ == 1)
                           {
                              _loc2_ -= 16;
                              si32(_loc10_,_loc2_);
                              ESP = _loc2_;
                              F_avm2_wake();
                              _loc2_ += 16;
                              break;
                           }
                           break;
                        }
                     }
                  }
               }
            }
            else
            {
               _loc2_ -= 16;
               si32(0,_loc2_ + 8);
               si32(-2147483648,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc2_ += 16;
               _loc10_ = int(eax);
               _loc2_ -= 16;
               si32(int(int(threadId) + 8),_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_avm2_lock_id();
               _loc2_ += 16;
               if(_loc6_ != 0)
               {
                  §§goto(addr354);
               }
            }
            si8(_loc9_ = 0,_loc8_ + 36);
            _loc1_ = li32(_loc8_ + 40);
            if(_loc1_ != 0)
            {
               if(li8(_sIsThreaded_2E_b) == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
               }
            }
            _loc2_ -= 16;
            si32(_loc8_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
