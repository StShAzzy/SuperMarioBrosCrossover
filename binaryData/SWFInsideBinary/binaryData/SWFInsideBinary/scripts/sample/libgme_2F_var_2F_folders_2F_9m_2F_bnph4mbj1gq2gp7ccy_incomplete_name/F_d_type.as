package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_type() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      if((_loc11_ = li8(_loc12_ = li32(_loc1_ + 12))) != 75)
      {
         if(_loc11_ != 86)
         {
            if(_loc11_ == 114)
            {
               addr52:
               _loc10_ = int(_loc3_ - 8);
               _loc9_ = 0;
               while(true)
               {
                  if((_loc7_ = _loc11_ & 255) != 75)
                  {
                     if(_loc7_ != 86)
                     {
                        if(_loc7_ != 114)
                        {
                           if(_loc10_ != 0)
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_type();
                              _loc2_ += 16;
                              var _loc8_:*;
                              si32(_loc8_ = int(eax),_loc10_);
                              _loc9_ = 0;
                              if((_loc10_ = li32(_loc3_ - 8)) != 0)
                              {
                                 _loc12_ = li32(_loc1_ + 32);
                                 _loc9_ = 0;
                                 if(_loc12_ < li32(_loc1_ + 36))
                                 {
                                    si32(_loc10_,int((_loc8_ = li32(_loc1_ + 28)) + (_loc12_ << 2)));
                                    si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 32)) + 1),_loc1_ + 32);
                                    _loc9_ = li32(_loc3_ - 8);
                                 }
                              }
                           }
                           §§goto(addr2830);
                        }
                     }
                  }
                  si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                  if(_loc7_ != 86)
                  {
                     if(_loc7_ == 114)
                     {
                        si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 9),_loc1_ + 48);
                        _loc12_ = 22;
                     }
                     else
                     {
                        si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 6),_loc1_ + 48);
                        _loc12_ = 24;
                     }
                  }
                  else
                  {
                     si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 9),_loc1_ + 48);
                     _loc12_ = 23;
                  }
                  _loc7_ = li32(_loc1_ + 20);
                  _loc8_ = li32(_loc1_ + 24);
                  if(_loc7_ >= _loc8_)
                  {
                     break;
                  }
                  var _loc6_:*;
                  si32(_loc6_ = int(_loc7_ + 1),_loc1_ + 20);
                  if((_loc7_ = int(li32(_loc1_ + 16) + int(_loc7_ * 12))) == 0)
                  {
                     break;
                  }
                  si32(_loc12_,_loc7_);
                  si32(_loc9_,_loc7_ + 4);
                  si32(_loc9_,_loc7_ + 8);
                  si32(_loc7_,_loc10_);
                  _loc10_ = int(_loc7_ + 4);
                  _loc11_ = li8(_loc12_ = li32(_loc1_ + 12));
               }
               si32(_loc9_ = 0,_loc10_);
            }
            else
            {
               _loc10_ = (_loc8_ = _loc11_ << 24) >> 24;
               _loc9_ = 0;
               if(_loc10_ <= 82)
               {
                  if(_loc10_ <= 70)
                  {
                     if(_loc10_ <= 66)
                     {
                        if((uint(_loc8_ = int(_loc10_ + -48))) >= 10)
                        {
                           if(_loc10_ == 65)
                           {
                              si32(_loc7_ = int(_loc12_ + 1),_loc1_ + 12);
                              _loc10_ = 0;
                              if(_loc11_ == 65)
                              {
                                 _loc10_ = li8(_loc7_);
                                 _loc9_ = 0;
                                 if(_loc10_ != 95)
                                 {
                                    if((uint(_loc8_ = (_loc8_ = int(_loc10_ + -48)) & 255)) <= 9)
                                    {
                                       _loc10_ = int(_loc12_ + 2);
                                       _loc11_ = 0;
                                       do
                                       {
                                          si32(_loc10_,_loc1_ + 12);
                                          _loc11_ += -1;
                                          _loc12_ = int(_loc10_ + 1);
                                          _loc8_ = (_loc8_ = int((_loc8_ = li8(_loc10_)) + -48)) & 255;
                                          _loc10_ = _loc12_;
                                       }
                                       while(uint(_loc8_) < 10);
                                       
                                       _loc9_ = li32(_loc1_ + 20);
                                       _loc10_ = 0;
                                       if(_loc9_ < li32(_loc1_ + 24))
                                       {
                                          si32(_loc6_ = int(_loc9_ + 1),_loc1_ + 20);
                                          _loc9_ = int(li32(_loc1_ + 16) + int(_loc9_ * 12));
                                          _loc10_ = 0;
                                          if(_loc9_ != 0)
                                          {
                                             if(_loc7_ != 0)
                                             {
                                                if(_loc11_ != 0)
                                                {
                                                   si32(_loc10_ = 0,_loc9_);
                                                   si32(_loc7_,_loc9_ + 4);
                                                   si32(int((_loc8_ = int(_loc12_ + -1)) - _loc7_),_loc9_ + 8);
                                                   if(_loc9_ != 0)
                                                   {
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    else
                                    {
                                       _loc2_ -= 16;
                                       si32(_loc1_,_loc2_);
                                       ESP = _loc2_;
                                       F_d_expression();
                                       _loc10_ = 0;
                                       _loc2_ += 16;
                                       if((_loc9_ = int(eax)) != 0)
                                       {
                                       }
                                    }
                                    §§goto(addr1112);
                                 }
                                 _loc8_ = li8(_loc6_ = li32(_loc1_ + 12));
                                 si32(_loc6_ += 1,_loc1_ + 12);
                                 _loc10_ = 0;
                                 if(_loc8_ == 95)
                                 {
                                    _loc2_ -= 16;
                                    si32(_loc1_,_loc2_);
                                    ESP = _loc2_;
                                    F_d_type();
                                    _loc10_ = 0;
                                    _loc2_ += 16;
                                    if((_loc7_ = int(eax)) != 0)
                                    {
                                       _loc11_ = li32(_loc1_ + 20);
                                       _loc10_ = 0;
                                       if(_loc11_ < li32(_loc1_ + 24))
                                       {
                                          _loc12_ = li32(_loc1_ + 16);
                                          si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                                          _loc5_ = _loc11_ * 12;
                                          _loc11_ = int(_loc12_ + _loc5_);
                                          _loc10_ = 0;
                                          if(_loc11_ != 0)
                                          {
                                             _loc8_ = int(_loc12_ + _loc5_);
                                             si32(36,_loc8_);
                                             si32(_loc9_,_loc8_ + 4);
                                             si32(_loc7_,_loc8_ + 8);
                                             _loc10_ = _loc11_;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr1112:
                              si32(_loc10_,_loc3_ - 8);
                              _loc9_ = 0;
                              if(_loc10_ != 0)
                              {
                                 addr2778:
                                 _loc12_ = li32(_loc1_ + 32);
                                 _loc8_ = li32(_loc1_ + 36);
                                 _loc9_ = 0;
                                 if(_loc12_ < _loc8_)
                                 {
                                    si32(_loc10_,int((_loc8_ = li32(_loc1_ + 28)) + (_loc12_ << 2)));
                                    si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 32)) + 1),_loc1_ + 32);
                                    _loc9_ = li32(_loc3_ - 8);
                                 }
                              }
                           }
                           §§goto(addr2830);
                        }
                        else
                        {
                           addr777:
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_name();
                           _loc2_ += 16;
                           si32(_loc10_ = int(eax),_loc3_ - 8);
                        }
                     }
                     else if(_loc10_ != 67)
                     {
                        if(_loc10_ != 70)
                        {
                           §§goto(addr2830);
                        }
                        else
                        {
                           si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
                           _loc10_ = 0;
                           if(_loc11_ == 70)
                           {
                              if((_loc8_ = li8(_loc9_)) == 89)
                              {
                                 si32(_loc8_ = int(_loc12_ + 2),_loc1_ + 12);
                              }
                              _loc2_ -= 16;
                              si32(1,_loc2_ + 4);
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_bare_function_type();
                              _loc2_ += 16;
                              _loc10_ = int(eax);
                              _loc8_ = li8(_loc6_ = li32(_loc1_ + 12));
                              si32(_loc6_ += 1,_loc1_ + 12);
                              if(_loc8_ != 69)
                              {
                                 _loc10_ = 0;
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                        §§goto(addr2830);
                     }
                     else
                     {
                        si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_type();
                        _loc10_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc7_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc7_ < li32(_loc1_ + 24))
                           {
                              _loc9_ = li32(_loc1_ + 16);
                              si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                              _loc11_ = int(_loc7_ * 12);
                              _loc7_ = int(_loc9_ + _loc11_);
                              _loc10_ = 0;
                              if(_loc7_ != 0)
                              {
                                 _loc8_ = int(_loc9_ + _loc11_);
                                 si32(31,_loc8_);
                                 si32(_loc12_,_loc8_ + 4);
                                 si32(0,_loc8_ + 8);
                                 _loc10_ = _loc7_;
                              }
                           }
                        }
                        si32(_loc10_,_loc3_ - 8);
                     }
                  }
                  else if(_loc10_ <= 77)
                  {
                     if(_loc10_ != 71)
                     {
                        if(_loc10_ != 77)
                        {
                           §§goto(addr2830);
                        }
                        else
                        {
                           si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                           _loc10_ = 0;
                           if(_loc11_ == 77)
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_type();
                              _loc12_ = int(_loc3_ - 4);
                              _loc2_ += 16;
                              _loc9_ = int(eax);
                              _loc10_ = 0;
                              while(true)
                              {
                                 if((_loc11_ = li8(_loc7_ = li32(_loc1_ + 12))) != 75)
                                 {
                                    if(_loc11_ != 86)
                                    {
                                       if(_loc11_ != 114)
                                       {
                                          if(_loc12_ != 0)
                                          {
                                             _loc2_ -= 16;
                                             si32(_loc1_,_loc2_);
                                             ESP = _loc2_;
                                             F_d_type();
                                             _loc2_ += 16;
                                             si32(_loc10_ = int(eax),_loc12_);
                                             if((_loc8_ = int(_loc3_ - 4)) != _loc12_)
                                             {
                                                if((_loc8_ = li32(_loc10_)) != 35)
                                                {
                                                   _loc10_ = 0;
                                                   if((_loc12_ = li32(_loc3_ - 4)) != 0)
                                                   {
                                                      _loc7_ = li32(_loc1_ + 32);
                                                      _loc10_ = 0;
                                                      if(_loc7_ < li32(_loc1_ + 36))
                                                      {
                                                         si32(_loc12_,int((_loc8_ = li32(_loc1_ + 28)) + (_loc7_ << 2)));
                                                         si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 32)) + 1),_loc1_ + 32);
                                                      }
                                                      addr1512:
                                                      si32(_loc10_,_loc3_ - 8);
                                                      §§goto(addr1112);
                                                   }
                                                   §§goto(addr1512);
                                                }
                                             }
                                             _loc10_ = 0;
                                             if(_loc9_ != 0)
                                             {
                                                if((_loc12_ = li32(_loc3_ - 4)) != 0)
                                                {
                                                   _loc11_ = li32(_loc1_ + 20);
                                                   _loc10_ = 0;
                                                   if(_loc11_ < li32(_loc1_ + 24))
                                                   {
                                                      _loc7_ = li32(_loc1_ + 16);
                                                      si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                                                      _loc11_ *= 12;
                                                      _loc5_ = _loc7_ + _loc11_;
                                                      _loc10_ = 0;
                                                      if(_loc5_ != 0)
                                                      {
                                                         _loc8_ = int(_loc7_ + _loc11_);
                                                         si32(37,_loc8_);
                                                         si32(_loc9_,_loc8_ + 4);
                                                         si32(_loc12_,_loc8_ + 8);
                                                         _loc10_ = _loc5_;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          §§goto(addr1512);
                                       }
                                    }
                                 }
                                 si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 12);
                                 if(_loc11_ != 86)
                                 {
                                    if(_loc11_ == 114)
                                    {
                                       si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 9),_loc1_ + 48);
                                       _loc7_ = 25;
                                    }
                                    else
                                    {
                                       si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 6),_loc1_ + 48);
                                       _loc7_ = 27;
                                    }
                                 }
                                 else
                                 {
                                    si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 48)) + 9),_loc1_ + 48);
                                    _loc7_ = 26;
                                 }
                                 _loc11_ = li32(_loc1_ + 20);
                                 _loc8_ = li32(_loc1_ + 24);
                                 if(_loc11_ >= _loc8_)
                                 {
                                    break;
                                 }
                                 si32(_loc6_ = int(_loc11_ + 1),_loc1_ + 20);
                                 if((_loc11_ = int(li32(_loc1_ + 16) + int(_loc11_ * 12))) == 0)
                                 {
                                    break;
                                 }
                                 si32(_loc7_,_loc11_);
                                 si32(_loc10_,_loc11_ + 4);
                                 si32(_loc10_,_loc11_ + 8);
                                 si32(_loc11_,_loc12_);
                                 _loc12_ = int(_loc11_ + 4);
                              }
                              si32(_loc10_ = 0,_loc12_);
                           }
                           §§goto(addr1512);
                        }
                     }
                     else
                     {
                        si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_type();
                        _loc10_ = 0;
                        _loc2_ += 16;
                        if((_loc9_ = int(eax)) != 0)
                        {
                           _loc7_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc7_ < li32(_loc1_ + 24))
                           {
                              _loc12_ = li32(_loc1_ + 16);
                              si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                              _loc11_ = int(_loc7_ * 12);
                              _loc7_ = int(_loc12_ + _loc11_);
                              _loc10_ = 0;
                              if(_loc7_ != 0)
                              {
                                 _loc8_ = int(_loc12_ + _loc11_);
                                 si32(32,_loc8_);
                                 si32(_loc9_,_loc8_ + 4);
                                 si32(0,_loc8_ + 8);
                                 _loc10_ = _loc7_;
                              }
                           }
                        }
                        si32(_loc10_,_loc3_ - 8);
                     }
                  }
                  else if(_loc10_ != 78)
                  {
                     if(_loc10_ != 80)
                     {
                        if(_loc10_ != 82)
                        {
                           §§goto(addr2830);
                        }
                        else
                        {
                           si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_type();
                           _loc10_ = 0;
                           _loc2_ += 16;
                           if((_loc12_ = int(eax)) != 0)
                           {
                              _loc7_ = li32(_loc1_ + 20);
                              _loc10_ = 0;
                              if(_loc7_ < li32(_loc1_ + 24))
                              {
                                 _loc9_ = li32(_loc1_ + 16);
                                 si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                                 _loc7_ *= 12;
                                 _loc11_ = int(_loc9_ + _loc7_);
                                 _loc10_ = 0;
                                 if(_loc11_ != 0)
                                 {
                                    _loc8_ = int(_loc9_ + _loc7_);
                                    si32(30,_loc8_);
                                    si32(_loc12_,_loc8_ + 4);
                                    si32(0,_loc8_ + 8);
                                    _loc10_ = _loc11_;
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                        §§goto(addr2830);
                     }
                     else
                     {
                        si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_type();
                        _loc10_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc7_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc7_ < li32(_loc1_ + 24))
                           {
                              _loc9_ = li32(_loc1_ + 16);
                              si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                              _loc11_ = int(_loc7_ * 12);
                              _loc7_ = int(_loc9_ + _loc11_);
                              _loc10_ = 0;
                              if(_loc7_ != 0)
                              {
                                 _loc8_ = int(_loc9_ + _loc11_);
                                 si32(29,_loc8_);
                                 si32(_loc12_,_loc8_ + 4);
                                 si32(0,_loc8_ + 8);
                                 _loc10_ = _loc7_;
                              }
                           }
                        }
                        si32(_loc10_,_loc3_ - 8);
                     }
                  }
                  else
                  {
                     §§goto(addr777);
                  }
                  §§goto(addr1112);
               }
               else if(_loc10_ <= 96)
               {
                  if(_loc10_ <= 84)
                  {
                     if(_loc10_ != 83)
                     {
                        if(_loc10_ != 84)
                        {
                           §§goto(addr2830);
                        }
                        else
                        {
                           si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
                           _loc10_ = 0;
                           if(_loc11_ == 84)
                           {
                              _loc7_ = li8(_loc9_);
                              _loc10_ = 0;
                              if(_loc7_ != 110)
                              {
                                 _loc11_ = _loc10_;
                                 if(_loc7_ == 95)
                                 {
                                    si32(_loc9_ = int(_loc12_ + 2),_loc1_ + 12);
                                    _loc12_ = 0;
                                    addr1688:
                                    si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 40)) + 1),_loc1_ + 40);
                                    _loc11_ = li32(_loc1_ + 20);
                                    _loc8_ = li32(_loc1_ + 24);
                                    _loc10_ = 0;
                                    if(_loc11_ < _loc8_)
                                    {
                                       _loc7_ = li32(_loc1_ + 16);
                                       si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                                       _loc11_ *= 12;
                                       _loc5_ = _loc7_ + _loc11_;
                                       _loc10_ = 0;
                                       if(_loc5_ != 0)
                                       {
                                          _loc8_ = int(_loc7_ + _loc11_);
                                          si32(5,_loc8_);
                                          si32(_loc12_,_loc8_ + 4);
                                          _loc9_ = li32(_loc1_ + 12);
                                          _loc10_ = _loc5_;
                                          addr1771:
                                          si32(_loc10_,_loc3_ - 8);
                                          if((_loc8_ = li8(_loc9_)) == 73)
                                          {
                                             _loc9_ = 0;
                                             if(_loc10_ != 0)
                                             {
                                                _loc12_ = li32(_loc1_ + 32);
                                                _loc9_ = 0;
                                                if(_loc12_ < li32(_loc1_ + 36))
                                                {
                                                   si32(_loc10_,int((_loc6_ = li32(_loc1_ + 28)) + (_loc12_ << 2)));
                                                   si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 32)) + 1),_loc1_ + 32);
                                                   _loc7_ = li32(_loc3_ - 8);
                                                   _loc2_ -= 16;
                                                   si32(_loc1_,_loc2_);
                                                   ESP = _loc2_;
                                                   F_d_template_args();
                                                   _loc10_ = 0;
                                                   _loc2_ += 16;
                                                   _loc12_ = int(eax);
                                                   if(_loc7_ != 0)
                                                   {
                                                      if(_loc12_ != 0)
                                                      {
                                                         _loc11_ = li32(_loc1_ + 20);
                                                         _loc10_ = 0;
                                                         if(_loc11_ < li32(_loc1_ + 24))
                                                         {
                                                            _loc9_ = li32(_loc1_ + 16);
                                                            si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                                                            _loc5_ = _loc11_ * 12;
                                                            _loc11_ = int(_loc9_ + _loc5_);
                                                            _loc10_ = 0;
                                                            if(_loc11_ != 0)
                                                            {
                                                               _loc8_ = int(_loc9_ + _loc5_);
                                                               si32(4,_loc8_);
                                                               si32(_loc7_,_loc8_ + 4);
                                                               si32(_loc12_,_loc8_ + 8);
                                                               _loc10_ = _loc11_;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   si32(_loc10_,_loc3_ - 8);
                                                   §§goto(addr1112);
                                                }
                                             }
                                             §§goto(addr2830);
                                          }
                                          §§goto(addr1112);
                                       }
                                    }
                                 }
                                 §§goto(addr1771);
                              }
                              else
                              {
                                 si32(_loc9_ = int(_loc12_ + 2),_loc1_ + 12);
                                 _loc7_ = li8(_loc12_ + 2);
                                 _loc11_ = 1;
                              }
                              _loc8_ = (_loc8_ = int(_loc7_ + -48)) & 255;
                              _loc12_ = _loc10_;
                              if(uint(_loc8_) <= 9)
                              {
                                 do
                                 {
                                    si32(_loc8_ = int(_loc9_ + 1),_loc1_ + 12);
                                    _loc6_ = int(_loc12_ * 10);
                                    var _loc4_:* = (_loc4_ = _loc7_ << 24) >> 24;
                                    _loc12_ = int((_loc6_ += _loc4_) + -48);
                                    _loc6_ = (_loc6_ = int((_loc7_ = li8(_loc9_ + 1)) + -48)) & 255;
                                    _loc9_ = _loc8_;
                                 }
                                 while(uint(_loc6_) < 10);
                                 
                              }
                              if(_loc11_ != _loc10_)
                              {
                                 _loc12_ = int(0 - _loc12_);
                              }
                              if(_loc12_ >= 0)
                              {
                                 si32(_loc9_ += 1,_loc1_ + 12);
                                 _loc12_ += 1;
                                 _loc10_ = 0;
                                 if((_loc7_ & 255) == 95)
                                 {
                                    §§goto(addr1688);
                                 }
                              }
                           }
                           §§goto(addr1771);
                        }
                     }
                     else
                     {
                        if((uint(_loc8_ = (_loc8_ = int((_loc10_ = li8(_loc12_ + 1)) + -48)) & 255)) >= 10)
                        {
                           if((_loc8_ = _loc10_ & 255) != 95)
                           {
                              if((uint(_loc8_ = (_loc8_ = int(_loc10_ + -65)) & 255)) > 25)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_name();
                                 _loc2_ += 16;
                                 si32(_loc10_ = int(eax),_loc3_ - 8);
                                 _loc9_ = 0;
                                 if(_loc10_ != 0)
                                 {
                                    _loc9_ = _loc10_;
                                    if(li32(_loc10_) != 21)
                                    {
                                       §§goto(addr2778);
                                    }
                                 }
                              }
                              §§goto(addr2830);
                           }
                        }
                        _loc2_ -= 16;
                        si32(_loc10_ = 0,_loc2_ + 4);
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_substitution();
                        _loc2_ += 16;
                        si32(_loc9_ = int(eax),_loc3_ - 8);
                        if((_loc8_ = li8(_loc8_ = li32(_loc1_ + 12))) == 73)
                        {
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_template_args();
                           _loc2_ += 16;
                           _loc7_ = int(eax);
                           if(_loc9_ != 0)
                           {
                              if(_loc7_ != 0)
                              {
                                 _loc11_ = li32(_loc1_ + 20);
                                 _loc10_ = 0;
                                 if(_loc11_ < li32(_loc1_ + 24))
                                 {
                                    _loc12_ = li32(_loc1_ + 16);
                                    si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                                    _loc5_ = _loc11_ * 12;
                                    _loc11_ = int(_loc12_ + _loc5_);
                                    _loc10_ = 0;
                                    if(_loc11_ != 0)
                                    {
                                       _loc8_ = int(_loc12_ + _loc5_);
                                       si32(4,_loc8_);
                                       si32(_loc9_,_loc8_ + 4);
                                       si32(_loc7_,_loc8_ + 8);
                                       _loc10_ = _loc11_;
                                    }
                                 }
                              }
                           }
                           si32(_loc10_,_loc3_ - 8);
                        }
                        §§goto(addr2830);
                     }
                     §§goto(addr2830);
                  }
                  else if(_loc10_ != 85)
                  {
                     if(_loc10_ != 90)
                     {
                        §§goto(addr2830);
                     }
                     else
                     {
                        §§goto(addr777);
                     }
                  }
                  else
                  {
                     si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_source_name();
                     _loc2_ += 16;
                     si32(_loc8_ = int(eax),_loc3_ - 8);
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_d_type();
                     _loc10_ = 0;
                     _loc2_ += 16;
                     if((_loc9_ = int(eax)) != 0)
                     {
                        if((_loc12_ = li32(_loc3_ - 8)) != 0)
                        {
                           _loc11_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc11_ < li32(_loc1_ + 24))
                           {
                              _loc7_ = li32(_loc1_ + 16);
                              si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                              _loc5_ = _loc11_ * 12;
                              _loc11_ = int(_loc7_ + _loc5_);
                              _loc10_ = 0;
                              if(_loc11_ != 0)
                              {
                                 _loc8_ = int(_loc7_ + _loc5_);
                                 si32(28,_loc8_);
                                 si32(_loc9_,_loc8_ + 4);
                                 si32(_loc12_,_loc8_ + 8);
                                 _loc10_ = _loc11_;
                              }
                           }
                        }
                     }
                     si32(_loc10_,_loc3_ - 8);
                  }
                  §§goto(addr1112);
               }
               else if((uint(_loc7_ = int(_loc10_ + -97))) <= 25)
               {
                  if((_loc8_ = (_loc8_ = 1 << _loc7_) & 65829887) == 0)
                  {
                     if(_loc7_ == 20)
                     {
                        si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_source_name();
                        _loc10_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc7_ = li32(_loc1_ + 20);
                           _loc10_ = 0;
                           if(_loc7_ < li32(_loc1_ + 24))
                           {
                              _loc9_ = li32(_loc1_ + 16);
                              si32(_loc8_ = int(_loc7_ + 1),_loc1_ + 20);
                              _loc11_ = int(_loc7_ * 12);
                              _loc7_ = int(_loc9_ + _loc11_);
                              _loc10_ = 0;
                              if(_loc7_ != 0)
                              {
                                 _loc8_ = int(_loc9_ + _loc11_);
                                 si32(34,_loc8_);
                                 si32(_loc12_,_loc8_ + 4);
                                 si32(0,_loc8_ + 8);
                                 _loc10_ = _loc7_;
                              }
                           }
                        }
                        si32(_loc10_,_loc3_ - 8);
                        §§goto(addr1112);
                     }
                  }
                  else
                  {
                     _loc10_ = int((_loc8_ = int((_loc8_ = int(_loc10_ * 20)) + _cplus_demangle_builtin_types)) + -1940);
                     _loc9_ = 0;
                     if(_loc10_ != 0)
                     {
                        _loc11_ = li32(_loc1_ + 20);
                        _loc9_ = 0;
                        if(_loc11_ < li32(_loc1_ + 24))
                        {
                           _loc7_ = li32(_loc1_ + 16);
                           si32(_loc8_ = int(_loc11_ + 1),_loc1_ + 20);
                           _loc5_ = _loc11_ * 12;
                           _loc11_ = int(_loc7_ + _loc5_);
                           _loc9_ = 0;
                           if(_loc11_ != 0)
                           {
                              _loc8_ = int(_loc7_ + _loc5_);
                              si32(33,_loc8_);
                              si32(_loc10_,_loc8_ + 4);
                              _loc12_ = li32(_loc1_ + 12);
                              _loc9_ = _loc11_;
                           }
                        }
                     }
                     si32(_loc9_,_loc3_ - 8);
                     _loc8_ = li32(_loc1_ + 48);
                     si32(_loc8_ = int((_loc6_ = li32((_loc6_ = li32(_loc9_ + 4)) + 4)) + _loc8_),_loc1_ + 48);
                     si32(_loc8_ = int(_loc12_ + 1),_loc1_ + 12);
                  }
               }
            }
            addr2830:
            eax = _loc9_;
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
         }
      }
      §§goto(addr52);
   }
}
