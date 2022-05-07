package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_uiThunkTickProc() : void
   {
      var _loc4_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:Number = NaN;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      si32(_sEnterFrame,_loc2_);
      ESP = _loc2_;
      F_avm2_wake();
      _loc2_ += 16;
      _loc3_ = eax;
      if((_loc16_ = li32(_sOldUiTickProc)) != 0)
      {
         ESP = _loc2_;
         ptr2fun[_loc16_]();
      }
      var _loc11_:Number;
      _loc9_ = (_loc11_ = new Date().time) + 5000;
      while((_loc11_ = new Date().time) < _loc9_)
      {
         _loc2_ -= 16;
         var _loc15_:*;
         si32(_loc15_ = int(int(threadId) + 8),_loc2_ + 4);
         si32(_sThunkTickLock,_loc2_);
         ESP = _loc2_;
         F_avm2_lock_id();
         _loc2_ += 16;
         _loc14_ = li32(_sThunkTickHead);
         si32(_loc13_ = 0,_sThunkTickHead);
         _loc2_ -= 16;
         si32(_sThunkTickLock,_loc2_);
         ESP = _loc2_;
         F_avm2_unlock();
         _loc2_ += 16;
         if(_loc14_ == 0)
         {
            if(_loc3_ == 0)
            {
               break;
            }
            _loc2_ -= 16;
            si32(_loc15_ = int(int(threadId) + 8),_loc2_ + 4);
            si32(_sThunkTickLock,_loc2_);
            ESP = _loc2_;
            F_avm2_lock_id();
            _loc2_ += 16;
            if((_loc15_ = li32(_sThunkTickHead)) == 0)
            {
               _loc2_ -= 16;
               si32(1,_loc2_ + 8);
               si32(_sThunkTickLock,_loc2_ + 4);
               si32(_sThunkTickHead,_loc2_);
               ESP = _loc2_;
               F_avm2_msleep();
               _loc2_ += 16;
            }
            _loc2_ -= 16;
            si32(_sThunkTickLock,_loc2_);
            ESP = _loc2_;
            F_avm2_unlock();
            _loc2_ += 16;
            _loc3_ = 0;
         }
         else
         {
            do
            {
               _loc12_ = _loc14_;
               _loc10_ = _loc13_;
               _loc14_ = li32(_loc12_ + 20);
               si32(_loc10_,_loc12_ + 20);
               _loc13_ = _loc12_;
            }
            while(_loc14_ != 0);
            
            _loc2_ -= 32;
            si32(_loc15_ = int(_loc12_ + 16),_loc2_ + 16);
            si32(li32(_loc12_ + 4),_loc2_ + 12);
            si32(li32(_loc12_),_loc2_ + 8);
            si32(li32(_loc12_ + 12),_loc2_ + 4);
            si32(li32(_loc12_ + 8),_loc2_);
            ESP = _loc2_;
            F_thrImpersonate();
            _loc2_ += 32;
            si32(_loc15_ = int(eax),_loc12_ + 4);
            _loc2_ -= 16;
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F_avm2_wake_one();
            _loc2_ += 16;
            _loc3_ = 1;
            if(_loc10_ != 0)
            {
               do
               {
                  var _loc6_:* = li32(_loc10_ + 20);
                  var _loc8_:* = li32(_loc10_ + 8);
                  var _loc7_:* = li32(_loc10_ + 12);
                  var _loc1_:* = li32(_loc10_);
                  var _loc5_:* = li32(_loc10_ + 4);
                  _loc2_ -= 32;
                  si32(_loc15_ = int(_loc10_ + 16),_loc2_ + 16);
                  si32(_loc5_,_loc2_ + 12);
                  si32(_loc1_,_loc2_ + 8);
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_thrImpersonate();
                  _loc2_ += 32;
                  si32(_loc15_ = int(eax),_loc10_ + 4);
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_avm2_wake_one();
                  _loc2_ += 16;
                  _loc3_ = 1;
                  _loc10_ = _loc6_;
               }
               while(_loc6_ != 0);
               
            }
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
