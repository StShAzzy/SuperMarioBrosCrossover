package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL11cycle_table;
   
   public function F__ZN7Spc_Cpu3runEi() : void
   {
      var _loc2_:* = 0;
      var _loc27_:* = 0;
      var _loc26_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc25_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc22_:* = 0;
      var _loc19_:* = 0;
      var _loc21_:* = 0;
      var _loc20_:* = 0;
      var _loc8_:* = 0;
      var _loc24_:int = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc11_ = li32(_loc2_ + 4);
      _loc27_ = li32(_loc2_);
      si32(_loc11_,_loc27_ + 16);
      _loc26_ = li32(_loc27_);
      _loc24_ = (_loc25_ = int((_loc25_ = li8(_loc27_ + 12)) + _loc26_)) + 257;
      var _loc23_:*;
      _loc22_ = (_loc23_ = (_loc23_ = (_loc23_ = (_loc25_ = li8(_loc27_ + 11)) << 4) | _loc25_) & 2050) ^ 2;
      _loc21_ = li8(_loc27_ + 10);
      _loc20_ = li8(_loc27_ + 9);
      _loc8_ = li8(_loc27_ + 8);
      _loc16_ = li32(_loc27_ + 4);
      _loc17_ = _loc25_ << 8;
      _loc18_ = _loc25_ & 92;
      _loc19_ = (_loc25_ <<= 3) & 256;
      while(true)
      {
         _loc12_ = _loc22_;
         _loc13_ = _loc8_;
         _loc14_ = _loc16_;
         if(_loc11_ >= 1)
         {
            _loc15_ = li8(_loc25_ = int(_loc26_ + _loc14_));
            _loc16_ = int(_loc14_ + 1);
            _loc7_ = (_loc25_ = (_loc9_ = li8(_loc10_ = int(_loc26_ + _loc16_))) << 24) >> 24;
            si32(_loc11_ -= li8(_loc25_ = int(__ZL11cycle_table + _loc15_)),_loc27_ + 16);
            if(_loc15_ <= 125)
            {
               if(_loc15_ > 62)
               {
                  if(_loc15_ <= 93)
                  {
                     if(_loc15_ <= 77)
                     {
                        if(_loc15_ <= 69)
                        {
                           if(_loc15_ <= 65)
                           {
                              if(_loc15_ == 63)
                              {
                                 si8(_loc23_ = int((_loc25_ = int(_loc14_ + 3)) >>> 8),_loc24_ - 1);
                                 si8(_loc25_,_loc24_ - 2);
                                 _loc16_ = (_loc23_ = (_loc23_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2)) << 8) | li8(_loc10_);
                                 _loc24_ += -2;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              if(_loc15_ == 64)
                              {
                                 _loc19_ = 256;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              if(_loc15_ != 65)
                              {
                                 break;
                              }
                              §§goto(addr7065);
                           }
                           else
                           {
                              if(_loc15_ <= 67)
                              {
                                 if(_loc15_ != 66)
                                 {
                                    if(_loc15_ != 67)
                                    {
                                       break;
                                    }
                                    §§goto(addr6553);
                                 }
                                 else
                                 {
                                    §§goto(addr7334);
                                 }
                              }
                              else
                              {
                                 if(_loc15_ != 68)
                                 {
                                    if(_loc15_ != 69)
                                    {
                                       break;
                                    }
                                    addr3671:
                                    _loc16_ = int(_loc14_ + 2);
                                    _loc12_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                                 }
                                 else
                                 {
                                    addr3705:
                                    _loc12_ = _loc9_ | _loc19_;
                                 }
                                 addr3710:
                                 _loc25_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32(_loc12_,_loc1_ + 4);
                                 si32(_loc25_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc9_ = int(eax);
                                 _loc8_ = _loc22_ = _loc9_ ^ _loc13_;
                                 §§goto(addr7334);
                              }
                              §§goto(addr7334);
                           }
                        }
                        else
                        {
                           if(_loc15_ <= 73)
                           {
                              if(_loc15_ <= 71)
                              {
                                 if(_loc15_ != 70)
                                 {
                                    if(_loc15_ != 71)
                                    {
                                       break;
                                    }
                                    _loc12_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                                 }
                                 else
                                 {
                                    _loc12_ = int(_loc20_ + _loc19_);
                                    _loc16_ = _loc14_;
                                 }
                                 §§goto(addr3710);
                              }
                              else
                              {
                                 if(_loc15_ != 72)
                                 {
                                    if(_loc15_ != 73)
                                    {
                                       break;
                                    }
                                    _loc23_ = li32(_loc27_ + 20);
                                    _loc1_ -= 16;
                                    si32(_loc9_ | _loc19_,_loc1_ + 4);
                                    si32(_loc23_,_loc1_);
                                    ESP = _loc1_;
                                    F__ZN8Snes_Spc4readEj();
                                    _loc1_ += 16;
                                    _loc9_ = int(eax);
                                    addr3827:
                                    _loc16_ = int(_loc14_ + 2);
                                    _loc12_ = li8(_loc25_ = int(_loc26_ + _loc16_));
                                    _loc25_ = int(_loc12_ + _loc19_);
                                    _loc23_ = li32(_loc27_ + 20);
                                    _loc1_ -= 16;
                                    si32(_loc25_,_loc1_ + 4);
                                    si32(_loc23_,_loc1_);
                                    ESP = _loc1_;
                                    F__ZN8Snes_Spc4readEj();
                                    _loc1_ += 16;
                                    _loc22_ = (_loc23_ = int(eax)) ^ _loc9_;
                                    _loc23_ = li32(_loc27_ + 20);
                                    _loc1_ -= 16;
                                    si32(_loc22_,_loc1_ + 8);
                                    si32(_loc25_,_loc1_ + 4);
                                    si32(_loc23_,_loc1_);
                                    ESP = _loc1_;
                                    F__ZN8Snes_Spc5writeEji();
                                    _loc1_ += 16;
                                    _loc8_ = _loc13_;
                                 }
                                 §§goto(addr7334);
                              }
                           }
                           else
                           {
                              if(_loc15_ <= 75)
                              {
                                 if(_loc15_ == 74)
                                 {
                                    _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                                    _loc1_ -= 16;
                                    si32(li32(_loc27_ + 20),_loc1_);
                                    var _loc5_:*;
                                    si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                                    ESP = _loc1_;
                                    F__ZN8Snes_Spc4readEj();
                                    _loc1_ += 16;
                                    _loc17_ = (_loc25_ = _loc17_ & (_loc25_ = int((_loc23_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) & 256;
                                    _loc16_ = int(_loc14_ + 3);
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                    continue;
                                 }
                                 if(_loc15_ != 75)
                                 {
                                    break;
                                 }
                                 _loc14_ = _loc9_ | _loc19_;
                                 _loc17_ = 0;
                              }
                              else
                              {
                                 if(_loc15_ != 76)
                                 {
                                    if(_loc15_ != 77)
                                    {
                                       break;
                                    }
                                    si8(_loc20_,_loc24_ - 1);
                                    _loc24_ += -1;
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                    continue;
                                 }
                                 _loc17_ = 0;
                                 addr5336:
                                 _loc25_ = li8(_loc10_);
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc14_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | _loc25_;
                              }
                              addr5361:
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc14_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc23_ = (_loc25_ = int(_loc17_ >>> 1)) & 128;
                              _loc1_ += 16;
                              _loc22_ = (_loc5_ = (_loc25_ = int(eax)) >> 1) | _loc23_;
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc22_,_loc1_ + 8);
                              si32(_loc14_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc17_ = _loc25_ << 8;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                           §§goto(addr7334);
                        }
                     }
                     else if(_loc15_ <= 85)
                     {
                        if(_loc15_ <= 81)
                        {
                           if(_loc15_ <= 79)
                           {
                              if(_loc15_ != 78)
                              {
                                 if(_loc15_ != 79)
                                 {
                                    break;
                                 }
                                 si8(_loc25_ = int((_loc23_ = int(_loc14_ + 2)) >>> 8),_loc24_ - 1);
                                 si8(_loc23_,_loc24_ - 2);
                                 _loc16_ = _loc9_ | 65280;
                                 _loc24_ += -2;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              §§goto(addr7438);
                           }
                           else
                           {
                              if(_loc15_ == 80)
                              {
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 if((_loc18_ & 64) == 0)
                                 {
                                    si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                    _loc16_ = int(_loc7_ + _loc16_);
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                 }
                                 continue;
                              }
                              if(_loc15_ != 81)
                              {
                                 break;
                              }
                              §§goto(addr7065);
                           }
                        }
                        else
                        {
                           if(_loc15_ <= 83)
                           {
                              if(_loc15_ != 82)
                              {
                                 if(_loc15_ != 83)
                                 {
                                    break;
                                 }
                                 §§goto(addr6616);
                              }
                              else
                              {
                                 §§goto(addr7334);
                              }
                           }
                           else if(_loc15_ != 84)
                           {
                              if(_loc15_ != 85)
                              {
                                 break;
                              }
                              _loc9_ += _loc20_;
                              §§goto(addr3671);
                           }
                           else
                           {
                              _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                              §§goto(addr3705);
                           }
                           §§goto(addr7334);
                        }
                     }
                     else
                     {
                        if(_loc15_ <= 89)
                        {
                           if(_loc15_ <= 87)
                           {
                              if(_loc15_ != 86)
                              {
                                 if(_loc15_ != 87)
                                 {
                                    break;
                                 }
                                 _loc12_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                              }
                              else
                              {
                                 _loc9_ += _loc21_;
                                 §§goto(addr3671);
                              }
                              §§goto(addr3710);
                           }
                           else
                           {
                              if(_loc15_ != 88)
                              {
                                 if(_loc15_ != 89)
                                 {
                                    break;
                                 }
                                 _loc23_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32(int(_loc21_ + _loc19_),_loc1_ + 4);
                                 si32(_loc23_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc9_ = int(eax);
                                 _loc12_ = _loc20_;
                                 _loc16_ = _loc14_;
                              }
                              else
                              {
                                 §§goto(addr3827);
                              }
                              §§goto(addr3827);
                           }
                        }
                        else if(_loc15_ <= 91)
                        {
                           if(_loc15_ != 90)
                           {
                              if(_loc15_ != 91)
                              {
                                 break;
                              }
                              _loc17_ = 0;
                              addr5317:
                              _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                              addr5327:
                              _loc14_ = _loc9_ | _loc19_;
                              §§goto(addr5361);
                           }
                           else
                           {
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc9_ | _loc19_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc23_ = int(eax);
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32((_loc25_ = (_loc25_ = int(_loc9_ + 1)) & 255) | _loc19_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc22_ = (_loc23_ = (_loc5_ = int(int(_loc21_ - int(eax)) + (_loc23_ >> 8))) & 255) | (_loc25_ = (_loc25_ = int((_loc23_ = int(_loc13_ - _loc23_)) >>> 1)) | _loc23_) & 127;
                              _loc17_ = _loc5_ ^ -1;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 92)
                           {
                              if(_loc15_ != 93)
                              {
                                 break;
                              }
                              _loc22_ = _loc13_;
                              _loc20_ = _loc13_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           _loc17_ = 0;
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 109)
                  {
                     if(_loc15_ <= 101)
                     {
                        if(_loc15_ <= 97)
                        {
                           if(_loc15_ <= 95)
                           {
                              if(_loc15_ != 94)
                              {
                                 if(_loc15_ != 95)
                                 {
                                    break;
                                 }
                                 §§goto(addr6897);
                              }
                              else
                              {
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc17_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | li8(_loc10_);
                                 addr4392:
                                 _loc25_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32(_loc17_,_loc1_ + 4);
                                 si32(_loc25_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc9_ = int(eax);
                                 _loc22_ = (_loc25_ = int(_loc21_ - _loc9_)) & 255;
                                 _loc17_ = _loc25_ ^ -1;
                                 _loc8_ = _loc13_;
                                 §§goto(addr7334);
                              }
                           }
                           else
                           {
                              if(_loc15_ == 96)
                              {
                                 _loc17_ = 0;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              if(_loc15_ != 97)
                              {
                                 break;
                              }
                              §§goto(addr7065);
                           }
                        }
                        else
                        {
                           if(_loc15_ <= 99)
                           {
                              if(_loc15_ != 98)
                              {
                                 if(_loc15_ != 99)
                                 {
                                    break;
                                 }
                                 §§goto(addr6553);
                              }
                              else
                              {
                                 §§goto(addr7334);
                              }
                           }
                           else
                           {
                              if(_loc15_ != 100)
                              {
                                 if(_loc15_ != 101)
                                 {
                                    break;
                                 }
                                 addr4006:
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc17_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                              }
                              else
                              {
                                 addr4040:
                                 _loc17_ = _loc9_ | _loc19_;
                              }
                              addr4045:
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc17_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc9_ = int(eax);
                              _loc22_ = (_loc25_ = int(_loc13_ - _loc9_)) & 255;
                              _loc17_ = _loc25_ ^ -1;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                           §§goto(addr7334);
                        }
                     }
                     else if(_loc15_ <= 105)
                     {
                        if(_loc15_ <= 103)
                        {
                           if(_loc15_ != 102)
                           {
                              if(_loc15_ != 103)
                              {
                                 break;
                              }
                              _loc17_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                           }
                           else
                           {
                              _loc17_ = int(_loc20_ + _loc19_);
                              _loc16_ = _loc14_;
                           }
                           §§goto(addr4045);
                        }
                        else
                        {
                           if(_loc15_ != 104)
                           {
                              if(_loc15_ != 105)
                              {
                                 break;
                              }
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc9_ | _loc19_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc9_ = int(eax);
                              addr4216:
                              _loc16_ = int(_loc14_ + 2);
                              _loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) | _loc19_;
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc25_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc22_ = (_loc25_ = int((_loc25_ = int(eax)) - _loc9_)) & 255;
                              _loc17_ = _loc25_ ^ -1;
                              _loc8_ = _loc13_;
                           }
                           §§goto(addr7334);
                        }
                     }
                     else if(_loc15_ <= 107)
                     {
                        if(_loc15_ == 106)
                        {
                           _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                           _loc1_ -= 16;
                           si32(li32(_loc27_ + 20),_loc1_);
                           si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc17_ = (_loc25_ = (_loc25_ = (_loc25_ = (_loc25_ = int((_loc25_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) | -257) ^ 256) & _loc17_;
                           _loc16_ = int(_loc14_ + 3);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        if(_loc15_ != 107)
                        {
                           break;
                        }
                        §§goto(addr5327);
                     }
                     else
                     {
                        if(_loc15_ != 108)
                        {
                           if(_loc15_ != 109)
                           {
                              break;
                           }
                           si8(_loc21_,_loc24_ - 1);
                           _loc24_ += -1;
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        §§goto(addr5336);
                     }
                  }
                  else if(_loc15_ <= 117)
                  {
                     if(_loc15_ <= 113)
                     {
                        if(_loc15_ <= 111)
                        {
                           if(_loc15_ != 110)
                           {
                              if(_loc15_ != 111)
                              {
                                 break;
                              }
                              _loc16_ = (_loc23_ = (_loc23_ = li8(_loc24_ + 1)) << 8) | li8(_loc24_);
                              _loc24_ += 2;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           var _loc6_:*;
                           si32(_loc5_ = (_loc6_ = int(int(eax) + -1)) & 255,_loc1_ + 8);
                           si32(_loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc16_ = int(_loc14_ + 2);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           if(_loc6_ != 0)
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr7334);
                        }
                        else
                        {
                           if(_loc15_ == 112)
                           {
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if((_loc18_ & 64) != 0)
                              {
                                 si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                 _loc16_ = int(_loc7_ + _loc16_);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              continue;
                           }
                           if(_loc15_ != 113)
                           {
                              break;
                           }
                           §§goto(addr7065);
                        }
                     }
                     else
                     {
                        if(_loc15_ <= 115)
                        {
                           if(_loc15_ != 114)
                           {
                              if(_loc15_ != 115)
                              {
                                 break;
                              }
                              §§goto(addr6616);
                           }
                           else
                           {
                              §§goto(addr7334);
                           }
                        }
                        else if(_loc15_ != 116)
                        {
                           if(_loc15_ != 117)
                           {
                              break;
                           }
                           _loc9_ += _loc20_;
                           §§goto(addr4006);
                        }
                        else
                        {
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                           §§goto(addr4040);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 121)
                  {
                     if(_loc15_ <= 119)
                     {
                        if(_loc15_ != 118)
                        {
                           if(_loc15_ != 119)
                           {
                              break;
                           }
                           _loc17_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                        }
                        else
                        {
                           _loc9_ += _loc21_;
                           §§goto(addr4006);
                        }
                        §§goto(addr4045);
                     }
                     else
                     {
                        if(_loc15_ != 120)
                        {
                           if(_loc15_ != 121)
                           {
                              break;
                           }
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(int(_loc20_ + _loc19_),_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc25_ = int(eax);
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(int(_loc21_ + _loc19_),_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc22_ = (_loc25_ -= int(eax)) & 255;
                           _loc17_ = _loc25_ ^ -1;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        §§goto(addr4216);
                     }
                  }
                  else if(_loc15_ <= 123)
                  {
                     if(_loc15_ != 122)
                     {
                        if(_loc15_ != 123)
                        {
                           break;
                        }
                        §§goto(addr5317);
                     }
                     else
                     {
                        addr5857:
                        _loc25_ = _loc9_ | _loc19_;
                        _loc23_ = li32(_loc27_ + 20);
                        _loc1_ -= 16;
                        si32(_loc25_,_loc1_ + 4);
                        si32(_loc23_,_loc1_);
                        _loc5_ = (_loc25_ = (_loc25_ = int(_loc9_ + 1)) & 255) | _loc19_;
                        ESP = _loc1_;
                        F__ZN8Snes_Spc4readEj();
                        _loc1_ += 16;
                        _loc25_ = int(eax);
                        _loc23_ = li32(_loc27_ + 20);
                        _loc1_ -= 16;
                        si32(_loc5_,_loc1_ + 4);
                        si32(_loc23_,_loc1_);
                        ESP = _loc1_;
                        F__ZN8Snes_Spc4readEj();
                        _loc1_ += 16;
                        _loc17_ = int((_loc23_ = (_loc14_ = int(eax)) << 8) + _loc25_);
                        if((_loc25_ = _loc15_ & 128) != 0)
                        {
                           _loc14_ = (_loc17_ = int((_loc25_ = _loc17_ ^ 65535) + 1)) >> 8;
                        }
                        _loc23_ = _loc18_ & -73;
                        _loc6_ = (_loc5_ = (_loc5_ = int((_loc25_ = int(_loc17_ + _loc13_)) >>> 1)) | _loc25_) & 127;
                        _loc5_ = (_loc17_ = int((_loc5_ = _loc25_ >> 8) + _loc21_)) & 255;
                        _loc22_ = _loc6_ | _loc5_;
                        _loc6_ = _loc17_ ^ _loc21_;
                        var _loc3_:* = _loc21_ ^ _loc14_;
                        _loc3_ ^= -1;
                        _loc6_ = (_loc6_ = int((_loc6_ &= _loc3_) >>> 1)) & 64;
                        _loc3_ = _loc17_ & 15;
                        var _loc4_:* = _loc21_ & 15;
                        _loc3_ -= _loc4_;
                        _loc3_ >>>= 4;
                        _loc3_ &= 8;
                        _loc18_ = (_loc23_ = _loc3_ | _loc23_) | _loc6_;
                        _loc8_ = _loc25_ & 255;
                        _loc21_ = _loc5_;
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ != 124)
                  {
                     if(_loc15_ != 125)
                     {
                        break;
                     }
                     _loc22_ = _loc20_;
                     _loc8_ = _loc20_;
                     continue;
                  }
                  §§goto(addr7334);
                  _loc8_ = _loc22_;
                  continue;
               }
               if(_loc15_ <= 30)
               {
                  if(_loc15_ <= 14)
                  {
                     if(_loc15_ <= 6)
                     {
                        if(_loc15_ <= 2)
                        {
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           if(_loc15_ != 0)
                           {
                              if(_loc15_ != 1)
                              {
                                 if(_loc15_ != 2)
                                 {
                                    break;
                                 }
                                 addr7334:
                                 _loc23_ = _loc9_ | _loc19_;
                                 _loc25_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32(_loc23_,_loc1_ + 4);
                                 si32(_loc25_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc9_ = int(eax);
                                 _loc1_ -= 16;
                                 si32(_loc23_,_loc1_ + 4);
                                 si32(_loc25_,_loc1_);
                                 _loc25_ = int(_loc15_ >>> 5);
                                 _loc14_ = 1 << _loc25_;
                                 _loc25_ = _loc15_ & 16;
                                 _loc15_ = _loc14_;
                                 if(_loc25_ != 0)
                                 {
                                    _loc15_ = 0;
                                 }
                                 _loc25_ = _loc14_ ^ -1;
                                 si32(_loc25_ = (_loc25_ = _loc9_ & _loc25_) | _loc15_,_loc1_ + 8);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc5writeEji();
                                 _loc1_ += 16;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 addr174:
                                 _loc16_ += 1;
                              }
                              else
                              {
                                 addr7065:
                                 si8(_loc25_ = int(_loc16_ >>> 8),_loc24_ - 1);
                                 si8(_loc16_,_loc24_ - 2);
                                 _loc25_ = int(_loc15_ >>> 3);
                                 _loc25_ = int(65502 - _loc25_);
                                 _loc25_ = li8(_loc23_ = int(_loc26_ + _loc25_));
                                 _loc16_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | _loc25_;
                                 _loc24_ += -2;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                           }
                           continue;
                        }
                        if(_loc15_ <= 4)
                        {
                           if(_loc15_ != 3)
                           {
                              if(_loc15_ != 4)
                              {
                                 break;
                              }
                              addr3370:
                              _loc12_ = _loc9_ | _loc19_;
                           }
                           else
                           {
                              addr6553:
                              _loc23_ = _loc9_ | _loc19_;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              _loc25_ = int(_loc15_ >>> 5);
                              _loc23_ = 1 << _loc25_;
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc25_ = (_loc25_ = int(eax)) & _loc23_;
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if(_loc25_ != 0)
                              {
                                 addr140:
                                 _loc25_ = si8(li8(_loc25_ = int(_loc26_ + _loc16_)));
                                 si32(_loc23_ = int((_loc23_ = li32(_loc27_ + 16)) + -2),_loc27_ + 16);
                                 _loc16_ = int(_loc25_ + _loc16_);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              §§goto(addr174);
                           }
                           §§goto(addr174);
                        }
                        else if(_loc15_ != 5)
                        {
                           if(_loc15_ != 6)
                           {
                              break;
                           }
                           _loc12_ = int(_loc20_ + _loc19_);
                           _loc16_ = _loc14_;
                        }
                        else
                        {
                           addr3336:
                           _loc16_ = int(_loc14_ + 2);
                           _loc12_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                        }
                        addr3375:
                        _loc25_ = li32(_loc27_ + 20);
                        _loc1_ -= 16;
                        si32(_loc12_,_loc1_ + 4);
                        si32(_loc25_,_loc1_);
                        ESP = _loc1_;
                        F__ZN8Snes_Spc4readEj();
                        _loc1_ += 16;
                        _loc9_ = int(eax);
                        _loc8_ = _loc22_ = _loc9_ | _loc13_;
                        §§goto(addr174);
                     }
                     else if(_loc15_ <= 10)
                     {
                        if(_loc15_ <= 8)
                        {
                           if(_loc15_ != 7)
                           {
                              if(_loc15_ != 8)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              _loc12_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                              §§goto(addr3375);
                           }
                           §§goto(addr3375);
                        }
                        else
                        {
                           if(_loc15_ != 9)
                           {
                              if(_loc15_ != 10)
                              {
                                 break;
                              }
                              _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                              _loc1_ -= 16;
                              si32(li32(_loc27_ + 20),_loc1_);
                              si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc17_ = (_loc25_ = (_loc25_ = (_loc25_ = int((_loc23_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) & 256) | _loc17_;
                              _loc16_ = int(_loc14_ + 3);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc9_ = int(eax);
                           addr3492:
                           _loc16_ = int(_loc14_ + 2);
                           _loc12_ = li8(_loc25_ = int(_loc26_ + _loc16_));
                           _loc25_ = int(_loc12_ + _loc19_);
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc25_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc22_ = (_loc23_ = int(eax)) | _loc9_;
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc22_,_loc1_ + 8);
                           si32(_loc25_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc8_ = _loc13_;
                           §§goto(addr174);
                        }
                     }
                     else
                     {
                        if(_loc15_ > 12)
                        {
                           if(_loc15_ != 13)
                           {
                              if(_loc15_ != 14)
                              {
                                 break;
                              }
                              addr7438:
                              _loc25_ = li8(_loc10_);
                              _loc16_ = (_loc23_ = (_loc23_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2)) << 8) | _loc25_;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc16_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              _loc25_ = _loc15_ & 64;
                              _loc12_ = _loc13_;
                              if(_loc25_ != 0)
                              {
                                 _loc12_ = 0;
                              }
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc23_ = _loc13_ ^ -1;
                              _loc1_ += 16;
                              _loc5_ = (_loc23_ = (_loc25_ = int(eax)) & _loc23_) | _loc12_;
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc5_,_loc1_ + 8);
                              si32(_loc16_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              _loc22_ = _loc25_ & _loc13_;
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc16_ = int(_loc14_ + 3);
                              _loc8_ = _loc13_;
                           }
                           else
                           {
                              _loc14_ = (_loc23_ = (_loc23_ = int(_loc17_ >>> 8)) & 1) | _loc18_ & -132 | int(_loc19_ >>> 3);
                              if((_loc25_ = _loc12_ & 2176) != 0)
                              {
                                 _loc14_ |= 128;
                              }
                              if((_loc25_ = _loc12_ & 255) == 0)
                              {
                                 _loc14_ |= 2;
                              }
                              si8(_loc14_,_loc24_ - 1);
                              _loc24_ += -1;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                           }
                           continue;
                        }
                        if(_loc15_ != 11)
                        {
                           if(_loc15_ != 12)
                           {
                              break;
                           }
                           _loc17_ = 0;
                           addr5190:
                           _loc25_ = li8(_loc10_);
                           _loc16_ = int(_loc14_ + 2);
                           _loc14_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | _loc25_;
                        }
                        else
                        {
                           _loc14_ = _loc9_ | _loc19_;
                           _loc17_ = 0;
                        }
                        addr5215:
                        _loc25_ = li32(_loc27_ + 20);
                        _loc1_ -= 16;
                        si32(_loc14_,_loc1_ + 4);
                        si32(_loc25_,_loc1_);
                        ESP = _loc1_;
                        F__ZN8Snes_Spc4readEj();
                        _loc25_ = (_loc25_ = int(_loc17_ >>> 8)) & 1;
                        _loc1_ += 16;
                        _loc25_ = (_loc22_ = (_loc17_ = (_loc23_ = int(eax)) << 1) | _loc25_) & 255;
                        _loc23_ = li32(_loc27_ + 20);
                        _loc1_ -= 16;
                        si32(_loc25_,_loc1_ + 8);
                        si32(_loc14_,_loc1_ + 4);
                        si32(_loc23_,_loc1_);
                        ESP = _loc1_;
                        F__ZN8Snes_Spc5writeEji();
                        _loc1_ += 16;
                        _loc8_ = _loc13_;
                        §§goto(addr174);
                     }
                     §§goto(addr174);
                  }
                  else
                  {
                     if(_loc15_ <= 22)
                     {
                        if(_loc15_ <= 18)
                        {
                           if(_loc15_ <= 16)
                           {
                              if(_loc15_ != 15)
                              {
                                 if(_loc15_ != 16)
                                 {
                                    break;
                                 }
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 if((_loc12_ & 2176) == 0)
                                 {
                                    si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                    _loc16_ = int(_loc7_ + _loc16_);
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                 }
                              }
                              else
                              {
                                 si8(_loc25_ = int((_loc23_ = int(_loc14_ + 2)) >>> 8),_loc24_ - 1);
                                 si8(_loc23_,_loc24_ - 2);
                                 _loc14_ = (_loc23_ = (_loc23_ = int(_loc17_ >>> 8)) & 1) | _loc18_ & -132 | int(_loc19_ >>> 3);
                                 if((_loc25_ = _loc12_ & 2176) != 0)
                                 {
                                    _loc14_ |= 128;
                                 }
                                 _loc16_ = li8(_loc26_ + 65502);
                                 _loc15_ = li8(_loc26_ + 65503);
                                 if((_loc25_ = _loc12_ & 255) == 0)
                                 {
                                    _loc14_ |= 2;
                                 }
                                 _loc16_ = (_loc25_ = _loc15_ << 8) | _loc16_;
                                 si8(_loc14_,_loc24_ - 3);
                                 _loc24_ += -3;
                                 _loc18_ = (_loc25_ = _loc18_ & -21) | 16;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              continue;
                           }
                           if(_loc15_ != 17)
                           {
                              if(_loc15_ != 18)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else if(_loc15_ <= 20)
                        {
                           if(_loc15_ != 19)
                           {
                              if(_loc15_ != 20)
                              {
                                 break;
                              }
                              _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                              §§goto(addr3370);
                           }
                           else
                           {
                              addr6616:
                              _loc23_ = _loc9_ | _loc19_;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              _loc25_ = int(_loc15_ >>> 5);
                              _loc25_ = 1 << _loc25_;
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc25_ = (_loc23_ = int(eax)) & _loc25_;
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if(_loc25_ != 0)
                              {
                                 §§goto(addr7334);
                              }
                              else
                              {
                                 §§goto(addr140);
                              }
                           }
                           §§goto(addr7334);
                        }
                        else
                        {
                           if(_loc15_ != 21)
                           {
                              if(_loc15_ != 22)
                              {
                                 break;
                              }
                              _loc9_ += _loc21_;
                           }
                           else
                           {
                              _loc9_ += _loc20_;
                           }
                           §§goto(addr3336);
                        }
                        §§goto(addr7334);
                     }
                     else if(_loc15_ <= 26)
                     {
                        if(_loc15_ <= 24)
                        {
                           if(_loc15_ != 23)
                           {
                              if(_loc15_ != 24)
                              {
                                 break;
                              }
                              §§goto(addr3492);
                           }
                           else
                           {
                              _loc12_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                              §§goto(addr3375);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 25)
                           {
                              if(_loc15_ != 26)
                              {
                                 break;
                              }
                              addr5650:
                              _loc23_ = _loc9_ | _loc19_;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc5_ = (_loc25_ = int(_loc15_ >>> 4)) & 2;
                              _loc1_ += 16;
                              _loc25_ = int(eax);
                              _loc5_ = (_loc25_ = int((_loc25_ = int(_loc5_ + _loc25_)) + -1)) & 255;
                              _loc6_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc5_,_loc1_ + 8);
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc6_,_loc1_);
                              _loc5_ = (_loc23_ = (_loc23_ = int(_loc9_ + 1)) & 255) | _loc19_;
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc5_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc23_ = int(eax);
                              _loc6_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc5_,_loc1_ + 4);
                              si32(_loc6_,_loc1_);
                              _loc5_ = (_loc5_ = (_loc5_ = int(_loc25_ >>> 1)) | _loc25_) & 127;
                              _loc25_ >>>= 8;
                              si32(_loc25_ = (_loc25_ = int(_loc23_ + _loc25_)) & 255,_loc1_ + 8);
                              _loc22_ = _loc25_ | _loc5_;
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                           else
                           {
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(int(_loc21_ + _loc19_),_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc9_ = int(eax);
                              _loc12_ = _loc20_;
                              _loc16_ = _loc14_;
                           }
                           §§goto(addr7334);
                        }
                        §§goto(addr3492);
                     }
                     else
                     {
                        if(_loc15_ <= 28)
                        {
                           if(_loc15_ != 27)
                           {
                              if(_loc15_ != 28)
                              {
                                 break;
                              }
                              _loc17_ = 0;
                              addr5135:
                              _loc25_ = _loc13_ << 1;
                              _loc8_ = (_loc22_ = (_loc23_ = (_loc23_ = int(_loc17_ >>> 8)) & 1) | _loc25_) & 255;
                              _loc17_ = _loc25_;
                              continue;
                           }
                           _loc17_ = 0;
                           addr5171:
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                           addr5181:
                           _loc14_ = _loc9_ | _loc19_;
                           §§goto(addr5215);
                        }
                        else
                        {
                           if(_loc15_ == 29)
                           {
                              _loc20_ = (_loc22_ = int(_loc20_ + -1)) & 255;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           if(_loc15_ != 30)
                           {
                              break;
                           }
                           _loc16_ = int(_loc14_ + 2);
                           _loc17_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | li8(_loc10_);
                        }
                        §§goto(addr7334);
                     }
                     §§goto(addr7334);
                  }
               }
               else
               {
                  if(_loc15_ <= 46)
                  {
                     if(_loc15_ <= 38)
                     {
                        if(_loc15_ <= 34)
                        {
                           if(_loc15_ <= 32)
                           {
                              if(_loc15_ != 31)
                              {
                                 if(_loc15_ != 32)
                                 {
                                    break;
                                 }
                                 _loc19_ = 0;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              else
                              {
                                 _loc16_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2)) << 8) | li8(_loc10_)) + _loc20_);
                                 addr6897:
                                 _loc25_ = li8(_loc23_ = int(_loc26_ + _loc16_));
                                 _loc16_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | _loc25_;
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              continue;
                           }
                           if(_loc15_ != 33)
                           {
                              if(_loc15_ != 34)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else
                        {
                           if(_loc15_ <= 36)
                           {
                              if(_loc15_ != 35)
                              {
                                 if(_loc15_ != 36)
                                 {
                                    break;
                                 }
                                 addr3035:
                                 _loc12_ = _loc9_ | _loc19_;
                              }
                              else
                              {
                                 §§goto(addr6553);
                              }
                              §§goto(addr7334);
                           }
                           else if(_loc15_ != 37)
                           {
                              if(_loc15_ != 38)
                              {
                                 break;
                              }
                              _loc12_ = int(_loc20_ + _loc19_);
                              _loc16_ = _loc14_;
                           }
                           else
                           {
                              addr3001:
                              _loc16_ = int(_loc14_ + 2);
                              _loc12_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                           }
                           addr3040:
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc12_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc9_ = int(eax);
                           _loc8_ = _loc22_ = _loc9_ & _loc13_;
                           §§goto(addr7334);
                        }
                     }
                     else if(_loc15_ <= 42)
                     {
                        if(_loc15_ <= 40)
                        {
                           if(_loc15_ != 39)
                           {
                              if(_loc15_ != 40)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              _loc12_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                              §§goto(addr3040);
                           }
                           §§goto(addr3040);
                        }
                        else
                        {
                           if(_loc15_ != 41)
                           {
                              if(_loc15_ != 42)
                              {
                                 break;
                              }
                              _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                              _loc1_ -= 16;
                              si32(li32(_loc27_ + 20),_loc1_);
                              si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc17_ = (_loc25_ = (_loc25_ = (_loc25_ = (_loc25_ = int((_loc25_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) | -257) ^ 256) | _loc17_;
                              _loc16_ = int(_loc14_ + 3);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc9_ = int(eax);
                           addr3157:
                           _loc16_ = int(_loc14_ + 2);
                           _loc12_ = li8(_loc25_ = int(_loc26_ + _loc16_));
                           _loc25_ = int(_loc12_ + _loc19_);
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc25_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc22_ = (_loc23_ = int(eax)) & _loc9_;
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc22_,_loc1_ + 8);
                           si32(_loc25_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc8_ = _loc13_;
                           §§goto(addr7334);
                        }
                     }
                     else
                     {
                        if(_loc15_ <= 44)
                        {
                           if(_loc15_ != 43)
                           {
                              if(_loc15_ != 44)
                              {
                                 break;
                              }
                              §§goto(addr5190);
                           }
                           else
                           {
                              §§goto(addr5181);
                           }
                        }
                        else
                        {
                           if(_loc15_ == 45)
                           {
                              si8(_loc13_,_loc24_ - 1);
                              _loc24_ += -1;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           if(_loc15_ != 46)
                           {
                              break;
                           }
                           addr6689:
                           _loc23_ = _loc9_ | _loc19_;
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc23_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc16_ = int(_loc14_ + 2);
                           _loc1_ += 16;
                           _loc25_ = int(eax);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           if(_loc25_ != _loc13_)
                           {
                              §§goto(addr140);
                           }
                           §§goto(addr7334);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 54)
                  {
                     if(_loc15_ <= 50)
                     {
                        if(_loc15_ <= 48)
                        {
                           if(_loc15_ != 47)
                           {
                              if(_loc15_ != 48)
                              {
                                 break;
                              }
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if((_loc12_ & 2176) != 0)
                              {
                                 si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                 _loc16_ = int(_loc7_ + _loc16_);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                              continue;
                           }
                           _loc16_ = int(_loc7_ + _loc16_);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           §§goto(addr7334);
                        }
                        else if(_loc15_ != 49)
                        {
                           if(_loc15_ != 50)
                           {
                              break;
                           }
                           §§goto(addr7334);
                        }
                        else
                        {
                           §§goto(addr7065);
                        }
                        §§goto(addr7334);
                     }
                     else
                     {
                        if(_loc15_ <= 52)
                        {
                           if(_loc15_ != 51)
                           {
                              if(_loc15_ != 52)
                              {
                                 break;
                              }
                              _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                              §§goto(addr3035);
                           }
                           else
                           {
                              §§goto(addr6616);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 53)
                           {
                              if(_loc15_ != 54)
                              {
                                 break;
                              }
                              _loc9_ += _loc21_;
                           }
                           else
                           {
                              _loc9_ += _loc20_;
                           }
                           §§goto(addr3001);
                        }
                        §§goto(addr3040);
                     }
                  }
                  else if(_loc15_ <= 58)
                  {
                     if(_loc15_ <= 56)
                     {
                        if(_loc15_ != 55)
                        {
                           if(_loc15_ != 56)
                           {
                              break;
                           }
                           §§goto(addr3157);
                        }
                        else
                        {
                           _loc12_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                           §§goto(addr3040);
                        }
                     }
                     else
                     {
                        if(_loc15_ != 57)
                        {
                           if(_loc15_ != 58)
                           {
                              break;
                           }
                           §§goto(addr5650);
                        }
                        else
                        {
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(int(_loc21_ + _loc19_),_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc9_ = int(eax);
                           _loc12_ = _loc20_;
                           _loc16_ = _loc14_;
                        }
                        §§goto(addr7334);
                     }
                     §§goto(addr3157);
                  }
                  else
                  {
                     if(_loc15_ <= 60)
                     {
                        if(_loc15_ != 59)
                        {
                           if(_loc15_ != 60)
                           {
                              break;
                           }
                           §§goto(addr5135);
                        }
                        else
                        {
                           §§goto(addr5171);
                        }
                     }
                     else
                     {
                        if(_loc15_ == 61)
                        {
                           _loc20_ = (_loc22_ = int(_loc20_ + 1)) & 255;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        if(_loc15_ != 62)
                        {
                           break;
                        }
                        _loc17_ = _loc9_ | _loc19_;
                     }
                     §§goto(addr7334);
                  }
                  §§goto(addr7334);
               }
               _loc25_ = li32(_loc27_ + 20);
               _loc1_ -= 16;
               si32(_loc17_,_loc1_ + 4);
               si32(_loc25_,_loc1_);
               ESP = _loc1_;
               F__ZN8Snes_Spc4readEj();
               _loc1_ += 16;
               _loc9_ = int(eax);
               addr4345:
               _loc22_ = (_loc25_ = int(_loc20_ - _loc9_)) & 255;
               _loc17_ = _loc25_ ^ -1;
               _loc8_ = _loc13_;
            }
            else
            {
               if(_loc15_ <= 188)
               {
                  _loc22_ = -1;
                  if(_loc15_ <= 156)
                  {
                     if(_loc15_ <= 140)
                     {
                        if(_loc15_ <= 132)
                        {
                           if(_loc15_ <= 128)
                           {
                              if(_loc15_ != 126)
                              {
                                 if(_loc15_ != 127)
                                 {
                                    if(_loc15_ != 128)
                                    {
                                       break;
                                    }
                                    _loc17_ = -1;
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                 }
                                 else
                                 {
                                    _loc16_ = (_loc23_ = (_loc23_ = li8(_loc24_ + 2)) << 8) | li8(_loc24_ + 1);
                                    _loc9_ = int(_loc24_ + 2);
                                    addr7144:
                                    _loc22_ = (_loc23_ = (_loc23_ = (_loc23_ = (_loc25_ = li8(_loc24_)) << 4) | _loc25_) & 2050) ^ 2;
                                    _loc24_ = _loc9_ + 1;
                                    _loc17_ = _loc25_ << 8;
                                    _loc18_ = _loc25_ & 92;
                                    _loc19_ = (_loc25_ <<= 3) & 256;
                                    _loc8_ = _loc13_;
                                 }
                                 continue;
                              }
                              _loc17_ = _loc9_ | _loc19_;
                              §§goto(addr4392);
                           }
                           else
                           {
                              if(_loc15_ <= 130)
                              {
                                 if(_loc15_ != 129)
                                 {
                                    if(_loc15_ != 130)
                                    {
                                       break;
                                    }
                                    §§goto(addr7334);
                                 }
                                 else
                                 {
                                    §§goto(addr7065);
                                 }
                              }
                              else if(_loc15_ != 131)
                              {
                                 if(_loc15_ != 132)
                                 {
                                    break;
                                 }
                                 addr4699:
                                 _loc12_ = _loc9_ | _loc19_;
                                 addr4704:
                                 _loc25_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32(_loc12_,_loc1_ + 4);
                                 si32(_loc25_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc22_ = -1;
                                 _loc1_ += 16;
                                 _loc9_ = int(eax);
                                 _loc10_ = _loc13_;
                                 addr4741:
                                 if((_loc25_ = _loc15_ & 32) != 0)
                                 {
                                    _loc9_ ^= 255;
                                 }
                                 _loc23_ = (_loc25_ = _loc9_ << 24) >> 24;
                                 _loc5_ = _loc10_ ^ 128;
                                 _loc25_ = (_loc25_ = int(_loc17_ >>> 8)) & 1;
                                 _loc23_ = (_loc23_ = int((_loc23_ = int((_loc5_ += _loc25_) + _loc23_)) >>> 2)) & 64;
                                 _loc5_ = _loc18_ & -73;
                                 _loc23_ |= _loc5_;
                                 _loc5_ = (_loc17_ = int((_loc5_ = int(_loc10_ + _loc25_)) + _loc9_)) & 15;
                                 _loc25_ = int((_loc6_ = _loc10_ & 15) + _loc25_);
                                 _loc25_ = (_loc25_ = int((_loc25_ = int(_loc5_ - _loc25_)) >>> 1)) & 8;
                                 _loc18_ = _loc23_ | _loc25_;
                                 if(_loc22_ <= -1)
                                 {
                                    _loc8_ = _loc17_ & 255;
                                    _loc22_ = _loc17_;
                                 }
                                 else
                                 {
                                    _loc1_ -= 16;
                                    si32(_loc25_ = _loc17_ & 255,_loc1_ + 8);
                                    si32(_loc22_,_loc1_ + 4);
                                    si32(li32(_loc27_ + 20),_loc1_);
                                    ESP = _loc1_;
                                    F__ZN8Snes_Spc5writeEji();
                                    _loc1_ += 16;
                                    _loc22_ = _loc17_;
                                    _loc8_ = _loc13_;
                                 }
                                 §§goto(addr7334);
                              }
                              else
                              {
                                 §§goto(addr6553);
                              }
                              §§goto(addr7334);
                           }
                        }
                        else
                        {
                           if(_loc15_ <= 136)
                           {
                              if(_loc15_ <= 134)
                              {
                                 if(_loc15_ != 133)
                                 {
                                    if(_loc15_ != 134)
                                    {
                                       break;
                                    }
                                    addr4575:
                                    _loc12_ = int(_loc20_ + _loc19_);
                                    _loc16_ = _loc14_;
                                 }
                                 else
                                 {
                                    addr4665:
                                    _loc16_ = int(_loc14_ + 2);
                                    _loc12_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                                 }
                              }
                              else
                              {
                                 if(_loc15_ != 135)
                                 {
                                    _loc10_ = _loc13_;
                                    if(_loc15_ != 136)
                                    {
                                       break;
                                    }
                                 }
                                 else
                                 {
                                    addr4616:
                                    _loc25_ = (_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_;
                                    _loc25_ = li8(_loc23_ = int(_loc26_ + _loc25_));
                                    _loc12_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | _loc25_;
                                    §§goto(addr4704);
                                 }
                                 §§goto(addr4741);
                              }
                              §§goto(addr4704);
                           }
                           else if(_loc15_ <= 138)
                           {
                              if(_loc15_ != 137)
                              {
                                 if(_loc15_ != 138)
                                 {
                                    break;
                                 }
                                 _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                                 _loc1_ -= 16;
                                 si32(li32(_loc27_ + 20),_loc1_);
                                 si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc17_ = (_loc25_ = (_loc25_ = (_loc25_ = int((_loc25_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) & 256) ^ _loc17_;
                                 _loc16_ = int(_loc14_ + 3);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              addr4483:
                              _loc23_ = _loc9_ | _loc19_;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc9_ = int(eax);
                              addr4520:
                              _loc14_ += 2;
                              _loc16_ = li8(_loc25_ = int(_loc26_ + _loc14_));
                              _loc22_ = int(_loc16_ + _loc19_);
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc22_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc10_ = int(eax);
                              _loc16_ = _loc14_;
                              §§goto(addr4704);
                           }
                           else
                           {
                              if(_loc15_ != 139)
                              {
                                 if(_loc15_ != 140)
                                 {
                                    break;
                                 }
                                 addr4986:
                                 _loc25_ = li8(_loc10_);
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc14_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | _loc25_;
                              }
                              else
                              {
                                 addr4980:
                                 _loc14_ = _loc9_ | _loc19_;
                              }
                              addr5011:
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc14_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc23_ = (_loc25_ = int(_loc15_ >>> 4)) & 2;
                              _loc1_ += 16;
                              _loc25_ = int(eax);
                              _loc23_ = (_loc22_ = int((_loc25_ = int(_loc23_ + _loc25_)) + -1)) & 255;
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 8);
                              si32(_loc14_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                           §§goto(addr7334);
                        }
                     }
                     else if(_loc15_ <= 148)
                     {
                        if(_loc15_ <= 144)
                        {
                           if(_loc15_ <= 142)
                           {
                              if(_loc15_ != 141)
                              {
                                 _loc9_ = _loc24_;
                                 if(_loc15_ != 142)
                                 {
                                    break;
                                 }
                                 §§goto(addr7144);
                              }
                              else
                              {
                                 addr2365:
                                 _loc22_ = _loc9_;
                                 _loc21_ = _loc9_;
                                 _loc8_ = _loc13_;
                                 §§goto(addr7334);
                              }
                           }
                           else
                           {
                              if(_loc15_ != 143)
                              {
                                 if(_loc15_ != 144)
                                 {
                                    break;
                                 }
                                 _loc16_ = int(_loc14_ + 2);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 if((_loc17_ & 256) == 0)
                                 {
                                    si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                    _loc16_ = int(_loc7_ + _loc16_);
                                    _loc22_ = _loc12_;
                                    _loc8_ = _loc13_;
                                 }
                                 continue;
                              }
                              addr2750:
                              _loc16_ = int(_loc14_ + 2);
                              _loc23_ = li8(_loc25_ = int(_loc26_ + _loc16_));
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc9_,_loc1_ + 8);
                              si32(_loc23_ |= _loc19_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                        }
                        else if(_loc15_ <= 146)
                        {
                           if(_loc15_ != 145)
                           {
                              if(_loc15_ != 146)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else if(_loc15_ != 147)
                        {
                           if(_loc15_ != 148)
                           {
                              break;
                           }
                           addr4689:
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                           §§goto(addr4699);
                        }
                        else
                        {
                           §§goto(addr6616);
                        }
                        §§goto(addr7334);
                     }
                     else if(_loc15_ <= 152)
                     {
                        if(_loc15_ <= 150)
                        {
                           if(_loc15_ != 149)
                           {
                              if(_loc15_ != 150)
                              {
                                 break;
                              }
                              addr4652:
                              _loc9_ += _loc21_;
                           }
                           else
                           {
                              addr4659:
                              _loc9_ += _loc20_;
                           }
                           §§goto(addr4665);
                        }
                        else if(_loc15_ != 151)
                        {
                           if(_loc15_ != 152)
                           {
                              break;
                           }
                           §§goto(addr4520);
                        }
                        else
                        {
                           addr4584:
                           _loc25_ = _loc9_ | _loc19_;
                           _loc25_ = li8(_loc23_ = int(_loc26_ + _loc25_));
                           _loc12_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | _loc25_) + _loc21_);
                           §§goto(addr4699);
                        }
                        §§goto(addr4699);
                     }
                     else
                     {
                        if(_loc15_ <= 154)
                        {
                           if(_loc15_ != 153)
                           {
                              if(_loc15_ != 154)
                              {
                                 break;
                              }
                              §§goto(addr5857);
                           }
                           else
                           {
                              addr4442:
                              _loc23_ = int(_loc20_ + _loc19_);
                              _loc25_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc23_,_loc1_ + 4);
                              si32(_loc25_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc9_ = int(eax);
                              _loc16_ = _loc21_;
                              §§goto(addr4520);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 155)
                           {
                              if(_loc15_ != 156)
                              {
                                 break;
                              }
                              _loc8_ = (_loc22_ = int(_loc13_ + -1)) & 255;
                              continue;
                           }
                           addr4970:
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 172)
                  {
                     if(_loc15_ <= 164)
                     {
                        if(_loc15_ <= 160)
                        {
                           if(_loc15_ <= 158)
                           {
                              if(_loc15_ != 157)
                              {
                                 if(_loc15_ != 158)
                                 {
                                    break;
                                 }
                                 _loc18_ &= -73;
                                 if((uint(_loc21_ & 15)) >= (uint(_loc20_ & 15)))
                                 {
                                    _loc18_ |= 8;
                                 }
                                 if(_loc21_ >= _loc20_)
                                 {
                                    _loc18_ |= 64;
                                 }
                                 _loc25_ = _loc21_ << 8;
                                 _loc14_ = int(_loc13_ + _loc25_);
                                 if((_loc25_ = _loc20_ << 1) > _loc21_)
                                 {
                                    _loc21_ = int(_loc14_ - int((_loc13_ = int(uint(_loc14_) / uint(_loc20_))) * _loc20_));
                                 }
                                 else
                                 {
                                    _loc23_ = int(256 - _loc20_);
                                    _loc21_ = int((_loc25_ = int((uint(int(_loc14_ - (_loc20_ << 9)))) % uint(_loc23_))) + _loc20_);
                                    _loc13_ = int(255 - int((uint(int(_loc14_ - (_loc20_ << 9)))) / uint(_loc23_)));
                                 }
                                 _loc8_ = _loc22_ = _loc13_ & 255;
                              }
                              else
                              {
                                 _loc20_ = _loc22_ = int((_loc25_ = int(_loc24_ + -257)) - _loc26_);
                                 _loc8_ = _loc13_;
                              }
                           }
                           else if(_loc15_ != 159)
                           {
                              if(_loc15_ != 160)
                              {
                                 break;
                              }
                              _loc18_ |= 4;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                           }
                           else
                           {
                              _loc8_ = _loc22_ = (_loc23_ = (_loc23_ = _loc13_ << 4) & 240) | _loc13_ >> 4;
                           }
                           continue;
                        }
                        if(_loc15_ <= 162)
                        {
                           if(_loc15_ != 161)
                           {
                              if(_loc15_ != 162)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else if(_loc15_ != 163)
                        {
                           if(_loc15_ != 164)
                           {
                              break;
                           }
                           §§goto(addr4699);
                        }
                        else
                        {
                           §§goto(addr6553);
                        }
                        §§goto(addr7334);
                     }
                     else if(_loc15_ <= 168)
                     {
                        if(_loc15_ <= 166)
                        {
                           if(_loc15_ != 165)
                           {
                              if(_loc15_ != 166)
                              {
                                 break;
                              }
                              §§goto(addr4575);
                           }
                           else
                           {
                              §§goto(addr4665);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 167)
                           {
                              _loc10_ = _loc13_;
                              if(_loc15_ != 168)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              §§goto(addr4616);
                           }
                           §§goto(addr4699);
                        }
                        §§goto(addr4699);
                     }
                     else
                     {
                        if(_loc15_ <= 170)
                        {
                           if(_loc15_ != 169)
                           {
                              if(_loc15_ != 170)
                              {
                                 break;
                              }
                              _loc23_ = li8((_loc23_ = int(_loc14_ + _loc23_)) + 2);
                              _loc1_ -= 16;
                              si32(li32(_loc27_ + 20),_loc1_);
                              si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc25_ = int((_loc23_ = li32(_loc27_)) + _loc16_)),_loc1_ + 4);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc4readEj();
                              _loc1_ += 16;
                              _loc17_ = (_loc25_ = (_loc25_ = int((_loc25_ = int(eax)) >>> (int(_loc23_ >>> 5)))) << 8) & 256;
                              _loc16_ = int(_loc14_ + 3);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           §§goto(addr4483);
                        }
                        else if(_loc15_ != 171)
                        {
                           if(_loc15_ != 172)
                           {
                              break;
                           }
                           §§goto(addr4986);
                        }
                        else
                        {
                           §§goto(addr4980);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 180)
                  {
                     if(_loc15_ <= 176)
                     {
                        if(_loc15_ > 174)
                        {
                           if(_loc15_ != 175)
                           {
                              if(_loc15_ != 176)
                              {
                                 break;
                              }
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if((_loc17_ & 256) != 0)
                              {
                                 si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                 _loc16_ = int(_loc7_ + _loc16_);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                           }
                           else
                           {
                              _loc1_ -= 16;
                              si32(_loc13_,_loc1_ + 8);
                              si32(_loc25_ = int(_loc20_ + _loc19_),_loc1_ + 4);
                              si32(li32(_loc27_ + 20),_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc20_ += 1;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                           }
                           continue;
                        }
                        if(_loc15_ != 173)
                        {
                           if(_loc15_ != 174)
                           {
                              break;
                           }
                           _loc8_ = li8(_loc24_);
                           _loc22_ = _loc12_;
                           _loc24_ += 1;
                           continue;
                        }
                        §§goto(addr4392);
                     }
                     else
                     {
                        if(_loc15_ <= 178)
                        {
                           if(_loc15_ != 177)
                           {
                              if(_loc15_ != 178)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else if(_loc15_ != 179)
                        {
                           if(_loc15_ != 180)
                           {
                              break;
                           }
                           §§goto(addr4689);
                        }
                        else
                        {
                           §§goto(addr6616);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 184)
                  {
                     if(_loc15_ <= 182)
                     {
                        if(_loc15_ != 181)
                        {
                           if(_loc15_ != 182)
                           {
                              break;
                           }
                           §§goto(addr4652);
                        }
                        else
                        {
                           §§goto(addr4659);
                        }
                     }
                     else if(_loc15_ != 183)
                     {
                        if(_loc15_ != 184)
                        {
                           break;
                        }
                        §§goto(addr4483);
                     }
                     else
                     {
                        §§goto(addr4584);
                     }
                     §§goto(addr4699);
                  }
                  else
                  {
                     if(_loc15_ <= 186)
                     {
                        if(_loc15_ != 185)
                        {
                           if(_loc15_ != 186)
                           {
                              break;
                           }
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc8_ = int(eax);
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32((_loc25_ = (_loc25_ = int(_loc9_ + 1)) & 255) | _loc19_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc22_ = (_loc25_ = _loc8_ & 127) | _loc8_ >> 1 | (_loc21_ = int(eax));
                           §§goto(addr7334);
                        }
                        else
                        {
                           §§goto(addr4442);
                        }
                     }
                     else
                     {
                        if(_loc15_ != 187)
                        {
                           if(_loc15_ != 188)
                           {
                              break;
                           }
                           _loc8_ = (_loc22_ = int(_loc13_ + 1)) & 255;
                           continue;
                        }
                        §§goto(addr4970);
                     }
                     §§goto(addr7334);
                  }
               }
               else if(_loc15_ <= 220)
               {
                  if(_loc15_ <= 204)
                  {
                     if(_loc15_ <= 196)
                     {
                        if(_loc15_ <= 192)
                        {
                           if(_loc15_ == 189)
                           {
                              _loc24_ = (_loc25_ = int(_loc20_ + _loc26_)) + 257;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           if(_loc15_ != 191)
                           {
                              if(_loc15_ != 192)
                              {
                                 break;
                              }
                              _loc18_ &= -5;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           _loc13_ = int(_loc20_ + _loc19_);
                           _loc20_ = (_loc25_ = int(_loc20_ + 1)) & 255;
                           _loc16_ = _loc14_;
                           addr2157:
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc13_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc8_ = _loc22_ = int(eax);
                        }
                        else if(_loc15_ <= 194)
                        {
                           if(_loc15_ != 193)
                           {
                              if(_loc15_ != 194)
                              {
                                 break;
                              }
                              §§goto(addr7334);
                           }
                           else
                           {
                              §§goto(addr7065);
                           }
                        }
                        else if(_loc15_ != 195)
                        {
                           if(_loc15_ != 196)
                           {
                              break;
                           }
                           addr2493:
                           _loc15_ = _loc9_ | _loc19_;
                           addr2498:
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc13_,_loc1_ + 8);
                           si32(_loc15_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           §§goto(addr7334);
                        }
                        else
                        {
                           §§goto(addr6553);
                        }
                     }
                     else
                     {
                        if(_loc15_ > 200)
                        {
                           if(_loc15_ <= 202)
                           {
                              if(_loc15_ != 201)
                              {
                                 if(_loc15_ != 202)
                                 {
                                    break;
                                 }
                                 _loc23_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2);
                                 _loc1_ -= 16;
                                 si32(li32(_loc27_ + 20),_loc1_);
                                 si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc10_),_loc1_ + 4);
                                 _loc5_ = int(_loc23_ >>> 5);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc4readEj();
                                 _loc1_ += 16;
                                 _loc23_ = li32(_loc27_ + 20);
                                 _loc1_ -= 16;
                                 si32((_loc5_ = (_loc5_ = int(eax)) & ((_loc5_ = 1 << _loc5_) ^ -1)) | (_loc23_ = (_loc23_ = int(_loc17_ >>> 8)) & 1) << _loc5_,_loc1_ + 8);
                                 si32(_loc25_,_loc1_ + 4);
                                 si32(_loc23_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZN8Snes_Spc5writeEji();
                                 _loc1_ += 16;
                                 _loc16_ = int(_loc14_ + 3);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                                 continue;
                              }
                              _loc16_ = _loc20_;
                           }
                           else if(_loc15_ != 203)
                           {
                              _loc16_ = _loc21_;
                              if(_loc15_ != 204)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              addr2671:
                              _loc23_ = li32(_loc27_ + 20);
                              _loc1_ -= 16;
                              si32(_loc21_,_loc1_ + 8);
                              si32(_loc25_ = _loc9_ | _loc19_,_loc1_ + 4);
                              si32(_loc23_,_loc1_);
                              ESP = _loc1_;
                              F__ZN8Snes_Spc5writeEji();
                              _loc1_ += 16;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              §§goto(addr7334);
                           }
                           _loc25_ = li8(_loc10_);
                           _loc5_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2);
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc16_,_loc1_ + 8);
                           si32(_loc25_ = (_loc5_ <<= 8) | _loc25_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc16_ = int(_loc14_ + 3);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        if(_loc15_ <= 198)
                        {
                           if(_loc15_ != 197)
                           {
                              if(_loc15_ != 198)
                              {
                                 break;
                              }
                              _loc15_ = int(_loc20_ + _loc19_);
                              _loc16_ = _loc14_;
                           }
                           else
                           {
                              addr2459:
                              _loc16_ = int(_loc14_ + 2);
                              _loc15_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 199)
                           {
                              if(_loc15_ != 200)
                              {
                                 break;
                              }
                              §§goto(addr4345);
                           }
                           else
                           {
                              _loc15_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                           }
                           §§goto(addr7334);
                        }
                        §§goto(addr2498);
                     }
                  }
                  else if(_loc15_ <= 212)
                  {
                     if(_loc15_ <= 208)
                     {
                        if(_loc15_ > 206)
                        {
                           if(_loc15_ != 207)
                           {
                              if(_loc15_ != 208)
                              {
                                 break;
                              }
                              _loc16_ = int(_loc14_ + 2);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              if((_loc12_ & 255) != 0)
                              {
                                 si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                                 _loc16_ = int(_loc7_ + _loc16_);
                                 _loc22_ = _loc12_;
                                 _loc8_ = _loc13_;
                              }
                           }
                           else
                           {
                              _loc22_ = (_loc23_ = (_loc23_ = int((_loc25_ = int(_loc13_ * _loc21_)) >>> 1)) | _loc25_) & 127 | (_loc21_ = int(_loc25_ >>> 8));
                              _loc8_ = _loc25_ & 255;
                           }
                           continue;
                        }
                        if(_loc15_ != 205)
                        {
                           if(_loc15_ != 206)
                           {
                              break;
                           }
                           _loc20_ = li8(_loc24_);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           _loc24_ += 1;
                           continue;
                        }
                        addr2284:
                        _loc22_ = _loc9_;
                        _loc20_ = _loc9_;
                        _loc8_ = _loc13_;
                     }
                     else if(_loc15_ <= 210)
                     {
                        if(_loc15_ != 209)
                        {
                           if(_loc15_ != 210)
                           {
                              break;
                           }
                           §§goto(addr7334);
                        }
                        else
                        {
                           §§goto(addr7065);
                        }
                     }
                     else if(_loc15_ != 211)
                     {
                        if(_loc15_ != 212)
                        {
                           break;
                        }
                        _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                        §§goto(addr2493);
                     }
                     else
                     {
                        §§goto(addr6616);
                     }
                  }
                  else if(_loc15_ <= 216)
                  {
                     if(_loc15_ <= 214)
                     {
                        if(_loc15_ != 213)
                        {
                           if(_loc15_ != 214)
                           {
                              break;
                           }
                           _loc9_ += _loc21_;
                        }
                        else
                        {
                           _loc9_ += _loc20_;
                        }
                        §§goto(addr2459);
                     }
                     else
                     {
                        if(_loc15_ != 215)
                        {
                           if(_loc15_ != 216)
                           {
                              break;
                           }
                           addr2617:
                           _loc23_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc20_,_loc1_ + 8);
                           si32(_loc25_ = _loc9_ | _loc19_,_loc1_ + 4);
                           si32(_loc23_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           §§goto(addr7334);
                        }
                        else
                        {
                           _loc15_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else
                  {
                     if(_loc15_ <= 218)
                     {
                        if(_loc15_ != 217)
                        {
                           if(_loc15_ != 218)
                           {
                              break;
                           }
                           _loc1_ -= 16;
                           si32(_loc13_,_loc1_ + 8);
                           si32(_loc25_ = _loc9_ | _loc19_,_loc1_ + 4);
                           si32(li32(_loc27_ + 20),_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc1_ -= 16;
                           si32(_loc21_,_loc1_ + 8);
                           si32(_loc23_ = (_loc23_ = (_loc23_ = int(_loc9_ + 1)) & 255) | _loc19_,_loc1_ + 4);
                           si32(li32(_loc27_ + 20),_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           §§goto(addr7334);
                        }
                        else
                        {
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc21_)) & 255;
                           §§goto(addr2617);
                        }
                     }
                     else
                     {
                        if(_loc15_ != 219)
                        {
                           if(_loc15_ != 220)
                           {
                              break;
                           }
                           _loc21_ = (_loc22_ = int(_loc21_ + -1)) & 255;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                     }
                     §§goto(addr7334);
                  }
               }
               else if(_loc15_ <= 237)
               {
                  if(_loc15_ <= 229)
                  {
                     if(_loc15_ <= 225)
                     {
                        if(_loc15_ <= 223)
                        {
                           if(_loc15_ == 221)
                           {
                              _loc22_ = _loc21_;
                              _loc8_ = _loc21_;
                              continue;
                           }
                           if(_loc15_ != 222)
                           {
                              break;
                           }
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                           §§goto(addr6689);
                        }
                        else
                        {
                           if(_loc15_ == 224)
                           {
                              _loc18_ &= -73;
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                              continue;
                           }
                           if(_loc15_ != 225)
                           {
                              break;
                           }
                           §§goto(addr7065);
                        }
                     }
                     else
                     {
                        if(_loc15_ <= 227)
                        {
                           if(_loc15_ != 226)
                           {
                              if(_loc15_ != 227)
                              {
                                 break;
                              }
                              §§goto(addr6553);
                           }
                           else
                           {
                              §§goto(addr7334);
                           }
                        }
                        else
                        {
                           if(_loc15_ != 228)
                           {
                              if(_loc15_ != 229)
                              {
                                 break;
                              }
                              addr2118:
                              _loc16_ = int(_loc14_ + 2);
                              _loc13_ = int((_loc25_ = (_loc25_ = li8(_loc25_ = int(_loc26_ + _loc16_))) << 8) + _loc9_);
                           }
                           else
                           {
                              addr2152:
                              _loc13_ = _loc9_ | _loc19_;
                           }
                           §§goto(addr2157);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else if(_loc15_ <= 233)
                  {
                     if(_loc15_ <= 231)
                     {
                        if(_loc15_ != 230)
                        {
                           if(_loc15_ != 231)
                           {
                              break;
                           }
                           _loc13_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + ((_loc25_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255) | _loc19_)));
                        }
                        else
                        {
                           _loc13_ = int(_loc20_ + _loc19_);
                           _loc16_ = _loc14_;
                        }
                        §§goto(addr2157);
                     }
                     else
                     {
                        _loc22_ = _loc9_;
                        _loc8_ = _loc9_;
                        if(_loc15_ != 232)
                        {
                           if(_loc15_ != 233)
                           {
                              break;
                           }
                           _loc16_ = int(_loc14_ + 2);
                           _loc20_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | li8(_loc10_);
                           addr2251:
                           _loc25_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(_loc20_,_loc1_ + 4);
                           si32(_loc25_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc9_ = int(eax);
                           §§goto(addr2284);
                        }
                        §§goto(addr7334);
                     }
                  }
                  else
                  {
                     if(_loc15_ <= 235)
                     {
                        if(_loc15_ == 234)
                        {
                           _loc23_ = li8((_loc23_ = int(_loc14_ + _loc26_)) + 2);
                           _loc1_ -= 16;
                           si32(li32(_loc27_ + 20),_loc1_);
                           si32(_loc25_ = (_loc5_ = (_loc5_ = _loc23_ << 8) & 7936) | li8(_loc10_),_loc1_ + 4);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc4readEj();
                           _loc1_ += 16;
                           _loc5_ = li32(_loc27_ + 20);
                           _loc1_ -= 16;
                           si32(1 << (int(_loc23_ >>> 5)) ^ int(eax),_loc1_ + 8);
                           si32(_loc25_,_loc1_ + 4);
                           si32(_loc5_,_loc1_);
                           ESP = _loc1_;
                           F__ZN8Snes_Spc5writeEji();
                           _loc1_ += 16;
                           _loc16_ = int(_loc14_ + 3);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        if(_loc15_ != 235)
                        {
                           break;
                        }
                        addr2302:
                        _loc21_ = _loc9_ | _loc19_;
                     }
                     else
                     {
                        if(_loc15_ != 236)
                        {
                           if(_loc15_ != 237)
                           {
                              break;
                           }
                           _loc17_ ^= 256;
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           continue;
                        }
                        _loc16_ = int(_loc14_ + 2);
                        _loc21_ = (_loc23_ = (_loc23_ = li8(_loc23_ = int(_loc26_ + _loc16_))) << 8) | li8(_loc10_);
                     }
                     _loc25_ = li32(_loc27_ + 20);
                     _loc1_ -= 16;
                     si32(_loc21_,_loc1_ + 4);
                     si32(_loc25_,_loc1_);
                     ESP = _loc1_;
                     F__ZN8Snes_Spc4readEj();
                     _loc1_ += 16;
                     _loc9_ = int(eax);
                     §§goto(addr2365);
                  }
               }
               else if(_loc15_ <= 246)
               {
                  if(_loc15_ <= 242)
                  {
                     if(_loc15_ <= 240)
                     {
                        if(_loc15_ != 238)
                        {
                           if(_loc15_ != 240)
                           {
                              break;
                           }
                           _loc16_ = int(_loc14_ + 2);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           if((_loc12_ & 255) == 0)
                           {
                              si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                              _loc16_ = int(_loc7_ + _loc16_);
                              _loc22_ = _loc12_;
                              _loc8_ = _loc13_;
                           }
                        }
                        else
                        {
                           _loc21_ = li8(_loc24_);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                           _loc24_ += 1;
                        }
                        continue;
                     }
                     if(_loc15_ != 241)
                     {
                        if(_loc15_ != 242)
                        {
                           break;
                        }
                        §§goto(addr7334);
                     }
                     else
                     {
                        §§goto(addr7065);
                     }
                  }
                  else
                  {
                     if(_loc15_ <= 244)
                     {
                        if(_loc15_ != 243)
                        {
                           if(_loc15_ != 244)
                           {
                              break;
                           }
                           _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
                           §§goto(addr2152);
                        }
                        else
                        {
                           §§goto(addr6616);
                        }
                     }
                     else
                     {
                        if(_loc15_ != 245)
                        {
                           if(_loc15_ != 246)
                           {
                              break;
                           }
                           _loc9_ += _loc21_;
                        }
                        else
                        {
                           _loc9_ += _loc20_;
                        }
                        §§goto(addr2118);
                     }
                     §§goto(addr2157);
                  }
               }
               else if(_loc15_ <= 250)
               {
                  if(_loc15_ <= 248)
                  {
                     if(_loc15_ != 247)
                     {
                        if(_loc15_ != 248)
                        {
                           break;
                        }
                     }
                     else
                     {
                        _loc13_ = int((_loc25_ = (_loc23_ = (_loc23_ = li8(_loc23_ + 1)) << 8) | li8(_loc23_ = int(_loc26_ + (_loc9_ | _loc19_)))) + _loc21_);
                        §§goto(addr2157);
                     }
                  }
                  else if(_loc15_ != 249)
                  {
                     if(_loc15_ != 250)
                     {
                        break;
                     }
                     _loc25_ = li32(_loc27_ + 20);
                     _loc1_ -= 16;
                     si32(_loc9_ | _loc19_,_loc1_ + 4);
                     si32(_loc25_,_loc1_);
                     ESP = _loc1_;
                     F__ZN8Snes_Spc4readEj();
                     _loc1_ += 16;
                     _loc9_ = int(eax);
                     §§goto(addr2750);
                  }
                  else
                  {
                     _loc9_ = (_loc25_ = int(_loc9_ + _loc21_)) & 255;
                  }
                  §§goto(addr7334);
                  §§goto(addr2251);
               }
               else
               {
                  if(_loc15_ > 252)
                  {
                     if(_loc15_ != 253)
                     {
                        if(_loc15_ != 254)
                        {
                           break;
                        }
                        _loc16_ = int(_loc14_ + 2);
                        _loc21_ = (_loc25_ = int(_loc21_ + -1)) & 255;
                        _loc22_ = _loc12_;
                        _loc8_ = _loc13_;
                        if(_loc21_ != 0)
                        {
                           si32(_loc25_ = int(_loc11_ + -2),_loc27_ + 16);
                           _loc16_ = int(_loc7_ + _loc16_);
                           _loc22_ = _loc12_;
                           _loc8_ = _loc13_;
                        }
                     }
                     else
                     {
                        _loc22_ = _loc13_;
                        _loc21_ = _loc13_;
                        _loc8_ = _loc13_;
                     }
                     continue;
                  }
                  if(_loc15_ != 251)
                  {
                     if(_loc15_ != 252)
                     {
                        break;
                     }
                     _loc21_ = (_loc22_ = int(_loc21_ + 1)) & 255;
                     _loc8_ = _loc13_;
                     continue;
                  }
                  _loc9_ = (_loc25_ = int(_loc9_ + _loc20_)) & 255;
               }
               §§goto(addr7334);
            }
            §§goto(addr7334);
         }
         break;
      }
      _loc25_ = _loc18_ & -132;
      _loc23_ = (_loc23_ = (_loc23_ = int(_loc17_ >>> 8)) & 1) | _loc25_;
      _loc25_ = int(_loc19_ >>> 3);
      _loc19_ = _loc23_ | _loc25_;
      if((_loc25_ = _loc12_ & 2176) != 0)
      {
         _loc19_ |= 128;
      }
      if((_loc25_ = _loc12_ & 255) == 0)
      {
         _loc19_ |= 2;
      }
      si8(_loc19_,_loc27_ + 11);
      si32(_loc14_,_loc27_ + 4);
      si8(_loc25_ = int((_loc25_ = int(_loc24_ + -257)) - _loc26_),_loc27_ + 12);
      si8(_loc13_,_loc27_ + 8);
      si8(_loc20_,_loc27_ + 9);
      si8(_loc21_,_loc27_ + 10);
      eax = _loc11_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
