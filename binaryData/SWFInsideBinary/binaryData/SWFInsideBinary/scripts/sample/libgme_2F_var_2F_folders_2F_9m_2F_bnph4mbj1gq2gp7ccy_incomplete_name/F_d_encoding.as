package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_encoding() : void
   {
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if((_loc11_ = li8(_loc12_ = li32(_loc1_ + 12))) != 71)
      {
         if(_loc11_ == 84)
         {
            addr43:
            var _loc9_:*;
            si32(_loc9_ = int((_loc10_ = li32(_loc1_ + 48)) + 20),_loc1_ + 48);
            _loc8_ = li8(_loc12_);
            si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
            if(_loc8_ != 71)
            {
               _loc11_ = 0;
               if(_loc8_ == 84)
               {
                  _loc7_ = si8(li8(_loc12_ + 1));
                  si32(_loc8_ = int(_loc12_ + 2),_loc1_ + 12);
                  _loc11_ = 0;
                  if(_loc7_ <= 83)
                  {
                     if(_loc7_ <= 72)
                     {
                        if(_loc7_ != 67)
                        {
                           if(_loc7_ == 70)
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_type();
                              _loc11_ = 0;
                              _loc2_ += 16;
                              if((_loc8_ = int(eax)) != 0)
                              {
                                 _loc10_ = li32(_loc1_ + 20);
                                 _loc11_ = 0;
                                 if(_loc10_ < li32(_loc1_ + 24))
                                 {
                                    _loc12_ = li32(_loc1_ + 16);
                                    si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                    _loc1_ = int(_loc10_ * 12);
                                    _loc10_ = int(_loc12_ + _loc1_);
                                    _loc11_ = 0;
                                    if(_loc10_ != 0)
                                    {
                                       _loc9_ = int(_loc12_ + _loc1_);
                                       si32(13,_loc9_);
                                       si32(_loc8_,_loc9_ + 4);
                                       si32(0,_loc9_ + 8);
                                       _loc11_ = _loc10_;
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
                           F_d_type();
                           _loc2_ += 16;
                           _loc12_ = int(eax);
                           _loc5_ = li8(_loc10_ = li32(_loc1_ + 12));
                           _loc8_ = _loc11_ = 0;
                           if(_loc5_ == 110)
                           {
                              si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 12);
                              _loc5_ = li8(_loc10_ + 1);
                              _loc8_ = 1;
                              _loc10_ = _loc9_;
                           }
                           _loc9_ = (_loc9_ = int(_loc5_ + -48)) & 255;
                           _loc7_ = _loc11_;
                           if(uint(_loc9_) <= 9)
                           {
                              do
                              {
                                 si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 12);
                                 var _loc6_:* = int(_loc7_ * 10);
                                 var _loc4_:* = (_loc4_ = _loc5_ << 24) >> 24;
                                 _loc7_ = int((_loc6_ += _loc4_) + -48);
                                 _loc6_ = (_loc6_ = int((_loc5_ = li8(_loc10_ + 1)) + -48)) & 255;
                                 _loc10_ = _loc9_;
                              }
                              while(uint(_loc6_) < 10);
                              
                           }
                           if(_loc8_ != _loc11_)
                           {
                              _loc7_ = int(0 - _loc7_);
                           }
                           if(_loc7_ >= 0)
                           {
                              si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 12);
                              _loc11_ = 0;
                              if((_loc5_ & 255) == 95)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_type();
                                 _loc2_ += 16;
                                 _loc8_ = int(eax);
                                 si32(_loc9_ = int((_loc9_ = li32(_loc1_ + 48)) + 5),_loc1_ + 48);
                                 _loc11_ = 0;
                                 if(_loc8_ != 0)
                                 {
                                    if(_loc12_ != 0)
                                    {
                                       _loc7_ = li32(_loc1_ + 20);
                                       _loc11_ = 0;
                                       if(_loc7_ < li32(_loc1_ + 24))
                                       {
                                          _loc10_ = li32(_loc1_ + 16);
                                          si32(_loc9_ = int(_loc7_ + 1),_loc1_ + 20);
                                          _loc1_ = int(_loc7_ * 12);
                                          _loc7_ = int(_loc10_ + _loc1_);
                                          _loc11_ = 0;
                                          if(_loc7_ != 0)
                                          {
                                             _loc9_ = int(_loc10_ + _loc1_);
                                             si32(10,_loc9_);
                                             si32(_loc8_,_loc9_ + 4);
                                             si32(_loc12_,_loc9_ + 8);
                                             _loc11_ = _loc7_;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else if(_loc7_ != 73)
                     {
                        if(_loc7_ != 74)
                        {
                           if(_loc7_ == 83)
                           {
                              _loc2_ -= 16;
                              si32(_loc1_,_loc2_);
                              ESP = _loc2_;
                              F_d_type();
                              _loc11_ = 0;
                              _loc2_ += 16;
                              if((_loc8_ = int(eax)) != 0)
                              {
                                 _loc10_ = li32(_loc1_ + 20);
                                 _loc11_ = 0;
                                 if(_loc10_ < li32(_loc1_ + 24))
                                 {
                                    _loc12_ = li32(_loc1_ + 16);
                                    si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                    _loc10_ *= 12;
                                    _loc1_ = int(_loc12_ + _loc10_);
                                    _loc11_ = 0;
                                    if(_loc1_ != 0)
                                    {
                                       _loc9_ = int(_loc12_ + _loc10_);
                                       si32(12,_loc9_);
                                       si32(_loc8_,_loc9_ + 4);
                                       si32(0,_loc9_ + 8);
                                       _loc11_ = _loc1_;
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
                           F_d_type();
                           _loc11_ = 0;
                           _loc2_ += 16;
                           if((_loc8_ = int(eax)) != 0)
                           {
                              _loc10_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc10_ < li32(_loc1_ + 24))
                              {
                                 _loc12_ = li32(_loc1_ + 16);
                                 si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                 _loc1_ = int(_loc10_ * 12);
                                 _loc10_ = int(_loc12_ + _loc1_);
                                 _loc11_ = 0;
                                 if(_loc10_ != 0)
                                 {
                                    _loc9_ = int(_loc12_ + _loc1_);
                                    si32(17,_loc9_);
                                    si32(_loc8_,_loc9_ + 4);
                                    si32(0,_loc9_ + 8);
                                    _loc11_ = _loc10_;
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
                        F_d_type();
                        _loc11_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc10_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc10_ < li32(_loc1_ + 24))
                           {
                              _loc8_ = li32(_loc1_ + 16);
                              si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                              _loc1_ = int(_loc10_ * 12);
                              _loc10_ = int(_loc8_ + _loc1_);
                              _loc11_ = 0;
                              if(_loc10_ != 0)
                              {
                                 _loc9_ = int(_loc8_ + _loc1_);
                                 si32(11,_loc9_);
                                 si32(_loc12_,_loc9_ + 4);
                                 si32(0,_loc9_ + 8);
                                 _loc11_ = _loc10_;
                              }
                           }
                        }
                     }
                  }
                  else if(_loc7_ <= 98)
                  {
                     if(_loc7_ != 84)
                     {
                        if(_loc7_ == 86)
                        {
                           si32(_loc9_ = int(_loc10_ + 15),_loc1_ + 48);
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_type();
                           _loc11_ = 0;
                           _loc2_ += 16;
                           if((_loc12_ = int(eax)) != 0)
                           {
                              _loc10_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc10_ < li32(_loc1_ + 24))
                              {
                                 _loc8_ = li32(_loc1_ + 16);
                                 si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                 _loc1_ = int(_loc10_ * 12);
                                 _loc10_ = int(_loc8_ + _loc1_);
                                 _loc11_ = 0;
                                 if(_loc10_ != 0)
                                 {
                                    _loc9_ = int(_loc8_ + _loc1_);
                                    si32(8,_loc9_);
                                    si32(_loc12_,_loc9_ + 4);
                                    si32(0,_loc9_ + 8);
                                    _loc11_ = _loc10_;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        si32(_loc9_ = int(_loc10_ + 10),_loc1_ + 48);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_type();
                        _loc11_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc10_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc10_ < li32(_loc1_ + 24))
                           {
                              _loc8_ = li32(_loc1_ + 16);
                              si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                              _loc1_ = int(_loc10_ * 12);
                              _loc10_ = int(_loc8_ + _loc1_);
                              _loc11_ = 0;
                              if(_loc10_ != 0)
                              {
                                 _loc9_ = int(_loc8_ + _loc1_);
                                 si32(9,_loc9_);
                                 si32(_loc12_,_loc9_ + 4);
                                 si32(0,_loc9_ + 8);
                                 _loc11_ = _loc10_;
                              }
                           }
                        }
                     }
                  }
                  else if(_loc7_ != 99)
                  {
                     if(_loc7_ != 104)
                     {
                        if(_loc7_ == 118)
                        {
                           if((_loc11_ = li8(_loc8_)) == 110)
                           {
                              si32(_loc8_ = int(_loc12_ + 3),_loc1_ + 12);
                              _loc11_ = li8(_loc12_ + 3);
                           }
                           if((uint(_loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255)) <= 9)
                           {
                              do
                              {
                                 si32(_loc9_ = int(_loc8_ + 1),_loc1_ + 12);
                                 _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                                 _loc8_ = _loc9_;
                              }
                              while(uint(_loc6_) < 10);
                              
                           }
                           si32(_loc12_ = int(_loc8_ + 1),_loc1_ + 12);
                           _loc9_ = _loc11_ & 255;
                           _loc11_ = 0;
                           if(_loc9_ == 95)
                           {
                              if((_loc11_ = li8(_loc12_)) == 110)
                              {
                                 si32(_loc12_ = int(_loc8_ + 2),_loc1_ + 12);
                                 _loc11_ = li8(_loc8_ + 2);
                              }
                              if((uint(_loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255)) <= 9)
                              {
                                 do
                                 {
                                    si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
                                    _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc12_ + 1)) + -48)) & 255;
                                    _loc12_ = _loc9_;
                                 }
                                 while(uint(_loc6_) < 10);
                                 
                              }
                              si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
                              _loc9_ = _loc11_ & 255;
                              _loc11_ = 0;
                              if(_loc9_ == 95)
                              {
                                 _loc2_ -= 16;
                                 si32(_loc11_ = 0,_loc2_ + 4);
                                 si32(_loc1_,_loc2_);
                                 ESP = _loc2_;
                                 F_d_encoding();
                                 _loc2_ += 16;
                                 if((_loc12_ = int(eax)) != 0)
                                 {
                                    _loc10_ = li32(_loc1_ + 20);
                                    _loc11_ = 0;
                                    if(_loc10_ < li32(_loc1_ + 24))
                                    {
                                       _loc8_ = li32(_loc1_ + 16);
                                       si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                       _loc10_ *= 12;
                                       _loc1_ = int(_loc8_ + _loc10_);
                                       _loc11_ = 0;
                                       if(_loc1_ != 0)
                                       {
                                          _loc9_ = int(_loc8_ + _loc10_);
                                          si32(15,_loc9_);
                                          si32(_loc12_,_loc9_ + 4);
                                          si32(0,_loc9_ + 8);
                                          _loc11_ = _loc1_;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        if((_loc11_ = li8(_loc8_)) == 110)
                        {
                           si32(_loc8_ = int(_loc12_ + 3),_loc1_ + 12);
                           _loc11_ = li8(_loc12_ + 3);
                        }
                        if((uint(_loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255)) <= 9)
                        {
                           do
                           {
                              si32(_loc9_ = int(_loc8_ + 1),_loc1_ + 12);
                              _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                              _loc8_ = _loc9_;
                           }
                           while(uint(_loc6_) < 10);
                           
                        }
                        si32(_loc9_ = int(_loc8_ + 1),_loc1_ + 12);
                        _loc9_ = _loc11_ & 255;
                        _loc11_ = 0;
                        if(_loc9_ == 95)
                        {
                           _loc2_ -= 16;
                           si32(_loc11_ = 0,_loc2_ + 4);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F_d_encoding();
                           _loc2_ += 16;
                           if((_loc8_ = int(eax)) != 0)
                           {
                              _loc10_ = li32(_loc1_ + 20);
                              _loc11_ = 0;
                              if(_loc10_ < li32(_loc1_ + 24))
                              {
                                 _loc12_ = li32(_loc1_ + 16);
                                 si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                 _loc10_ *= 12;
                                 _loc1_ = int(_loc12_ + _loc10_);
                                 _loc11_ = 0;
                                 if(_loc1_ != 0)
                                 {
                                    _loc9_ = int(_loc12_ + _loc10_);
                                    si32(14,_loc9_);
                                    si32(_loc8_,_loc9_ + 4);
                                    si32(0,_loc9_ + 8);
                                    _loc11_ = _loc1_;
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     _loc10_ = si8(li8(_loc12_ + 2));
                     si32(_loc8_ = int(_loc12_ + 3),_loc1_ + 12);
                     if(_loc10_ != 118)
                     {
                        _loc11_ = 0;
                        if(_loc10_ == 104)
                        {
                           if((_loc11_ = li8(_loc8_)) == 110)
                           {
                              si32(_loc8_ = int(_loc12_ + 4),_loc1_ + 12);
                              _loc11_ = li8(_loc12_ + 4);
                           }
                           _loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255;
                           _loc12_ = _loc8_;
                           if(uint(_loc9_) <= 9)
                           {
                              while(true)
                              {
                                 si32(_loc12_ = int(_loc8_ + 1),_loc1_ + 12);
                                 _loc9_ = (_loc9_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                                 _loc8_ = _loc12_;
                                 if(uint(_loc9_) <= 9)
                                 {
                                    continue;
                                 }
                              }
                           }
                           addr1280:
                           si32(_loc9_ = int(_loc12_ + 1),_loc1_ + 12);
                           _loc9_ = _loc11_ & 255;
                           _loc11_ = 0;
                           if(_loc9_ == 95)
                           {
                              _loc10_ = si8(li8(_loc12_ + 1));
                              si32(_loc8_ = int(_loc12_ + 2),_loc1_ + 12);
                              if(_loc10_ != 118)
                              {
                                 _loc11_ = 0;
                                 if(_loc10_ == 104)
                                 {
                                    if((_loc11_ = li8(_loc8_)) == 110)
                                    {
                                       si32(_loc8_ = int(_loc12_ + 3),_loc1_ + 12);
                                       _loc11_ = li8(_loc12_ + 3);
                                    }
                                    _loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255;
                                    _loc10_ = _loc8_;
                                    if(uint(_loc9_) <= 9)
                                    {
                                       while(true)
                                       {
                                          si32(_loc10_ = int(_loc8_ + 1),_loc1_ + 12);
                                          _loc9_ = (_loc9_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                                          _loc8_ = _loc10_;
                                          if(uint(_loc9_) <= 9)
                                          {
                                             continue;
                                          }
                                       }
                                    }
                                    addr1555:
                                    si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 12);
                                    _loc9_ = _loc11_ & 255;
                                    _loc11_ = 0;
                                    if(_loc9_ == 95)
                                    {
                                       _loc2_ -= 16;
                                       si32(_loc11_ = 0,_loc2_ + 4);
                                       si32(_loc1_,_loc2_);
                                       ESP = _loc2_;
                                       F_d_encoding();
                                       _loc2_ += 16;
                                       if((_loc8_ = int(eax)) != 0)
                                       {
                                          _loc10_ = li32(_loc1_ + 20);
                                          _loc11_ = 0;
                                          if(_loc10_ < li32(_loc1_ + 24))
                                          {
                                             _loc12_ = li32(_loc1_ + 16);
                                             si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                                             _loc10_ *= 12;
                                             _loc1_ = int(_loc12_ + _loc10_);
                                             _loc11_ = 0;
                                             if(_loc1_ != 0)
                                             {
                                                _loc9_ = int(_loc12_ + _loc10_);
                                                si32(16,_loc9_);
                                                si32(_loc8_,_loc9_ + 4);
                                                si32(0,_loc9_ + 8);
                                                _loc11_ = _loc1_;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 if((_loc11_ = li8(_loc8_)) == 110)
                                 {
                                    si32(_loc8_ = int(_loc12_ + 3),_loc1_ + 12);
                                    _loc11_ = li8(_loc12_ + 3);
                                 }
                                 if((uint(_loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255)) <= 9)
                                 {
                                    do
                                    {
                                       si32(_loc9_ = int(_loc8_ + 1),_loc1_ + 12);
                                       _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                                       _loc8_ = _loc9_;
                                    }
                                    while(uint(_loc6_) < 10);
                                    
                                 }
                                 si32(_loc12_ = int(_loc8_ + 1),_loc1_ + 12);
                                 _loc9_ = _loc11_ & 255;
                                 _loc11_ = 0;
                                 if(_loc9_ == 95)
                                 {
                                    if((_loc11_ = li8(_loc12_)) == 110)
                                    {
                                       si32(_loc12_ = int(_loc8_ + 2),_loc1_ + 12);
                                       _loc11_ = li8(_loc8_ + 2);
                                    }
                                    _loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255;
                                    _loc10_ = _loc12_;
                                    if(uint(_loc9_) <= 9)
                                    {
                                       do
                                       {
                                          si32(_loc10_ = int(_loc12_ + 1),_loc1_ + 12);
                                          _loc9_ = (_loc9_ = int((_loc11_ = li8(_loc12_ + 1)) + -48)) & 255;
                                          _loc12_ = _loc10_;
                                       }
                                       while(uint(_loc9_) < 10);
                                       
                                    }
                                    §§goto(addr1555);
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        if((_loc11_ = li8(_loc8_)) == 110)
                        {
                           si32(_loc8_ = int(_loc12_ + 4),_loc1_ + 12);
                           _loc11_ = li8(_loc12_ + 4);
                        }
                        if((uint(_loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255)) <= 9)
                        {
                           do
                           {
                              si32(_loc9_ = int(_loc8_ + 1),_loc1_ + 12);
                              _loc6_ = (_loc6_ = int((_loc11_ = li8(_loc8_ + 1)) + -48)) & 255;
                              _loc8_ = _loc9_;
                           }
                           while(uint(_loc6_) < 10);
                           
                        }
                        si32(_loc10_ = int(_loc8_ + 1),_loc1_ + 12);
                        _loc9_ = _loc11_ & 255;
                        _loc11_ = 0;
                        if(_loc9_ == 95)
                        {
                           if((_loc11_ = li8(_loc10_)) == 110)
                           {
                              si32(_loc10_ = int(_loc8_ + 2),_loc1_ + 12);
                              _loc11_ = li8(_loc8_ + 2);
                           }
                           _loc9_ = (_loc9_ = int(_loc11_ + -48)) & 255;
                           _loc12_ = _loc10_;
                           if(uint(_loc9_) <= 9)
                           {
                              do
                              {
                                 si32(_loc12_ = int(_loc10_ + 1),_loc1_ + 12);
                                 _loc9_ = (_loc9_ = int((_loc11_ = li8(_loc10_ + 1)) + -48)) & 255;
                                 _loc10_ = _loc12_;
                              }
                              while(uint(_loc9_) < 10);
                              
                           }
                           §§goto(addr1280);
                        }
                     }
                  }
               }
            }
            else
            {
               _loc8_ = si8(li8(_loc12_ + 1));
               si32(_loc9_ = int(_loc12_ + 2),_loc1_ + 12);
               if(_loc8_ != 65)
               {
                  if(_loc8_ != 82)
                  {
                     _loc11_ = 0;
                     if(_loc8_ == 86)
                     {
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_);
                        ESP = _loc2_;
                        F_d_name();
                        _loc11_ = 0;
                        _loc2_ += 16;
                        if((_loc12_ = int(eax)) != 0)
                        {
                           _loc10_ = li32(_loc1_ + 20);
                           _loc11_ = 0;
                           if(_loc10_ < li32(_loc1_ + 24))
                           {
                              _loc8_ = li32(_loc1_ + 16);
                              si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                              _loc1_ = int(_loc10_ * 12);
                              _loc10_ = int(_loc8_ + _loc1_);
                              _loc11_ = 0;
                              if(_loc10_ != 0)
                              {
                                 _loc9_ = int(_loc8_ + _loc1_);
                                 si32(18,_loc9_);
                                 si32(_loc12_,_loc9_ + 4);
                                 si32(0,_loc9_ + 8);
                                 _loc11_ = _loc10_;
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
                     F_d_name();
                     _loc11_ = 0;
                     _loc2_ += 16;
                     if((_loc8_ = int(eax)) != 0)
                     {
                        _loc10_ = li32(_loc1_ + 20);
                        _loc11_ = 0;
                        if(_loc10_ < li32(_loc1_ + 24))
                        {
                           _loc12_ = li32(_loc1_ + 16);
                           si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                           _loc1_ = int(_loc10_ * 12);
                           _loc10_ = int(_loc12_ + _loc1_);
                           _loc11_ = 0;
                           if(_loc10_ != 0)
                           {
                              _loc9_ = int(_loc12_ + _loc1_);
                              si32(19,_loc9_);
                              si32(_loc8_,_loc9_ + 4);
                              si32(0,_loc9_ + 8);
                              _loc11_ = _loc10_;
                           }
                        }
                     }
                  }
               }
               else
               {
                  _loc2_ -= 16;
                  si32(_loc11_ = 0,_loc2_ + 4);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_encoding();
                  _loc2_ += 16;
                  if((_loc8_ = int(eax)) != 0)
                  {
                     _loc10_ = li32(_loc1_ + 20);
                     _loc11_ = 0;
                     if(_loc10_ < li32(_loc1_ + 24))
                     {
                        _loc12_ = li32(_loc1_ + 16);
                        si32(_loc9_ = int(_loc10_ + 1),_loc1_ + 20);
                        _loc1_ = int(_loc10_ * 12);
                        _loc10_ = int(_loc12_ + _loc1_);
                        _loc11_ = 0;
                        if(_loc10_ != 0)
                        {
                           _loc9_ = int(_loc12_ + _loc1_);
                           si32(20,_loc9_);
                           si32(_loc8_,_loc9_ + 4);
                           si32(0,_loc9_ + 8);
                           _loc11_ = _loc10_;
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
            F_d_name();
            _loc2_ += 16;
            if((_loc12_ = int(eax)) != 0)
            {
               if((_loc9_ = li32(_loc3_ + 4)) != 0)
               {
                  if((_loc9_ = (_loc9_ = li8(_loc1_ + 8)) & 1) == 0)
                  {
                     _loc1_ = li32(_loc12_);
                     _loc11_ = _loc12_;
                     if(uint(int(_loc1_ + -25)) <= 2)
                     {
                        do
                        {
                           _loc1_ = li32(_loc11_ = li32(_loc11_ + 4));
                        }
                        while((uint(_loc9_ = int(_loc1_ + -25))) < 3);
                        
                     }
                     if(_loc1_ == 2)
                     {
                        _loc1_ = li32(_loc11_ + 8);
                        if((uint(_loc9_ = int((_loc9_ = li32(_loc1_)) + -25))) <= 2)
                        {
                           do
                           {
                              _loc1_ = li32(_loc1_ + 4);
                           }
                           while((uint(_loc9_ = int((_loc9_ = li32(_loc1_)) + -25))) < 3);
                           
                        }
                        si32(_loc1_,_loc11_ + 8);
                     }
                  }
                  §§goto(addr2801);
               }
            }
            _loc8_ = li8(_loc9_ = li32(_loc1_ + 12));
            _loc11_ = _loc12_;
            if(_loc8_ != 0)
            {
               _loc10_ = _loc12_;
               _loc11_ = _loc12_;
               if(_loc8_ != 69)
               {
                  loop2:
                  while(true)
                  {
                     _loc8_ = _loc11_ = 0;
                     if(_loc10_ == 0)
                     {
                        break;
                     }
                     if((uint(_loc9_ = int((_loc7_ = li32(_loc10_)) + -25))) >= 3)
                     {
                        _loc8_ = 0;
                        if(_loc7_ == 4)
                        {
                           _loc8_ = int(_loc10_ + 4);
                           while((_loc10_ = li32(_loc8_)) != 0)
                           {
                              _loc7_ = li32(_loc10_);
                              _loc8_ = 0;
                              if(_loc7_ == 42)
                              {
                                 break loop2;
                              }
                              if((uint(_loc9_ = int(_loc7_ + -6))) < 2)
                              {
                                 break loop2;
                              }
                              if((uint(_loc9_ = int(_loc7_ + -1))) > 1)
                              {
                                 break;
                              }
                              _loc8_ = int(_loc10_ + 8);
                           }
                           _loc8_ = 1;
                           break;
                        }
                        break;
                     }
                     _loc10_ = li32(_loc10_ + 4);
                  }
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_ + 4);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_d_bare_function_type();
                  _loc2_ += 16;
                  _loc8_ = int(eax);
                  if(_loc12_ != 0)
                  {
                     if(_loc8_ != 0)
                     {
                        _loc7_ = li32(_loc1_ + 20);
                        _loc11_ = 0;
                        if(_loc7_ < li32(_loc1_ + 24))
                        {
                           _loc10_ = li32(_loc1_ + 16);
                           si32(_loc9_ = int(_loc7_ + 1),_loc1_ + 20);
                           _loc7_ *= 12;
                           _loc1_ = int(_loc10_ + _loc7_);
                           _loc11_ = 0;
                           if(_loc1_ != 0)
                           {
                              _loc9_ = int(_loc10_ + _loc7_);
                              si32(3,_loc9_);
                              si32(_loc12_,_loc9_ + 4);
                              si32(_loc8_,_loc9_ + 8);
                              _loc11_ = _loc1_;
                           }
                        }
                     }
                  }
               }
            }
         }
         addr2801:
         eax = _loc11_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr43);
   }
}
