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
   
   public function F_d_print_mod_list() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc3_);
      var _loc10_:*;
      if((_loc10_ = li32(_loc3_ + 8)) == 0)
      {
         while(true)
         {
            if(_loc1_ != 0)
            {
               if((_loc10_ = li32(_loc11_ + 4)) != 0)
               {
                  if((_loc10_ = li32(_loc1_ + 8)) != 0)
                  {
                     continue;
                  }
                  if((uint(_loc10_ = int((_loc10_ = li32(_loc10_ = li32(_loc1_ + 4))) + -25))) < 3)
                  {
                     continue;
                  }
                  _loc7_ = int(_loc1_ + 4);
                  si32(1,_loc1_ + 8);
                  _loc8_ = li32(_loc11_ + 16);
                  si32(_loc10_ = li32(_loc1_ + 12),_loc11_ + 16);
                  if((_loc6_ = li32(_loc9_ = li32(_loc1_ + 4))) != 2)
                  {
                     if(_loc6_ != 35)
                     {
                        if(_loc6_ != 36)
                        {
                           _loc2_ -= 16;
                           si32(_loc9_,_loc2_ + 4);
                           si32(_loc11_,_loc2_);
                           ESP = _loc2_;
                           F_d_print_mod();
                           _loc2_ += 16;
                           si32(_loc8_,_loc11_ + 16);
                           continue;
                        }
                        addr273:
                        _loc10_ = li32(_loc1_);
                        _loc2_ -= 16;
                        si32(_loc10_,_loc2_ + 8);
                        si32(_loc9_,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_array_type();
                        _loc2_ += 16;
                        si32(_loc8_,_loc11_ + 16);
                     }
                     else
                     {
                        addr234:
                        _loc10_ = li32(_loc1_);
                        _loc2_ -= 16;
                        si32(_loc10_,_loc2_ + 8);
                        si32(_loc9_,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_function_type();
                        _loc2_ += 16;
                        si32(_loc8_,_loc11_ + 16);
                     }
                  }
                  else
                  {
                     addr312:
                     _loc10_ = li32(_loc11_ + 20);
                     si32(0,_loc11_ + 20);
                     var _loc5_:* = li32((_loc5_ = li32(_loc7_)) + 4);
                     _loc2_ -= 16;
                     si32(_loc5_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_comp();
                     _loc2_ += 16;
                     si32(_loc10_,_loc11_ + 20);
                     _loc9_ = li32(_loc11_ + 4);
                     if((_loc10_ = (_loc10_ = li8(_loc11_)) & 4) == 0)
                     {
                        if(_loc9_ != 0)
                        {
                           _loc4_ = li32(_loc11_ + 12);
                           _loc1_ = int((_loc6_ = li32(_loc11_ + 8)) + 2);
                           if(uint(_loc1_) <= uint(_loc4_))
                           {
                              si16(14906,int(_loc9_ + _loc6_));
                              si32(_loc10_ = int((_loc10_ = li32(_loc11_ + 8)) + 2),_loc11_ + 8);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(uint(_loc4_) >= uint(_loc1_))
                                 {
                                    if(_loc9_ != 0)
                                    {
                                       si16(14906,int(_loc9_ + li32(_loc11_ + 8)));
                                       si32(_loc10_ = int((_loc10_ = li32(_loc11_ + 8)) + 2),_loc11_ + 8);
                                    }
                                 }
                                 else
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc9_,_loc2_);
                                    si32(_loc4_ <<= 1,_loc2_ + 4);
                                    ESP = _loc2_;
                                    F_realloc();
                                    _loc2_ += 16;
                                    if((_loc9_ = int(eax)) != 0)
                                    {
                                       continue;
                                    }
                                    if((_loc9_ = li32(_loc11_ + 4)) != 0)
                                    {
                                       _loc2_ -= 16;
                                       si32(_loc9_,_loc2_);
                                       ESP = _loc2_;
                                       F_idalloc();
                                       _loc2_ += 16;
                                    }
                                    si32(0,_loc11_ + 4);
                                    si32(1,_loc11_ + 24);
                                 }
                              }
                           }
                        }
                     }
                     else if(_loc9_ != 0)
                     {
                        _loc1_ = li32(_loc11_ + 12);
                        if((uint(_loc6_ = li32(_loc11_ + 8))) < uint(_loc1_))
                        {
                           si8(46,int(_loc9_ + _loc6_));
                           si32(_loc10_ = int(_loc6_ + 1),_loc11_ + 8);
                        }
                        else
                        {
                           _loc6_ += 1;
                           while(true)
                           {
                              if(uint(_loc1_) >= uint(_loc6_))
                              {
                                 if(_loc9_ != 0)
                                 {
                                    si8(46,int(_loc9_ + li32(_loc11_ + 8)));
                                    si32(_loc10_ = int((_loc10_ = li32(_loc11_ + 8)) + 1),_loc11_ + 8);
                                    break;
                                 }
                                 break;
                              }
                              _loc2_ -= 16;
                              si32(_loc9_,_loc2_);
                              _loc1_ <<= 1;
                              si32(_loc1_,_loc2_ + 4);
                              ESP = _loc2_;
                              F_realloc();
                              _loc2_ += 16;
                              if((_loc9_ = int(eax)) == 0)
                              {
                                 if((_loc9_ = li32(_loc11_ + 4)) != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc9_,_loc2_);
                                    ESP = _loc2_;
                                    F_idalloc();
                                    _loc2_ += 16;
                                 }
                                 si32(0,_loc11_ + 4);
                                 si32(1,_loc11_ + 24);
                                 break;
                              }
                              si32(_loc9_,_loc11_ + 4);
                              si32(_loc1_,_loc11_ + 12);
                           }
                        }
                     }
                     if((uint(_loc10_ = int((_loc10_ = li32(_loc7_ = li32((_loc10_ = li32(_loc7_)) + 8))) + -25))) <= 2)
                     {
                        while((uint(_loc10_ = int((_loc10_ = li32(_loc7_ = li32(_loc7_ + 4))) + -25))) < 3)
                        {
                        }
                     }
                     _loc2_ -= 16;
                     si32(_loc7_,_loc2_ + 4);
                     si32(_loc11_,_loc2_);
                     ESP = _loc2_;
                     F_d_print_comp();
                     _loc2_ += 16;
                     si32(_loc8_,_loc11_ + 16);
                  }
               }
            }
         }
      }
      else
      {
         for(; _loc1_ != 0; _loc1_ = li32(_loc1_))
         {
            if((_loc10_ = li32(_loc11_ + 4)) != 0)
            {
               if((_loc10_ = li32(_loc1_ + 8)) != 0)
               {
                  continue;
               }
               si32(1,_loc1_ + 8);
               _loc8_ = li32(_loc11_ + 16);
               si32(_loc10_ = li32(_loc1_ + 12),_loc11_ + 16);
               _loc7_ = int(_loc1_ + 4);
               if((_loc6_ = li32(_loc9_ = li32(_loc1_ + 4))) != 2)
               {
                  if(_loc6_ != 36)
                  {
                     if(_loc6_ != 35)
                     {
                        _loc2_ -= 16;
                        si32(_loc9_,_loc2_ + 4);
                        si32(_loc11_,_loc2_);
                        ESP = _loc2_;
                        F_d_print_mod();
                        _loc2_ += 16;
                        si32(_loc8_,_loc11_ + 16);
                        continue;
                     }
                     §§goto(addr234);
                  }
                  else
                  {
                     §§goto(addr273);
                  }
               }
               else
               {
                  §§goto(addr312);
               }
            }
            break;
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
