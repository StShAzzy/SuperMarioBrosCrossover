package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.___atexit;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2._atexit_mutex;
   
   public function F___cxa_finalize() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(_atexit_mutex,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_lock();
         _loc2_ += 16;
      }
      if((_loc12_ = li32(___atexit)) != 0)
      {
         _loc11_ = li32(_loc3_);
         do
         {
            if((_loc10_ = li32(_loc12_ + 4)) >= 1)
            {
               _loc9_ = _loc12_ + (_loc10_ << 4);
               _loc8_ = 0 - _loc10_;
               _loc7_ = 0;
               do
               {
                  _loc1_ = _loc7_ << 4;
                  _loc1_ = int(_loc9_ + _loc1_);
                  if((_loc10_ = li32(_loc1_ - 8)) != 0)
                  {
                     _loc6_ = _loc7_ << 2;
                     if(_loc11_ != 0)
                     {
                        if(li32(int(_loc9_ + (_loc6_ << 2)) + 4) != _loc11_)
                        {
                           continue;
                        }
                     }
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     _loc5_ = li32(_loc1_);
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     _loc4_ = li32(_loc1_ - 4);
                     _loc1_ = _loc6_ << 2;
                     _loc1_ = int(_loc9_ + _loc1_);
                     si32(0,_loc1_ - 8);
                     _loc1_ = li32(___isthreaded);
                     if(_loc1_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_unlock();
                        _loc2_ += 16;
                     }
                     if(_loc10_ != 1)
                     {
                        if(_loc10_ == 2)
                        {
                           _loc2_ -= 16;
                           si32(_loc5_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc4_]();
                           _loc2_ += 16;
                        }
                     }
                     else
                     {
                        ESP = _loc2_;
                        ptr2fun[_loc4_]();
                     }
                     _loc1_ = li32(___isthreaded);
                     if(_loc1_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_atexit_mutex,_loc2_);
                        ESP = _loc2_;
                        F__pthread_mutex_lock();
                        _loc2_ += 16;
                     }
                  }
               }
               while(_loc7_ += -1, _loc8_ != _loc7_);
               
            }
         }
         while((_loc12_ = li32(_loc12_)) != 0);
         
      }
      _loc1_ = li32(___isthreaded);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         si32(_atexit_mutex,_loc2_);
         ESP = _loc2_;
         F__pthread_mutex_unlock();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
