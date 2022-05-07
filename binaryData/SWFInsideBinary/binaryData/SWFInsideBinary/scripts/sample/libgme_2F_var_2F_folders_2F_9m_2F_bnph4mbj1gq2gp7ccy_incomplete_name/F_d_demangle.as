package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_malloc;
   import sample.libgme.F_realloc;
   import sample.libgme.eax;
   
   public function F_d_demangle() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 96;
      _loc1_ = 0;
      _loc12_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc12_);
      _loc8_ = int((_loc9_ = li32(_loc10_ = (_loc11_ = li32(_loc3_)) & -4)) + -16843009);
      if((_loc8_ = (_loc9_ = (_loc9_ &= -2139062144) ^ -2139062144) & _loc8_) != 0)
      {
         _loc7_ = int(_loc10_ + 4);
         while(true)
         {
            if((uint(_loc6_ = int(_loc11_ + _loc1_))) < uint(_loc7_))
            {
               continue;
            }
         }
         addr220:
         if((_loc6_ = li8(_loc11_)) == 95)
         {
            _loc6_ = 95;
            _loc7_ = 1;
            if(li8(_loc11_ + 1) != 90)
            {
               addr238:
               _loc10_ = _loc7_ = 0;
               while(true)
               {
                  _loc8_ = li8(_loc8_ = int(L__2E_str16638 - _loc10_));
                  if((_loc6_ &= 255) == _loc8_)
                  {
                     if(_loc6_ != 0)
                     {
                        if(_loc10_ != -7)
                        {
                           continue;
                        }
                     }
                     if((_loc10_ = li8(_loc11_ + 8)) != 36)
                     {
                        if(_loc10_ != 46)
                        {
                           _loc7_ = 0;
                           if(_loc10_ == 95)
                           {
                           }
                           break;
                        }
                     }
                     if((_loc6_ = li8(_loc11_ + 9)) != 68)
                     {
                        _loc7_ = 0;
                        if(_loc6_ == 73)
                        {
                        }
                        break;
                     }
                     _loc8_ = li8(_loc11_ + 10);
                     _loc7_ = 0;
                     if(_loc8_ == 95)
                     {
                        _loc2_ -= 16;
                        si32(_loc8_ = int(_loc1_ + 29),_loc2_);
                        ESP = _loc2_;
                        F_malloc();
                        _loc2_ += 16;
                        if((_loc10_ = int(eax)) == 0)
                        {
                           si32(1,_loc12_);
                           _loc10_ = 0;
                        }
                        else
                        {
                           if(_loc6_ == 73)
                           {
                              si16(32,_loc10_ + 28);
                              si32(1869881444,_loc10_ + 24);
                              si32(1702454635,_loc10_ + 20);
                              si32(544436847,_loc10_ + 16);
                              si32(1952675186,_loc10_ + 12);
                              si32(1953721967,_loc10_ + 8);
                              si32(1663069281,_loc10_ + 4);
                              si32(1651469415,_loc10_);
                              _loc1_ = _loc10_;
                           }
                           else
                           {
                              si8(0,_loc10_ + 28);
                              si32(544175136,_loc10_ + 24);
                              si32(1684371813,_loc10_ + 20);
                              si32(1797288818,_loc10_ + 16);
                              si32(1869898613,_loc10_ + 12);
                              si32(1920234341,_loc10_ + 8);
                              si32(1679846497,_loc10_ + 4);
                              si32(1651469415,_loc10_);
                              _loc1_ = _loc10_;
                           }
                           do
                           {
                              _loc12_ = int(_loc1_ + 1);
                              _loc8_ = li8(_loc1_ + 1);
                              _loc1_ = _loc12_;
                           }
                           while(_loc8_ != 0);
                           
                           _loc11_ += 11;
                           do
                           {
                              si8(_loc8_ = li8(_loc11_),_loc12_);
                              _loc11_ += 1;
                              _loc12_ += 1;
                           }
                           while(_loc8_ != 0);
                           
                        }
                        §§goto(addr1089);
                     }
                     break;
                  }
                  break;
               }
            }
            si32(_loc11_,_loc3_ - 88);
            _loc9_ = int(_loc11_ + _loc1_);
            _loc8_ = (_loc6_ = int(_loc3_ - 88)) | 4;
            si32(_loc9_,_loc8_);
            si32(17,_loc3_ - 80);
            si32(_loc11_,_loc3_ - 76);
            si32(_loc8_ = _loc1_ << 1,_loc3_ - 64);
            si32(_loc10_ = 0,_loc3_ - 68);
            si32(_loc1_,_loc3_ - 52);
            si32(_loc10_,_loc3_ - 56);
            si32(_loc10_,_loc3_ - 48);
            si32(_loc10_,_loc3_ - 44);
            si32(_loc10_,_loc3_ - 40);
            _loc11_ = _loc2_;
            _loc8_ = (_loc8_ = int((_loc8_ = int((_loc8_ = li32(_loc3_ - 64)) * 12)) + 15)) & -16;
            _loc2_ = _loc8_ = (_loc8_ = int((_loc9_ = _loc2_) - _loc8_)) & -16;
            var _loc5_:* = (_loc9_ = int((_loc9_ = (_loc9_ = li32(_loc3_ - 52)) << 2) + 15)) & -16;
            _loc2_ = _loc9_ = (_loc9_ = int((_loc9_ = _loc2_) - _loc5_)) & -16;
            si32(_loc8_,_loc3_ - 72);
            si32(_loc9_,_loc3_ - 60);
            if(_loc7_ == 1)
            {
               si32(_loc8_ = int(_loc4_ + 1),_loc3_ - 76);
               _loc7_ = 0;
               if(li8(_loc4_ = li32(_loc3_ - 76)) == 95)
               {
                  si32(_loc8_ = int(_loc4_ + 2),_loc3_ - 76);
                  _loc7_ = 0;
                  if(li8(_loc4_ + 1) == 90)
                  {
                     _loc2_ -= 16;
                     si32(1,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F_d_encoding();
                     _loc2_ += 16;
                     _loc7_ = int(eax);
                  }
               }
            }
            else
            {
               _loc2_ -= 16;
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F_d_type();
               _loc2_ += 16;
               _loc7_ = int(eax);
            }
            if((_loc8_ = li8(_loc8_ = li32(_loc3_ - 76))) != _loc10_)
            {
               _loc7_ = _loc10_;
            }
            if(_loc7_ != 0)
            {
               si32(17,_loc3_ - 32);
               _loc9_ = int((_loc9_ = int(int((_loc8_ = li32(_loc3_ - 40)) + _loc1_) + int((_loc9_ = li32(_loc3_ - 48)) * 10)) >> 31) >>> 29);
               si32(_loc8_ = int((_loc8_ = int(int(int((_loc8_ = li32(_loc3_ - 40)) + _loc1_) + int((_loc9_ = li32(_loc3_ - 48)) * 10)) + ((_loc9_ = int(int(int((_loc8_ = li32(_loc3_ - 40)) + _loc1_) + int((_loc9_ = li32(_loc3_ - 48)) * 10)) + _loc9_)) >> 3))) + 1),_loc3_ - 20);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc1_ = (_loc4_ = int(_loc3_ - 32)) | 4;
               _loc2_ += 16;
               si32(_loc8_ = int(eax),_loc1_);
               _loc10_ = 0;
               _loc6_ = 1;
               if(_loc8_ != 0)
               {
                  si32(_loc10_ = 0,_loc3_ - 24);
                  si32(_loc10_,_loc3_ - 16);
                  si32(_loc10_,_loc3_ - 12);
                  si32(_loc10_,_loc3_ - 8);
                  _loc2_ -= 16;
                  si32(_loc7_,_loc2_ + 4);
                  si32(_loc4_,_loc2_);
                  ESP = _loc2_;
                  F_d_print_comp();
                  _loc2_ += 16;
                  if((_loc6_ = li32(_loc1_)) != 0)
                  {
                     _loc7_ = li32(_loc3_ - 20);
                     if((uint(_loc4_ = li32(_loc3_ - 24))) < uint(_loc7_))
                     {
                        si8(_loc10_,int(_loc6_ + _loc4_));
                        §§goto(addr1050);
                     }
                     else
                     {
                        _loc4_ += 1;
                        while(true)
                        {
                           if(uint(_loc7_) >= uint(_loc4_))
                           {
                              if(_loc6_ != 0)
                              {
                                 si8(_loc10_,int(_loc6_ + li32(_loc3_ - 24)));
                                 _loc4_ = li32(_loc3_ - 24);
                                 addr1050:
                                 si32(_loc8_ = int(_loc4_ + 1),_loc3_ - 24);
                                 _loc1_ = li32(_loc1_);
                                 if(_loc1_ != 0)
                                 {
                                    _loc6_ = li32(_loc3_ - 20);
                                    _loc10_ = _loc1_;
                                 }
                                 §§goto(addr1082);
                              }
                              break;
                           }
                           _loc2_ -= 16;
                           si32(_loc6_,_loc2_);
                           si32(_loc7_ <<= 1,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ += 16;
                           if((_loc6_ = int(eax)) == 0)
                           {
                              if((_loc7_ = li32(_loc1_)) != 0)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc7_,_loc2_);
                                 ESP = _loc2_;
                                 F_idalloc();
                                 _loc2_ += 16;
                              }
                              si32(_loc10_,_loc1_);
                              si32(1,_loc3_ - 8);
                              break;
                           }
                           si32(_loc6_,_loc1_);
                           si32(_loc7_,_loc3_ - 20);
                        }
                     }
                  }
                  _loc6_ = li32(_loc3_ - 8);
               }
               §§goto(addr1082);
            }
            addr1082:
            si32(_loc6_,_loc12_);
            _loc2_ = _loc11_;
            addr1089:
            eax = _loc10_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
         §§goto(addr238);
      }
      _loc10_ += 4;
      while(true)
      {
         _loc1_ = li32(_loc10_);
         _loc8_ = int(_loc1_ + -16843009);
         if((_loc8_ = (_loc9_ = (_loc9_ = _loc1_ & -2139062144) ^ -2139062144) & _loc8_) == 0)
         {
            continue;
         }
         if((_loc8_ = _loc1_ & 255) == 0)
         {
            _loc1_ = int(_loc10_ - _loc11_);
         }
         else if((_loc8_ = li8(_loc10_ + 1)) == 0)
         {
            _loc1_ = int((_loc8_ = int(1 - _loc11_)) + _loc10_);
         }
         else if((_loc8_ = li8(_loc10_ + 2)) == 0)
         {
            _loc1_ = int((_loc8_ = int(2 - _loc11_)) + _loc10_);
         }
         else
         {
            if((_loc8_ = li8(_loc10_ + 3)) != 0)
            {
               continue;
            }
            _loc1_ = int((_loc8_ = int(3 - _loc11_)) + _loc10_);
         }
         §§goto(addr220);
      }
   }
}
