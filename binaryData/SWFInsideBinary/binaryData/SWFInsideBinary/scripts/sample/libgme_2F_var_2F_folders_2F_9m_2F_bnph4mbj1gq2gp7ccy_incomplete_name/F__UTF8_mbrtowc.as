package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__UTF8_mbrtowc() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 12);
      if((uint(_loc13_ = li32(_loc3_ + 4))) >= 7)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc11_ = -1;
      }
      else
      {
         _loc10_ = li32(_loc4_ + 4);
         _loc9_ = 1;
         if(_loc10_ != 0)
         {
            _loc9_ = li32(_loc4_ + 8);
         }
         _loc8_ = 0;
         if(_loc10_ != 0)
         {
            _loc8_ = li32(_loc4_);
         }
         _loc7_ = int(L__2E_str1301);
         if(_loc10_ != 0)
         {
            _loc7_ = _loc10_;
         }
         _loc11_ = -2;
         if(_loc9_ != 0)
         {
            if(_loc13_ == 0)
            {
               var _loc12_:*;
               if((_loc12_ = (_loc6_ = li8(_loc7_)) & 128) == 0)
               {
                  if(_loc8_ != 0)
                  {
                     si32(_loc6_,_loc8_);
                  }
                  _loc8_ = 1;
                  if(_loc6_ == 0)
                  {
                     _loc8_ = 0;
                  }
                  _loc11_ = _loc8_ & 1;
               }
               else
               {
                  _loc11_ = 128;
                  _loc10_ = 2;
                  _loc1_ = 31;
                  if((_loc6_ & 224) != 192)
                  {
                     _loc11_ = 2048;
                     _loc10_ = 3;
                     _loc1_ = 15;
                     if((_loc6_ & 240) != 224)
                     {
                        _loc11_ = 65536;
                        _loc10_ = 4;
                        _loc1_ = 7;
                        if((_loc6_ & 248) != 240)
                        {
                           _loc11_ = 2097152;
                           _loc10_ = 5;
                           _loc1_ = 3;
                           if((_loc6_ & 252) != 248)
                           {
                              _loc11_ = 67108864;
                              _loc10_ = 6;
                              _loc1_ = 1;
                              if((_loc6_ & 254) != 252)
                              {
                                 ESP = _loc2_;
                                 F___error();
                                 si32(86,int(eax));
                                 _loc11_ = -1;
                              }
                              §§goto(addr389);
                           }
                        }
                     }
                  }
                  if(_loc13_ == 0)
                  {
                     _loc6_ &= _loc1_;
                     _loc7_ += 1;
                  }
                  else
                  {
                     addr238:
                     _loc6_ = li32(_loc3_);
                  }
                  _loc1_ = 1;
                  if(_loc13_ != 0)
                  {
                     _loc1_ = 0;
                  }
                  if(uint(_loc9_) > uint(_loc10_))
                  {
                     _loc9_ = _loc10_;
                  }
                  _loc1_ &= 1;
                  while(true)
                  {
                     if(uint(_loc1_) >= uint(_loc9_))
                     {
                        if(_loc1_ < _loc10_)
                        {
                           si32(_loc12_ = int(_loc10_ - _loc1_),_loc3_ + 4);
                           si32(_loc11_,_loc3_ + 8);
                           si32(_loc6_,_loc3_);
                           _loc11_ = -2;
                           break;
                        }
                        if(_loc6_ < _loc11_)
                        {
                           ESP = _loc2_;
                           F___error();
                           si32(86,int(eax));
                           _loc11_ = -1;
                           break;
                        }
                        if(_loc8_ != 0)
                        {
                           si32(_loc6_,_loc8_);
                        }
                        si32(_loc11_ = 0,_loc3_ + 4);
                        if(_loc6_ != _loc11_)
                        {
                           _loc11_ = _loc10_;
                        }
                        break;
                     }
                     if((_loc12_ = (_loc13_ = li8(_loc7_)) & 192) != 128)
                     {
                        ESP = _loc2_;
                        F___error();
                        si32(86,int(eax));
                        _loc11_ = -1;
                        break;
                     }
                     var _loc5_:*;
                     _loc6_ = (_loc5_ = _loc13_ & 63) | _loc6_ << 6;
                     _loc7_ += 1;
                     _loc1_ += 1;
                  }
               }
               §§goto(addr389);
            }
            else
            {
               _loc11_ = li32(_loc3_ + 8);
               _loc10_ = _loc13_;
            }
            §§goto(addr238);
         }
      }
      addr389:
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
