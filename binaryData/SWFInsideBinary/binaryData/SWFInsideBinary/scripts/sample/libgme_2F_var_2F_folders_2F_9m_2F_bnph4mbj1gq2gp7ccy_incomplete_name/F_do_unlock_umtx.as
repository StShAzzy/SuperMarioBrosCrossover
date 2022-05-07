package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_do_unlock_umtx() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_);
      _loc10_ = 14;
      if(_loc11_ != -1)
      {
         _loc10_ = 1;
         if((_loc11_ & 2147483647) == li32(_loc3_ + 4))
         {
            _loc7_ = _loc11_;
            if(_loc11_ >= 0)
            {
               _loc2_ -= 16;
               si32(0,_loc2_ + 8);
               si32(_loc11_,_loc2_ + 4);
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_avm2_cmpSwapUns();
               _loc10_ = 14;
               _loc2_ += 16;
               if((_loc7_ = int(eax)) != -1)
               {
                  _loc10_ = 0;
                  if(_loc7_ != _loc11_)
                  {
                  }
               }
               §§goto(addr624);
            }
            var _loc9_:* = int(threadId);
            _loc2_ -= 16;
            si32(_loc9_ += 8,_loc2_ + 4);
            _loc9_ = int((_loc9_ = int((_loc9_ = int(_loc1_ * -1640562687)) >>> 25)) * 44);
            si32(_loc10_ = int(_umtxq_chains + _loc9_),_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            if((_loc9_ = li8(_loc10_ + 36)) != 0)
            {
               _loc11_ = li32(_loc10_ + 40);
               do
               {
                  si32(_loc9_ = int(_loc11_ + 1),_loc10_ + 40);
                  _loc2_ -= 16;
                  si32(0,_loc2_ + 8);
                  si32(_loc10_,_loc2_ + 4);
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_msleep();
                  _loc2_ += 16;
                  si32(_loc11_ = int((_loc9_ = li32(_loc10_ + 40)) + -1),_loc10_ + 40);
               }
               while((_loc9_ = li8(_loc10_ + 36)) != 0);
               
            }
            si8(1,_loc10_ + 36);
            _loc6_ = int(_loc10_ + 20);
            _loc11_ = 0;
            _loc5_ = _loc6_;
            while(true)
            {
               _loc4_ = _loc11_;
               if((_loc5_ = li32(_loc5_)) == 0)
               {
                  break;
               }
               _loc11_ = _loc4_;
               if(li32(_loc5_ + 12) == 2)
               {
                  _loc11_ = _loc4_;
                  if(li32(_loc5_ + 20) == _loc1_)
                  {
                     _loc11_ = _loc4_;
                     if(li32(_loc5_ + 24) == 0)
                     {
                        _loc11_ = int(_loc4_ + 1);
                        if(_loc4_ > 0)
                        {
                           break;
                        }
                     }
                  }
               }
            }
            _loc2_ -= 16;
            si32(_loc10_,_loc2_);
            _loc4_ = 0;
            if(_loc11_ >= 2)
            {
               _loc4_ = -2147483648;
            }
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            _loc2_ -= 16;
            si32(_loc4_,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_avm2_cmpSwapUns();
            _loc2_ += 16;
            _loc11_ = int(eax);
            _loc9_ = int(threadId);
            _loc2_ -= 16;
            si32(_loc9_ += 8,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            _loc4_ = li32(_loc6_);
            while((_loc6_ = _loc4_) != 0)
            {
               _loc5_ = li32(_loc6_ + 12);
               _loc4_ = li32(_loc6_);
               if(_loc5_ == 2)
               {
                  if((_loc9_ = li32(_loc6_ + 20)) == _loc1_)
                  {
                     if((_loc9_ = li32(_loc6_ + 24)) == 0)
                     {
                        _loc1_ = li32(_loc6_ + 8);
                        if(_loc5_ <= 1)
                        {
                           _loc1_ = int((_loc9_ = int(_umtxq_chains + int(_loc1_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                        }
                        if((_loc9_ = (_loc9_ = li8(_loc6_ + 28)) & 1) != 0)
                        {
                           _loc5_ = li32(_loc6_ + 4);
                           if(_loc4_ != 0)
                           {
                              si32(_loc5_,_loc4_ + 4);
                           }
                           else
                           {
                              si32(_loc5_,_loc1_ + 24);
                           }
                           var _loc8_:* = li32(_loc6_);
                           _loc9_ = li32(_loc6_ + 4);
                           si32(_loc8_,_loc9_);
                           si32(_loc9_ = (_loc9_ = li32(_loc6_ + 28)) & -2,_loc6_ + 28);
                        }
                     }
                     continue;
                     if((_loc9_ = li8(_sIsThreaded_2E_b)) == 1)
                     {
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_wake();
                        _loc2_ += 16;
                        break;
                     }
                     break;
                  }
               }
            }
            _loc1_ = 0;
            si8(_loc1_,_loc10_ + 36);
            if((_loc9_ = li32(_loc10_ + 40)) != 0)
            {
               if((_loc9_ = li8(_sIsThreaded_2E_b)) == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
               }
            }
            _loc2_ -= 16;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            _loc10_ = 14;
            if(_loc11_ != -1)
            {
               if(_loc11_ != _loc7_)
               {
                  _loc1_ = 22;
               }
               _loc10_ = _loc1_;
            }
         }
      }
      addr624:
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
