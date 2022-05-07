package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_operator_name() : void
   {
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc12_ = li8(_loc13_ = li32(_loc3_ + 12));
      var _loc11_:*;
      si32(_loc11_ = int(_loc13_ + 1),_loc3_ + 12);
      _loc10_ = si8(li8(_loc13_ + 1));
      si32(_loc13_ += 2,_loc3_ + 12);
      if(_loc12_ != 99)
      {
         _loc9_ = 49;
         _loc8_ = 0;
         if(_loc12_ == 118)
         {
            _loc9_ = 49;
            _loc8_ = 0;
            if((uint((_loc13_ = int(_loc10_ + -48)) & 255)) <= 9)
            {
               _loc2_ -= 16;
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_source_name();
               _loc2_ += 16;
               _loc7_ = eax;
               _loc8_ = li32(_loc3_ + 20);
               _loc6_ = 0;
               if(_loc8_ < li32(_loc3_ + 24))
               {
                  _loc12_ = li32(_loc3_ + 16);
                  si32(_loc13_ = int(_loc8_ + 1),_loc3_ + 20);
                  _loc3_ = int(_loc8_ * 12);
                  _loc8_ = int(_loc12_ + _loc3_);
                  _loc6_ = 0;
                  if(_loc8_ != 0)
                  {
                     if((_loc10_ += -48) >= 0)
                     {
                        if(_loc7_ != 0)
                        {
                           _loc13_ = int(_loc12_ + _loc3_);
                           si32(41,_loc13_);
                           si32(_loc10_,_loc13_ + 4);
                           si32(_loc7_,_loc13_ + 8);
                           _loc6_ = _loc8_;
                        }
                     }
                  }
               }
            }
            else
            {
               addr304:
               do
               {
                  _loc13_ = int((_loc11_ = int(_loc9_ - _loc8_)) >>> 31);
                  _loc1_ = int((_loc13_ = (_loc13_ = int(_loc11_ + _loc13_)) >> 1) + _loc8_);
                  _loc13_ = _loc1_ << 4;
                  if((_loc5_ = li8(_loc6_ = li32(_loc7_ = _cplus_demangle_operators + _loc13_))) == _loc12_)
                  {
                     if((_loc13_ = li8(_loc6_ + 1)) == (_loc10_ & 255))
                     {
                        _loc12_ = li32(_loc3_ + 20);
                        _loc6_ = 0;
                        if(_loc12_ < li32(_loc3_ + 24))
                        {
                           _loc10_ = li32(_loc3_ + 16);
                           si32(_loc13_ = int(_loc12_ + 1),_loc3_ + 20);
                           _loc3_ = int(_loc12_ * 12);
                           _loc12_ = int(_loc10_ + _loc3_);
                           _loc6_ = 0;
                           if(_loc12_ != 0)
                           {
                              _loc13_ = int(_loc10_ + _loc3_);
                              si32(40,_loc13_);
                              si32(_loc7_,_loc13_ + 4);
                              _loc6_ = _loc12_;
                              break;
                           }
                           break;
                        }
                        break;
                     }
                  }
                  _loc13_ = (_loc13_ = _loc12_ << 24) >> 24;
                  if((_loc11_ = (_loc11_ = _loc5_ << 24) >> 24) <= _loc13_)
                  {
                     if(_loc5_ == _loc12_)
                     {
                        if((_loc13_ = si8(li8(_loc6_ + 1))) > _loc10_)
                        {
                           continue;
                        }
                     }
                     _loc8_ = int(_loc1_ + 1);
                     _loc1_ = _loc9_;
                  }
               }
               while(_loc6_ = 0, _loc9_ = _loc1_, _loc8_ != _loc1_);
               
               addr304:
            }
            §§goto(addr472);
         }
      }
      else
      {
         _loc9_ = 49;
         _loc8_ = 0;
         if((_loc10_ & 255) == 118)
         {
            _loc2_ -= 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_type();
            _loc6_ = 0;
            _loc2_ += 16;
            if((_loc7_ = eax) != 0)
            {
               _loc12_ = li32(_loc3_ + 20);
               _loc6_ = 0;
               if(_loc12_ < li32(_loc3_ + 24))
               {
                  _loc10_ = li32(_loc3_ + 16);
                  si32(_loc13_ = int(_loc12_ + 1),_loc3_ + 20);
                  _loc12_ *= 12;
                  _loc3_ = int(_loc10_ + _loc12_);
                  _loc6_ = 0;
                  if(_loc3_ != 0)
                  {
                     _loc13_ = int(_loc10_ + _loc12_);
                     si32(42,_loc13_);
                     si32(_loc7_,_loc13_ + 4);
                     si32(0,_loc13_ + 8);
                     _loc6_ = _loc3_;
                  }
               }
            }
         }
         else
         {
            §§goto(addr304);
         }
         addr472:
         eax = _loc6_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr304);
   }
}
