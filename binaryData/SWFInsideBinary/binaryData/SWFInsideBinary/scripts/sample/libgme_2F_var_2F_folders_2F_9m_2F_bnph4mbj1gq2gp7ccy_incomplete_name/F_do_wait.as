package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_do_wait() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc11_ = li32(_loc3_);
      si32(_loc1_,_loc11_ + 12);
      si32(_loc1_,_loc11_ + 16);
      si32(_loc10_ = li32(_loc3_ + 4),_loc11_ + 20);
      si32(_loc1_,_loc11_ + 24);
      si32(_loc9_ = int((_loc9_ = int(_loc10_ * -1640562687)) >>> 25),_loc11_ + 8);
      _loc8_ = int(threadId);
      _loc2_ -= 16;
      si32(_loc8_ += 8,_loc2_ + 4);
      _loc9_ *= 44;
      si32(_loc9_ = int((_loc9_ = int(_umtxq_chains + _loc9_)) + 5632),_loc2_);
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ += 16;
      _loc7_ = li32(_loc11_ + 8);
      _loc9_ = li32(_loc11_ + 12);
      _loc6_ = li32(_loc3_ + 12);
      _loc5_ = li32(_loc3_ + 8);
      if(_loc9_ <= 1)
      {
         _loc7_ = int((_loc9_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
      }
      else
      {
         _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
      }
      si32(_loc1_,_loc11_);
      si32(_loc9_ = li32(_loc7_ + 24),_loc11_ + 4);
      _loc9_ = li32(_loc7_ + 24);
      si32(_loc11_,_loc9_);
      si32(_loc11_,_loc7_ + 24);
      si32(_loc9_ = (_loc9_ = li32(_loc11_ + 28)) | 1,_loc11_ + 28);
      _loc7_ = li32(_loc11_ + 8);
      if((_loc9_ = li32(_loc11_ + 12)) <= 1)
      {
         _loc7_ = int((_loc9_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
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
      if((_loc9_ = li32(_loc10_)) != _loc5_)
      {
         _loc5_ = li32(_loc11_ + 8);
         if((_loc9_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc5_ = int((_loc9_ = int(_umtxq_chains + int(_loc5_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc5_ * 44));
         }
         _loc9_ = int(threadId);
         _loc2_ -= 16;
         si32(_loc9_ += 8,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         _loc10_ = li32(_loc11_ + 12);
         _loc6_ = li32(_loc11_ + 8);
         if(_loc10_ <= 1)
         {
            _loc5_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         if((_loc9_ = (_loc9_ = li8(_loc11_ + 28)) & 1) != 0)
         {
            _loc6_ = li32(_loc11_ + 4);
            if((_loc10_ = li32(_loc11_)) != 0)
            {
               si32(_loc6_,_loc10_ + 4);
            }
            else
            {
               si32(_loc6_,_loc5_ + 24);
            }
            _loc8_ = li32(_loc11_);
            _loc9_ = li32(_loc11_ + 4);
            si32(_loc8_,_loc9_);
            si32(_loc9_ = (_loc9_ = li32(_loc11_ + 28)) & -2,_loc11_ + 28);
            _loc10_ = li32(_loc11_ + 12);
            _loc6_ = li32(_loc11_ + 8);
         }
         if(_loc10_ <= 1)
         {
            _loc11_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc11_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         _loc2_ -= 16;
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
      }
      else if(_loc6_ == 0)
      {
         _loc1_ = li32(_loc11_ + 8);
         if((_loc9_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc1_ = int((_loc9_ = int(_umtxq_chains + int(_loc1_ * 44))) + 5632);
         }
         else
         {
            _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
         }
         _loc9_ = int(threadId);
         _loc2_ -= 16;
         si32(_loc9_ += 8,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         _loc10_ = li32(_loc11_ + 12);
         _loc6_ = li32(_loc11_ + 8);
         if(_loc10_ <= 1)
         {
            _loc5_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         _loc9_ = (_loc9_ = li8(_loc11_ + 28)) & 1;
         _loc1_ = 0;
         if(_loc9_ != 0)
         {
            _loc2_ -= 16;
            si32(_loc5_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            si32(0,_loc2_ + 8);
            ESP = _loc2_;
            F_avm2_msleep();
            _loc1_ = 60;
            _loc2_ += 16;
            if((_loc9_ = int(eax)) != 0)
            {
               _loc1_ = 0;
            }
            _loc10_ = li32(_loc11_ + 12);
            _loc6_ = li32(_loc11_ + 8);
         }
         if(_loc10_ <= 1)
         {
            _loc5_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         if((_loc9_ = (_loc9_ = li8(_loc11_ + 28)) & 1) != 0)
         {
            _loc6_ = li32(_loc11_ + 4);
            if((_loc10_ = li32(_loc11_)) != 0)
            {
               si32(_loc6_,_loc10_ + 4);
            }
            else
            {
               si32(_loc6_,_loc5_ + 24);
            }
            _loc9_ = li32(_loc11_);
            _loc8_ = li32(_loc11_ + 4);
            si32(_loc9_,_loc8_);
            si32(_loc9_ = (_loc9_ = li32(_loc11_ + 28)) & -2,_loc11_ + 28);
            _loc10_ = li32(_loc11_ + 12);
            _loc6_ = li32(_loc11_ + 8);
         }
         if(_loc10_ <= 1)
         {
            _loc11_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc11_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         _loc2_ -= 16;
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
      }
      else
      {
         _loc4_ = new Date().time - clockStart;
         _loc1_ = li32(_loc6_ + 4);
         _loc5_ = int((_loc7_ = int(_loc1_ + int((_loc9_ = int(_loc4_ % 1000)) * 1000000))) + -1000000000);
         if(_loc7_ <= 999999999)
         {
            _loc5_ = _loc7_;
         }
         _loc10_ = li32(_loc6_);
         _loc6_ = 1;
         if(_loc7_ <= 999999999)
         {
            _loc6_ = 0;
         }
         _loc9_ = int(_loc4_ / 1000);
         _loc8_ = int(_loc10_ + _loc9_);
         _loc9_ = _loc6_ & 1;
         _loc6_ = int(_loc8_ + _loc9_);
         _loc7_ = li32(_loc11_ + 8);
         if((_loc9_ = li32(_loc11_ + 12)) <= 1)
         {
            _loc7_ = int((_loc9_ = int(_umtxq_chains + int(_loc7_ * 44))) + 5632);
         }
         else
         {
            _loc7_ = int(_umtxq_chains + int(_loc7_ * 44));
         }
         _loc9_ = int(threadId);
         _loc2_ -= 16;
         si32(_loc9_ += 8,_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         while(true)
         {
            _loc8_ = int(_loc10_ * 1000);
            _loc10_ = int((_loc9_ = int(_loc1_ / 1000000)) + _loc8_);
            _loc1_ = li32(_loc11_ + 8);
            if((_loc9_ = li32(_loc11_ + 12)) <= 1)
            {
               _loc7_ = int((_loc9_ = int(_umtxq_chains + int(_loc1_ * 44))) + 5632);
            }
            else
            {
               _loc7_ = int(_umtxq_chains + int(_loc1_ * 44));
            }
            _loc9_ = (_loc9_ = li8(_loc11_ + 28)) & 1;
            _loc1_ = 0;
            if(_loc9_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc10_,_loc2_ + 8);
               si32(_loc7_,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F_avm2_msleep();
               _loc1_ = 60;
               _loc2_ += 16;
               if((_loc10_ = int(eax)) != 0)
               {
                  _loc1_ = 0;
               }
               if((_loc9_ = (_loc9_ = li32(_loc11_ + 28)) & 1) != 0)
               {
                  if(_loc10_ == 0)
                  {
                     _loc1_ = li32(_loc11_ + 8);
                     if((_loc9_ = li32(_loc11_ + 12)) <= 1)
                     {
                        _loc1_ = int((_loc9_ = int(_umtxq_chains + int(_loc1_ * 44))) + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_unlock();
                     _loc2_ += 16;
                     _loc10_ = int((_loc9_ = int(new Date().time - clockStart)) / 1000);
                     _loc1_ = int((_loc9_ %= 1000) * 1000000);
                     if(_loc10_ == _loc6_)
                     {
                        if(_loc1_ < _loc5_)
                        {
                           continue;
                        }
                     }
                     else if(_loc10_ < _loc6_)
                     {
                        continue;
                     }
                     _loc1_ = li32(_loc11_ + 8);
                     if((_loc9_ = li32(_loc11_ + 12)) <= 1)
                     {
                        _loc1_ = int((_loc9_ = int(_umtxq_chains + int(_loc1_ * 44))) + 5632);
                     }
                     else
                     {
                        _loc1_ = int(_umtxq_chains + int(_loc1_ * 44));
                     }
                     _loc9_ = int(threadId);
                     _loc2_ -= 16;
                     si32(_loc9_ += 8,_loc2_ + 4);
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_lock_id();
                     _loc2_ += 16;
                     _loc1_ = 60;
                     break;
                  }
                  break;
               }
               break;
            }
            break;
         }
         _loc10_ = li32(_loc11_ + 12);
         _loc6_ = li32(_loc11_ + 8);
         if(_loc10_ <= 1)
         {
            _loc5_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc5_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         if((_loc9_ = (_loc9_ = li8(_loc11_ + 28)) & 1) != 0)
         {
            _loc6_ = li32(_loc11_ + 4);
            if((_loc10_ = li32(_loc11_)) != 0)
            {
               si32(_loc6_,_loc10_ + 4);
            }
            else
            {
               si32(_loc6_,_loc5_ + 24);
            }
            _loc8_ = li32(_loc11_);
            _loc9_ = li32(_loc11_ + 4);
            si32(_loc8_,_loc9_);
            si32(_loc9_ = (_loc9_ = li32(_loc11_ + 28)) & -2,_loc11_ + 28);
            _loc10_ = li32(_loc11_ + 12);
            _loc6_ = li32(_loc11_ + 8);
         }
         if(_loc10_ <= 1)
         {
            _loc11_ = int((_loc9_ = int(_umtxq_chains + int(_loc6_ * 44))) + 5632);
         }
         else
         {
            _loc11_ = int(_umtxq_chains + int(_loc6_ * 44));
         }
         _loc2_ -= 16;
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
