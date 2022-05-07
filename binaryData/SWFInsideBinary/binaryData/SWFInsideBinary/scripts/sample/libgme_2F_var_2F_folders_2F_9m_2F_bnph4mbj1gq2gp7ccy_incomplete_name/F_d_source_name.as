package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_source_name() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li8(_loc12_ = li32(_loc1_ + 12));
      _loc9_ = _loc10_ = 0;
      if(_loc11_ == 110)
      {
         var _loc8_:*;
         si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
         _loc11_ = li8(_loc12_ + 1);
         _loc9_ = 1;
         _loc12_ = _loc8_;
      }
      _loc8_ = (_loc8_ = int(_loc11_ + -48)) & 255;
      _loc7_ = _loc10_;
      if(uint(_loc8_) <= 9)
      {
         do
         {
            si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
            var _loc6_:* = int(_loc7_ * 10);
            var _loc5_:* = (_loc5_ = _loc11_ << 24) >> 24;
            _loc7_ = int((_loc6_ += _loc5_) + -48);
            _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc12_ + 1)) + -48)) & 255;
            _loc12_ = _loc8_;
         }
         while(uint(_loc6_) < 10);
         
      }
      if(_loc9_ != _loc10_)
      {
         _loc7_ = int(0 - _loc7_);
      }
      if(_loc7_ >= 1)
      {
         _loc10_ = 0;
         if(int((_loc8_ = li32(_loc1_ + 4)) - _loc12_) >= _loc7_)
         {
            si32(_loc10_ = int(_loc12_ + _loc7_),_loc1_ + 12);
            if((_loc8_ = (_loc8_ = li8(_loc1_ + 8)) & 4) != 0)
            {
               if((_loc8_ = li8(_loc10_)) == 36)
               {
                  si32(_loc8_ = int((_loc8_ = int(_loc7_ + _loc12_)) + 1),_loc1_ + 12);
               }
            }
            _loc10_ = 0;
            if(_loc7_ >= 10)
            {
               while(true)
               {
                  _loc8_ = li8(_loc8_ = int(L__2E_str16638 - _loc10_));
                  if((_loc6_ = li8(_loc6_ = int(_loc12_ - _loc10_))) == _loc8_)
                  {
                     if((_loc10_ += -1) != -8)
                     {
                        continue;
                     }
                     if((_loc10_ = li8(_loc12_ + 8)) != 36)
                     {
                        if(_loc10_ != 46)
                        {
                           if(_loc10_ == 95)
                           {
                           }
                           break;
                        }
                     }
                     if((_loc8_ = li8(_loc12_ + 9)) != 78)
                     {
                        break;
                     }
                     si32(_loc8_ = int((_loc8_ = int(22 - _loc7_)) + li32(_loc1_ + 48)),_loc1_ + 48);
                     _loc7_ = li32(_loc1_ + 20);
                     _loc10_ = 0;
                     if(_loc7_ < li32(_loc1_ + 24))
                     {
                        _loc12_ = li32(_loc1_ + 16);
                        si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                        _loc9_ = int(_loc7_ * 12);
                        _loc7_ = int(_loc12_ + _loc9_);
                        _loc10_ = 0;
                        if(_loc7_ != 0)
                        {
                           _loc8_ = int(_loc12_ + _loc9_);
                           si32(0,_loc8_);
                           si32(L__2E_str17639,_loc8_ + 4);
                           si32(21,_loc8_ + 8);
                           _loc10_ = _loc7_;
                        }
                     }
                     §§goto(addr430);
                  }
                  break;
               }
            }
            _loc11_ = li32(_loc1_ + 20);
            _loc8_ = li32(_loc1_ + 24);
            _loc10_ = 0;
            if(_loc11_ < _loc8_)
            {
               _loc9_ = li32(_loc1_ + 16);
               si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
               _loc11_ *= 12;
               _loc4_ = _loc9_ + _loc11_;
               _loc10_ = 0;
               if(_loc4_ != 0)
               {
                  if(_loc12_ != 0)
                  {
                     if(_loc7_ != 0)
                     {
                        _loc8_ = int(_loc9_ + _loc11_);
                        si32(0,_loc8_);
                        si32(_loc12_,_loc8_ + 4);
                        si32(_loc7_,_loc8_ + 8);
                        _loc10_ = _loc4_;
                     }
                  }
               }
            }
         }
         §§goto(addr430);
      }
      addr430:
      si32(_loc10_,_loc1_ + 44);
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
