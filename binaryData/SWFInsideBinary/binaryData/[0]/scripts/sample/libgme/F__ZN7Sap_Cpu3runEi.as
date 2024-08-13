package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sap_Cpu3runEiE11clock_table;
   
   public function F__ZN7Sap_Cpu3runEi() : void
   {
      var _loc2_:* = 0;
      var _loc10_:* = 0;
      var _loc26_:* = 0;
      var _loc25_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc20_:* = 0;
      var _loc6_:* = 0;
      var _loc19_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc7_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc1_:* = sample.libgme.ESP;
      _loc2_ = _loc1_;
      _loc1_ -= 16;
      _loc10_ = li32(_loc2_);
      _loc25_ = li32((_loc26_ = li32(_loc10_ + 8)) + 4);
      _loc24_ = li32(_loc2_ + 4);
      si32(_loc24_,_loc10_ + 24);
      _loc23_ = li32(_loc10_ + 20);
      if(_loc23_ < _loc24_)
      {
         var _loc22_:* = li8(_loc10_ + 5);
         if((_loc22_ = _loc22_ & 4) == 0)
         {
            _loc24_ = _loc23_;
         }
      }
      var _loc21_:* = li32(_loc26_);
      si32(_loc24_,_loc26_);
      _loc22_ = _loc25_ - _loc24_;
      si32(_loc22_ = _loc22_ + _loc21_,_loc26_ + 4);
      _loc20_ = li32(_loc10_ + 16);
      _loc22_ = li32(_loc10_ + 12);
      si32(_loc22_,_loc2_ - 8);
      _loc22_ = _loc2_ - 8;
      _loc19_ = _loc22_ | 4;
      si32(_loc20_,_loc19_);
      si32(_loc22_,_loc10_ + 8);
      _loc22_ = li8(_loc10_ + 5);
      _loc7_ = _loc22_ << 8;
      _loc21_ = _loc22_ & 2;
      _loc15_ = (_loc21_ = _loc21_ | _loc7_) ^ 2;
      _loc24_ = _loc10_ + -272;
      _loc16_ = li8(_loc10_ + 4);
      _loc17_ = li8(_loc10_ + 3);
      _loc18_ = li8(_loc10_ + 2);
      _loc11_ = li16(_loc10_);
      _loc25_ = li32(_loc10_ + 28);
      _loc23_ = _loc25_ + 65535;
      _loc12_ = _loc22_ & 0x4C;
      _loc22_ = li8(_loc10_ + 6);
      _loc13_ = (_loc22_ = _loc22_ + 1) | 0x0100;
      _loc26_ = 0;
      while(true)
      {
         _loc9_ = _loc11_;
         _loc22_ = _loc25_ + _loc9_;
         _loc8_ = li8(_loc22_);
         _loc22_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sap_Cpu3runEiE11clock_table + _loc8_;
         if((_loc14_ = (_loc11_ = li8(_loc22_)) + _loc20_) >= 0)
         {
            if(_loc11_ <= _loc14_)
            {
               si32(_loc20_,_loc19_);
               _loc11_ = _loc9_;
               if(_loc20_ >= 0)
               {
                  _loc14_ = _loc20_;
                  break;
               }
               continue;
            }
         }
         _loc11_ = _loc9_ + 1;
         _loc22_ = _loc25_ + _loc11_;
         _loc20_ = (_loc22_ = (_loc6_ = li8(_loc22_)) << 24) >> 24;
         if(_loc8_ <= 128)
         {
            if(_loc8_ <= 63)
            {
               if(_loc8_ <= 31)
               {
                  if(_loc8_ <= 15)
                  {
                     if(_loc8_ <= 7)
                     {
                        if(_loc8_ <= 3)
                        {
                           if(_loc8_ == 0)
                           {
                              if(uint(_loc9_) > 65278)
                              {
                                 _loc26_ = 0;
                                 break;
                              }
                              _loc22_ = _loc13_ + -1;
                              var _loc5_:*;
                              si8(_loc5_ = (_loc22_ = _loc9_ + 2) >>> 8,_loc25_ + (_loc22_ | 0x0100));
                              _loc21_ = _loc13_ + -2;
                              si8(_loc22_,_loc25_ + (_loc21_ | 0x0100));
                              _loc22_ = _loc15_ >>> 8;
                              _loc11_ = (_loc9_ = (_loc21_ = (_loc21_ = _loc7_ >>> 8) & 1) | (_loc22_ = _loc22_ | _loc15_) & 0x80 | _loc12_ & 0x4C) | 2;
                              _loc22_ = _loc15_ & 0xFF;
                              if(_loc22_ != _loc26_)
                              {
                                 _loc11_ = _loc9_;
                              }
                              _loc5_ = _loc11_ | 0x30;
                              _loc22_ = _loc13_ + -3;
                              _loc13_ = _loc22_ | 0x0100;
                              var _loc3_:* = _loc25_ + _loc13_;
                              _loc22_ = li8(_loc25_ + 65534);
                              _loc21_ = li8(_loc23_);
                              si8(_loc5_,_loc3_);
                              _loc5_ = _loc12_ & -13;
                              si8(_loc12_ = _loc5_ | 4,_loc10_ + 5);
                              _loc5_ = li32(_loc10_ + 24);
                              _loc3_ = li32(_loc2_ - 8);
                              si32(_loc5_,_loc2_ - 8);
                              _loc21_ <<= 8;
                              _loc11_ = _loc21_ <<= 8 | _loc22_;
                              _loc22_ = _loc14_ + _loc3_;
                              _loc20_ = (_loc22_ = _loc22_ + 7) - _loc5_;
                              continue;
                           }
                           if(_loc8_ != 1)
                           {
                              addr5536:
                              _loc26_ = 1;
                              break;
                           }
                           _loc21_ = _loc6_ + _loc17_;
                           _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                           _loc20_ = _loc14_;
                           addr3747:
                           si32(_loc20_,_loc19_);
                           _loc22_ = _loc24_ + _loc15_;
                           _loc6_ = li8(_loc22_ + 1364);
                        }
                        else
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ == 4)
                           {
                              addr5529:
                              _loc11_ += 1;
                              continue;
                           }
                           if(_loc8_ != 5)
                           {
                              if(_loc8_ == 6)
                              {
                                 addr4649:
                                 _loc11_ = 0;
                                 addr4652:
                                 _loc22_ = _loc25_ + _loc6_;
                                 _loc7_ = (_loc22_ = li8(_loc22_)) << 1;
                                 _loc22_ = _loc11_ >>> 8;
                                 _loc22_ = _loc22_ & 1;
                                 _loc15_ = _loc7_ | _loc22_;
                                 _loc22_ = _loc25_ + _loc6_;
                                 si8(_loc15_,_loc22_);
                                 _loc11_ = _loc9_ + 2;
                                 _loc20_ = _loc14_;
                                 continue;
                              }
                              §§goto(addr5536);
                           }
                           else
                           {
                              addr3691:
                              _loc22_ = _loc25_ + _loc6_;
                              _loc6_ = li8(_loc22_);
                              _loc20_ = _loc14_;
                           }
                        }
                        addr3761:
                        _loc15_ = _loc6_ | _loc18_;
                        _loc11_ += 1;
                        _loc18_ = _loc15_;
                        continue;
                     }
                     if(_loc8_ <= 11)
                     {
                        if(_loc8_ == 8)
                        {
                           _loc22_ = _loc15_ >>> 8;
                           _loc9_ = (_loc21_ = (_loc21_ = _loc7_ >>> 8) & 1) | (_loc22_ = _loc22_ | _loc15_) & 0x80 | _loc12_ & 0x4C;
                           _loc22_ = _loc15_ & 0xFF;
                           if(_loc22_ == 0)
                           {
                              _loc9_ |= 2;
                           }
                           _loc22_ = _loc13_ + -1;
                           _loc13_ = _loc22_ | 0x0100;
                           _loc22_ = _loc25_ + _loc13_;
                           _loc21_ = _loc9_ | 0x30;
                           si8(_loc21_,_loc22_);
                           _loc20_ = _loc14_;
                           continue;
                        }
                        _loc20_ = _loc14_;
                        if(_loc8_ != 9)
                        {
                           if(_loc8_ == 10)
                           {
                              _loc15_ = _loc18_ << 1;
                              _loc18_ = _loc15_ & 0xFE;
                              _loc7_ = _loc15_;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                     }
                     else if(_loc8_ != 12)
                     {
                        if(_loc8_ != 13)
                        {
                           if(_loc8_ == 14)
                           {
                              addr4446:
                              _loc7_ = 0;
                              addr4449:
                              _loc22_ = _loc9_ + _loc25_;
                              _loc22_ = li8(_loc22_ + 2);
                              si32(_loc14_,_loc19_);
                              _loc22_ <<= 8;
                              _loc11_ = _loc22_ <<= 8 + _loc6_;
                              _loc22_ = _loc24_ + _loc11_;
                              _loc14_ = (_loc22_ = li8(_loc22_ + 1364)) << 1;
                              _loc22_ = _loc7_ >>> 8;
                              _loc22_ = _loc22_ & 1;
                              _loc15_ = _loc14_ | _loc22_;
                              addr4499:
                              _loc22_ = _loc24_ + _loc11_;
                              si8(_loc15_,_loc22_ + 1364);
                              _loc22_ = _loc11_ & -256;
                              if(_loc22_ == 53760)
                              {
                                 _loc1_ -= 16;
                                 si32(_loc11_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 _loc22_ = _loc15_ & 0xFF;
                                 si32(_loc22_,_loc1_ + 8);
                                 ESP = _loc1_;
                                 F__ZN7Sap_Emu10cpu_write_Eji();
                                 _loc1_ += 16;
                              }
                              _loc11_ = _loc9_ + 3;
                              _loc20_ = li32(_loc19_);
                              _loc7_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                        else
                        {
                           addr3722:
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc25_ + _loc11_;
                           _loc15_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                           _loc20_ = _loc14_;
                           §§goto(addr3747);
                        }
                     }
                     else
                     {
                        addr5521:
                        _loc11_ = _loc9_ + 2;
                        _loc20_ = _loc14_;
                        §§goto(addr5529);
                     }
                     §§goto(addr3761);
                     §§goto(addr5529);
                  }
                  else if(_loc8_ <= 23)
                  {
                     if(_loc8_ <= 19)
                     {
                        if(_loc8_ == 16)
                        {
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc15_ & 0x8080;
                           if(_loc22_ == 0)
                           {
                              _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                              _loc11_ = _loc20_ + _loc11_;
                           }
                           else
                           {
                              addr232:
                              _loc20_ = _loc14_ + -1;
                           }
                           continue;
                        }
                        if(_loc8_ != 17)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc22_ = _loc25_ + _loc6_;
                           _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                           _loc21_ = _loc6_ + 1;
                           _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                           _loc22_ >>>= 8;
                           _loc20_ = _loc22_ >>>= 8 + _loc14_;
                           §§goto(addr3747);
                        }
                     }
                     else
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 20)
                        {
                           if(_loc8_ != 21)
                           {
                              if(_loc8_ != 22)
                              {
                                 §§goto(addr5536);
                              }
                              else
                              {
                                 _loc22_ = _loc6_ + _loc17_;
                                 _loc6_ = _loc22_ & 0xFF;
                                 §§goto(addr4649);
                              }
                           }
                           else
                           {
                              _loc22_ = _loc6_ + _loc17_;
                              _loc6_ = _loc22_ & 0xFF;
                              §§goto(addr3691);
                           }
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     §§goto(addr3761);
                  }
                  else
                  {
                     if(_loc8_ <= 27)
                     {
                        if(_loc8_ == 24)
                        {
                           _loc7_ = 0;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        _loc20_ = _loc16_;
                        if(_loc8_ != 25)
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ == 26)
                           {
                              continue;
                           }
                           §§goto(addr5536);
                        }
                     }
                     else if(_loc8_ != 28)
                     {
                        if(_loc8_ != 29)
                        {
                           if(_loc8_ != 30)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc6_ += _loc17_;
                              §§goto(addr4446);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc17_;
                        }
                     }
                     else
                     {
                        addr5505:
                        _loc22_ = _loc6_ + _loc17_;
                        _loc14_ = (_loc22_ = _loc22_ >>> 8) + _loc14_;
                        §§goto(addr5521);
                     }
                     _loc6_ = _loc20_ + _loc6_;
                     _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
                     §§goto(addr3722);
                  }
                  §§goto(addr5521);
               }
               else
               {
                  if(_loc8_ <= 47)
                  {
                     if(_loc8_ <= 39)
                     {
                        if(_loc8_ <= 35)
                        {
                           if(_loc8_ == 32)
                           {
                              _loc22_ = _loc9_ + 2;
                              si8(_loc5_ = _loc22_ >>> 8,_loc25_ + ((_loc5_ = _loc13_ + -1) | 0x0100));
                              _loc13_ = (_loc5_ = _loc13_ + -2) | 0x0100;
                              si8(_loc22_,_loc25_ + _loc13_);
                              _loc21_ = _loc25_ + _loc22_;
                              _loc11_ = (_loc22_ = li8(_loc21_) << 8) | _loc6_;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           if(_loc8_ != 33)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc21_ = _loc6_ + _loc17_;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                              _loc20_ = _loc14_;
                              addr3375:
                              si32(_loc20_,_loc19_);
                              _loc22_ = _loc24_ + _loc15_;
                              _loc6_ = li8(_loc22_ + 1364);
                           }
                        }
                        else
                        {
                           if(_loc8_ == 36)
                           {
                              _loc15_ = _loc11_ << 8;
                              _loc22_ = _loc25_ + _loc6_;
                              if(((_loc11_ = li8(_loc22_)) & _loc18_) != _loc26_)
                              {
                                 _loc15_ = _loc11_;
                              }
                              _loc21_ = _loc11_ & 0x40;
                              _loc22_ = _loc12_ & -65;
                              _loc12_ = _loc21_ | _loc22_;
                              _loc11_ = _loc9_ + 2;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           if(_loc8_ != 37)
                           {
                              _loc11_ = _loc7_;
                              if(_loc8_ != 38)
                              {
                                 §§goto(addr5536);
                              }
                              else
                              {
                                 §§goto(addr4652);
                              }
                           }
                           else
                           {
                              addr3319:
                              _loc22_ = _loc25_ + _loc6_;
                              _loc6_ = li8(_loc22_);
                              _loc20_ = _loc14_;
                           }
                        }
                        addr3389:
                        _loc15_ = _loc6_ & _loc18_;
                        _loc11_ += 1;
                        _loc18_ = _loc15_;
                        continue;
                     }
                     if(_loc8_ <= 43)
                     {
                        if(_loc8_ == 40)
                        {
                           _loc22_ = _loc25_ + _loc13_;
                           _loc7_ = (_loc6_ = li8(_loc22_)) << 8;
                           _loc22_ = _loc6_ & 2;
                           _loc15_ = (_loc22_ = _loc22_ | _loc7_) ^ 2;
                           _loc9_ = _loc6_ & 0x4C;
                           _loc13_ = (_loc21_ = _loc13_ + -255) | 0x0100;
                           _loc12_ = _loc9_;
                           _loc20_ = _loc14_;
                           _loc22_ = _loc6_ ^ _loc12_;
                           if((_loc22_ & 4) != 0)
                           {
                              _loc12_ = _loc9_;
                              if((_loc6_ & 4) != 0)
                              {
                                 addr5471:
                                 si8(_loc9_,_loc10_ + 5);
                                 _loc22_ = li32(_loc10_ + 24);
                                 _loc21_ = li32(_loc2_ - 8);
                                 si32(_loc22_,_loc2_ - 8);
                                 _loc21_ += _loc14_;
                                 _loc20_ = _loc21_ += _loc14_ - _loc22_;
                                 _loc12_ = _loc9_;
                              }
                              else
                              {
                                 addr5392:
                                 si8(_loc12_,_loc10_ + 5);
                                 _loc6_ = li32(_loc10_ + 20);
                                 _loc22_ = li32(_loc2_ - 8);
                                 _loc9_ = _loc22_ - _loc6_;
                                 _loc20_ = _loc14_;
                                 if(_loc9_ >= 1)
                                 {
                                    si32(_loc6_,_loc2_ - 8);
                                    _loc20_ = _loc9_ + _loc14_;
                                    _loc14_ = _loc20_ + 1;
                                    if(_loc20_ >= 0)
                                    {
                                       if(_loc14_ <= _loc9_)
                                       {
                                          _loc22_ = _loc14_ + _loc6_;
                                          si32(_loc22_,_loc2_ - 8);
                                          si32(_loc22_,_loc10_ + 20);
                                          _loc20_ = -1;
                                       }
                                    }
                                 }
                              }
                           }
                           continue;
                        }
                        _loc20_ = _loc14_;
                        if(_loc8_ != 41)
                        {
                           if(_loc8_ == 42)
                           {
                              _loc21_ = (_loc21_ = _loc7_ >>> 8) & 1;
                              _loc18_ = (_loc15_ = _loc18_ << 1 | _loc21_) & 0xFF;
                              _loc7_ = _loc18_ << 1;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                     }
                     else
                     {
                        if(_loc8_ == 44)
                        {
                           _loc15_ = _loc11_ << 8;
                           _loc22_ = _loc9_ + _loc25_;
                           if(((_loc11_ = li8((_loc22_ = _loc24_ + ((_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_)) + 1364)) & _loc18_) != _loc26_)
                           {
                              _loc15_ = _loc11_;
                           }
                           _loc22_ = _loc11_ & 0x40;
                           _loc21_ = _loc12_ & -65;
                           _loc12_ = _loc22_ | _loc21_;
                           _loc11_ = _loc9_ + 3;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        if(_loc8_ != 45)
                        {
                           if(_loc8_ != 46)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              §§goto(addr4449);
                           }
                        }
                        else
                        {
                           addr3350:
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc25_ + _loc11_;
                           _loc15_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                           _loc20_ = _loc14_;
                           §§goto(addr3375);
                        }
                     }
                     §§goto(addr3389);
                     §§goto(addr3375);
                  }
                  else if(_loc8_ <= 55)
                  {
                     if(_loc8_ <= 51)
                     {
                        if(_loc8_ != 48)
                        {
                           if(_loc8_ != 49)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc22_ = _loc25_ + _loc6_;
                              _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                              _loc21_ = _loc6_ + 1;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                              _loc22_ >>>= 8;
                              _loc20_ = _loc22_ >>>= 8 + _loc14_;
                              §§goto(addr3375);
                           }
                        }
                        else
                        {
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc15_ & 0x8080;
                           if(_loc22_ != 0)
                           {
                              _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                              _loc11_ = _loc20_ + _loc11_;
                              continue;
                           }
                           §§goto(addr232);
                        }
                     }
                     else
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 52)
                        {
                           if(_loc8_ != 53)
                           {
                              if(_loc8_ != 54)
                              {
                                 §§goto(addr5536);
                              }
                              else
                              {
                                 _loc22_ = _loc6_ + _loc17_;
                                 _loc6_ = _loc22_ & 0xFF;
                                 _loc11_ = _loc7_;
                                 §§goto(addr4649);
                              }
                           }
                           else
                           {
                              _loc22_ = _loc6_ + _loc17_;
                              _loc6_ = _loc22_ & 0xFF;
                              §§goto(addr3319);
                           }
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     §§goto(addr3389);
                  }
                  else
                  {
                     if(_loc8_ <= 59)
                     {
                        if(_loc8_ == 56)
                        {
                           _loc7_ = -1;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        _loc20_ = _loc16_;
                        if(_loc8_ != 57)
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ == 58)
                           {
                              continue;
                           }
                           §§goto(addr5536);
                        }
                     }
                     else if(_loc8_ != 60)
                     {
                        if(_loc8_ != 61)
                        {
                           if(_loc8_ != 62)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc6_ += _loc17_;
                              §§goto(addr4446);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc17_;
                        }
                     }
                     else
                     {
                        §§goto(addr5505);
                     }
                     _loc6_ = _loc20_ + _loc6_;
                     _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
                     §§goto(addr3350);
                  }
                  §§goto(addr3350);
               }
            }
            else
            {
               _loc4_ = _loc12_ & 4;
               if(_loc8_ <= 95)
               {
                  if(_loc8_ <= 79)
                  {
                     if(_loc8_ <= 71)
                     {
                        if(_loc8_ <= 67)
                        {
                           if(_loc8_ == 64)
                           {
                              si8(_loc9_ = (_loc6_ = li8(_loc5_ = _loc25_ + _loc13_)) & 0x4C,_loc10_ + 5);
                              _loc22_ = _loc13_ + -255;
                              _loc11_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ = _loc13_ + -254) | 0x0100)) << 8) | li8(_loc22_ = _loc25_ + (_loc22_ | 0x0100));
                              _loc7_ = _loc6_ << 8;
                              _loc22_ = _loc6_ & 2;
                              _loc15_ = (_loc22_ = _loc22_ | _loc7_) ^ 2;
                              _loc13_ = (_loc22_ = _loc13_ + -253) | 0x0100;
                              _loc12_ = _loc9_;
                              _loc20_ = _loc14_;
                              _loc22_ = _loc6_ ^ _loc12_;
                              if((_loc22_ & 4) != 0)
                              {
                                 _loc12_ = li32(_loc10_ + 24);
                                 _loc22_ = _loc6_ & 4;
                                 if(_loc22_ == 0)
                                 {
                                    _loc20_ = li32(_loc10_ + 20);
                                    if(_loc20_ < _loc12_)
                                    {
                                       _loc12_ = _loc20_;
                                    }
                                 }
                                 _loc21_ = li32(_loc2_ - 8);
                                 si32(_loc12_,_loc2_ - 8);
                                 _loc22_ = _loc14_ - _loc12_;
                                 _loc20_ = _loc22_ + _loc21_;
                                 _loc12_ = _loc9_;
                              }
                              continue;
                           }
                           if(_loc8_ != 65)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc21_ = _loc6_ + _loc17_;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                              _loc20_ = _loc14_;
                              addr3561:
                              si32(_loc20_,_loc19_);
                              _loc22_ = _loc24_ + _loc15_;
                              _loc6_ = li8(_loc22_ + 1364);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ != 68)
                           {
                              if(_loc8_ != 69)
                              {
                                 if(_loc8_ != 70)
                                 {
                                    §§goto(addr5536);
                                 }
                                 else
                                 {
                                    addr4591:
                                    _loc7_ = 0;
                                    _loc22_ = _loc25_ + _loc6_;
                                    _loc22_ = (_loc21_ = li8(_loc22_)) >>> 1;
                                    _loc5_ = _loc7_ >>> 1;
                                    _loc5_ = _loc5_ & 0x80;
                                    _loc15_ = _loc22_ | _loc5_;
                                    _loc7_ = _loc21_ << 8;
                                    §§goto(addr4649);
                                 }
                              }
                              else
                              {
                                 addr3505:
                                 _loc22_ = _loc25_ + _loc6_;
                                 _loc6_ = li8(_loc22_);
                                 _loc20_ = _loc14_;
                              }
                           }
                           else
                           {
                              §§goto(addr5529);
                           }
                        }
                        addr3575:
                        _loc15_ = _loc6_ ^ _loc18_;
                        _loc11_ += 1;
                        _loc18_ = _loc15_;
                        continue;
                     }
                     if(_loc8_ <= 75)
                     {
                        if(_loc8_ == 72)
                        {
                           _loc22_ = _loc13_ + -1;
                           _loc13_ = _loc22_ | 0x0100;
                           si8(_loc18_,_loc25_ + _loc13_);
                           _loc20_ = _loc14_;
                           continue;
                        }
                        _loc20_ = _loc14_;
                        if(_loc8_ != 73)
                        {
                           if(_loc8_ == 74)
                           {
                              _loc7_ = 0;
                              addr4301:
                              _loc22_ = _loc18_ >>> 1;
                              _loc21_ = _loc7_ >>> 1;
                              _loc15_ = (_loc21_ = _loc21_ & 0x80) | _loc22_;
                              _loc7_ = _loc18_ << 8;
                              _loc18_ = _loc15_;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                     }
                     else
                     {
                        if(_loc8_ == 76)
                        {
                           _loc22_ = _loc9_ + _loc25_;
                           _loc11_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        if(_loc8_ != 77)
                        {
                           if(_loc8_ != 78)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              addr4374:
                              _loc7_ = 0;
                              _loc22_ = _loc9_ + _loc25_;
                              _loc22_ = li8(_loc22_ + 2);
                              si32(_loc14_,_loc19_);
                              _loc22_ <<= 8;
                              _loc11_ = _loc22_ <<= 8 + _loc6_;
                              _loc22_ = _loc24_ + _loc11_;
                              _loc21_ = (_loc22_ = li8(_loc22_ + 1364)) >>> 1;
                              _loc5_ = _loc7_ >>> 1;
                              _loc5_ = _loc5_ & 0x80;
                              _loc15_ = _loc21_ | _loc5_;
                              _loc14_ = _loc22_ << 8;
                              §§goto(addr4499);
                           }
                        }
                        else
                        {
                           addr3536:
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc25_ + _loc11_;
                           _loc15_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                           _loc20_ = _loc14_;
                           §§goto(addr3561);
                        }
                     }
                     §§goto(addr3575);
                     §§goto(addr3561);
                  }
                  else if(_loc8_ <= 87)
                  {
                     if(_loc8_ <= 83)
                     {
                        if(_loc8_ != 80)
                        {
                           if(_loc8_ != 81)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc22_ = _loc25_ + _loc6_;
                              _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                              _loc21_ = _loc6_ + 1;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                              _loc22_ >>>= 8;
                              _loc20_ = _loc22_ >>>= 8 + _loc14_;
                              §§goto(addr3561);
                           }
                        }
                        else
                        {
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc12_ & 0x40;
                           if(_loc22_ == 0)
                           {
                              _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                              _loc11_ = _loc20_ + _loc11_;
                              continue;
                           }
                           §§goto(addr232);
                        }
                     }
                     else
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 84)
                        {
                           if(_loc8_ != 85)
                           {
                              if(_loc8_ != 86)
                              {
                                 §§goto(addr5536);
                              }
                              else
                              {
                                 _loc22_ = _loc6_ + _loc17_;
                                 _loc6_ = _loc22_ & 0xFF;
                                 §§goto(addr4591);
                              }
                           }
                           else
                           {
                              _loc22_ = _loc6_ + _loc17_;
                              _loc6_ = _loc22_ & 0xFF;
                              §§goto(addr3505);
                           }
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     §§goto(addr3575);
                  }
                  else
                  {
                     if(_loc8_ <= 91)
                     {
                        if(_loc8_ != 88)
                        {
                           _loc20_ = _loc16_;
                           if(_loc8_ != 89)
                           {
                              _loc20_ = _loc14_;
                              if(_loc8_ == 90)
                              {
                                 continue;
                              }
                              §§goto(addr5536);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc14_;
                           if(_loc4_ == 0)
                           {
                              continue;
                           }
                           _loc12_ &= -5;
                           §§goto(addr5392);
                        }
                     }
                     else if(_loc8_ != 92)
                     {
                        if(_loc8_ != 93)
                        {
                           if(_loc8_ != 94)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc6_ += _loc17_;
                              §§goto(addr4374);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc17_;
                        }
                     }
                     else
                     {
                        §§goto(addr5505);
                     }
                     _loc6_ = _loc20_ + _loc6_;
                     _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
                     §§goto(addr3536);
                  }
                  §§goto(addr5529);
               }
               else
               {
                  if(_loc8_ <= 111)
                  {
                     if(_loc8_ <= 103)
                     {
                        if(_loc8_ <= 99)
                        {
                           if(_loc8_ == 96)
                           {
                              _loc22_ = _loc25_ + _loc13_;
                              _loc11_ = (_loc22_ = li8(_loc22_) | (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ = _loc13_ + -255) | 0x0100))) << 8) + 1;
                              _loc22_ = _loc13_ + -254;
                              _loc13_ = _loc22_ | 0x0100;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           if(_loc8_ != 97)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc21_ = _loc6_ + _loc17_;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                              _loc20_ = _loc14_;
                              addr4213:
                              si32(_loc20_,_loc19_);
                              _loc22_ = _loc24_ + _loc15_;
                              _loc6_ = li8(_loc22_ + 1364);
                           }
                        }
                        else
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ != 100)
                           {
                              if(_loc8_ != 101)
                              {
                                 if(_loc8_ != 102)
                                 {
                                    §§goto(addr5536);
                                 }
                                 else
                                 {
                                    §§goto(addr4591);
                                 }
                              }
                              else
                              {
                                 addr4157:
                                 _loc22_ = _loc25_ + _loc6_;
                                 _loc6_ = li8(_loc22_);
                                 _loc20_ = _loc14_;
                              }
                           }
                           else
                           {
                              §§goto(addr5529);
                           }
                        }
                        addr4227:
                        _loc21_ = _loc18_ ^ 0x80;
                        _loc22_ = _loc7_ >>> 8;
                        _loc22_ = _loc22_ & 1;
                        _loc21_ += _loc22_;
                        _loc5_ = _loc6_ << 24;
                        _loc5_ = _loc5_ >> 24;
                        _loc21_ += _loc5_;
                        _loc21_ = (_loc21_ = _loc21_ += _loc5_ >>> 2) & 0x40;
                        _loc5_ = _loc12_ & -65;
                        _loc12_ = _loc21_ | _loc5_;
                        _loc22_ = _loc18_ + _loc22_;
                        _loc18_ = (_loc15_ = _loc22_ + _loc6_) & 0xFF;
                        _loc11_ += 1;
                        _loc7_ = _loc15_;
                        continue;
                     }
                     if(_loc8_ <= 107)
                     {
                        if(_loc8_ == 104)
                        {
                           _loc22_ = _loc25_ + _loc13_;
                           _loc15_ = li8(_loc22_);
                           _loc22_ = _loc13_ + -255;
                           _loc13_ = _loc22_ | 0x0100;
                           _loc18_ = _loc15_;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        _loc20_ = _loc14_;
                        if(_loc8_ != 105)
                        {
                           if(_loc8_ != 106)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              §§goto(addr4301);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_ == 108)
                        {
                           _loc22_ = _loc9_ + _loc25_;
                           _loc11_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ | (_loc5_ = _loc6_ + 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + ((_loc21_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_));
                           _loc20_ = _loc14_;
                           continue;
                        }
                        if(_loc8_ != 109)
                        {
                           if(_loc8_ != 110)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              §§goto(addr4374);
                           }
                        }
                        else
                        {
                           addr4188:
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc25_ + _loc11_;
                           _loc15_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                           _loc20_ = _loc14_;
                           §§goto(addr4213);
                        }
                     }
                     §§goto(addr4227);
                     §§goto(addr4213);
                  }
                  else if(_loc8_ <= 120)
                  {
                     if(_loc8_ <= 116)
                     {
                        if(_loc8_ != 112)
                        {
                           if(_loc8_ != 113)
                           {
                              _loc20_ = _loc14_;
                              if(_loc8_ != 116)
                              {
                                 §§goto(addr5536);
                              }
                              else
                              {
                                 §§goto(addr5529);
                              }
                           }
                           else
                           {
                              _loc22_ = _loc25_ + _loc6_;
                              _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                              _loc21_ = _loc6_ + 1;
                              _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                              _loc22_ >>>= 8;
                              _loc20_ = _loc22_ >>>= 8 + _loc14_;
                              §§goto(addr4213);
                           }
                        }
                        else
                        {
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc12_ & 0x40;
                           if(_loc22_ != 0)
                           {
                              _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                              _loc11_ = _loc20_ + _loc11_;
                              continue;
                           }
                           §§goto(addr232);
                        }
                     }
                     else if(_loc8_ != 117)
                     {
                        if(_loc8_ != 118)
                        {
                           if(_loc8_ != 120)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              _loc20_ = _loc14_;
                              if(_loc4_ != 0)
                              {
                                 continue;
                              }
                              _loc9_ = _loc12_ | 4;
                              §§goto(addr5471);
                           }
                        }
                        else
                        {
                           _loc22_ = _loc6_ + _loc17_;
                           _loc6_ = _loc22_ & 0xFF;
                           §§goto(addr4591);
                        }
                     }
                     else
                     {
                        _loc22_ = _loc6_ + _loc17_;
                        _loc6_ = _loc22_ & 0xFF;
                        §§goto(addr4157);
                     }
                     §§goto(addr4227);
                  }
                  else
                  {
                     if(_loc8_ <= 124)
                     {
                        _loc20_ = _loc16_;
                        if(_loc8_ != 121)
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ == 122)
                           {
                              continue;
                           }
                           if(_loc8_ != 124)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              §§goto(addr5505);
                           }
                        }
                     }
                     else if(_loc8_ != 125)
                     {
                        if(_loc8_ != 126)
                        {
                           _loc20_ = _loc14_;
                           if(_loc8_ != 128)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              §§goto(addr5529);
                           }
                        }
                        else
                        {
                           _loc6_ += _loc17_;
                           §§goto(addr4374);
                        }
                     }
                     else
                     {
                        _loc20_ = _loc17_;
                     }
                     _loc6_ = _loc20_ + _loc6_;
                     _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
                     §§goto(addr4188);
                  }
                  §§goto(addr4188);
               }
            }
            §§goto(addr4446);
         }
         else if(_loc8_ <= 193)
         {
            if(_loc8_ > 161)
            {
               if(_loc8_ <= 176)
               {
                  if(_loc8_ <= 168)
                  {
                     if(_loc8_ <= 164)
                     {
                        if(_loc8_ != 162)
                        {
                           if(_loc8_ != 164)
                           {
                              §§goto(addr5536);
                           }
                           else
                           {
                              addr2855:
                              _loc22_ = _loc25_ + _loc6_;
                              _loc6_ = li8(_loc22_);
                              §§goto(addr2864);
                           }
                        }
                     }
                     else
                     {
                        if(_loc8_ == 165)
                        {
                           _loc22_ = _loc25_ + _loc6_;
                           _loc15_ = li8(_loc22_);
                           _loc11_ = _loc9_ + 2;
                           _loc18_ = _loc15_;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        if(_loc8_ != 166)
                        {
                           if(_loc8_ == 168)
                           {
                              _loc15_ = _loc18_;
                              _loc16_ = _loc18_;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                        else
                        {
                           addr2823:
                           _loc22_ = _loc25_ + _loc6_;
                           _loc6_ = li8(_loc22_);
                        }
                     }
                     _loc11_ = _loc9_ + 2;
                     _loc15_ = _loc6_;
                     _loc17_ = _loc6_;
                     _loc20_ = _loc14_;
                     continue;
                  }
                  if(_loc8_ <= 172)
                  {
                     if(_loc8_ == 169)
                     {
                        _loc11_ = _loc9_ + 2;
                        _loc15_ = _loc6_;
                        _loc18_ = _loc6_;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ == 170)
                     {
                        _loc15_ = _loc18_;
                        _loc17_ = _loc18_;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ == 172)
                     {
                        addr2893:
                        _loc22_ = _loc9_ + _loc25_;
                        _loc22_ = li8(_loc22_ + 2);
                        si32(_loc14_,_loc19_);
                        _loc22_ <<= 8;
                        _loc22_ = _loc22_ <<= 8 + _loc6_;
                        _loc22_ = _loc24_ + _loc22_;
                        _loc15_ = li8(_loc22_ + 1364);
                        _loc11_ = _loc9_ + 3;
                        _loc16_ = _loc15_;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     §§goto(addr5536);
                  }
                  else
                  {
                     if(_loc8_ == 173)
                     {
                        _loc22_ = _loc9_ + _loc25_;
                        _loc15_ = li8((_loc22_ = _loc24_ + ((_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_)) + 1364);
                        _loc11_ = _loc9_ + 3;
                        _loc18_ = _loc15_;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ != 174)
                     {
                        if(_loc8_ != 176)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc7_ & 0x0100;
                           if(_loc22_ != 0)
                           {
                              _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                              _loc11_ = _loc20_ + _loc11_;
                              continue;
                           }
                           §§goto(addr232);
                        }
                     }
                  }
                  §§goto(addr5536);
                  §§goto(addr5536);
               }
               else if(_loc8_ <= 185)
               {
                  if(_loc8_ <= 181)
                  {
                     if(_loc8_ != 177)
                     {
                        if(_loc8_ != 180)
                        {
                           if(_loc8_ == 181)
                           {
                              _loc22_ = _loc6_ + _loc17_;
                              _loc15_ = li8(_loc22_ = _loc25_ + (_loc22_ & 0xFF));
                              _loc11_ = _loc9_ + 2;
                              _loc18_ = _loc15_;
                              _loc20_ = _loc14_;
                              continue;
                           }
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc22_ = _loc6_ + _loc17_;
                           _loc6_ = _loc22_ & 0xFF;
                           §§goto(addr2855);
                        }
                     }
                     else
                     {
                        _loc22_ = _loc25_ + _loc6_;
                        _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                        _loc15_ = li8(_loc5_ = _loc25_ + _loc6_);
                        _loc20_ = (_loc22_ >>>= 8) + _loc14_;
                        _loc11_ = _loc9_ + 2;
                        _loc18_ = _loc15_;
                        _loc21_ = _loc6_ + 1;
                        if((uint((_loc6_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_) ^ 0x8000)) < 40960)
                        {
                           continue;
                        }
                     }
                  }
                  else if(_loc8_ != 182)
                  {
                     if(_loc8_ == 184)
                     {
                        _loc12_ &= -65;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ != 185)
                     {
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc6_ + _loc16_;
                        _loc20_ = (_loc22_ = _loc22_ >>> 8) + _loc14_;
                        _loc15_ = li8(_loc22_ = _loc25_ + _loc6_);
                        _loc11_ = _loc9_ + 3;
                        _loc18_ = _loc15_;
                        _loc22_ = _loc9_ + _loc25_;
                        if((uint((_loc6_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc16_) ^ 0x8000)) < 40960)
                        {
                           continue;
                        }
                     }
                  }
                  else
                  {
                     _loc22_ = _loc6_ + _loc16_;
                     _loc6_ = _loc22_ & 0xFF;
                     §§goto(addr2823);
                  }
                  §§goto(addr2574);
               }
               else
               {
                  if(_loc8_ <= 189)
                  {
                     if(_loc8_ == 186)
                     {
                        _loc22_ = _loc13_ + 255;
                        _loc17_ = _loc15_ = _loc22_ & 0xFF;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ != 188)
                     {
                        if(_loc8_ != 189)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc22_ = _loc6_ + _loc17_;
                           _loc20_ = (_loc22_ = _loc22_ >>> 8) + _loc14_;
                           _loc15_ = li8(_loc21_ = _loc25_ + _loc6_);
                           _loc11_ = _loc9_ + 3;
                           _loc18_ = _loc15_;
                           _loc22_ = _loc9_ + _loc25_;
                           if((uint((_loc6_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc17_) ^ 0x8000)) < 40960)
                           {
                              continue;
                           }
                           §§goto(addr2574);
                        }
                     }
                     else
                     {
                        _loc6_ += _loc17_;
                        _loc14_ = (_loc22_ = _loc6_ += _loc17_ >>> 8) + _loc14_;
                        §§goto(addr2893);
                     }
                  }
                  else if(_loc8_ != 190)
                  {
                     if(_loc8_ == 192)
                     {
                        addr3194:
                        _loc22_ = _loc16_ - _loc6_;
                        _loc15_ = _loc22_ & 0xFF;
                        _loc7_ = _loc22_ ^ -1;
                        _loc11_ += 1;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ == 193)
                     {
                        _loc21_ = _loc6_ + _loc17_;
                        _loc7_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                        _loc20_ = _loc14_;
                        addr1793:
                        si32(_loc20_,_loc19_);
                        _loc22_ = _loc24_ + _loc7_;
                        _loc6_ = li8(_loc22_ + 1364);
                        addr1807:
                        _loc22_ = _loc18_ - _loc6_;
                        _loc15_ = _loc22_ & 0xFF;
                        _loc7_ = _loc22_ ^ -1;
                        _loc11_ += 1;
                        continue;
                     }
                     §§goto(addr5536);
                  }
                  else
                  {
                     _loc6_ += _loc16_;
                     _loc14_ = (_loc22_ = _loc6_ += _loc16_ >>> 8) + _loc14_;
                  }
                  §§goto(addr5536);
               }
               _loc22_ = _loc9_ + _loc25_;
               _loc22_ = li8(_loc22_ + 2);
               si32(_loc14_,_loc19_);
               _loc22_ <<= 8;
               _loc22_ = _loc22_ <<= 8 + _loc6_;
               _loc22_ = _loc24_ + _loc22_;
               _loc15_ = li8(_loc22_ + 1364);
               _loc11_ = _loc9_ + 3;
               _loc17_ = _loc15_;
               _loc20_ = _loc14_;
               continue;
            }
            if(_loc8_ <= 143)
            {
               if(_loc8_ <= 135)
               {
                  if(_loc8_ <= 131)
                  {
                     if(_loc8_ != 129)
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 130)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     else
                     {
                        _loc21_ = _loc6_ + _loc17_;
                        _loc20_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                        _loc11_ = _loc9_ + 2;
                     }
                  }
                  else
                  {
                     if(_loc8_ == 132)
                     {
                        addr2769:
                        _loc22_ = _loc25_ + _loc6_;
                        si8(_loc16_,_loc22_);
                        _loc11_ = _loc9_ + 2;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ == 133)
                     {
                        addr1921:
                        _loc22_ = _loc25_ + _loc6_;
                        si8(_loc18_,_loc22_);
                        _loc11_ = _loc9_ + 2;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     if(_loc8_ == 134)
                     {
                        addr2796:
                        _loc22_ = _loc25_ + _loc6_;
                        si8(_loc17_,_loc22_);
                        _loc11_ = _loc9_ + 2;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     §§goto(addr5536);
                  }
                  §§goto(addr5536);
               }
               else
               {
                  if(_loc8_ > 139)
                  {
                     _loc20_ = _loc16_;
                     if(_loc8_ != 140)
                     {
                        if(_loc8_ == 141)
                        {
                           _loc22_ = _loc9_ + _loc25_;
                           _loc20_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_;
                           _loc11_ = _loc9_ + 3;
                           if(uint(_loc20_) <= 2047)
                           {
                              si8(_loc18_,_loc25_ + _loc20_);
                              _loc20_ = _loc14_;
                           }
                           else
                           {
                              addr2178:
                              si32(_loc14_,_loc19_);
                              _loc22_ = _loc24_ + _loc20_;
                              si8(_loc18_,_loc22_ + 1364);
                              _loc22_ = _loc20_ & -256;
                              if(_loc22_ == 53760)
                              {
                                 _loc1_ -= 16;
                                 si32(_loc18_,_loc1_ + 8);
                                 si32(_loc20_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN7Sap_Emu10cpu_write_Eji();
                                 _loc1_ += 16;
                              }
                              _loc20_ = li32(_loc19_);
                           }
                           continue;
                        }
                        if(_loc8_ != 142)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc20_ = _loc17_;
                        }
                     }
                     _loc22_ = _loc9_ + _loc25_;
                     _loc6_ = (_loc22_ = (_loc8_ = li8(_loc22_ + 2)) << 8) | _loc6_;
                     _loc11_ = _loc9_ + 3;
                     if(uint(_loc6_) <= 2047)
                     {
                        si8(_loc20_,_loc25_ + _loc6_);
                        _loc20_ = _loc14_;
                     }
                     else
                     {
                        si32(_loc14_,_loc19_);
                        si8(_loc20_,_loc24_ + _loc6_ + 1364);
                        if(_loc8_ == 210)
                        {
                           _loc1_ -= 16;
                           si32(_loc20_,_loc1_ + 8);
                           si32(_loc6_,_loc1_ + 4);
                           si32(_loc24_,_loc1_);
                           ESP = _loc1_;
                           F__ZN7Sap_Emu10cpu_write_Eji();
                           _loc1_ += 16;
                        }
                        _loc20_ = li32(_loc19_);
                     }
                     continue;
                  }
                  if(_loc8_ == 136)
                  {
                     _loc15_ = _loc16_ + -1;
                     _loc16_ = _loc15_ & 0xFF;
                     _loc20_ = _loc14_;
                     continue;
                  }
                  _loc20_ = _loc14_;
                  if(_loc8_ != 137)
                  {
                     if(_loc8_ == 138)
                     {
                        _loc15_ = _loc17_;
                        _loc18_ = _loc17_;
                        _loc20_ = _loc14_;
                        continue;
                     }
                     §§goto(addr5536);
                  }
                  else
                  {
                     §§goto(addr5529);
                  }
               }
            }
            else if(_loc8_ <= 151)
            {
               if(_loc8_ <= 147)
               {
                  if(_loc8_ != 144)
                  {
                     if(_loc8_ != 145)
                     {
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc25_ + _loc6_;
                        _loc20_ = (_loc22_ = li8(_loc22_)) + _loc16_ + ((_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ = _loc6_ + 1) & 0xFF))) << 8);
                        _loc11_ = _loc9_ + 2;
                     }
                  }
                  else
                  {
                     _loc11_ = _loc9_ + 2;
                     _loc22_ = _loc7_ & 0x0100;
                     if(_loc22_ == 0)
                     {
                        _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                        _loc11_ = _loc20_ + _loc11_;
                        continue;
                     }
                     §§goto(addr232);
                  }
               }
               else if(_loc8_ != 148)
               {
                  if(_loc8_ != 149)
                  {
                     if(_loc8_ != 150)
                     {
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc6_ + _loc16_;
                        _loc6_ = _loc22_ & 0xFF;
                        §§goto(addr2796);
                     }
                  }
                  else
                  {
                     _loc22_ = _loc6_ + _loc17_;
                     _loc6_ = _loc22_ & 0xFF;
                     §§goto(addr1921);
                  }
               }
               else
               {
                  _loc22_ = _loc6_ + _loc17_;
                  _loc6_ = _loc22_ & 0xFF;
                  §§goto(addr2769);
               }
               §§goto(addr5536);
            }
            else if(_loc8_ <= 156)
            {
               if(_loc8_ == 152)
               {
                  _loc15_ = _loc16_;
                  _loc18_ = _loc16_;
                  _loc20_ = _loc14_;
                  continue;
               }
               if(_loc8_ != 153)
               {
                  if(_loc8_ == 154)
                  {
                     _loc22_ = _loc17_ + 1;
                     _loc13_ = _loc22_ | 0x0100;
                     _loc20_ = _loc14_;
                     continue;
                  }
                  §§goto(addr5536);
               }
               else
               {
                  _loc22_ = _loc9_ + _loc25_;
                  _loc20_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc16_;
                  _loc11_ = _loc9_ + 3;
                  if(uint(_loc20_) <= 2047)
                  {
                     si8(_loc18_,_loc25_ + _loc20_);
                     _loc20_ = _loc14_;
                     continue;
                  }
               }
            }
            else if(_loc8_ != 157)
            {
               if(_loc8_ == 160)
               {
                  addr2864:
                  _loc11_ = _loc9_ + 2;
                  _loc15_ = _loc6_;
                  _loc16_ = _loc6_;
                  _loc20_ = _loc14_;
                  continue;
               }
               if(_loc8_ == 161)
               {
                  _loc21_ = _loc6_ + _loc17_;
                  _loc6_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                  _loc11_ = _loc9_ + 2;
                  _loc20_ = _loc14_;
                  addr2574:
                  si32(_loc20_,_loc19_);
                  _loc22_ = _loc24_ + _loc6_;
                  _loc18_ = _loc15_ = li8(_loc22_ + 1364);
                  continue;
               }
               §§goto(addr5536);
            }
            else
            {
               _loc22_ = _loc9_ + _loc25_;
               _loc20_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc17_;
               _loc11_ = _loc9_ + 3;
               if(uint(_loc20_) <= 2047)
               {
                  si8(_loc18_,_loc25_ + _loc20_);
                  _loc20_ = _loc14_;
                  continue;
               }
            }
            §§goto(addr2178);
            §§goto(addr5536);
         }
         else
         {
            if(_loc8_ <= 224)
            {
               if(_loc8_ <= 208)
               {
                  if(_loc8_ <= 200)
                  {
                     if(_loc8_ <= 196)
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 194)
                        {
                           if(_loc8_ == 196)
                           {
                              _loc22_ = _loc25_ + _loc6_;
                              _loc6_ = li8(_loc22_);
                              §§goto(addr3194);
                           }
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     else if(_loc8_ != 197)
                     {
                        if(_loc8_ != 198)
                        {
                           if(_loc8_ == 200)
                           {
                              _loc15_ = _loc16_ + 1;
                              _loc16_ = _loc15_ & 0xFF;
                              _loc20_ = _loc14_;
                              continue;
                           }
                        }
                        else
                        {
                           addr4728:
                           _loc11_ = -1;
                           _loc22_ = _loc25_ + _loc6_;
                           _loc15_ = (_loc22_ = li8(_loc22_)) + _loc11_;
                           §§goto(addr4649);
                        }
                     }
                     else
                     {
                        addr1737:
                        _loc22_ = _loc25_ + _loc6_;
                        _loc6_ = li8(_loc22_);
                        _loc20_ = _loc14_;
                        §§goto(addr1807);
                     }
                     §§goto(addr5536);
                  }
                  else if(_loc8_ <= 204)
                  {
                     _loc20_ = _loc14_;
                     if(_loc8_ != 201)
                     {
                        if(_loc8_ == 202)
                        {
                           _loc15_ = _loc17_ + -1;
                           _loc17_ = _loc15_ & 0xFF;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        if(_loc8_ != 204)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc11_ = _loc9_ + 2;
                           si32(_loc14_,_loc19_);
                           _loc22_ = _loc25_ + _loc11_;
                           _loc6_ = li8((_loc22_ = _loc24_ + ((_loc22_ = li8(_loc22_) << 8) | _loc6_)) + 1364);
                           §§goto(addr3194);
                        }
                     }
                  }
                  else if(_loc8_ != 205)
                  {
                     if(_loc8_ == 206)
                     {
                        _loc22_ = _loc9_ + _loc25_;
                        _loc11_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_;
                        _loc15_ = -1;
                        addr4859:
                        si32(_loc14_,_loc19_);
                        _loc22_ = _loc24_ + _loc11_;
                        si8(_loc15_ = (_loc21_ = li8(_loc22_ + 1364)) + _loc15_,_loc22_ + 1364);
                        _loc22_ = _loc11_ & -256;
                        if(_loc22_ == 53760)
                        {
                           _loc1_ -= 16;
                           si32(_loc11_,_loc1_ + 4);
                           si32(_loc24_,_loc1_);
                           _loc22_ = _loc15_ & 0xFF;
                           si32(_loc22_,_loc1_ + 8);
                           ESP = _loc1_;
                           F__ZN7Sap_Emu10cpu_write_Eji();
                           _loc1_ += 16;
                        }
                        _loc11_ = _loc9_ + 3;
                        _loc20_ = li32(_loc19_);
                        continue;
                     }
                     if(_loc8_ != 208)
                     {
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc11_ = _loc9_ + 2;
                        _loc22_ = _loc15_ & 0xFF;
                        if(_loc22_ != 0)
                        {
                           _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                           _loc11_ = _loc20_ + _loc11_;
                           continue;
                        }
                        §§goto(addr232);
                     }
                  }
                  else
                  {
                     addr1768:
                     _loc11_ = _loc9_ + 2;
                     _loc22_ = _loc25_ + _loc11_;
                     _loc7_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                     _loc20_ = _loc14_;
                     §§goto(addr1793);
                  }
                  §§goto(addr1793);
               }
               else if(_loc8_ <= 216)
               {
                  if(_loc8_ <= 212)
                  {
                     if(_loc8_ != 209)
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 212)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     else
                     {
                        _loc22_ = _loc25_ + _loc6_;
                        _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                        _loc21_ = _loc6_ + 1;
                        _loc7_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                        _loc22_ >>>= 8;
                        _loc20_ = _loc22_ >>>= 8 + _loc14_;
                        §§goto(addr1793);
                     }
                  }
                  else if(_loc8_ != 213)
                  {
                     if(_loc8_ != 214)
                     {
                        if(_loc8_ == 216)
                        {
                           _loc12_ &= -9;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc6_ + _loc17_;
                        _loc6_ = _loc22_ & 0xFF;
                        §§goto(addr4728);
                     }
                  }
                  else
                  {
                     _loc22_ = _loc6_ + _loc17_;
                     _loc6_ = _loc22_ & 0xFF;
                     §§goto(addr1737);
                  }
                  §§goto(addr1793);
               }
               else
               {
                  if(_loc8_ <= 220)
                  {
                     _loc20_ = _loc16_;
                     if(_loc8_ != 217)
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ == 218)
                        {
                           continue;
                        }
                        if(_loc8_ != 220)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           §§goto(addr5505);
                        }
                     }
                  }
                  else if(_loc8_ != 221)
                  {
                     if(_loc8_ != 222)
                     {
                        if(_loc8_ == 224)
                        {
                           addr3130:
                           _loc22_ = _loc17_ - _loc6_;
                           _loc15_ = _loc22_ & 0xFF;
                           _loc7_ = _loc22_ ^ -1;
                           _loc11_ += 1;
                           _loc20_ = _loc14_;
                           continue;
                        }
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc9_ + _loc25_;
                        _loc11_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc17_;
                        _loc15_ = -1;
                        §§goto(addr4859);
                     }
                  }
                  else
                  {
                     _loc20_ = _loc17_;
                  }
                  _loc6_ = _loc20_ + _loc6_;
                  _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
                  §§goto(addr1768);
               }
               §§goto(addr1768);
            }
            else if(_loc8_ <= 237)
            {
               if(_loc8_ <= 231)
               {
                  if(_loc8_ <= 227)
                  {
                     if(_loc8_ != 225)
                     {
                        _loc20_ = _loc14_;
                        if(_loc8_ != 226)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           §§goto(addr5529);
                        }
                     }
                     else
                     {
                        _loc21_ = _loc6_ + _loc17_;
                        _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + ((_loc21_ += 1) & 0xFF))) << 8) | li8(_loc22_ = _loc25_ + (_loc21_ & 0xFF));
                        _loc20_ = _loc14_;
                        addr4034:
                        si32(_loc20_,_loc19_);
                        _loc22_ = _loc24_ + _loc15_;
                        _loc6_ = li8(_loc22_ + 1364);
                     }
                  }
                  else if(_loc8_ != 228)
                  {
                     if(_loc8_ != 229)
                     {
                        _loc11_ = 1;
                        if(_loc8_ != 230)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           §§goto(addr4728);
                        }
                     }
                     else
                     {
                        addr3978:
                        _loc22_ = _loc25_ + _loc6_;
                        _loc6_ = li8(_loc22_);
                        _loc20_ = _loc14_;
                     }
                  }
                  else
                  {
                     _loc22_ = _loc25_ + _loc6_;
                     _loc6_ = li8(_loc22_);
                     §§goto(addr3130);
                  }
               }
               else if(_loc8_ <= 234)
               {
                  if(_loc8_ == 232)
                  {
                     _loc15_ = _loc17_ + 1;
                     _loc17_ = _loc15_ & 0xFF;
                     _loc20_ = _loc14_;
                     continue;
                  }
                  _loc20_ = _loc14_;
                  if(_loc8_ != 233)
                  {
                     _loc20_ = _loc14_;
                     if(_loc8_ == 234)
                     {
                        continue;
                     }
                     §§goto(addr5536);
                  }
               }
               else
               {
                  _loc20_ = _loc14_;
                  if(_loc8_ != 235)
                  {
                     if(_loc8_ != 236)
                     {
                        if(_loc8_ != 237)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           addr4009:
                           _loc11_ = _loc9_ + 2;
                           _loc22_ = _loc25_ + _loc11_;
                           _loc15_ = (_loc22_ = (_loc22_ = li8(_loc22_)) << 8) + _loc6_;
                           _loc20_ = _loc14_;
                           §§goto(addr4034);
                        }
                     }
                     else
                     {
                        _loc11_ = _loc9_ + 2;
                        si32(_loc14_,_loc19_);
                        _loc22_ = _loc25_ + _loc11_;
                        _loc6_ = li8((_loc22_ = _loc24_ + ((_loc22_ = li8(_loc22_) << 8) | _loc6_)) + 1364);
                        §§goto(addr3130);
                     }
                  }
               }
               addr4048:
               _loc6_ ^= 255;
               §§goto(addr4227);
            }
            else if(_loc8_ <= 247)
            {
               if(_loc8_ <= 243)
               {
                  if(_loc8_ != 238)
                  {
                     if(_loc8_ != 240)
                     {
                        if(_loc8_ != 241)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc22_ = _loc25_ + _loc6_;
                           _loc22_ = (_loc22_ = li8(_loc22_)) + _loc16_;
                           _loc21_ = _loc6_ + 1;
                           _loc15_ = (_loc21_ = (_loc21_ = li8(_loc21_ = _loc25_ + (_loc21_ & 0xFF))) << 8) + _loc22_;
                           _loc22_ >>>= 8;
                           _loc20_ = _loc22_ >>>= 8 + _loc14_;
                           §§goto(addr4034);
                        }
                     }
                     else
                     {
                        _loc11_ = _loc9_ + 2;
                        _loc22_ = _loc15_ & 0xFF;
                        if(_loc22_ == 0)
                        {
                           _loc20_ = (_loc21_ = (_loc21_ = (_loc21_ = _loc20_ + (_loc11_ & 0xFF)) >>> 8) & 1) + _loc14_;
                           _loc11_ = _loc20_ + _loc11_;
                           continue;
                        }
                        §§goto(addr232);
                     }
                  }
                  else
                  {
                     _loc22_ = _loc9_ + _loc25_;
                     _loc11_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_;
                     _loc15_ = 1;
                     §§goto(addr4859);
                  }
               }
               else
               {
                  _loc20_ = _loc14_;
                  if(_loc8_ != 244)
                  {
                     if(_loc8_ != 245)
                     {
                        if(_loc8_ != 246)
                        {
                           §§goto(addr5536);
                        }
                        else
                        {
                           _loc22_ = _loc6_ + _loc17_;
                           _loc6_ = _loc22_ & 0xFF;
                           _loc11_ = 1;
                           §§goto(addr4728);
                        }
                     }
                     else
                     {
                        _loc22_ = _loc6_ + _loc17_;
                        _loc6_ = _loc22_ & 0xFF;
                        §§goto(addr3978);
                     }
                  }
                  else
                  {
                     §§goto(addr5529);
                  }
               }
               §§goto(addr4048);
            }
            else
            {
               if(_loc8_ <= 251)
               {
                  if(_loc8_ == 248)
                  {
                     _loc12_ |= 8;
                     _loc20_ = _loc14_;
                     continue;
                  }
                  _loc20_ = _loc16_;
                  if(_loc8_ != 249)
                  {
                     _loc20_ = _loc14_;
                     if(_loc8_ == 250)
                     {
                        continue;
                     }
                     §§goto(addr5536);
                  }
               }
               else if(_loc8_ != 252)
               {
                  if(_loc8_ != 253)
                  {
                     if(_loc8_ != 254)
                     {
                        §§goto(addr5536);
                     }
                     else
                     {
                        _loc22_ = _loc9_ + _loc25_;
                        _loc11_ = (_loc22_ = (_loc22_ = (_loc22_ = li8(_loc22_ + 2)) << 8) | _loc6_) + _loc17_;
                        _loc15_ = 1;
                        §§goto(addr4859);
                     }
                  }
                  else
                  {
                     _loc20_ = _loc17_;
                  }
               }
               else
               {
                  §§goto(addr5505);
               }
               _loc6_ = _loc20_ + _loc6_;
               _loc14_ = (_loc22_ = _loc6_ >>> 8) + _loc14_;
               §§goto(addr4009);
            }
            §§goto(addr5505);
         }
         §§goto(addr5505);
      }
      si32(_loc14_,_loc19_);
      si16(_loc9_,_loc10_);
      _loc22_ = _loc13_ + -1;
      si8(_loc22_,_loc10_ + 6);
      si8(_loc18_,_loc10_ + 2);
      si8(_loc17_,_loc10_ + 3);
      si8(_loc16_,_loc10_ + 4);
      _loc22_ = _loc15_ >>> 8;
      _loc22_ = (_loc22_ = _loc22_ | _loc15_) & 0x80;
      _loc21_ = _loc7_ >>> 8;
      _loc21_ = (_loc21_ = _loc21_ & 1) | _loc22_;
      _loc22_ = _loc12_ & 0x4C;
      _loc23_ = _loc21_ | _loc22_;
      _loc22_ = _loc15_ & 0xFF;
      if(_loc22_ == 0)
      {
         _loc23_ |= 2;
      }
      si8(_loc23_,_loc10_ + 5);
      _loc22_ = li32(_loc2_ - 8);
      si32(_loc22_,_loc10_ + 12);
      si32(_loc14_,_loc10_ + 16);
      _loc22_ = _loc10_ + 12;
      si32(_loc22_,_loc10_ + 8);
      eax = _loc26_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
