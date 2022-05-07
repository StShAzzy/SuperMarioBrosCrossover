package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F__do_lock_umutex() : void
   {
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc17_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc16_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = 0;
      var _loc3_:* = int(ESP);
      _loc17_ = (_loc4_ = li32((_loc5_ = _loc3_) + 8)) & 12;
      _loc16_ = 22;
      if(uint(_loc17_) <= 8)
      {
         var _loc15_:*;
         if((_loc15_ = (_loc15_ = 1 << _loc17_) & 273) != 0)
         {
            _loc14_ = li32(_loc5_ + 16);
            _loc13_ = li32(_loc5_ + 12);
            _loc12_ = li32(_loc5_ + 4);
            var _loc11_:*;
            _loc10_ = _umtxq_chains + int((_loc17_ = int((_loc11_ = int(_loc12_ * -1640562687)) >>> 25)) * 44);
            _loc1_ = _loc4_ & 2;
            _loc4_ = li32(li32(_loc5_) + 4);
            _loc7_ = (_loc6_ = li32(li32(_loc5_))) | -2147483648;
            _loc8_ = 0;
            while(true)
            {
               if(_loc14_ == 2)
               {
                  _loc9_ = li32(_loc12_);
                  _loc16_ = 0;
                  if(_loc9_ != -2147483648)
                  {
                     if(_loc9_ != 0)
                     {
                        addr227:
                        if(_loc1_ != 0)
                        {
                           _loc2_ = _loc9_ & 2147483647;
                           _loc16_ = 11;
                           if(_loc2_ != _loc6_)
                           {
                              _loc16_ = 16;
                           }
                           if(_loc2_ != _loc6_)
                           {
                              if(_loc14_ != 1)
                              {
                                 addr258:
                                 _loc16_ = _loc8_;
                                 if(_loc8_ == 0)
                                 {
                                    si32(3,_loc4_ + 12);
                                    si32(0,_loc4_ + 16);
                                    si32(_loc12_,_loc4_ + 20);
                                    si32(0,_loc4_ + 24);
                                    si32(_loc17_,_loc4_ + 8);
                                    _loc3_ -= 16;
                                    si32(_loc15_ = int(int(threadId) + 8),_loc3_ + 4);
                                    si32(_loc10_,_loc3_);
                                    ESP = _loc3_;
                                    F_avm2_lock_id();
                                    _loc3_ += 16;
                                    _loc8_ = li32(_loc4_ + 8);
                                    if((_loc15_ = li32(_loc4_ + 12)) <= 1)
                                    {
                                       _loc16_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc16_ = int(_umtxq_chains + int(_loc8_ * 44));
                                    }
                                    if((_loc15_ = li8(_loc16_ + 36)) != 0)
                                    {
                                       _loc8_ = li32(_loc16_ + 40);
                                       do
                                       {
                                          si32(_loc15_ = int(_loc8_ + 1),_loc16_ + 40);
                                          _loc3_ -= 16;
                                          si32(0,_loc3_ + 8);
                                          si32(_loc16_,_loc3_ + 4);
                                          si32(_loc16_,_loc3_);
                                          ESP = _loc3_;
                                          F_avm2_msleep();
                                          _loc3_ += 16;
                                          si32(_loc8_ = int((_loc15_ = li32(_loc16_ + 40)) + -1),_loc16_ + 40);
                                       }
                                       while((_loc15_ = li8(_loc16_ + 36)) != 0);
                                       
                                    }
                                    si8(1,_loc16_ + 36);
                                    _loc8_ = li32(_loc4_ + 8);
                                    if((_loc15_ = li32(_loc4_ + 12)) <= 1)
                                    {
                                       _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                                    }
                                    si32(0,_loc4_);
                                    si32(_loc15_ = li32(_loc8_ + 24),_loc4_ + 4);
                                    _loc15_ = li32(_loc8_ + 24);
                                    si32(_loc4_,_loc15_);
                                    si32(_loc4_,_loc8_ + 24);
                                    si32(_loc15_ = (_loc15_ = li32(_loc4_ + 28)) | 1,_loc4_ + 28);
                                    _loc8_ = li32(_loc4_ + 8);
                                    if((_loc15_ = li32(_loc4_ + 12)) <= 1)
                                    {
                                       _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                                    }
                                    _loc3_ -= 16;
                                    si32(_loc8_,_loc3_);
                                    ESP = _loc3_;
                                    F_avm2_unlock();
                                    _loc3_ += 16;
                                    _loc3_ -= 16;
                                    si32(_loc12_,_loc3_);
                                    si32(_loc9_,_loc3_ + 4);
                                    si32(_loc15_ = _loc9_ | -2147483648,_loc3_ + 8);
                                    ESP = _loc3_;
                                    F_avm2_cmpSwapUns();
                                    _loc3_ += 16;
                                    _loc16_ = int(eax);
                                    _loc8_ = li32(_loc4_ + 8);
                                    if((_loc15_ = li32(_loc4_ + 12)) <= 1)
                                    {
                                       _loc8_ = int((_loc15_ = int(_umtxq_chains + int(_loc8_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc8_ = int(_umtxq_chains + int(_loc8_ * 44));
                                    }
                                    _loc15_ = int(threadId);
                                    _loc3_ -= 16;
                                    si32(_loc15_ += 8,_loc3_ + 4);
                                    si32(_loc8_,_loc3_);
                                    ESP = _loc3_;
                                    F_avm2_lock_id();
                                    _loc3_ += 16;
                                    _loc8_ = li32(_loc4_ + 12);
                                    _loc2_ = li32(_loc4_ + 8);
                                    if(_loc16_ != -1)
                                    {
                                       continue;
                                    }
                                    if(_loc8_ <= 1)
                                    {
                                       _loc17_ = int((_loc15_ = int(_umtxq_chains + int(_loc2_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc17_ = int(_umtxq_chains + int(_loc2_ * 44));
                                    }
                                    if((_loc15_ = (_loc15_ = li8(_loc4_ + 28)) & 1) != 0)
                                    {
                                       _loc13_ = li32(_loc4_ + 4);
                                       if((_loc14_ = li32(_loc4_)) != 0)
                                       {
                                          si32(_loc13_,_loc14_ + 4);
                                       }
                                       else
                                       {
                                          si32(_loc13_,_loc17_ + 24);
                                       }
                                       _loc15_ = li32(_loc4_);
                                       _loc11_ = li32(_loc4_ + 4);
                                       si32(_loc15_,_loc11_);
                                       si32(_loc15_ = (_loc15_ = li32(_loc4_ + 28)) & -2,_loc4_ + 28);
                                       _loc8_ = li32(_loc4_ + 12);
                                       _loc2_ = li32(_loc4_ + 8);
                                    }
                                    if(_loc8_ <= 1)
                                    {
                                       _loc17_ = int((_loc15_ = int(_umtxq_chains + int(_loc2_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc17_ = int(_umtxq_chains + int(_loc2_ * 44));
                                    }
                                    si8(0,_loc17_ + 36);
                                    if((_loc15_ = li32(_loc17_ + 40)) != 0)
                                    {
                                       if((_loc15_ = li8(_sIsThreaded_2E_b)) == 1)
                                       {
                                          _loc3_ -= 16;
                                          si32(_loc17_,_loc3_);
                                          ESP = _loc3_;
                                          F_avm2_wake_one();
                                          _loc3_ += 16;
                                       }
                                    }
                                    _loc17_ = li32(_loc4_ + 8);
                                    if((_loc15_ = li32(_loc4_ + 12)) <= 1)
                                    {
                                       _loc4_ = int((_loc15_ = int(_umtxq_chains + int(_loc17_ * 44))) + 5632);
                                    }
                                    else
                                    {
                                       _loc4_ = int(_umtxq_chains + int(_loc17_ * 44));
                                    }
                                    _loc3_ -= 16;
                                    si32(_loc4_,_loc3_);
                                    ESP = _loc3_;
                                    F_avm2_unlock();
                                    _loc3_ += 16;
                                    _loc16_ = 14;
                                 }
                              }
                           }
                        }
                        else
                        {
                           _loc16_ = 16;
                           if(_loc14_ != 1)
                           {
                              §§goto(addr258);
                           }
                        }
                     }
                  }
               }
               else
               {
                  while(true)
                  {
                     _loc9_ = li32(_loc12_);
                     _loc3_ -= 16;
                     si32(_loc6_,_loc3_ + 8);
                     si32(_loc16_ = 0,_loc3_ + 4);
                     si32(_loc12_,_loc3_);
                     ESP = _loc3_;
                     F_avm2_cmpSwapUns();
                     _loc3_ += 16;
                     if((_loc9_ = int(eax)) != 0)
                     {
                        if(_loc9_ != -1)
                        {
                           if(_loc9_ == -2147483648)
                           {
                              _loc3_ -= 16;
                              si32(_loc7_,_loc3_ + 8);
                              si32(-2147483648,_loc3_ + 4);
                              si32(_loc12_,_loc3_);
                              ESP = _loc3_;
                              F_avm2_cmpSwapUns();
                              _loc16_ = 0;
                              _loc3_ += 16;
                              if((_loc9_ = int(eax)) != -2147483648)
                              {
                                 if(_loc9_ != -1)
                                 {
                                    continue;
                                 }
                              }
                              break;
                           }
                           §§goto(addr227);
                        }
                        _loc16_ = 14;
                        break;
                     }
                     break;
                  }
               }
            }
         }
      }
      eax = _loc16_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
