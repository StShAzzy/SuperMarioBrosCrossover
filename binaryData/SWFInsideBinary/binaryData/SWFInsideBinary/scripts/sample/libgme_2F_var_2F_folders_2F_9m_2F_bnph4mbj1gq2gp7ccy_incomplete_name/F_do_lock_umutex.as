package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_do_lock_umutex() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:int = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc14_ = li32(_loc3_ + 4);
      _loc13_ = 14;
      if(_loc14_ != -1)
      {
         _loc12_ = li32(_loc4_ + 12);
         _loc11_ = li32(_loc4_ + 8);
         _loc10_ = li32(_loc4_);
         if(_loc11_ == 0)
         {
            _loc2_ -= 32;
            si32(_loc12_,_loc2_ + 16);
            si32(0,_loc2_ + 12);
            si32(_loc14_,_loc2_ + 8);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F__do_lock_umutex();
            _loc2_ += 32;
            if((_loc13_ = int(eax)) == 4)
            {
               if(_loc12_ != 2)
               {
                  _loc13_ = -1;
               }
            }
         }
         else
         {
            _loc13_ = int(new Date().time - clockStart);
            _loc9_ = li32(_loc11_ + 4);
            var _loc8_:*;
            _loc1_ = int((_loc7_ = _loc9_ + int((_loc8_ = int(_loc13_ % 1000)) * 1000000)) + -1000000000);
            if(_loc7_ <= 999999999)
            {
               _loc1_ = _loc7_;
            }
            _loc11_ = li32(_loc11_);
            _loc5_ = 1;
            if(_loc7_ <= 999999999)
            {
               _loc5_ = 0;
            }
            _loc8_ = int(_loc13_ / 1000);
            var _loc6_:int = _loc11_ + _loc8_;
            _loc8_ = _loc5_ & 1;
            _loc7_ = _loc6_ + _loc8_;
            while(true)
            {
               _loc2_ -= 32;
               si32(_loc12_,_loc2_ + 16);
               si32(_loc14_,_loc2_ + 8);
               si32(_loc3_,_loc2_ + 4);
               si32(_loc10_,_loc2_);
               _loc6_ = _loc11_ * 1000;
               si32(_loc8_ = int((_loc8_ = int(_loc9_ / 1000000)) + _loc6_),_loc2_ + 12);
               ESP = _loc2_;
               F__do_lock_umutex();
               _loc13_ = 4;
               _loc2_ += 32;
               if((_loc9_ = int(eax)) != -1)
               {
                  if(_loc9_ == 60)
                  {
                     _loc13_ = int((_loc8_ = int(new Date().time - clockStart)) / 1000);
                     _loc11_ = int((_loc8_ %= 1000) * 1000000);
                     if(_loc13_ == _loc7_)
                     {
                        _loc9_ = 60;
                        if(_loc11_ < _loc1_)
                        {
                           continue;
                        }
                     }
                     else
                     {
                        _loc9_ = 60;
                        if(_loc13_ < _loc7_)
                        {
                           continue;
                        }
                     }
                  }
                  _loc13_ = _loc9_;
                  break;
               }
               break;
            }
         }
      }
      eax = _loc13_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
