package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F___umtx_op_cv_wait() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc14_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:int = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      _loc3_ = li32(_loc4_ + 4);
      _loc14_ = li32(_loc3_ + 8);
      _loc13_ = li32(_loc3_ + 12);
      _loc12_ = li32(_loc3_ + 16);
      _loc10_ = li32((_loc11_ = li32(_loc4_)) + 4);
      _loc8_ = li32((_loc9_ = li32(_loc3_)) + 4);
      si32(_loc8_ = 1,_loc10_ + 12);
      si32(_loc7_ = 0,_loc10_ + 16);
      si32(_loc9_,_loc10_ + 20);
      si32(_loc7_,_loc10_ + 24);
      _loc3_ = int(_loc9_ * -1640562687);
      _loc3_ >>>= 25;
      si32(_loc3_,_loc10_ + 8);
      _loc1_ = threadId;
      _loc2_ -= 16;
      _loc1_ += 8;
      si32(_loc1_,_loc2_ + 4);
      _loc3_ *= 44;
      _loc3_ = int(_umtxq_chains + _loc3_);
      _loc3_ += 5632;
      si32(_loc3_,_loc2_);
      if(_loc12_ != _loc7_)
      {
         _loc7_ = int(_loc4_ - 8);
      }
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ += 16;
      _loc5_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
      {
         _loc5_ = int((_loc12_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
      }
      else
      {
         _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
      }
      if((_loc12_ = li8(_loc5_ + 36)) != 0)
      {
         _loc6_ = li32(_loc5_ + 40);
         do
         {
            si32(_loc12_ = int(_loc6_ + 1),_loc5_ + 40);
            _loc2_ -= 16;
            si32(0,_loc2_ + 8);
            si32(_loc5_,_loc2_ + 4);
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F_avm2_msleep();
            _loc2_ += 16;
            si32(_loc6_ = int((_loc12_ = li32(_loc5_ + 40)) + -1),_loc5_ + 40);
         }
         while((_loc12_ = li8(_loc5_ + 36)) != 0);
         
      }
      si8(_loc8_,_loc5_ + 36);
      _loc5_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
      {
         _loc5_ = int((_loc12_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
      }
      else
      {
         _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
      }
      si32(0,_loc10_);
      si32(_loc12_ = li32(_loc5_ + 24),_loc10_ + 4);
      _loc12_ = li32(_loc5_ + 24);
      si32(_loc10_,_loc12_);
      si32(_loc10_,_loc5_ + 24);
      si32(_loc12_ = (_loc12_ = li32(_loc10_ + 28)) | 1,_loc10_ + 28);
      _loc5_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
      {
         _loc5_ = int((_loc12_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
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
      si32(_loc8_,_loc9_);
      _loc9_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
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
      _loc9_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
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
      _loc9_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
      {
         _loc9_ = int((_loc12_ = int(_umtxq_chains + int(_loc9_ * 44))) + 5632);
      }
      else
      {
         _loc9_ = int(_umtxq_chains + int(_loc9_ * 44));
      }
      _loc2_ -= 16;
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F_avm2_unlock();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc13_,_loc2_ + 4);
      si32(_loc11_,_loc2_);
      ESP = _loc2_;
      F_do_unlock_umutex();
      _loc2_ += 16;
      _loc13_ = int(eax);
      _loc9_ = li32(_loc10_ + 8);
      if((_loc12_ = li32(_loc10_ + 12)) <= 1)
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
      if(_loc13_ == 0)
      {
         if((_loc12_ = _loc14_ & 1) != 0)
         {
            if((_loc12_ = (_loc14_ = li32(_loc11_ + 12)) & 524288) != 0)
            {
               si32(_loc12_ = _loc14_ & -524289,_loc11_ + 12);
               _loc13_ = 4;
               addr1136:
               if((_loc12_ = (_loc12_ = li8(_loc10_ + 28)) & 1) == 0)
               {
                  _loc11_ = li32(_loc10_ + 12);
                  _loc8_ = li32(_loc10_ + 8);
                  if(_loc11_ <= 1)
                  {
                     _loc8_ = int((_loc12_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                  }
                  _loc8_ = li32(_loc8_ + 20);
                  while(true)
                  {
                     _loc7_ = _loc8_;
                     _loc8_ = 0;
                     if(_loc7_ != 0)
                     {
                        _loc14_ = li32(_loc7_ + 12);
                        _loc8_ = li32(_loc7_);
                        if(_loc14_ != _loc11_)
                        {
                           continue;
                        }
                        if((_loc12_ = li32(_loc7_ + 20)) != li32(_loc10_ + 20))
                        {
                           continue;
                        }
                        if((_loc12_ = li32(_loc7_ + 24)) != li32(_loc10_ + 24))
                        {
                           continue;
                        }
                        _loc11_ = li32(_loc7_ + 8);
                        if(_loc14_ <= 1)
                        {
                           _loc11_ = int((_loc12_ = int(_umtxq_chains + int(_loc11_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc11_ = int(_umtxq_chains + int(_loc11_ * 44));
                        }
                        if((_loc12_ = (_loc12_ = li8(_loc7_ + 28)) & 1) != 0)
                        {
                           _loc14_ = li32(_loc7_ + 4);
                           if(_loc8_ != 0)
                           {
                              si32(_loc14_,_loc8_ + 4);
                           }
                           else
                           {
                              si32(_loc14_,_loc11_ + 24);
                           }
                           _loc3_ = li32(_loc7_);
                           _loc12_ = li32(_loc7_ + 4);
                           si32(_loc3_,_loc12_);
                           si32(_loc12_ = (_loc12_ = li32(_loc7_ + 28)) & -2,_loc7_ + 28);
                        }
                        if((_loc12_ = li8(_sIsThreaded_2E_b)) == 1)
                        {
                           _loc2_ -= 16;
                           si32(_loc7_,_loc2_);
                           ESP = _loc2_;
                           F_avm2_wake();
                           _loc2_ += 16;
                        }
                     }
                     §§goto(addr1376);
                  }
               }
               _loc8_ = _loc13_;
               if(_loc13_ == -1)
               {
                  _loc8_ = 4;
               }
            }
            else
            {
               addr784:
               if(_loc7_ == 0)
               {
                  _loc8_ = li32(_loc10_ + 8);
                  if((_loc12_ = li32(_loc10_ + 12)) <= 1)
                  {
                     _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                  }
                  else
                  {
                     _loc7_ = int(_umtxq_chains + int(_loc8_ * 44));
                  }
                  _loc12_ = (_loc12_ = li8(_loc10_ + 28)) & 1;
                  _loc8_ = 0;
                  if(_loc12_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc7_,_loc2_ + 4);
                     si32(_loc10_,_loc2_);
                     si32(0,_loc2_ + 8);
                     ESP = _loc2_;
                     F_avm2_msleep();
                     _loc13_ = 60;
                     _loc2_ += 16;
                     if((_loc12_ = int(eax)) != 0)
                     {
                        _loc13_ = 0;
                     }
                     addr1130:
                     _loc8_ = 0;
                     if(_loc13_ != 0)
                     {
                        §§goto(addr1136);
                     }
                  }
               }
               else
               {
                  _loc9_ = int(new Date().time - clockStart);
                  _loc14_ = li32(_loc7_ + 4);
                  _loc11_ = int((_loc5_ = int(_loc14_ + int((_loc12_ = int(_loc9_ % 1000)) * 1000000))) + -1000000000);
                  if(_loc5_ <= 999999999)
                  {
                     _loc11_ = _loc5_;
                  }
                  _loc13_ = li32(_loc7_);
                  if(_loc5_ <= 999999999)
                  {
                     _loc8_ = 0;
                  }
                  _loc12_ = int(_loc9_ / 1000);
                  _loc3_ = int(_loc13_ + _loc12_);
                  _loc12_ = _loc8_ & 1;
                  _loc7_ = int(_loc3_ + _loc12_);
                  while(true)
                  {
                     _loc12_ = int(_loc13_ * 1000);
                     _loc3_ = int(_loc14_ / 1000000);
                     _loc14_ = int(_loc3_ + _loc12_);
                     _loc8_ = li32(_loc10_ + 8);
                     if((_loc12_ = li32(_loc10_ + 12)) <= 1)
                     {
                        _loc13_ = int((_loc12_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                     }
                     else
                     {
                        _loc13_ = int(_umtxq_chains + int(_loc8_ * 44));
                     }
                     _loc12_ = (_loc12_ = li8(_loc10_ + 28)) & 1;
                     _loc8_ = 0;
                     if(_loc12_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc14_,_loc2_ + 8);
                        si32(_loc13_,_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_msleep();
                        _loc13_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) == 0)
                        {
                           _loc8_ = int((_loc12_ = int(new Date().time - clockStart)) / 1000);
                           _loc14_ = int((_loc12_ %= 1000) * 1000000);
                           if(_loc8_ == _loc7_)
                           {
                              _loc13_ = 60;
                              if(_loc14_ < _loc11_)
                              {
                                 continue;
                              }
                           }
                           else
                           {
                              _loc13_ = 60;
                              if(_loc8_ < _loc7_)
                              {
                                 continue;
                              }
                           }
                           §§goto(addr1136);
                        }
                        else
                        {
                           §§goto(addr1130);
                        }
                     }
                     break;
                  }
               }
            }
            addr1376:
            _loc11_ = li32(_loc10_ + 12);
            _loc14_ = li32(_loc10_ + 8);
            if(_loc11_ <= 1)
            {
               _loc7_ = int((_loc12_ = int(_umtxq_chains + int(_loc14_ * 44))) + 5632);
            }
            else
            {
               _loc7_ = int(_umtxq_chains + int(_loc14_ * 44));
            }
            if((_loc12_ = (_loc12_ = li8(_loc10_ + 28)) & 1) != 0)
            {
               _loc11_ = li32(_loc10_ + 4);
               if((_loc14_ = li32(_loc10_)) != 0)
               {
                  si32(_loc11_,_loc14_ + 4);
               }
               else
               {
                  si32(_loc11_,_loc7_ + 24);
               }
               _loc12_ = li32(_loc10_);
               _loc3_ = li32(_loc10_ + 4);
               si32(_loc12_,_loc3_);
               si32(_loc12_ = (_loc12_ = li32(_loc10_ + 28)) & -2,_loc10_ + 28);
               _loc11_ = li32(_loc10_ + 12);
               _loc14_ = li32(_loc10_ + 8);
            }
            if(_loc11_ <= 1)
            {
               _loc10_ = int((_loc12_ = int(_umtxq_chains + int(_loc14_ * 44))) + 5632);
            }
            else
            {
               _loc10_ = int(_umtxq_chains + int(_loc14_ * 44));
            }
            _loc2_ -= 16;
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            eax = _loc8_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
         §§goto(addr784);
      }
      §§goto(addr1136);
   }
}
