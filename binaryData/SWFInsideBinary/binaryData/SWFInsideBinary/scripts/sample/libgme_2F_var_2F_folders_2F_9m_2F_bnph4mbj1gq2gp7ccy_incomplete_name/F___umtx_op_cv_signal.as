package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F___umtx_op_cv_signal() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32((_loc12_ = li32(_loc1_)) + 4);
      _loc1_ = int(threadId);
      _loc2_ -= 16;
      _loc1_ += 8;
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = int(_loc12_ * -1640562687);
      _loc1_ >>>= 25;
      _loc1_ *= 44;
      si32(_loc11_ = int((_loc10_ = _umtxq_chains + _loc1_) + 5632),_loc2_);
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ += 16;
      _loc1_ = li8(_loc10_ + 5668);
      if(_loc1_ != 0)
      {
         _loc9_ = li32(_loc10_ + 5672);
         do
         {
            _loc1_ = int(_loc9_ + 1);
            si32(_loc1_,_loc10_ + 5672);
            _loc2_ -= 16;
            si32(0,_loc2_ + 8);
            si32(_loc11_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_avm2_msleep();
            _loc2_ += 16;
            _loc1_ = li32(_loc10_ + 5672);
            si32(_loc9_ = int(_loc1_ + -1),_loc10_ + 5672);
            _loc1_ = li8(_loc10_ + 5668);
         }
         while(_loc1_ != 0);
         
      }
      si8(1,_loc10_ + 5668);
      _loc8_ = int(_loc10_ + 5652);
      _loc9_ = 0;
      _loc7_ = _loc8_;
      while(true)
      {
         _loc6_ = _loc9_;
         if((_loc7_ = li32(_loc7_)) == 0)
         {
            break;
         }
         _loc9_ = _loc6_;
         if(li32(_loc7_ + 12) == 1)
         {
            _loc9_ = _loc6_;
            if(li32(_loc7_ + 20) == _loc12_)
            {
               _loc9_ = _loc6_;
               if(li32(_loc7_ + 24) == 0)
               {
                  _loc9_ = int(_loc6_ + 1);
                  if(_loc6_ > 0)
                  {
                     break;
                  }
               }
            }
         }
      }
      _loc6_ = li32(_loc8_);
      while(true)
      {
         _loc8_ = _loc6_;
         _loc6_ = 0;
         if(_loc8_ == 0)
         {
            break;
         }
         _loc5_ = li32(_loc8_ + 12);
         _loc6_ = li32(_loc8_);
         if(_loc5_ == 1)
         {
            if(li32(_loc8_ + 20) == _loc12_)
            {
               if(li32(_loc8_ + 24) == 0)
               {
                  _loc7_ = li32(_loc8_ + 8);
                  if(_loc5_ <= 1)
                  {
                     _loc5_ = int(int(_umtxq_chains + int(_loc7_ * 44)) + 5632);
                  }
                  else
                  {
                     _loc5_ = int(_umtxq_chains + int(_loc7_ * 44));
                  }
                  _loc1_ = li8(_loc8_ + 28);
                  _loc1_ &= 1;
                  if(_loc1_ != 0)
                  {
                     _loc7_ = li32(_loc8_ + 4);
                     if(_loc6_ != 0)
                     {
                        si32(_loc7_,_loc6_ + 4);
                     }
                     else
                     {
                        si32(_loc7_,_loc5_ + 24);
                     }
                     var _loc4_:* = li32(_loc8_);
                     _loc1_ = li32(_loc8_ + 4);
                     si32(_loc4_,_loc1_);
                     _loc1_ = li32(_loc8_ + 28);
                     _loc1_ &= -2;
                     si32(_loc1_,_loc8_ + 28);
                  }
               }
               continue;
               _loc1_ = li8(_sIsThreaded_2E_b);
               _loc6_ = 1;
               if(_loc1_ == 1)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake();
                  _loc2_ += 16;
                  _loc6_ = 1;
                  break;
               }
               break;
            }
         }
      }
      if(_loc9_ <= _loc6_)
      {
         _loc2_ -= 16;
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
         si32(0,_loc12_);
         _loc2_ -= 16;
         si32(int(int(threadId) + 8),_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
      }
      si8(0,_loc10_ + 5668);
      _loc1_ = li32(_loc10_ + 5672);
      if(_loc1_ != 0)
      {
         if(li8(_sIsThreaded_2E_b) == 1)
         {
            _loc2_ -= 16;
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_avm2_wake_one();
            _loc2_ += 16;
         }
      }
      _loc2_ -= 16;
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_avm2_unlock();
      _loc2_ += 16;
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
