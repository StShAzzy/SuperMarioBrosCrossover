package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_name() : void
   {
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      _loc3_ = li32(_loc4_);
      if((_loc14_ = si8(li8(_loc15_ = li32(_loc3_ + 12)))) <= 82)
      {
         if(_loc14_ != 76)
         {
            if(_loc14_ != 78)
            {
               addr1920:
               _loc2_ -= 16;
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_unqualified_name();
               _loc2_ += 16;
               _loc15_ = int(eax);
               var _loc12_:* = li8(_loc12_ = li32(_loc3_ + 12));
               _loc14_ = _loc15_;
               if(_loc12_ == 73)
               {
                  _loc14_ = 0;
                  if(_loc15_ != 0)
                  {
                     _loc10_ = li32(_loc3_ + 32);
                     _loc14_ = 0;
                     if(_loc10_ < li32(_loc3_ + 36))
                     {
                        si32(_loc15_,int((_loc12_ = li32(_loc3_ + 28)) + (_loc10_ << 2)));
                        si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 32)) + 1),_loc3_ + 32);
                        _loc2_ -= 16;
                        si32(_loc3_,_loc2_);
                        ESP = _loc2_;
                        F_d_template_args();
                        _loc14_ = 0;
                        _loc2_ += 16;
                        _loc9_ = int(eax);
                        if(_loc15_ != 0)
                        {
                           if(_loc9_ != 0)
                           {
                              _loc13_ = li32(_loc3_ + 20);
                              _loc14_ = 0;
                              if(_loc13_ < li32(_loc3_ + 24))
                              {
                                 _loc10_ = li32(_loc3_ + 16);
                                 si32(_loc12_ = int(_loc13_ + 1),_loc3_ + 20);
                                 _loc13_ *= 12;
                                 _loc3_ = int(_loc10_ + _loc13_);
                                 _loc14_ = 0;
                                 if(_loc3_ != 0)
                                 {
                                    _loc12_ = int(_loc10_ + _loc13_);
                                    si32(4,_loc12_);
                                    si32(_loc15_,_loc12_ + 4);
                                    si32(_loc9_,_loc12_ + 8);
                                    _loc14_ = _loc3_;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            else
            {
               si32(_loc13_ = int(_loc15_ + 1),_loc3_ + 12);
               _loc14_ = 0;
               if((_loc14_ & 255) == 78)
               {
                  _loc15_ = int(_loc4_ - 4);
                  _loc14_ = 0;
                  while(true)
                  {
                     if((_loc11_ = li8(_loc13_)) != 75)
                     {
                        if(_loc11_ != 86)
                        {
                           if(_loc11_ != 114)
                           {
                              if(_loc15_ != 0)
                              {
                                 _loc10_ = 0;
                                 for(; (_loc9_ = _loc11_ & 255) != 0; _loc11_ = li8(_loc13_ = li32(_loc3_ + 12)),_loc10_ = _loc14_)
                                 {
                                    if((uint(_loc12_ = (_loc12_ = int(_loc11_ + -48)) & 255)) >= 10)
                                    {
                                       if((uint(_loc12_ = (_loc12_ = int(_loc11_ + -97)) & 255)) >= 26)
                                       {
                                          if((_loc12_ = (_loc12_ = _loc11_ << 24) >> 24) <= 75)
                                          {
                                             if((uint(_loc12_ = (_loc12_ = int(_loc11_ + -67)) & 255)) >= 2)
                                             {
                                                if(_loc9_ != 69)
                                                {
                                                   if(_loc9_ != 73)
                                                   {
                                                      addr348:
                                                      si32(_loc14_ = 0,_loc15_);
                                                      §§goto(addr2106);
                                                   }
                                                   if(_loc10_ != 0)
                                                   {
                                                      _loc2_ -= 16;
                                                      si32(_loc3_,_loc2_);
                                                      ESP = _loc2_;
                                                      F_d_template_args();
                                                      _loc11_ = 4;
                                                      _loc2_ += 16;
                                                      _loc14_ = int(eax);
                                                      addr688:
                                                      _loc13_ = _loc14_;
                                                      _loc14_ = 0;
                                                      if(_loc13_ != 0)
                                                      {
                                                         _loc1_ = li32(_loc3_ + 20);
                                                         _loc14_ = 0;
                                                         if(_loc1_ < li32(_loc3_ + 24))
                                                         {
                                                            _loc5_ = li32(_loc3_ + 16);
                                                            si32(_loc12_ = int(_loc1_ + 1),_loc3_ + 20);
                                                            _loc1_ *= 12;
                                                            _loc7_ = _loc5_ + _loc1_;
                                                            _loc14_ = 0;
                                                            if(_loc7_ != 0)
                                                            {
                                                               _loc12_ = int(_loc5_ + _loc1_);
                                                               si32(_loc11_,_loc12_);
                                                               si32(_loc10_,_loc12_ + 4);
                                                               si32(_loc13_,_loc12_ + 8);
                                                               _loc14_ = _loc7_;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                si32(_loc10_,_loc15_);
                                                _loc14_ = 0;
                                                if(_loc10_ != 0)
                                                {
                                                   var _loc8_:*;
                                                   si32(_loc8_ += 1,_loc3_ + 12);
                                                   _loc14_ = 0;
                                                   if(li8(_loc8_ = li32(_loc3_ + 12)) == 69)
                                                   {
                                                      _loc14_ = li32(_loc4_ - 4);
                                                   }
                                                   §§goto(addr2106);
                                                }
                                                addr2106:
                                                eax = _loc14_;
                                                _loc2_ = _loc4_;
                                                ESP = _loc2_;
                                                return;
                                                §§goto(addr2106);
                                             }
                                             else
                                             {
                                                addr355:
                                                _loc2_ -= 16;
                                                si32(_loc3_,_loc2_);
                                                ESP = _loc2_;
                                                F_d_unqualified_name();
                                                _loc2_ += 16;
                                                _loc14_ = int(eax);
                                                addr682:
                                                _loc11_ = 1;
                                                if(_loc10_ != 0)
                                                {
                                                   §§goto(addr688);
                                                }
                                             }
                                             if(_loc9_ != 83)
                                             {
                                                if((_loc12_ = li8(_loc12_ = li32(_loc3_ + 12))) != 69)
                                                {
                                                   if(_loc14_ == 0)
                                                   {
                                                      break;
                                                   }
                                                   _loc10_ = li32(_loc3_ + 32);
                                                   if(_loc10_ >= li32(_loc3_ + 36))
                                                   {
                                                      break;
                                                   }
                                                   si32(_loc14_,int((_loc12_ = li32(_loc3_ + 28)) + (_loc10_ << 2)));
                                                   si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 32)) + 1),_loc3_ + 32);
                                                }
                                             }
                                             continue;
                                          }
                                          if(_loc9_ != 76)
                                          {
                                             if(_loc9_ != 83)
                                             {
                                                if(_loc9_ != 84)
                                                {
                                                   §§goto(addr348);
                                                }
                                                else
                                                {
                                                   si32(_loc11_ = int(_loc13_ + 1),_loc3_ + 12);
                                                   _loc1_ = li8(_loc13_ + 1);
                                                   _loc14_ = 0;
                                                   if(_loc1_ != 110)
                                                   {
                                                      _loc5_ = _loc14_;
                                                      if(_loc1_ == 95)
                                                      {
                                                         si32(_loc12_ = int(_loc13_ + 2),_loc3_ + 12);
                                                         _loc11_ = 0;
                                                         addr604:
                                                         si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 40)) + 1),_loc3_ + 40);
                                                         _loc5_ = li32(_loc3_ + 20);
                                                         _loc12_ = li32(_loc3_ + 24);
                                                         _loc14_ = 0;
                                                         if(_loc5_ < _loc12_)
                                                         {
                                                            _loc13_ = li32(_loc3_ + 16);
                                                            si32(_loc12_ = int(_loc5_ + 1),_loc3_ + 20);
                                                            _loc1_ = int(_loc5_ * 12);
                                                            _loc5_ = int(_loc13_ + _loc1_);
                                                            _loc14_ = 0;
                                                            if(_loc5_ != 0)
                                                            {
                                                               _loc12_ = int(_loc13_ + _loc1_);
                                                               si32(5,_loc12_);
                                                               si32(_loc11_,_loc12_ + 4);
                                                               _loc14_ = _loc5_;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr682);
                                                   }
                                                   else
                                                   {
                                                      si32(_loc11_ = int(_loc13_ + 2),_loc3_ + 12);
                                                      _loc1_ = li8(_loc13_ + 2);
                                                      _loc5_ = 1;
                                                   }
                                                   _loc12_ = (_loc12_ = int(_loc1_ + -48)) & 255;
                                                   _loc13_ = _loc14_;
                                                   if(uint(_loc12_) <= 9)
                                                   {
                                                      do
                                                      {
                                                         si32(_loc12_ = int(_loc11_ + 1),_loc3_ + 12);
                                                         _loc8_ = int(_loc13_ * 10);
                                                         var _loc6_:* = (_loc6_ = _loc1_ << 24) >> 24;
                                                         _loc13_ = int((_loc8_ += _loc6_) + -48);
                                                         _loc1_ = li8(_loc11_ + 1);
                                                         _loc8_ = (_loc8_ = int(_loc1_ + -48)) & 255;
                                                         _loc11_ = _loc12_;
                                                      }
                                                      while(uint(_loc8_) < 10);
                                                      
                                                   }
                                                   if(_loc5_ != _loc14_)
                                                   {
                                                      _loc13_ = int(0 - _loc13_);
                                                   }
                                                   if(_loc13_ >= 0)
                                                   {
                                                      si32(_loc12_ = int(_loc11_ + 1),_loc3_ + 12);
                                                      _loc14_ = 0;
                                                      if((_loc1_ & 255) == 95)
                                                      {
                                                         _loc11_ = int(_loc13_ + 1);
                                                         §§goto(addr604);
                                                      }
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                _loc2_ -= 16;
                                                si32(1,_loc2_ + 4);
                                                si32(_loc3_,_loc2_);
                                                ESP = _loc2_;
                                                F_d_substitution();
                                                _loc2_ += 16;
                                                _loc14_ = int(eax);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr355);
                                          }
                                          §§goto(addr355);
                                       }
                                    }
                                    §§goto(addr355);
                                 }
                                 si32(_loc14_ = 0,_loc15_);
                              }
                              §§goto(addr348);
                           }
                        }
                     }
                     si32(_loc12_ = int(_loc13_ + 1),_loc3_ + 12);
                     if(_loc11_ != 86)
                     {
                        if(_loc11_ == 114)
                        {
                           si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 48)) + 9),_loc3_ + 48);
                           _loc10_ = 25;
                        }
                        else
                        {
                           si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 48)) + 6),_loc3_ + 48);
                           _loc10_ = 27;
                        }
                     }
                     else
                     {
                        si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 48)) + 9),_loc3_ + 48);
                        _loc10_ = 26;
                     }
                     _loc9_ = li32(_loc3_ + 20);
                     _loc12_ = li32(_loc3_ + 24);
                     if(_loc9_ >= _loc12_)
                     {
                        break;
                     }
                     si32(_loc8_ = int(_loc9_ + 1),_loc3_ + 20);
                     if((_loc9_ = int(li32(_loc3_ + 16) + int(_loc9_ * 12))) == 0)
                     {
                        break;
                     }
                     si32(_loc10_,_loc9_);
                     si32(_loc14_,_loc9_ + 4);
                     si32(_loc14_,_loc9_ + 8);
                     si32(_loc9_,_loc15_);
                     _loc15_ = int(_loc9_ + 4);
                     _loc13_ = li32(_loc3_ + 12);
                  }
                  si32(_loc14_ = 0,_loc15_);
               }
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_unqualified_name();
            _loc2_ += 16;
            _loc14_ = int(eax);
         }
      }
      else if(_loc14_ != 83)
      {
         if(_loc14_ != 90)
         {
            §§goto(addr1920);
         }
         else
         {
            si32(_loc12_ = int(_loc15_ + 1),_loc3_ + 12);
            _loc14_ = 0;
            if((_loc14_ & 255) == 90)
            {
               _loc2_ -= 16;
               si32(_loc14_ = 0,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               F_d_encoding();
               _loc2_ += 16;
               _loc15_ = int(eax);
               si32(_loc10_ = int(_loc11_ + 1),_loc3_ + 12);
               if(li8(_loc11_ = li32(_loc3_ + 12)) == 69)
               {
                  if((_loc12_ = li8(_loc10_)) == 115)
                  {
                     si32(_loc12_ = int(_loc11_ + 2),_loc3_ + 12);
                     if((_loc12_ = li8(_loc11_ + 2)) == 95)
                     {
                        si32(_loc13_ = int(_loc11_ + 3),_loc3_ + 12);
                        _loc9_ = li8(_loc11_ + 3);
                        _loc10_ = _loc14_ = 0;
                        if(_loc9_ == 110)
                        {
                           si32(_loc13_ = int(_loc11_ + 4),_loc3_ + 12);
                           _loc9_ = li8(_loc11_ + 4);
                           _loc10_ = 1;
                        }
                        _loc12_ = (_loc12_ = int(_loc9_ + -48)) & 255;
                        _loc11_ = _loc14_;
                        if(uint(_loc12_) <= 9)
                        {
                           _loc13_ += 1;
                           _loc11_ = 0;
                           do
                           {
                              si32(_loc13_,_loc3_ + 12);
                              _loc12_ = int(_loc11_ * 10);
                              _loc8_ = (_loc8_ = _loc9_ << 24) >> 24;
                              _loc11_ = int((_loc12_ += _loc8_) + -48);
                              _loc12_ = int(_loc13_ + 1);
                              _loc8_ = (_loc8_ = int((_loc9_ = li8(_loc13_)) + -48)) & 255;
                              _loc13_ = _loc12_;
                           }
                           while(uint(_loc8_) < 10);
                           
                        }
                        if(_loc10_ != _loc14_)
                        {
                           _loc11_ = int(0 - _loc11_);
                        }
                        if(_loc11_ >= 0)
                        {
                        }
                        §§goto(addr348);
                     }
                     _loc10_ = li32(_loc3_ + 20);
                     _loc12_ = li32(_loc3_ + 24);
                     _loc14_ = 0;
                     if(_loc10_ < _loc12_)
                     {
                        si32(_loc8_ = int(_loc10_ + 1),_loc3_ + 20);
                        _loc9_ = int(li32(_loc3_ + 16) + int(_loc10_ * 12));
                        _loc14_ = 0;
                        if(_loc9_ != 0)
                        {
                           si32(_loc14_ = 0,_loc9_);
                           si32(L__2E_str135,_loc9_ + 4);
                           si32(14,_loc9_ + 8);
                           if(_loc15_ != 0)
                           {
                              _loc13_ = li32(_loc3_ + 20);
                              _loc14_ = 0;
                              if(_loc13_ < li32(_loc3_ + 24))
                              {
                                 _loc10_ = li32(_loc3_ + 16);
                                 si32(_loc12_ = int(_loc13_ + 1),_loc3_ + 20);
                                 _loc3_ = int(_loc13_ * 12);
                                 _loc13_ = int(_loc10_ + _loc3_);
                                 _loc14_ = 0;
                                 if(_loc13_ != 0)
                                 {
                                    _loc12_ = int(_loc10_ + _loc3_);
                                    si32(2,_loc12_);
                                    si32(_loc15_,_loc12_ + 4);
                                    si32(_loc9_,_loc12_ + 8);
                                    _loc14_ = _loc13_;
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc2_ -= 16;
                     si32(_loc3_,_loc2_);
                     ESP = _loc2_;
                     F_d_name();
                     _loc2_ += 16;
                     _loc10_ = int(eax);
                     if((_loc12_ = li8(_loc11_ = li32(_loc3_ + 12))) == 95)
                     {
                        si32(_loc5_ = int(_loc11_ + 1),_loc3_ + 12);
                        _loc13_ = li8(_loc11_ + 1);
                        _loc9_ = _loc14_ = 0;
                        if(_loc13_ == 110)
                        {
                           si32(_loc5_ = int(_loc11_ + 2),_loc3_ + 12);
                           _loc13_ = li8(_loc11_ + 2);
                           _loc9_ = 1;
                        }
                        _loc12_ = (_loc12_ = int(_loc13_ + -48)) & 255;
                        _loc11_ = _loc14_;
                        if(uint(_loc12_) <= 9)
                        {
                           _loc5_ += 1;
                           _loc11_ = 0;
                           do
                           {
                              si32(_loc5_,_loc3_ + 12);
                              _loc12_ = int(_loc11_ * 10);
                              _loc8_ = (_loc8_ = _loc13_ << 24) >> 24;
                              _loc11_ = int((_loc12_ += _loc8_) + -48);
                              _loc12_ = int(_loc5_ + 1);
                              _loc8_ = (_loc8_ = int((_loc13_ = li8(_loc5_)) + -48)) & 255;
                              _loc5_ = _loc12_;
                           }
                           while(uint(_loc8_) < 10);
                           
                        }
                        if(_loc9_ != _loc14_)
                        {
                           _loc11_ = int(0 - _loc11_);
                        }
                        if(_loc11_ >= 0)
                        {
                        }
                        §§goto(addr348);
                     }
                     _loc14_ = 0;
                     if(_loc15_ != 0)
                     {
                        if(_loc10_ != 0)
                        {
                           _loc13_ = li32(_loc3_ + 20);
                           _loc14_ = 0;
                           if(_loc13_ < li32(_loc3_ + 24))
                           {
                              _loc9_ = li32(_loc3_ + 16);
                              si32(_loc12_ = int(_loc13_ + 1),_loc3_ + 20);
                              _loc3_ = int(_loc13_ * 12);
                              _loc13_ = int(_loc9_ + _loc3_);
                              _loc14_ = 0;
                              if(_loc13_ != 0)
                              {
                                 _loc12_ = int(_loc9_ + _loc3_);
                                 si32(2,_loc12_);
                                 si32(_loc15_,_loc12_ + 4);
                                 si32(_loc10_,_loc12_ + 8);
                                 _loc14_ = _loc13_;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      else
      {
         if((_loc12_ = li8(_loc15_ + 1)) != 116)
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 4);
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_substitution();
            _loc10_ = 1;
            _loc2_ += 16;
            _loc15_ = int(eax);
         }
         else
         {
            si32(_loc12_ = int(_loc15_ + 2),_loc3_ + 12);
            _loc9_ = li32(_loc3_ + 20);
            _loc14_ = _loc10_ = 0;
            if(_loc9_ < li32(_loc3_ + 24))
            {
               _loc15_ = li32(_loc3_ + 16);
               si32(_loc12_ = int(_loc9_ + 1),_loc3_ + 20);
               _loc9_ *= 12;
               _loc13_ = int(_loc15_ + _loc9_);
               _loc14_ = 0;
               if(_loc13_ != 0)
               {
                  _loc12_ = int(_loc15_ + _loc9_);
                  si32(0,_loc12_);
                  si32(L__2E_str622,_loc12_ + 4);
                  si32(3,_loc12_ + 8);
                  _loc14_ = _loc13_;
               }
            }
            _loc2_ -= 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_unqualified_name();
            _loc2_ += 16;
            _loc9_ = int(eax);
            _loc15_ = _loc10_;
            if(_loc14_ != 0)
            {
               _loc15_ = _loc10_;
               if(_loc9_ != 0)
               {
                  _loc11_ = li32(_loc3_ + 20);
                  _loc15_ = 0;
                  if(_loc11_ < li32(_loc3_ + 24))
                  {
                     _loc13_ = li32(_loc3_ + 16);
                     si32(_loc12_ = int(_loc11_ + 1),_loc3_ + 20);
                     _loc11_ *= 12;
                     _loc5_ = int(_loc13_ + _loc11_);
                     _loc15_ = 0;
                     if(_loc5_ != 0)
                     {
                        _loc12_ = int(_loc13_ + _loc11_);
                        si32(1,_loc12_);
                        si32(_loc14_,_loc12_ + 4);
                        si32(_loc9_,_loc12_ + 8);
                        _loc15_ = _loc5_;
                     }
                  }
               }
            }
            si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 48)) + 3),_loc3_ + 48);
         }
         _loc12_ = li8(_loc12_ = li32(_loc3_ + 12));
         _loc14_ = _loc15_;
         if(_loc12_ == 73)
         {
            _loc9_ = 1;
            if(_loc15_ != 0)
            {
               _loc9_ = 0;
            }
            if(_loc10_ == 0)
            {
               _loc14_ = 0;
               if(_loc15_ != 0)
               {
                  _loc10_ = li32(_loc3_ + 32);
                  _loc14_ = 0;
                  if(_loc10_ < li32(_loc3_ + 36))
                  {
                     si32(_loc15_,int((_loc8_ = li32(_loc3_ + 28)) + (_loc10_ << 2)));
                     si32(_loc12_ = int((_loc12_ = li32(_loc3_ + 32)) + 1),_loc3_ + 32);
                     _loc9_ = 0;
                  }
               }
               §§goto(addr348);
            }
            _loc2_ -= 16;
            si32(_loc3_,_loc2_);
            ESP = _loc2_;
            F_d_template_args();
            _loc14_ = 0;
            _loc2_ += 16;
            _loc10_ = int(eax);
            if(_loc9_ == 0)
            {
               if(_loc10_ != 0)
               {
                  _loc13_ = li32(_loc3_ + 20);
                  _loc14_ = 0;
                  if(_loc13_ < li32(_loc3_ + 24))
                  {
                     _loc9_ = li32(_loc3_ + 16);
                     si32(_loc12_ = int(_loc13_ + 1),_loc3_ + 20);
                     _loc13_ *= 12;
                     _loc3_ = int(_loc9_ + _loc13_);
                     _loc14_ = 0;
                     if(_loc3_ != 0)
                     {
                        _loc12_ = int(_loc9_ + _loc13_);
                        si32(4,_loc12_);
                        si32(_loc15_,_loc12_ + 4);
                        si32(_loc10_,_loc12_ + 8);
                        _loc14_ = _loc3_;
                     }
                  }
               }
            }
         }
      }
      §§goto(addr348);
   }
}
