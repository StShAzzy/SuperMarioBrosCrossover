package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.Fmemcpy;
   import sample.libgme._gme_wrong_file_type;
   import sample.libgme.eax;
   
   public function F__ZL10parse_infoPKhlPN7Sap_Emu6info_tE() : void
   {
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc4_:* = 0;
      var _loc17_:int = 0;
      var _loc18_:int = 0;
      var _loc19_:int = 0;
      var _loc16_:* = 0;
      var _loc9_:int = 0;
      var _loc10_:int = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc20_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:int = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = int(ESP);
      _loc4_ = li32((_loc8_ = _loc3_) + 8);
      si32(1,_loc4_ + 24);
      si8(_loc20_ = 0,_loc4_ + 33);
      si8(_loc20_,_loc4_ + 289);
      si8(_loc20_,_loc4_ + 545);
      _loc19_ = _loc4_ + 545;
      _loc18_ = _loc4_ + 289;
      _loc17_ = _loc4_ + 33;
      _loc16_ = int(_gme_wrong_file_type);
      _loc15_ = li32(_loc8_ + 4);
      _loc14_ = li32(_loc8_);
      if(_loc15_ >= 16)
      {
         loop0:
         while(true)
         {
            var _loc13_:* = li8(_loc13_ = int(L__2E_str4421 - _loc20_));
            var _loc1_:* = int(_loc14_ - _loc20_);
            _loc1_ = li8(_loc1_);
            _loc16_ = int(_gme_wrong_file_type);
            if(_loc1_ == _loc13_)
            {
               if((_loc20_ += -1) != -5)
               {
                  continue;
               }
               _loc16_ = int((_loc13_ = int(_loc15_ + _loc14_)) + -5);
               _loc14_ += 5;
               loop1:
               while(true)
               {
                  _loc6_ = li8(_loc14_);
                  if(uint(_loc14_) >= uint(_loc16_))
                  {
                     _loc16_ = int(L__2E_str22439);
                     if((_loc6_ & 255) == 255)
                     {
                        _loc16_ = int(L__2E_str22439);
                        if(li8(_loc14_ + 1) == 255)
                        {
                        }
                        break loop0;
                     }
                     break loop0;
                  }
                  _loc15_ = 0;
                  if((_loc6_ & 255) == 255)
                  {
                     _loc15_ = 0;
                     if(li8(_loc14_ + 1) == 255)
                     {
                        addr1555:
                        si32(_loc13_ = int(_loc14_ + 2),_loc4_);
                        _loc16_ = 0;
                        break loop0;
                     }
                  }
                  while((uint(_loc9_ = _loc14_ + _loc15_)) < uint(_loc16_))
                  {
                     if((_loc13_ = li8(_loc9_)) == 13)
                     {
                        break;
                     }
                     _loc15_ += 1;
                  }
                  _loc10_ = 0;
                  while(true)
                  {
                     _loc20_ = _loc10_;
                     if(_loc10_ >= _loc15_)
                     {
                        break;
                     }
                     _loc20_ = _loc10_;
                     if(uint(li8(_loc13_ = int(_loc14_ + _loc10_))) <= 32)
                     {
                        break;
                     }
                     _loc10_ += 1;
                  }
                  while(_loc20_ < _loc15_)
                  {
                     if((uint(_loc13_ = li8(_loc13_ = int(_loc14_ + _loc20_)))) >= 33)
                     {
                        break;
                     }
                     _loc20_ += 1;
                  }
                  if(_loc10_ < 1)
                  {
                     continue;
                  }
                  _loc11_ = int(_loc14_ + _loc20_);
                  _loc12_ = int(_loc20_ + 1);
                  _loc2_ = 0;
                  _loc5_ = _loc6_;
                  while(true)
                  {
                     _loc1_ = li8(_loc13_ = int(L__2E_str5422 - _loc2_));
                     _loc13_ = _loc5_ & 255;
                     if(_loc1_ != _loc13_)
                     {
                        _loc2_ = 0;
                        _loc5_ = _loc6_;
                        while(true)
                        {
                           _loc1_ = li8(_loc13_ = int(L__2E_str7424 - _loc2_));
                           _loc13_ = _loc5_ & 255;
                           if(_loc1_ != _loc13_)
                           {
                              _loc2_ = 0;
                              _loc5_ = _loc6_;
                              while(true)
                              {
                                 _loc13_ = li8(_loc13_ = int(L__2E_str9426 - _loc2_));
                                 _loc1_ = _loc5_ & 255;
                                 if(_loc13_ != _loc1_)
                                 {
                                    _loc7_ = 0;
                                    _loc5_ = _loc6_;
                                    while(true)
                                    {
                                       _loc13_ = li8(_loc13_ = int(L__2E_str11428 - _loc7_));
                                       _loc1_ = _loc5_ & 255;
                                       if(_loc13_ == _loc1_)
                                       {
                                          if(_loc7_ != -5)
                                          {
                                             if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                             {
                                                continue;
                                             }
                                          }
                                          _loc11_ = 0;
                                          if(_loc20_ < _loc15_)
                                          {
                                             while(true)
                                             {
                                                if(_loc20_ >= _loc15_)
                                                {
                                                   si32(_loc11_,_loc4_ + 24);
                                                   _loc20_ = int(L__2E_str12429);
                                                   if(_loc11_ >= 1)
                                                   {
                                                      continue loop1;
                                                   }
                                                   §§goto(addr1567);
                                                }
                                                else if((uint(_loc12_ = int((_loc13_ = li8(_loc13_ = int(_loc14_ + _loc20_))) + -48))) <= 9)
                                                {
                                                   continue;
                                                }
                                             }
                                          }
                                          si32(-1,_loc4_ + 24);
                                       }
                                       _loc7_ = 0;
                                       _loc5_ = _loc6_;
                                       loop12:
                                       while(true)
                                       {
                                          _loc13_ = li8(_loc13_ = int(L__2E_str13430 - _loc7_));
                                          _loc1_ = _loc5_ & 255;
                                          if(_loc13_ != _loc1_)
                                          {
                                             _loc7_ = 0;
                                             _loc5_ = _loc6_;
                                             while(true)
                                             {
                                                _loc1_ = li8(_loc13_ = int(L__2E_str16433 - _loc7_));
                                                _loc13_ = _loc5_ & 255;
                                                if(_loc1_ == _loc13_)
                                                {
                                                   if(_loc7_ != -6)
                                                   {
                                                      if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   si8(1,_loc4_ + 32);
                                                   break loop12;
                                                }
                                                _loc7_ = 0;
                                                _loc5_ = _loc6_;
                                                while(true)
                                                {
                                                   _loc1_ = li8(_loc13_ = int(L__2E_str17434 - _loc7_));
                                                   _loc13_ = _loc5_ & 255;
                                                   if(_loc1_ == _loc13_)
                                                   {
                                                      if(_loc7_ != -8)
                                                      {
                                                         if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                                         {
                                                            continue;
                                                         }
                                                      }
                                                      _loc11_ = 0;
                                                      if(_loc20_ < _loc15_)
                                                      {
                                                         while(true)
                                                         {
                                                            if(_loc20_ >= _loc15_)
                                                            {
                                                               si32(_loc11_,_loc4_ + 28);
                                                               _loc20_ = int(L__2E_str18435);
                                                               if(_loc11_ >= 1)
                                                               {
                                                                  break loop12;
                                                               }
                                                               addr1567:
                                                               addr1567:
                                                               _loc16_ = _loc20_;
                                                               break loop0;
                                                            }
                                                            if((uint(_loc12_ = int((_loc13_ = li8(_loc13_ = int(_loc14_ + _loc20_))) + -48))) <= 9)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                      }
                                                      si32(-1,_loc4_ + 28);
                                                      _loc16_ = int(L__2E_str18435);
                                                      break loop0;
                                                   }
                                                   _loc7_ = 0;
                                                   _loc5_ = _loc6_;
                                                   while(true)
                                                   {
                                                      _loc1_ = li8(_loc13_ = int(L__2E_str19436 - _loc7_));
                                                      _loc13_ = _loc5_ & 255;
                                                      if(_loc1_ == _loc13_)
                                                      {
                                                         if(_loc7_ != -6)
                                                         {
                                                            if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                                            {
                                                               continue;
                                                            }
                                                         }
                                                         if((_loc13_ = li8(_loc11_)) == 34)
                                                         {
                                                            _loc11_ = int((_loc13_ = int(_loc14_ + _loc20_)) + 1);
                                                            while((_loc20_ = _loc12_) < _loc15_)
                                                            {
                                                               _loc12_ = int(_loc20_ + 1);
                                                               if(li8(_loc13_ = int(_loc14_ + _loc20_)) == 34)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc9_ = _loc14_ + _loc20_;
                                                         }
                                                         _loc12_ = int(_loc9_ - _loc11_);
                                                         _loc20_ = 255;
                                                         if(_loc12_ <= _loc20_)
                                                         {
                                                            _loc20_ = _loc12_;
                                                         }
                                                         _loc13_ = int(_loc4_ + _loc20_);
                                                         si8(0,_loc13_ + 33);
                                                         _loc3_ -= 16;
                                                         si32(_loc20_,_loc3_ + 8);
                                                         si32(_loc11_,_loc3_ + 4);
                                                         si32(_loc17_,_loc3_);
                                                         ESP = _loc3_;
                                                         Fmemcpy();
                                                         _loc3_ += 16;
                                                         break loop12;
                                                      }
                                                      _loc7_ = 0;
                                                      _loc5_ = _loc6_;
                                                      while(true)
                                                      {
                                                         _loc1_ = li8(_loc13_ = int(L__2E_str20437 - _loc7_));
                                                         _loc13_ = _loc5_ & 255;
                                                         if(_loc1_ == _loc13_)
                                                         {
                                                            if(_loc7_ != -4)
                                                            {
                                                               if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                                               {
                                                                  continue;
                                                               }
                                                            }
                                                            if((_loc13_ = li8(_loc11_)) == 34)
                                                            {
                                                               _loc11_ = int((_loc13_ = int(_loc14_ + _loc20_)) + 1);
                                                               while((_loc20_ = _loc12_) < _loc15_)
                                                               {
                                                                  _loc12_ = int(_loc20_ + 1);
                                                                  if(li8(_loc13_ = int(_loc14_ + _loc20_)) == 34)
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               _loc9_ = _loc14_ + _loc20_;
                                                            }
                                                            _loc12_ = int(_loc9_ - _loc11_);
                                                            _loc20_ = 255;
                                                            if(_loc12_ <= _loc20_)
                                                            {
                                                               _loc20_ = _loc12_;
                                                            }
                                                            _loc13_ = int(_loc4_ + _loc20_);
                                                            si8(0,_loc13_ + 289);
                                                            _loc3_ -= 16;
                                                            si32(_loc20_,_loc3_ + 8);
                                                            si32(_loc11_,_loc3_ + 4);
                                                            si32(_loc18_,_loc3_);
                                                            ESP = _loc3_;
                                                            Fmemcpy();
                                                            _loc3_ += 16;
                                                            break loop12;
                                                         }
                                                         _loc5_ = 0;
                                                         while(true)
                                                         {
                                                            _loc1_ = li8(_loc13_ = int(L__2E_str21438 - _loc5_));
                                                            _loc13_ = _loc6_ & 255;
                                                            if(_loc1_ == _loc13_)
                                                            {
                                                               if(_loc5_ != -4)
                                                               {
                                                                  if((_loc13_ = int(_loc10_ + _loc5_)) != 1)
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                               if((_loc13_ = li8(_loc11_)) == 34)
                                                               {
                                                                  _loc11_ = int((_loc13_ = int(_loc14_ + _loc20_)) + 1);
                                                                  while((_loc20_ = _loc12_) < _loc15_)
                                                                  {
                                                                     _loc12_ = int(_loc20_ + 1);
                                                                     if(li8(_loc13_ = int(_loc14_ + _loc20_)) == 34)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc9_ = _loc14_ + _loc20_;
                                                               }
                                                               _loc20_ = int(_loc9_ - _loc11_);
                                                               _loc12_ = 31;
                                                               if(_loc20_ <= _loc12_)
                                                               {
                                                                  _loc12_ = _loc20_;
                                                               }
                                                               _loc13_ = int(_loc4_ + _loc12_);
                                                               si8(0,_loc13_ + 545);
                                                               _loc3_ -= 16;
                                                               si32(_loc12_,_loc3_ + 8);
                                                               si32(_loc11_,_loc3_ + 4);
                                                               si32(_loc19_,_loc3_);
                                                               ESP = _loc3_;
                                                               Fmemcpy();
                                                               _loc3_ += 16;
                                                               break loop12;
                                                            }
                                                            break loop12;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          else
                                          {
                                             if(_loc7_ != -4)
                                             {
                                                if((_loc13_ = int(_loc10_ + _loc7_)) != 1)
                                                {
                                                   continue;
                                                }
                                             }
                                             si32(_loc11_ = li8(_loc11_),_loc4_ + 20);
                                             if((uint(_loc13_ = int(_loc11_ + -66))) < 2)
                                             {
                                                break;
                                             }
                                             _loc20_ = int(L__2E_str14431);
                                             _loc16_ = int(L__2E_str15432);
                                             if(_loc11_ != 68)
                                             {
                                                break loop0;
                                             }
                                          }
                                       }
                                       continue loop1;
                                       _loc16_ = int(L__2E_str12429);
                                       break loop0;
                                    }
                                 }
                                 else
                                 {
                                    _loc5_ = _loc7_ = 0;
                                    if(_loc2_ != -5)
                                    {
                                       _loc5_ = _loc7_ = 0;
                                       if(int(_loc10_ + _loc2_) != 1)
                                       {
                                          continue;
                                       }
                                    }
                                    while(true)
                                    {
                                       if(_loc7_ != 4)
                                       {
                                          if((uint(_loc12_ = int((_loc11_ = li8(_loc13_ = int((_loc13_ = int(_loc7_ + _loc14_)) + _loc20_))) + -48))) >= 10)
                                          {
                                             if((uint(_loc12_ = int((_loc13_ = (_loc13_ = int(_loc11_ + 191)) & 223) + 10))) >= 16)
                                             {
                                                si32(-1,_loc4_ + 16);
                                                _loc16_ = int(L__2E_str10427);
                                                break loop0;
                                             }
                                          }
                                          continue;
                                       }
                                       si32(_loc5_,_loc4_ + 16);
                                       _loc20_ = int(L__2E_str10427);
                                       if(uint(_loc5_) <= 65535)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                           }
                           else
                           {
                              _loc5_ = _loc7_ = 0;
                              if(_loc2_ != -6)
                              {
                                 _loc5_ = _loc7_ = 0;
                                 if(int(_loc10_ + _loc2_) != 1)
                                 {
                                    continue;
                                 }
                              }
                              while(true)
                              {
                                 if(_loc7_ != 4)
                                 {
                                    if((uint(_loc12_ = int((_loc11_ = li8(_loc13_ = int((_loc13_ = int(_loc7_ + _loc14_)) + _loc20_))) + -48))) >= 10)
                                    {
                                       if((uint(_loc12_ = int((_loc13_ = (_loc13_ = int(_loc11_ + 191)) & 223) + 10))) >= 16)
                                       {
                                          si32(-1,_loc4_ + 12);
                                          _loc16_ = int(L__2E_str8425);
                                          break loop0;
                                       }
                                    }
                                    continue;
                                 }
                                 si32(_loc5_,_loc4_ + 12);
                                 _loc20_ = int(L__2E_str8425);
                                 if(uint(_loc5_) <= 65535)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc5_ = _loc7_ = 0;
                        if(_loc2_ != -4)
                        {
                           _loc5_ = _loc7_ = 0;
                           if(int(_loc10_ + _loc2_) != 1)
                           {
                              continue;
                           }
                        }
                        while(true)
                        {
                           if(_loc7_ != 4)
                           {
                              if((uint(_loc11_ = int((_loc12_ = li8(_loc13_ = int((_loc13_ = int(_loc7_ + _loc14_)) + _loc20_))) + -48))) >= 10)
                              {
                                 if((uint(_loc11_ = int((_loc13_ = (_loc13_ = int(_loc12_ + 191)) & 223) + 10))) >= 16)
                                 {
                                    si32(-1,_loc4_ + 8);
                                    _loc16_ = int(L__2E_str6423);
                                    break loop0;
                                 }
                              }
                              continue;
                           }
                           si32(_loc5_,_loc4_ + 8);
                           _loc20_ = int(L__2E_str6423);
                           if(uint(_loc5_) <= 65535)
                           {
                              continue loop1;
                           }
                        }
                     }
                     §§goto(addr1567);
                  }
                  §§goto(addr1555);
               }
            }
            break;
         }
      }
      eax = _loc16_;
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
