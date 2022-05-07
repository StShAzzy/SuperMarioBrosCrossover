package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.F_idalloc;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str21273;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.___func___2E_3039;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.___func___2E_3112;
   
   public function F___collate_substitute() : void
   {
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:int = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc16_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc14_ = int((_loc15_ = li32(_loc16_ = _loc3_ & -4)) + -16843009);
      if((_loc14_ = (_loc15_ = (_loc15_ &= -2139062144) ^ -2139062144) & _loc14_) != 0)
      {
         _loc13_ = int(_loc16_ + 4);
         _loc12_ = 0;
         while(true)
         {
            if((uint(_loc11_ = int(_loc3_ + _loc12_))) < uint(_loc13_))
            {
               continue;
            }
         }
         addr217:
         if(_loc3_ != 0)
         {
            if((_loc16_ = li8(_loc3_)) == 0)
            {
               addr228:
               _loc12_ = int((_loc11_ = L__2E_str21273 & -4) + 4);
               _loc3_ = 0;
               _loc13_ = 1;
               if(uint(L__2E_str21273) < uint(_loc12_))
               {
                  _loc13_ = _loc3_;
               }
               _loc14_ = int((_loc15_ = li32(_loc11_)) + -16843009);
               if((_loc14_ = (_loc15_ = (_loc15_ &= -2139062144) ^ -2139062144) & _loc14_) != 0)
               {
                  if((_loc14_ = _loc13_ & 1) != 0)
                  {
                     while(true)
                     {
                        _loc14_ = int((_loc11_ = li32(_loc12_)) + -16843009);
                        if((_loc14_ = (_loc15_ = (_loc15_ = _loc11_ & -2139062144) ^ -2139062144) & _loc14_) != 0)
                        {
                           if((_loc14_ = _loc11_ & 255) == 0)
                           {
                              _loc3_ = int(_loc12_ - L__2E_str21273);
                              break;
                           }
                           if((_loc14_ = li8(_loc12_ + 1)) == 0)
                           {
                              _loc3_ = int(_loc12_ + (int(1 - L__2E_str21273)));
                              break;
                           }
                           if((_loc14_ = li8(_loc12_ + 2)) == 0)
                           {
                              _loc3_ = int(_loc12_ + (int(2 - L__2E_str21273)));
                              break;
                           }
                           if((_loc14_ = li8(_loc12_ + 3)) == 0)
                           {
                              _loc3_ = int(_loc12_ + (int(3 - L__2E_str21273)));
                              break;
                           }
                        }
                        _loc12_ += 4;
                     }
                     addr281:
                  }
                  _loc2_ -= 16;
                  si32(_loc11_ = int(_loc3_ + 1),_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ += 16;
                  if((_loc12_ = int(eax)) != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc11_,_loc2_ + 8);
                     si32(L__2E_str21273,_loc2_ + 4);
                     si32(_loc12_,_loc2_);
                     ESP = _loc2_;
                     Fmemcpy();
                     _loc2_ += 16;
                  }
                  else
                  {
                     _loc2_ -= 16;
                     si32(___func___2E_3112,_loc2_ + 4);
                     si32(71,_loc2_);
                     ESP = _loc2_;
                     F___collate_err();
                     _loc2_ += 16;
                     addr474:
                     _loc14_ = int((_loc14_ = _loc12_ >> 31) >>> 29);
                     _loc11_ = int((_loc14_ = (_loc14_ = int(_loc12_ + _loc14_)) >> 3) + _loc12_);
                     _loc2_ -= 16;
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_malloc();
                     _loc2_ += 16;
                     if((_loc12_ = int(eax)) != 0)
                     {
                        _loc13_ = int(_loc3_ + 1);
                        _loc10_ = 0;
                        _loc3_ = _loc11_;
                        while((_loc9_ = _loc16_ & 255) != 0)
                        {
                           _loc1_ = _loc7_ + _loc10_;
                           if(_loc3_ <= _loc1_)
                           {
                              _loc2_ -= 16;
                              si32(_loc12_,_loc2_);
                              _loc3_ = int(_loc1_ + _loc11_);
                              si32(_loc3_,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ += 16;
                              if((_loc7_ = eax) == 0)
                              {
                                 if(_loc12_ != 0)
                                 {
                                    if(_loc3_ != 0)
                                    {
                                       _loc2_ -= 16;
                                       si32(_loc12_,_loc2_);
                                       ESP = _loc2_;
                                       F_idalloc();
                                       _loc2_ += 16;
                                    }
                                 }
                              }
                              if(_loc7_ != 0)
                              {
                                 _loc16_ = li8(_loc13_ - 1);
                                 _loc9_ = li32(___collate_substitute_table_ptr);
                                 _loc12_ = _loc7_;
                              }
                              else
                              {
                                 _loc2_ -= 16;
                                 si32(___func___2E_3039,_loc2_ + 4);
                                 si32(71,_loc2_);
                                 ESP = _loc2_;
                                 F___collate_err();
                                 _loc2_ += 16;
                              }
                           }
                           _loc10_ = int(_loc12_ + _loc10_);
                           _loc14_ = int((_loc14_ = _loc16_ & 255) * 10);
                           si8(_loc14_ = li8(_loc9_ += _loc14_),_loc10_);
                           if(_loc14_ != 0)
                           {
                              _loc16_ = int(_loc10_ + 1);
                              _loc9_ += 1;
                              do
                              {
                                 si8(_loc14_ = li8(_loc9_),_loc16_);
                                 _loc16_ += 1;
                                 _loc9_ += 1;
                              }
                              while(_loc14_ != 0);
                              
                           }
                           _loc14_ = int(_loc13_ + 1);
                           _loc16_ = li8(_loc13_);
                           _loc13_ = _loc14_;
                           _loc10_ = _loc1_;
                        }
                        §§goto(addr942);
                     }
                     else
                     {
                        _loc2_ -= 16;
                        si32(___func___2E_3039,_loc2_ + 4);
                        si32(71,_loc2_);
                        ESP = _loc2_;
                        F___collate_err();
                        _loc2_ += 16;
                     }
                     while(true)
                     {
                        _loc14_ = int(_loc9_ * 10);
                        _loc1_ = (_loc9_ = li32(___collate_substitute_table_ptr)) + _loc14_;
                        _loc14_ = int((_loc15_ = li32(_loc5_ = _loc1_ & -4)) + -16843009);
                        if((_loc14_ = (_loc15_ = (_loc15_ &= -2139062144) ^ -2139062144) & _loc14_) != 0)
                        {
                           _loc6_ = _loc5_ + 4;
                           _loc7_ = 0;
                           while(true)
                           {
                              if((uint(_loc8_ = _loc1_ + _loc7_)) < uint(_loc6_))
                              {
                                 continue;
                              }
                           }
                           §§goto(addr748);
                        }
                        _loc7_ = _loc5_ + 4;
                        while(true)
                        {
                           _loc14_ = int((_loc5_ = li32(_loc7_)) + -16843009);
                           if((_loc14_ = (_loc15_ = (_loc15_ = _loc5_ & -2139062144) ^ -2139062144) & _loc14_) == 0)
                           {
                              continue;
                           }
                           if((_loc14_ = _loc5_ & 255) == 0)
                           {
                              _loc7_ -= _loc1_;
                           }
                           else if((_loc14_ = li8(_loc7_ + 1)) == 0)
                           {
                              _loc7_ = (_loc14_ = int(1 - _loc1_)) + _loc7_;
                           }
                           else if((_loc14_ = li8(_loc7_ + 2)) == 0)
                           {
                              _loc7_ = (_loc14_ = int(2 - _loc1_)) + _loc7_;
                           }
                           else
                           {
                              if((_loc14_ = li8(_loc7_ + 3)) != 0)
                              {
                                 continue;
                              }
                              _loc7_ = (_loc14_ = int(3 - _loc1_)) + _loc7_;
                           }
                           §§goto(addr748);
                        }
                     }
                  }
                  addr942:
                  eax = _loc12_;
                  _loc2_ = _loc4_;
                  ESP = _loc2_;
                  return;
               }
               §§goto(addr281);
            }
            §§goto(addr474);
         }
         §§goto(addr228);
      }
      _loc12_ = int(_loc16_ + 4);
      while(true)
      {
         _loc14_ = int((_loc11_ = li32(_loc12_)) + -16843009);
         if((_loc14_ = (_loc15_ = (_loc15_ = _loc11_ & -2139062144) ^ -2139062144) & _loc14_) == 0)
         {
            continue;
         }
         if((_loc14_ = _loc11_ & 255) == 0)
         {
            _loc12_ -= _loc3_;
         }
         else if((_loc14_ = li8(_loc12_ + 1)) == 0)
         {
            _loc12_ = int((_loc14_ = int(1 - _loc3_)) + _loc12_);
         }
         else if((_loc14_ = li8(_loc12_ + 2)) == 0)
         {
            _loc12_ = int((_loc14_ = int(2 - _loc3_)) + _loc12_);
         }
         else
         {
            if((_loc14_ = li8(_loc12_ + 3)) != 0)
            {
               continue;
            }
            _loc12_ = int((_loc14_ = int(3 - _loc3_)) + _loc12_);
         }
         §§goto(addr217);
      }
   }
}
