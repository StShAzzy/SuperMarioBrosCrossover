package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F__do_lock_umtx() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:int = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc15_ = int((_loc14_ = int((_loc15_ = int(_loc3_ * -1640562687)) >>> 25)) * 44);
      _loc13_ = _umtxq_chains + _loc15_;
      _loc11_ = (_loc12_ = li32(_loc4_ + 8)) | -2147483648;
      _loc10_ = li32(_loc4_ + 12);
      _loc9_ = li32(_loc4_);
      _loc8_ = 0;
      loop0:
      while(true)
      {
         while(true)
         {
            _loc2_ -= 16;
            si32(_loc12_,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_avm2_cmpSwapUns();
            _loc2_ += 16;
            _loc1_ = eax;
            if(_loc1_ != 0)
            {
               _loc5_ = 14;
               if(_loc1_ != -1)
               {
                  if(_loc1_ == -2147483648)
                  {
                     _loc2_ -= 16;
                     si32(_loc11_,_loc2_ + 8);
                     si32(-2147483648,_loc2_ + 4);
                     si32(_loc3_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_cmpSwapUns();
                     _loc2_ += 16;
                     _loc1_ = eax;
                     if(_loc1_ == -2147483648)
                     {
                        break;
                     }
                     _loc5_ = 14;
                     if(_loc1_ != -1)
                     {
                        continue;
                     }
                  }
                  else
                  {
                     _loc5_ = _loc8_;
                     if(_loc8_ == 0)
                     {
                        si32(2,_loc9_ + 12);
                        si32(0,_loc9_ + 16);
                        si32(_loc3_,_loc9_ + 20);
                        si32(0,_loc9_ + 24);
                        si32(_loc14_,_loc9_ + 8);
                        _loc2_ -= 16;
                        si32(_loc15_ = int(int(threadId) + 8),_loc2_ + 4);
                        si32(_loc13_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_lock_id();
                        _loc2_ += 16;
                        _loc8_ = li32(_loc9_ + 8);
                        if((_loc15_ = li32(_loc9_ + 12)) <= 1)
                        {
                           _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                        }
                        if((_loc15_ = li8(_loc8_ + 36)) != 0)
                        {
                           _loc5_ = li32(_loc8_ + 40);
                           do
                           {
                              si32(_loc15_ = int(_loc5_ + 1),_loc8_ + 40);
                              _loc2_ -= 16;
                              si32(0,_loc2_ + 8);
                              si32(_loc8_,_loc2_ + 4);
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_avm2_msleep();
                              _loc2_ += 16;
                              si32(_loc5_ = int((_loc15_ = li32(_loc8_ + 40)) + -1),_loc8_ + 40);
                           }
                           while((_loc15_ = li8(_loc8_ + 36)) != 0);
                           
                        }
                        si8(1,_loc8_ + 36);
                        _loc8_ = li32(_loc9_ + 8);
                        if((_loc15_ = li32(_loc9_ + 12)) <= 1)
                        {
                           _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                        }
                        si32(0,_loc9_);
                        si32(_loc15_ = li32(_loc8_ + 24),_loc9_ + 4);
                        _loc15_ = li32(_loc8_ + 24);
                        si32(_loc9_,_loc15_);
                        si32(_loc9_,_loc8_ + 24);
                        si32(_loc15_ = (_loc15_ = li32(_loc9_ + 28)) | 1,_loc9_ + 28);
                        _loc8_ = li32(_loc9_ + 8);
                        if((_loc15_ = li32(_loc9_ + 12)) <= 1)
                        {
                           _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                        }
                        si8(0,_loc8_ + 36);
                        if((_loc15_ = li32(_loc8_ + 40)) != 0)
                        {
                           if((_loc15_ = li8(_sIsThreaded_2E_b)) == 1)
                           {
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_avm2_wake_one();
                              _loc2_ += 16;
                           }
                        }
                        _loc8_ = li32(_loc9_ + 8);
                        if((_loc15_ = li32(_loc9_ + 12)) <= 1)
                        {
                           _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                        }
                        _loc2_ -= 16;
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_unlock();
                        _loc2_ += 16;
                        _loc2_ -= 16;
                        si32(_loc3_,_loc2_);
                        si32(_loc1_,_loc2_ + 4);
                        si32(_loc15_ = _loc1_ | -2147483648,_loc2_ + 8);
                        ESP = _loc2_;
                        F_avm2_cmpSwapUns();
                        _loc2_ += 16;
                        _loc5_ = int(eax);
                        _loc8_ = li32(_loc9_ + 8);
                        if((_loc15_ = li32(_loc9_ + 12)) <= 1)
                        {
                           _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                        }
                        _loc15_ = int(threadId);
                        _loc2_ -= 16;
                        si32(_loc15_ += 8,_loc2_ + 4);
                        si32(_loc8_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_lock_id();
                        _loc2_ += 16;
                        if(_loc5_ != -1)
                        {
                           continue loop0;
                        }
                        _loc11_ = li32(_loc9_ + 12);
                        _loc14_ = li32(_loc9_ + 8);
                        if(_loc11_ <= 1)
                        {
                           _loc13_ = (_loc15_ = int(_umtxq_chains + int(_loc14_ * 44))) + 5632;
                        }
                        else
                        {
                           _loc13_ = _umtxq_chains + int(_loc14_ * 44);
                        }
                        if((_loc15_ = (_loc15_ = li8(_loc9_ + 28)) & 1) != 0)
                        {
                           _loc11_ = li32(_loc9_ + 4);
                           if((_loc14_ = li32(_loc9_)) != 0)
                           {
                              si32(_loc11_,_loc14_ + 4);
                           }
                           else
                           {
                              si32(_loc11_,_loc13_ + 24);
                           }
                           var _loc6_:* = li32(_loc9_);
                           _loc15_ = li32(_loc9_ + 4);
                           si32(_loc6_,_loc15_);
                           si32(_loc15_ = (_loc15_ = li32(_loc9_ + 28)) & -2,_loc9_ + 28);
                           _loc11_ = li32(_loc9_ + 12);
                           _loc14_ = li32(_loc9_ + 8);
                        }
                        if(_loc11_ <= 1)
                        {
                           _loc9_ = int((_loc15_ = int(_umtxq_chains + int(_loc14_ * 44))) + 5632);
                        }
                        else
                        {
                           _loc9_ = int(_umtxq_chains + int(_loc14_ * 44));
                        }
                        _loc2_ -= 16;
                        si32(_loc9_,_loc2_);
                        ESP = _loc2_;
                        F_avm2_unlock();
                        _loc2_ += 16;
                        _loc5_ = 14;
                     }
                  }
               }
               §§goto(addr1122);
            }
            break;
         }
         _loc5_ = 0;
         addr1122:
         eax = _loc5_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
   }
}
