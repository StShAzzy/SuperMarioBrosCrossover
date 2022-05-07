package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F_realloc;
   import sample.libgme.eax;
   
   public function F_d_print_cast() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc10_ = li32(_loc1_ + 4));
      _loc8_ = li32(_loc3_);
      if(_loc9_ != 4)
      {
         _loc2_ -= 16;
         si32(_loc10_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_d_print_comp();
         _loc2_ += 16;
      }
      else
      {
         _loc10_ = li32(_loc8_ + 20);
         si32(_loc7_ = 0,_loc8_ + 20);
         si32(_loc9_ = li32(_loc8_ + 16),_loc3_ - 8);
         si32(_loc9_ = int(_loc3_ - 8),_loc8_ + 16);
         var _loc6_:*;
         si32(_loc6_ = li32(_loc1_ + 4),_loc9_ | 4);
         _loc2_ -= 16;
         si32(li32(_loc6_ + 4),_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_d_print_comp();
         _loc2_ += 16;
         si32(_loc9_ = li32(_loc3_ - 8),_loc8_ + 16);
         if((_loc5_ = li32(_loc8_ + 4)) != 0)
         {
            if((_loc4_ = li32(_loc8_ + 8)) != 0)
            {
               _loc7_ = _loc4_;
               if(li8((_loc9_ = int(_loc4_ + _loc5_)) - 1) == 60)
               {
                  _loc7_ = li32(_loc8_ + 12);
                  if(_loc5_ != 0)
                  {
                     if(uint(_loc4_) < uint(_loc7_))
                     {
                        si8(32,int(_loc5_ + _loc4_));
                        si32(_loc7_ = int(_loc4_ + 1),_loc8_ + 8);
                        §§goto(addr360);
                     }
                     addr360:
                     if((_loc5_ = li32(_loc8_ + 4)) != 0)
                     {
                        _loc4_ = li32(_loc8_ + 12);
                        if(uint(_loc7_) < uint(_loc4_))
                        {
                           si8(60,int(_loc5_ + _loc7_));
                           si32(_loc9_ = int(_loc7_ + 1),_loc8_ + 8);
                           §§goto(addr530);
                        }
                        else
                        {
                           _loc7_ += 1;
                           while(true)
                           {
                              if(uint(_loc4_) >= uint(_loc7_))
                              {
                                 if(_loc5_ != 0)
                                 {
                                    si8(60,int(_loc5_ + li32(_loc8_ + 8)));
                                    si32(_loc9_ = int((_loc9_ = li32(_loc8_ + 8)) + 1),_loc8_ + 8);
                                 }
                              }
                              else
                              {
                                 _loc2_ -= 16;
                                 si32(_loc5_,_loc2_);
                                 si32(_loc4_ <<= 1,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ += 16;
                                 if((_loc5_ = int(eax)) != 0)
                                 {
                                    continue;
                                 }
                                 if((_loc5_ = li32(_loc8_ + 4)) != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc5_,_loc2_);
                                    ESP = _loc2_;
                                    F_idalloc();
                                    _loc2_ += 16;
                                 }
                                 si32(0,_loc8_ + 4);
                                 si32(1,_loc8_ + 24);
                              }
                              §§goto(addr530);
                           }
                        }
                     }
                     §§goto(addr530);
                  }
                  if(uint(_loc4_) >= uint(_loc7_))
                  {
                     _loc4_ += 1;
                     while(true)
                     {
                        if(uint(_loc7_) >= uint(_loc4_))
                        {
                           if(_loc5_ != 0)
                           {
                              _loc4_ = li32(_loc8_ + 8);
                           }
                           break;
                        }
                        _loc2_ -= 16;
                        si32(_loc5_,_loc2_);
                        si32(_loc7_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        if((_loc5_ = int(eax)) == 0)
                        {
                           if((_loc5_ = li32(_loc8_ + 4)) != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc5_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(0,_loc8_ + 4);
                           si32(1,_loc8_ + 24);
                           break;
                        }
                        si32(_loc5_,_loc8_ + 4);
                        si32(_loc7_,_loc8_ + 12);
                     }
                     §§goto(addr530);
                  }
                  _loc9_ = int(_loc5_ + _loc4_);
                  si8(32,_loc9_);
                  si32(_loc7_ = int((_loc9_ = li32(_loc8_ + 8)) + 1),_loc8_ + 8);
               }
            }
            §§goto(addr360);
         }
         addr530:
         _loc9_ = li32((_loc9_ = li32(_loc1_ + 4)) + 8);
         _loc2_ -= 16;
         si32(_loc9_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_d_print_comp();
         _loc2_ += 16;
         _loc1_ = li32(_loc8_ + 4);
         if(_loc1_ != 0)
         {
            _loc7_ = li32(_loc8_ + 8);
            _loc5_ = 0;
            if(_loc7_ != 0)
            {
               _loc5_ = _loc7_;
               if(li8((_loc9_ = int(_loc7_ + _loc1_)) - 1) == 62)
               {
                  _loc5_ = li32(_loc8_ + 12);
                  if(_loc1_ != 0)
                  {
                     if(uint(_loc7_) < uint(_loc5_))
                     {
                        si8(32,int(_loc1_ + _loc7_));
                        si32(_loc5_ = int(_loc7_ + 1),_loc8_ + 8);
                        §§goto(addr771);
                     }
                     addr771:
                     _loc1_ = li32(_loc8_ + 4);
                     if(_loc1_ != 0)
                     {
                        _loc7_ = li32(_loc8_ + 12);
                        if(uint(_loc5_) < uint(_loc7_))
                        {
                           si8(62,int(_loc1_ + _loc5_));
                           si32(_loc9_ = int(_loc5_ + 1),_loc8_ + 8);
                           §§goto(addr941);
                        }
                        else
                        {
                           _loc5_ += 1;
                           while(true)
                           {
                              if(uint(_loc7_) >= uint(_loc5_))
                              {
                                 if(_loc1_ != 0)
                                 {
                                    si8(62,int(_loc1_ + li32(_loc8_ + 8)));
                                    si32(_loc9_ = int((_loc9_ = li32(_loc8_ + 8)) + 1),_loc8_ + 8);
                                 }
                              }
                              else
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 si32(_loc7_ <<= 1,_loc2_ + 4);
                                 ESP = _loc2_;
                                 F_realloc();
                                 _loc2_ += 16;
                                 _loc1_ = int(eax);
                                 if(_loc1_ != 0)
                                 {
                                    continue;
                                 }
                                 _loc1_ = li32(_loc8_ + 4);
                                 if(_loc1_ != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_idalloc();
                                    _loc2_ += 16;
                                 }
                                 si32(0,_loc8_ + 4);
                                 si32(1,_loc8_ + 24);
                              }
                              §§goto(addr941);
                           }
                        }
                     }
                     §§goto(addr941);
                  }
                  if(uint(_loc7_) >= uint(_loc5_))
                  {
                     _loc7_ += 1;
                     while(true)
                     {
                        if(uint(_loc5_) >= uint(_loc7_))
                        {
                           if(_loc1_ != 0)
                           {
                              _loc7_ = li32(_loc8_ + 8);
                           }
                           break;
                        }
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        si32(_loc5_ <<= 1,_loc2_ + 4);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        _loc1_ = int(eax);
                        if(_loc1_ == 0)
                        {
                           _loc1_ = li32(_loc8_ + 4);
                           if(_loc1_ != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_idalloc();
                              _loc2_ += 16;
                           }
                           si32(0,_loc8_ + 4);
                           si32(1,_loc8_ + 24);
                           break;
                        }
                        si32(_loc1_,_loc8_ + 4);
                        si32(_loc5_,_loc8_ + 12);
                     }
                     §§goto(addr941);
                  }
                  _loc9_ = int(_loc1_ + _loc7_);
                  si8(32,_loc9_);
                  si32(_loc5_ = int((_loc9_ = li32(_loc8_ + 8)) + 1),_loc8_ + 8);
               }
            }
            §§goto(addr771);
         }
         §§goto(addr941);
      }
      addr941:
      si32(_loc10_,_loc8_ + 20);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
