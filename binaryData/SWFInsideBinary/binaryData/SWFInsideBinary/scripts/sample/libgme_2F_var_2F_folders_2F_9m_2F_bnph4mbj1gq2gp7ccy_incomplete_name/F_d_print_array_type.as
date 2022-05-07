package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_realloc;
   import sample.libgme.eax;
   
   public function F_d_print_array_type() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc12_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc3_);
      _loc10_ = _loc1_;
      if(_loc1_ != 0)
      {
         while(true)
         {
            _loc8_ = 1;
            if(_loc10_ != 0)
            {
               var _loc9_:*;
               if((_loc9_ = li32(_loc10_ + 8)) == 0)
               {
                  _loc10_ = li32(_loc9_ = li32(_loc10_ + 4));
                  _loc8_ = 1;
                  if(_loc10_ == 36)
                  {
                     _loc8_ = 0;
                  }
                  _loc8_ &= 1;
               }
               continue;
               if(_loc10_ != 36)
               {
                  if((_loc7_ = li32(_loc11_ + 4)) == 0)
                  {
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_mod_list();
                     _loc2_ += 16;
                     addr334:
                     if((_loc10_ = li32(_loc11_ + 4)) != 0)
                     {
                        _loc1_ = li32(_loc11_ + 12);
                        if((uint(_loc5_ = li32(_loc11_ + 8))) < uint(_loc1_))
                        {
                           si8(41,int(_loc10_ + _loc5_));
                           si32(_loc9_ = int(_loc5_ + 1),_loc11_ + 8);
                        }
                        else
                        {
                           _loc5_ += 1;
                           while(true)
                           {
                              if(uint(_loc1_) >= uint(_loc5_))
                              {
                                 if(_loc10_ != 0)
                                 {
                                    si8(41,int(_loc10_ + li32(_loc11_ + 8)));
                                    si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 1),_loc11_ + 8);
                                    break;
                                 }
                                 break;
                              }
                              _loc2_ -= 16;
                              si32(_loc10_,_loc2_);
                              _loc1_ <<= 1;
                              si32(_loc1_,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ += 16;
                              if((_loc10_ = int(eax)) == 0)
                              {
                                 _loc1_ = li32(_loc11_ + 4);
                                 if(_loc1_ != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_idalloc();
                                    _loc2_ += 16;
                                 }
                                 si32(0,_loc11_ + 4);
                                 si32(1,_loc11_ + 24);
                                 break;
                              }
                              si32(_loc10_,_loc11_ + 4);
                              si32(_loc1_,_loc11_ + 12);
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc6_ = li32(_loc11_ + 12);
                     if((uint(_loc4_ = (_loc5_ = li32(_loc11_ + 8)) + 2)) <= uint(_loc6_))
                     {
                        si16(10272,int(_loc7_ + _loc5_));
                        si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 2),_loc11_ + 8);
                     }
                     else
                     {
                        while(true)
                        {
                           if(uint(_loc6_) >= uint(_loc4_))
                           {
                              if(_loc7_ != 0)
                              {
                                 si16(10272,int(_loc7_ + li32(_loc11_ + 8)));
                                 si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 2),_loc11_ + 8);
                                 break;
                              }
                              break;
                           }
                           _loc2_ -= 16;
                           si32(_loc7_,_loc2_);
                           si32(_loc6_ <<= 1,_loc2_ + 4);
                           ESP = _loc2_;
                           F_realloc();
                           _loc2_ += 16;
                           if((_loc7_ = int(eax)) == 0)
                           {
                              if((_loc5_ = li32(_loc11_ + 4)) != 0)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc5_,_loc2_);
                                 ESP = _loc2_;
                                 F_idalloc();
                                 _loc2_ += 16;
                              }
                              si32(0,_loc11_ + 4);
                              si32(1,_loc11_ + 24);
                              break;
                           }
                           si32(_loc7_,_loc11_ + 4);
                           si32(_loc6_,_loc11_ + 12);
                        }
                     }
                     _loc2_ -= 16;
                     si32(0,_loc2_ + 8);
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_mod_list();
                     _loc2_ += 16;
                     if(_loc10_ != 36)
                     {
                        §§goto(addr334);
                     }
                  }
                  §§goto(addr540);
               }
               break;
            }
            break;
         }
         _loc2_ -= 16;
         si32(0,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         F_d_print_mod_list();
         _loc2_ += 16;
         addr540:
         if(_loc8_ == 0)
         {
            _loc8_ = int(_loc11_ + 4);
         }
         else
         {
            addr551:
            _loc10_ = li32(_loc11_ + 4);
            _loc8_ = int(_loc11_ + 4);
            if(_loc10_ != 0)
            {
               _loc1_ = li32(_loc11_ + 12);
               if((uint(_loc5_ = li32(_loc11_ + 8))) < uint(_loc1_))
               {
                  si8(32,int(_loc10_ + _loc5_));
                  si32(_loc9_ = int(_loc5_ + 1),_loc11_ + 8);
               }
               else
               {
                  _loc5_ += 1;
                  while(true)
                  {
                     if(uint(_loc1_) >= uint(_loc5_))
                     {
                        if(_loc10_ != 0)
                        {
                           si8(32,int(_loc10_ + li32(_loc11_ + 8)));
                           si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 1),_loc11_ + 8);
                           break;
                        }
                        break;
                     }
                     _loc2_ -= 16;
                     si32(_loc10_,_loc2_);
                     _loc1_ <<= 1;
                     si32(_loc1_,_loc2_ + 4);
                     ESP = _loc2_;
                     F_realloc();
                     _loc2_ += 16;
                     if((_loc10_ = int(eax)) == 0)
                     {
                        _loc1_ = li32(_loc8_);
                        if(_loc1_ != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc11_ + 4);
                        si32(1,_loc11_ + 24);
                        break;
                     }
                     si32(_loc10_,_loc11_ + 4);
                     si32(_loc1_,_loc11_ + 12);
                  }
               }
            }
         }
         if((_loc10_ = li32(_loc8_)) != 0)
         {
            _loc1_ = li32(_loc11_ + 12);
            if((uint(_loc5_ = li32(_loc11_ + 8))) < uint(_loc1_))
            {
               si8(91,int(_loc10_ + _loc5_));
               si32(_loc9_ = int(_loc5_ + 1),_loc11_ + 8);
            }
            else
            {
               _loc5_ += 1;
               while(true)
               {
                  if(uint(_loc1_) >= uint(_loc5_))
                  {
                     if(_loc10_ != 0)
                     {
                        si8(91,int(_loc10_ + li32(_loc11_ + 8)));
                        si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 1),_loc11_ + 8);
                        break;
                     }
                     break;
                  }
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  _loc1_ <<= 1;
                  si32(_loc1_,_loc2_ + 4);
                  ESP = _loc2_;
                  F_realloc();
                  _loc2_ += 16;
                  if((_loc10_ = int(eax)) == 0)
                  {
                     _loc1_ = li32(_loc8_);
                     if(_loc1_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_idalloc();
                        _loc2_ += 16;
                     }
                     si32(0,_loc8_);
                     si32(1,_loc11_ + 24);
                     break;
                  }
                  si32(_loc10_,_loc8_);
                  si32(_loc1_,_loc11_ + 12);
               }
            }
         }
         if((_loc12_ = li32(_loc12_ + 4)) != 0)
         {
            _loc2_ -= 16;
            si32(_loc12_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F_d_print_comp();
            _loc2_ += 16;
         }
         if((_loc12_ = li32(_loc8_)) != 0)
         {
            _loc1_ = li32(_loc11_ + 12);
            if((uint(_loc10_ = li32(_loc11_ + 8))) < uint(_loc1_))
            {
               si8(93,int(_loc12_ + _loc10_));
               si32(_loc9_ = int(_loc10_ + 1),_loc11_ + 8);
            }
            else
            {
               _loc10_ += 1;
               while(true)
               {
                  if(uint(_loc1_) >= uint(_loc10_))
                  {
                     if(_loc12_ != 0)
                     {
                        si8(93,int(_loc12_ + li32(_loc11_ + 8)));
                        si32(_loc9_ = int((_loc9_ = li32(_loc11_ + 8)) + 1),_loc11_ + 8);
                        break;
                     }
                     break;
                  }
                  _loc2_ -= 16;
                  si32(_loc12_,_loc2_);
                  _loc1_ <<= 1;
                  si32(_loc1_,_loc2_ + 4);
                  ESP = _loc2_;
                  F_realloc();
                  _loc2_ += 16;
                  if((_loc12_ = int(eax)) == 0)
                  {
                     if((_loc12_ = li32(_loc8_)) != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc12_,_loc2_);
                        ESP = _loc2_;
                        F_idalloc();
                        _loc2_ += 16;
                     }
                     si32(0,_loc8_);
                     si32(1,_loc11_ + 24);
                     break;
                  }
                  si32(_loc12_,_loc8_);
                  si32(_loc1_,_loc11_ + 12);
               }
            }
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr551);
   }
}
