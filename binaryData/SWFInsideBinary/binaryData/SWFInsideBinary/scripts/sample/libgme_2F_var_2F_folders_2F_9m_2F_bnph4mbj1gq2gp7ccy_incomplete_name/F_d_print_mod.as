package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_realloc;
   import sample.libgme.eax;
   
   public function F_d_print_mod() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc1_);
      _loc7_ = li32(_loc3_);
      if(_loc8_ <= 26)
      {
         if(_loc8_ <= 23)
         {
            if(_loc8_ != 3)
            {
               if(_loc8_ != 22)
               {
                  if(_loc8_ != 23)
                  {
                     addr2099:
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_ + 4);
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_comp();
                     _loc2_ += 16;
                  }
                  else
                  {
                     addr305:
                     _loc1_ = li32(_loc7_ + 4);
                     if(_loc1_ != 0)
                     {
                        _loc8_ = li32(_loc7_ + 12);
                        if((uint(_loc6_ = int((_loc5_ = li32(_loc7_ + 8)) + 9))) <= uint(_loc8_))
                        {
                           var _loc4_:* = int(_loc1_ + _loc5_);
                           si8(101,_loc4_ + 8);
                           si32(1818850401,_loc4_ + 4);
                           si32(1819244064,_loc4_);
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 9),_loc7_ + 8);
                        }
                        else
                        {
                           while(true)
                           {
                              if(uint(_loc8_) >= uint(_loc6_))
                              {
                                 if(_loc1_ != 0)
                                 {
                                    _loc4_ = int(_loc1_ + li32(_loc7_ + 8));
                                    si8(101,_loc4_ + 8);
                                    si32(1818850401,_loc4_ + 4);
                                    si32(1819244064,_loc4_);
                                    si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 9),_loc7_ + 8);
                                 }
                              }
                              else
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 si32(_loc8_ <<= 1,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ += 16;
                                 _loc1_ = int(eax);
                                 if(_loc1_ != 0)
                                 {
                                    continue;
                                 }
                                 _loc1_ = li32(_loc7_ + 4);
                                 if(_loc1_ != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_idalloc();
                                    _loc2_ += 16;
                                 }
                                 si32(0,_loc7_ + 4);
                                 si32(1,_loc7_ + 24);
                              }
                           }
                        }
                     }
                  }
               }
               else
               {
                  addr104:
                  _loc1_ = li32(_loc7_ + 4);
                  if(_loc1_ != 0)
                  {
                     _loc8_ = li32(_loc7_ + 12);
                     if((uint(_loc5_ = int((_loc6_ = li32(_loc7_ + 8)) + 9))) <= uint(_loc8_))
                     {
                        _loc4_ = int(_loc1_ + _loc6_);
                        si8(116,_loc4_ + 8);
                        si32(1667854964,_loc4_ + 4);
                        si32(1936028192,_loc4_);
                        si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 9),_loc7_ + 8);
                     }
                     else
                     {
                        while(true)
                        {
                           if(uint(_loc8_) >= uint(_loc5_))
                           {
                              if(_loc1_ != 0)
                              {
                                 _loc4_ = int(_loc1_ + li32(_loc7_ + 8));
                                 si8(116,_loc4_ + 8);
                                 si32(1667854964,_loc4_ + 4);
                                 si32(1936028192,_loc4_);
                                 si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 9),_loc7_ + 8);
                              }
                           }
                           else
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              si32(_loc8_ <<= 1,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ += 16;
                              _loc1_ = int(eax);
                              if(_loc1_ != 0)
                              {
                                 continue;
                              }
                              _loc1_ = li32(_loc7_ + 4);
                              if(_loc1_ != 0)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_idalloc();
                                 _loc2_ += 16;
                              }
                              si32(0,_loc7_ + 4);
                              si32(1,_loc7_ + 24);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               _loc2_ -= 16;
               si32(li32(_loc1_ + 4),_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_d_print_comp();
               _loc2_ += 16;
            }
         }
         else if(_loc8_ != 24)
         {
            if(_loc8_ != 25)
            {
               if(_loc8_ != 26)
               {
                  §§goto(addr2099);
               }
               else
               {
                  §§goto(addr305);
               }
            }
            else
            {
               §§goto(addr104);
            }
         }
         else
         {
            addr506:
            if((_loc6_ = li32(_loc7_ + 4)) != 0)
            {
               _loc5_ = li32(_loc7_ + 12);
               _loc1_ = li32(_loc7_ + 8);
               if((uint(_loc8_ = int(_loc1_ + 6))) <= uint(_loc5_))
               {
                  _loc4_ = int(_loc6_ + _loc1_);
                  si16(29811,_loc4_ + 4);
                  si32(1852793632,_loc4_);
                  si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 6),_loc7_ + 8);
               }
               else
               {
                  while(true)
                  {
                     if(uint(_loc5_) >= uint(_loc8_))
                     {
                        if(_loc6_ != 0)
                        {
                           _loc4_ = int(_loc6_ + li32(_loc7_ + 8));
                           si16(29811,_loc4_ + 4);
                           si32(1852793632,_loc4_);
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 6),_loc7_ + 8);
                        }
                     }
                     else
                     {
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_);
                        si32(_loc5_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        if((_loc6_ = int(eax)) != 0)
                        {
                           continue;
                        }
                        _loc1_ = li32(_loc7_ + 4);
                        if(_loc1_ != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc7_ + 4);
                        si32(1,_loc7_ + 24);
                     }
                  }
               }
            }
         }
      }
      else if(_loc8_ <= 29)
      {
         if(_loc8_ != 27)
         {
            if(_loc8_ != 28)
            {
               if(_loc8_ != 29)
               {
                  §§goto(addr2099);
               }
               else if((_loc4_ = (_loc4_ = li8(_loc7_)) & 4) == 0)
               {
                  _loc1_ = li32(_loc7_ + 4);
                  if(_loc1_ != 0)
                  {
                     _loc8_ = li32(_loc7_ + 12);
                     if((uint(_loc6_ = li32(_loc7_ + 8))) < uint(_loc8_))
                     {
                        si8(42,int(_loc1_ + _loc6_));
                        si32(_loc4_ = int(_loc6_ + 1),_loc7_ + 8);
                     }
                     else
                     {
                        _loc6_ += 1;
                        while(true)
                        {
                           if(uint(_loc8_) >= uint(_loc6_))
                           {
                              if(_loc1_ != 0)
                              {
                                 si8(42,int(_loc1_ + li32(_loc7_ + 8)));
                                 si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 1),_loc7_ + 8);
                              }
                           }
                           else
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              si32(_loc8_ <<= 1,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ += 16;
                              _loc1_ = int(eax);
                              if(_loc1_ != 0)
                              {
                                 continue;
                              }
                              _loc1_ = li32(_loc7_ + 4);
                              if(_loc1_ != 0)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_idalloc();
                                 _loc2_ += 16;
                              }
                              si32(0,_loc7_ + 4);
                              si32(1,_loc7_ + 24);
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               if((_loc6_ = li32(_loc7_ + 4)) != 0)
               {
                  _loc8_ = li32(_loc7_ + 12);
                  if((uint(_loc5_ = li32(_loc7_ + 8))) < uint(_loc8_))
                  {
                     si8(32,int(_loc6_ + _loc5_));
                     si32(_loc4_ = int(_loc5_ + 1),_loc7_ + 8);
                  }
                  else
                  {
                     _loc5_ += 1;
                     while(true)
                     {
                        if(uint(_loc8_) >= uint(_loc5_))
                        {
                           if(_loc6_ != 0)
                           {
                              si8(32,int(_loc6_ + li32(_loc7_ + 8)));
                              si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 1),_loc7_ + 8);
                              break;
                           }
                           break;
                        }
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_);
                        si32(_loc8_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        if((_loc6_ = int(eax)) == 0)
                        {
                           if((_loc8_ = li32(_loc7_ + 4)) != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc8_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(0,_loc7_ + 4);
                           si32(1,_loc7_ + 24);
                           break;
                        }
                        si32(_loc6_,_loc7_ + 4);
                        si32(_loc8_,_loc7_ + 12);
                     }
                  }
               }
               _loc4_ = li32(_loc1_ + 8);
               _loc2_ -= 16;
               si32(_loc4_,_loc2_ + 4);
               si32(_loc7_,_loc2_);
               ESP = _loc2_;
               F_d_print_comp();
               _loc2_ += 16;
            }
         }
         else
         {
            §§goto(addr506);
         }
      }
      else if(_loc8_ <= 31)
      {
         if(_loc8_ != 30)
         {
            if(_loc8_ != 31)
            {
               §§goto(addr2099);
            }
            else if((_loc8_ = li32(_loc7_ + 4)) != 0)
            {
               _loc6_ = li32(_loc7_ + 12);
               _loc1_ = li32(_loc7_ + 8);
               if((uint(_loc5_ = int(_loc1_ + 8))) <= uint(_loc6_))
               {
                  _loc4_ = int(_loc8_ + _loc1_);
                  si32(544761196,_loc4_ + 4);
                  si32(1886220131,_loc4_);
                  si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 8),_loc7_ + 8);
               }
               else
               {
                  while(true)
                  {
                     if(uint(_loc6_) >= uint(_loc5_))
                     {
                        if(_loc8_ != 0)
                        {
                           _loc4_ = int(_loc8_ + li32(_loc7_ + 8));
                           si32(544761196,_loc4_ + 4);
                           si32(1886220131,_loc4_);
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 8),_loc7_ + 8);
                        }
                     }
                     else
                     {
                        _loc2_ -= 16;
                        si32(_loc8_,_loc2_);
                        si32(_loc6_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        if((_loc8_ = int(eax)) != 0)
                        {
                           continue;
                        }
                        _loc1_ = li32(_loc7_ + 4);
                        if(_loc1_ != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc7_ + 4);
                        si32(1,_loc7_ + 24);
                     }
                  }
               }
            }
         }
         else
         {
            _loc1_ = li32(_loc7_ + 4);
            if(_loc1_ != 0)
            {
               _loc8_ = li32(_loc7_ + 12);
               if((uint(_loc6_ = li32(_loc7_ + 8))) < uint(_loc8_))
               {
                  si8(38,int(_loc1_ + _loc6_));
                  si32(_loc4_ = int(_loc6_ + 1),_loc7_ + 8);
               }
               else
               {
                  _loc6_ += 1;
                  while(true)
                  {
                     if(uint(_loc8_) >= uint(_loc6_))
                     {
                        if(_loc1_ != 0)
                        {
                           si8(38,int(_loc1_ + li32(_loc7_ + 8)));
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 1),_loc7_ + 8);
                        }
                     }
                     else
                     {
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        si32(_loc8_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        _loc1_ = int(eax);
                        if(_loc1_ != 0)
                        {
                           continue;
                        }
                        _loc1_ = li32(_loc7_ + 4);
                        if(_loc1_ != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc7_ + 4);
                        si32(1,_loc7_ + 24);
                     }
                  }
               }
            }
         }
      }
      else if(_loc8_ != 32)
      {
         if(_loc8_ != 37)
         {
            §§goto(addr2099);
         }
         else
         {
            if((_loc6_ = li32(_loc7_ + 4)) != 0)
            {
               if((_loc5_ = li32(_loc7_ + 8)) != 0)
               {
                  if((_loc4_ = li8((_loc4_ = int(_loc5_ + _loc6_)) - 1)) != 40)
                  {
                  }
                  §§goto(addr1850);
               }
               _loc8_ = li32(_loc7_ + 12);
               if(uint(_loc5_) < uint(_loc8_))
               {
                  si8(32,int(_loc6_ + _loc5_));
                  si32(_loc4_ = int(_loc5_ + 1),_loc7_ + 8);
               }
               else
               {
                  _loc5_ += 1;
                  while(true)
                  {
                     if(uint(_loc8_) >= uint(_loc5_))
                     {
                        if(_loc6_ != 0)
                        {
                           si8(32,int(_loc6_ + li32(_loc7_ + 8)));
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 1),_loc7_ + 8);
                           break;
                        }
                        break;
                     }
                     _loc2_ -= 16;
                     si32(_loc6_,_loc2_);
                     si32(_loc8_ <<= 1,_loc2_ + 4);
                     ESP = _loc2_;
                     F_realloc();
                     _loc2_ += 16;
                     if((_loc6_ = int(eax)) == 0)
                     {
                        if((_loc8_ = li32(_loc7_ + 4)) != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc8_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc7_ + 4);
                        si32(1,_loc7_ + 24);
                        break;
                     }
                     si32(_loc6_,_loc7_ + 4);
                     si32(_loc8_,_loc7_ + 12);
                  }
               }
            }
            addr1850:
            _loc4_ = li32(_loc1_ + 4);
            _loc2_ -= 16;
            si32(_loc4_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F_d_print_comp();
            _loc2_ += 16;
            if((_loc8_ = li32(_loc7_ + 4)) != 0)
            {
               _loc1_ = li32(_loc7_ + 12);
               if((uint(_loc6_ = int((_loc5_ = li32(_loc7_ + 8)) + 3))) <= uint(_loc1_))
               {
                  _loc4_ = int(_loc8_ + _loc5_);
                  si8(42,_loc4_ + 2);
                  si16(14906,_loc4_);
                  si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 3),_loc7_ + 8);
                  §§goto(addr2124);
               }
               else
               {
                  while(true)
                  {
                     if(uint(_loc1_) >= uint(_loc6_))
                     {
                        if(_loc8_ != 0)
                        {
                           _loc4_ = int(_loc8_ + li32(_loc7_ + 8));
                           si8(42,_loc4_ + 2);
                           si16(14906,_loc4_);
                           si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 3),_loc7_ + 8);
                        }
                     }
                     else
                     {
                        _loc2_ -= 16;
                        si32(_loc8_,_loc2_);
                        _loc1_ <<= 1;
                        si32(_loc1_,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        if((_loc8_ = int(eax)) != 0)
                        {
                           continue;
                        }
                        _loc1_ = li32(_loc7_ + 4);
                        if(_loc1_ != 0)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_idalloc();
                           _loc2_ += 16;
                        }
                        si32(0,_loc7_ + 4);
                        si32(1,_loc7_ + 24);
                     }
                     §§goto(addr2124);
                  }
               }
            }
            §§goto(addr2124);
         }
      }
      else if((_loc8_ = li32(_loc7_ + 4)) != 0)
      {
         _loc1_ = li32(_loc7_ + 12);
         if((uint(_loc5_ = int((_loc6_ = li32(_loc7_ + 8)) + 10))) <= uint(_loc1_))
         {
            _loc4_ = int(_loc8_ + _loc6_);
            si16(8313,_loc4_ + 8);
            si32(1918987881,_loc4_ + 4);
            si32(1734438249,_loc4_);
            si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 10),_loc7_ + 8);
         }
         else
         {
            while(true)
            {
               if(uint(_loc1_) >= uint(_loc5_))
               {
                  if(_loc8_ != 0)
                  {
                     _loc4_ = int(_loc8_ + li32(_loc7_ + 8));
                     si16(8313,_loc4_ + 8);
                     si32(1918987881,_loc4_ + 4);
                     si32(1734438249,_loc4_);
                     si32(_loc4_ = int((_loc4_ = li32(_loc7_ + 8)) + 10),_loc7_ + 8);
                     break;
                  }
                  break;
               }
               _loc2_ -= 16;
               si32(_loc8_,_loc2_);
               _loc1_ <<= 1;
               si32(_loc1_,_loc2_ + 4);
               ESP = _loc2_;
               F_realloc();
               _loc2_ += 16;
               if((_loc8_ = int(eax)) == 0)
               {
                  _loc1_ = li32(_loc7_ + 4);
                  if(_loc1_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_idalloc();
                     _loc2_ += 16;
                  }
                  si32(0,_loc7_ + 4);
                  si32(1,_loc7_ + 24);
                  break;
               }
               si32(_loc8_,_loc7_ + 4);
               si32(_loc1_,_loc7_ + 12);
            }
         }
      }
      addr2124:
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
