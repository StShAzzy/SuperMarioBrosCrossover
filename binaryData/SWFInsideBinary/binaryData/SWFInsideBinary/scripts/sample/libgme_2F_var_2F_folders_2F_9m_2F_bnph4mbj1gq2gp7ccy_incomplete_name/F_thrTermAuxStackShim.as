package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_thrTermAuxStackShim() : void
   {
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 48;
      _loc3_ = li32(_loc4_ + 4);
      _loc13_ = li8(_loc3_ + 8);
      _loc12_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc3_);
      ESP = _loc2_;
      F_ensureSelfThrEntry();
      _loc3_ = int(threadId);
      _loc2_ -= 16;
      _loc3_ += 8;
      si32(_loc3_,_loc2_ + 4);
      si32(_sThreadListMtx,_loc2_);
      ESP = _loc2_;
      F_avm2_lock_id();
      _loc2_ += 16;
      _loc10_ = int(_sThreadListHead);
      _loc9_ = int(realThreadId);
      _loc8_ = li32(_loc4_);
      while(true)
      {
         if((_loc7_ = li32(_loc10_)) == 0)
         {
            _loc2_ -= 16;
            si32(_sThreadListMtx,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            _loc6_ = 0;
            break;
         }
         if(li32(_loc7_ + 8) != _loc11_)
         {
            continue;
         }
         _loc1_ = _loc13_ & 255;
         if(_loc1_ == 0)
         {
            _loc2_ -= 16;
            si32(_sThreadListMtx,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            _loc6_ = 0;
            if(_loc7_ != 0)
            {
               addr200:
               _loc10_ = li32(_loc7_ + 4);
               _loc6_ = int(_sLock_2E_3947);
               if(_loc10_ != -1)
               {
                  _loc6_ = int(_loc10_ + 16);
               }
               if((_loc10_ = li32(_sLock_2E_3947)) == -1)
               {
                  si32(_loc10_ = int(int(realThreadId) + 1),_sLock_2E_3947);
               }
               if(_loc10_ != 0)
               {
                  if(_loc6_ != _sLock_2E_3947)
                  {
                     si32(_loc10_,_loc6_);
                     si32(0,_sLock_2E_3947);
                  }
               }
               if(_loc9_ != _loc11_)
               {
                  _loc10_ = 0;
                  var _loc5_:*;
                  if(((_loc5_ = li32(_loc6_)) & 2147483647) != int(int(realThreadId) + 1))
                  {
                     addr270:
                     if((_loc10_ = li32(_loc7_ + 4)) == -1)
                     {
                        _loc10_ = li32(_sCounter_2E_3962);
                        _loc13_ = int(_sCounter_2E_3962);
                        _loc10_ = _loc6_;
                     }
                     else
                     {
                        _loc13_ = int(_loc10_ + 20);
                        _loc10_ = _loc6_;
                        if(li32(_sCounter_2E_3962) != 0)
                        {
                           _loc10_ = _loc6_;
                           if(_loc13_ != _sCounter_2E_3962)
                           {
                              si32(li32(_sCounter_2E_3962),_loc13_);
                              si32(0,_sCounter_2E_3962);
                              _loc10_ = _loc6_;
                           }
                        }
                     }
                  }
                  if(_loc1_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_idalloc();
                     _loc2_ += 16;
                  }
                  if(_loc9_ != _loc11_)
                  {
                     _loc2_ -= 16;
                     si32(int(int(threadId) + 8),_loc2_ + 4);
                     si32(_sThreadListMtx,_loc2_);
                     ESP = _loc2_;
                     F_avm2_lock_id();
                     _loc2_ += 16;
                     _loc2_ -= 16;
                     si32(int(int(threadId) + 8),_loc2_ + 4);
                     si32(_skpmallocMtx,_loc2_);
                     ESP = _loc2_;
                     F_avm2_lock_id();
                     _loc2_ += 16;
                     _loc2_ -= 16;
                     si32(int(int(threadId) + 8),_loc2_ + 4);
                     si32(_smmapMtx,_loc2_);
                     ESP = _loc2_;
                     F_avm2_lock_id();
                     _loc2_ += 16;
                     if(li8(_sIsThreaded_2E_b) == 1)
                     {
                        threadArbMutexLock();
                     }
                  }
                  else
                  {
                     if(_loc12_ != 0)
                     {
                        si32(1,_loc12_);
                        si32(_loc12_,_loc4_ - 48);
                        _loc6_ = (_loc7_ = int(_loc4_ - 48)) | 4;
                        si32(3,_loc6_);
                        si32(2147483647,_loc4_ - 40);
                        si32(0,_loc4_ - 36);
                        si32(0,_loc4_ - 32);
                        _loc1_ = li32(int(tcbp) + 12);
                        if(li32(_loc1_) == 0)
                        {
                           si32(int(int(threadId) + 8),_loc1_);
                        }
                        if((uint(_loc6_ = li32(_loc6_))) <= 18)
                        {
                           _loc2_ -= 16;
                           si32(_loc7_,_loc2_ + 4);
                           si32(_loc1_,_loc2_);
                           _loc3_ = li32(int(_op_table + (_loc6_ << 2)));
                           ESP = _loc2_;
                           ptr2fun[_loc3_]();
                           _loc2_ += 16;
                        }
                     }
                     if(_loc10_ != 0)
                     {
                        si32(0,_loc13_);
                     }
                  }
                  _loc2_ -= 16;
                  si32(_loc11_,_loc2_);
                  if(_loc9_ != _loc11_)
                  {
                     _loc8_ = 0;
                  }
                  si32(_loc8_,_loc2_ + 8);
                  _loc8_ = _loc10_;
                  if(_loc9_ != _loc11_)
                  {
                     _loc8_ = 0;
                  }
                  si32(_loc8_,_loc2_ + 4);
                  ESP = _loc2_;
                  F_workerTerm();
                  _loc2_ += 16;
                  _loc3_ = li8(_sIsThreaded_2E_b);
                  if(_loc3_ == 1)
                  {
                     threadArbMutexUnlock();
                  }
                  _loc2_ -= 16;
                  si32(_smmapMtx,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
                  _loc2_ -= 16;
                  si32(_sThreadListMtx,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
                  _loc2_ -= 16;
                  si32(_skpmallocMtx,_loc2_);
                  ESP = _loc2_;
                  F_avm2_unlock();
                  _loc2_ += 16;
                  if(_loc12_ != 0)
                  {
                     si32(1,_loc12_);
                     si32(_loc12_,_loc4_ - 24);
                     _loc9_ = (_loc12_ = int(_loc4_ - 24)) | 4;
                     si32(3,_loc9_);
                     si32(2147483647,_loc4_ - 16);
                     si32(0,_loc4_ - 12);
                     si32(0,_loc4_ - 8);
                     if(li32(_loc11_ = li32(int(tcbp) + 12)) == 0)
                     {
                        si32(int(int(threadId) + 8),_loc11_);
                     }
                     if((uint(_loc9_ = li32(_loc9_))) <= 18)
                     {
                        _loc2_ -= 16;
                        si32(_loc12_,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        _loc3_ = li32(int(_op_table + (_loc9_ << 2)));
                        ESP = _loc2_;
                        ptr2fun[_loc3_]();
                        _loc2_ += 16;
                     }
                  }
                  _loc6_ = 1;
                  if(_loc10_ != 0)
                  {
                     si32(0,_loc13_);
                     _loc2_ -= 16;
                     si32(_loc10_,_loc2_);
                     ESP = _loc2_;
                     F_avm2_unlock();
                     _loc2_ += 16;
                     _loc6_ = 1;
                     break;
                  }
                  break;
               }
               §§goto(addr270);
            }
            break;
         }
         si32(li32(_loc7_),_loc10_);
         _loc2_ -= 16;
         si32(_sThreadListMtx,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
         §§goto(addr200);
      }
      eax = _loc6_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
