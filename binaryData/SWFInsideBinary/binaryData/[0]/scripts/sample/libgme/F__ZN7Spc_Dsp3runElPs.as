package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates;
   
   public function F__ZN7Spc_Dsp3runElPs() : void
   {
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc36_:* = 0;
      var _loc30_:* = 0;
      var _loc32_:* = 0;
      var _loc34_:* = 0;
      var _loc28_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc19_:* = 0;
      var _loc18_:* = 0;
      var _loc20_:* = 0;
      var _loc24_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc22_:* = 0;
      var _loc10_:* = 0;
      var _loc37_:* = 0;
      var _loc26_:* = 0;
      var _loc21_:* = 0;
      var _loc35_:* = 0;
      var _loc3_:* = sample.libgme.ESP;
      _loc7_ = _loc3_;
      var _loc38_:*;
      if((_loc38_ = si8(li8((_loc16_ = li32(_loc7_)) + 108))) <= -1)
      {
         si32(0,_loc16_ + 224);
         si32(0,_loc16_ + 228);
         si32(0,_loc16_ + 240);
         si32(1,_loc16_ + 236);
         si32(0,_loc16_ + 212);
         si8(-32,_loc16_ + 108);
         si8(0,_loc16_ + 76);
         si16(0,_loc16_ + 272);
         si16(0,_loc16_ + 248);
         si16(0,_loc16_ + 250);
         si16(3,_loc16_ + 276);
         si16(0,_loc16_ + 304);
         si16(0,_loc16_ + 280);
         si16(0,_loc16_ + 282);
         si16(3,_loc16_ + 308);
         si16(0,_loc16_ + 336);
         si16(0,_loc16_ + 312);
         si16(0,_loc16_ + 314);
         si16(3,_loc16_ + 340);
         si16(0,_loc16_ + 368);
         si16(0,_loc16_ + 344);
         si16(0,_loc16_ + 346);
         si16(3,_loc16_ + 372);
         si16(0,_loc16_ + 400);
         si16(0,_loc16_ + 376);
         si16(0,_loc16_ + 378);
         si16(3,_loc16_ + 404);
         si16(0,_loc16_ + 432);
         si16(0,_loc16_ + 408);
         si16(0,_loc16_ + 410);
         si16(3,_loc16_ + 436);
         si16(0,_loc16_ + 464);
         si16(0,_loc16_ + 440);
         si16(0,_loc16_ + 442);
         si16(3,_loc16_ + 468);
         si16(0,_loc16_ + 496);
         si16(0,_loc16_ + 472);
         si16(0,_loc16_ + 474);
         si16(3,_loc16_ + 500);
         _loc3_ -= 16;
         si32(64,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         _loc38_ = _loc16_ + 148;
         si32(_loc38_,_loc3_);
         ESP = _loc3_;
         Fmemset();
         _loc3_ += 16;
      }
      _loc37_ = li32(_loc7_ + 4);
      if(_loc37_ >= 1)
      {
         _loc36_ = li32(_loc16_ + 128);
         _loc35_ = li8(_loc16_ + 93);
         _loc34_ = li32(_loc16_ + 216);
         _loc32_ = si8(li8(_loc16_ + 28));
         _loc30_ = si8(li8(_loc16_ + 12));
         _loc28_ = 0 - _loc32_;
         if(_loc32_ * _loc30_ >= li32(_loc16_ + 244))
         {
            _loc28_ = _loc32_;
         }
         _loc21_ = li32(_loc7_ + 8);
         _loc38_ = _loc35_ << 8;
         _loc36_ += _loc38_;
         _loc30_ = _loc34_ * _loc30_;
         _loc28_ *= _loc34_;
         do
         {
            _loc34_ = _loc21_;
            _loc38_ = li8(_loc16_ + 124);
            var _loc13_:* = li8(_loc16_ + 76);
            _loc13_ = _loc13_ ^ -1;
            _loc38_ &= _loc13_;
            si8(_loc38_ &= _loc13_,_loc16_ + 124);
            _loc38_ = li8(_loc16_ + 61);
            _loc22_ = 0;
            _loc24_ = 0;
            _loc26_ = 0;
            _loc21_ = 0;
            _loc32_ = 0;
            _loc35_ = 0;
            if(_loc38_ != 0)
            {
               _loc38_ = li8(_loc16_ + 108);
               si32(_loc38_ = (_loc13_ = li32(_loc16_ + 240)) - si16(li16(_loc38_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL9env_rates + ((_loc38_ = _loc38_ & 0x1F) << 1))),_loc16_ + 240);
               _loc24_ = _loc22_ = 0;
               _loc26_ = _loc22_;
               _loc21_ = _loc22_;
               _loc32_ = _loc22_;
               _loc35_ = _loc22_;
               if(_loc38_ <= 0)
               {
                  si32(30720,_loc16_ + 240);
                  _loc38_ = li32(_loc16_ + 236);
                  si32(_loc13_ = (_loc13_ = _loc38_ << 17) >> 16,_loc16_ + 232);
                  var _loc17_:*;
                  _loc13_ = (_loc17_ = _loc38_ << 13) ^ _loc38_ << 14;
                  si32(_loc38_ = _loc13_ & 0x4000 | _loc38_ >> 1,_loc16_ + 236);
                  _loc24_ = _loc22_ = 0;
                  _loc26_ = _loc22_;
                  _loc21_ = _loc22_;
                  _loc32_ = _loc22_;
                  _loc35_ = _loc22_;
               }
            }
            while(true)
            {
               _loc18_ = 1 << _loc22_;
               _loc38_ = _loc22_ << 5;
               _loc19_ = _loc16_ + _loc38_;
               if((_loc20_ = li16(_loc19_ + 272)) != 0)
               {
                  _loc38_ = _loc20_ + -1;
                  si16(_loc38_,_loc19_ + 272);
                  _loc38_ &= 65535;
                  if(_loc38_ &= 65535 == 0)
                  {
                     _loc38_ = li32(_loc16_ + 224);
                     si32(_loc38_ = _loc38_ | _loc18_,_loc16_ + 224);
                     _loc38_ = _loc16_ + (_loc22_ << 4);
                     si16(_loc38_ = (_loc13_ = (_loc13_ = li8(_loc13_ + 1)) << 8) | li8(_loc13_ = _loc36_ + ((_loc38_ = li8(_loc38_ + 4)) << 2)),_loc19_ + 264);
                     si16(1,_loc19_ + 262);
                     si16(0,_loc19_ + 270);
                     si16(0,_loc19_ + 266);
                     si16(16383,_loc19_ + 252);
                     si16(0,_loc19_ + 260);
                     si16(0,_loc19_ + 258);
                     si16(30720,_loc19_ + 268);
                     si16(0,_loc19_ + 276);
                  }
               }
               _loc15_ = li8(_loc16_ + 76);
               _loc38_ = _loc15_ & _loc18_;
               _loc20_ = li8(_loc16_ + 92);
               _loc13_ = _loc20_ ^ -1;
               _loc38_ &= _loc13_;
               if(_loc38_ &= _loc13_ != 0)
               {
                  _loc38_ = _loc15_ & (_loc18_ ^ -1);
                  si8(_loc38_,_loc16_ + 76);
                  si16(8,_loc19_ + 272);
               }
               _loc38_ = li32(_loc16_ + 224);
               if((_loc38_ = (_loc15_ = _loc38_ & _loc18_) & _loc20_) != 0)
               {
                  si16(3,_loc19_ + 276);
                  si16(0,_loc19_ + 272);
               }
               if(_loc15_ != 0)
               {
                  _loc3_ -= 16;
                  si32(_loc22_,_loc3_ + 4);
                  si32(_loc16_,_loc3_);
                  ESP = _loc3_;
                  F__ZN7Spc_Dsp14clock_envelopeEi();
                  _loc3_ += 16;
                  _loc20_ = sample.libgme.eax;
                  if(_loc20_ <= -1)
                  {
                     addr777:
                     _loc38_ = _loc22_ << 4;
                     _loc38_ = _loc16_ + _loc38_;
                     _loc24_ = 0;
                     si8(_loc24_,_loc38_ + 8);
                     si8(_loc24_,_loc38_ + 9);
                  }
                  else
                  {
                     _loc38_ = si16(li16(_loc19_ + 252));
                     _loc14_ = (_loc15_ = _loc38_ >> 12) + 1;
                     _loc12_ = 0 - _loc15_;
                     while(_loc15_ > 0)
                     {
                        _loc10_ = li16(_loc19_ + 262);
                        si16(_loc11_ = _loc10_ + -1,_loc19_ + 262);
                        if(_loc10_ != 1)
                        {
                           if(_loc10_ != 10)
                           {
                              _loc10_ = li16(_loc19_ + 264);
                              _loc8_ = li32(_loc16_ + 128);
                           }
                           else
                           {
                              _loc8_ = li32(_loc16_ + 128);
                              _loc10_ = li16(_loc19_ + 264);
                              if((_loc38_ = (_loc38_ = li8((_loc38_ = _loc10_ + _loc8_) + 5)) & 3) == 1)
                              {
                                 _loc38_ = li16(_loc19_ + 266);
                                 if((_loc38_ = _loc38_ & 3) != 3)
                                 {
                                    _loc10_ = li8(_loc16_ + 124);
                                    addr1041:
                                    _loc38_ = _loc10_ | _loc18_;
                                    si8(_loc38_,_loc16_ + 124);
                                    _loc13_ = _loc18_ ^ -1;
                                    _loc38_ = li32(_loc16_ + 224);
                                    si32(_loc38_ = _loc38_ & _loc13_,_loc16_ + 224);
                                    _loc38_ = _loc22_ << 4;
                                    _loc38_ = _loc16_ + _loc38_;
                                    si8(0,_loc38_ + 8);
                                    si16(0,_loc19_ + 270);
                                    if(_loc12_ <= -1)
                                    {
                                       _loc12_ = -1;
                                    }
                                    _loc9_ = _loc12_ + _loc14_;
                                    _loc8_ = li16(_loc19_ + 260);
                                    _loc10_ = li16(_loc19_ + 258);
                                    _loc11_ = li16(_loc19_ + 256);
                                    do
                                    {
                                       _loc14_ = _loc8_;
                                       _loc15_ = _loc10_;
                                       _loc12_ = _loc11_;
                                       _loc9_ += -1;
                                       _loc8_ = 0;
                                       _loc10_ = _loc14_;
                                       _loc11_ = _loc15_;
                                    }
                                    while(_loc9_ != 0);
                                    
                                    si16(0,_loc19_ + 260);
                                    si16(_loc14_,_loc19_ + 258);
                                    si16(_loc12_,_loc19_ + 254);
                                    si16(_loc15_,_loc19_ + 256);
                                    break;
                                 }
                              }
                           }
                           _loc38_ = _loc10_ & 0xFFFF;
                           _loc38_ = _loc8_ + _loc38_;
                           _loc8_ = li8(_loc38_);
                           _loc38_ = _loc11_ & 1;
                           if(_loc38_ != 0)
                           {
                              _loc38_ = _loc10_ + 1;
                              si16(_loc38_,_loc19_ + 264);
                              _loc8_ <<= 4;
                           }
                           addr1171:
                           _loc13_ = si16(li16(_loc19_ + 266));
                           _loc38_ = _loc13_ >> 4;
                           _loc17_ = _loc8_ << 24;
                           _loc10_ = (_loc17_ = _loc17_ >> 28) << _loc38_;
                           _loc11_ = _loc13_ & 0xFFFF;
                           if(_loc38_ <= 12)
                           {
                              _loc9_ = _loc10_ >> 1;
                           }
                           else
                           {
                              _loc38_ = _loc10_ >> 15;
                              _loc9_ = _loc38_ & -2048;
                           }
                           _loc10_ = si16(li16(_loc19_ + 258));
                           _loc8_ = si16(li16(_loc19_ + 260));
                           _loc38_ = _loc11_ & 8;
                           if(_loc38_ != 0)
                           {
                              _loc5_ = _loc8_ + _loc9_ - (_loc9_ = _loc10_ >> 1);
                              _loc38_ = _loc11_ & 4;
                              if(_loc38_ == 0)
                              {
                                 _loc38_ = _loc8_ >> 1;
                                 _loc9_ = (_loc38_ = ((_loc38_ = 0 - (_loc38_ + _loc8_)) >> 5) + (_loc10_ >> 5)) + _loc5_;
                              }
                              else
                              {
                                 _loc38_ = _loc8_ * -13;
                                 _loc9_ = _loc5_ + (_loc38_ >> 7) + ((_loc13_ = _loc9_ + _loc10_) >> 4);
                              }
                           }
                           else
                           {
                              _loc38_ = _loc11_ & 4;
                              if(_loc38_ != 0)
                              {
                                 _loc38_ = _loc8_ >> 1;
                                 _loc9_ = _loc38_ + _loc9_ + ((_loc13_ = 0 - _loc8_) >> 5);
                              }
                           }
                           _loc38_ = li16(_loc19_ + 256);
                           si16(_loc38_,_loc19_ + 254);
                           si16(_loc10_,_loc19_ + 256);
                           si16(_loc8_,_loc19_ + 258);
                           _loc38_ = _loc9_ << 16;
                           if((_loc38_ = _loc38_ >> 16) != _loc9_)
                           {
                              _loc38_ = 32767 - (_loc9_ >> 31);
                              _loc9_ = (_loc38_ = _loc38_ << 16) >> 16;
                           }
                           _loc38_ = _loc9_ << 1;
                           si16(_loc38_,_loc19_ + 260);
                           _loc15_ += -1;
                           _loc14_ += -1;
                           _loc12_ += 1;
                           continue;
                        }
                        _loc11_ = li16(_loc19_ + 266);
                        if((_loc38_ = _loc11_ & 1) == 0)
                        {
                           _loc11_ = li16(_loc19_ + 264);
                        }
                        else
                        {
                           _loc38_ = li8(_loc16_ + 124);
                           si8(_loc10_ = _loc38_ | _loc18_,_loc16_ + 124);
                           _loc38_ = _loc11_ & 2;
                           if(_loc38_ != 0)
                           {
                              _loc38_ = _loc16_ + (_loc22_ << 4);
                              si16(_loc11_ = (_loc13_ = (_loc13_ = li8(_loc13_ + 3)) << 8) | li8((_loc13_ = _loc36_ + ((_loc38_ = li8(_loc38_ + 4)) << 2)) + 2),_loc19_ + 264);
                           }
                           else
                           {
                              §§goto(addr1041);
                           }
                        }
                        _loc13_ = _loc11_ & 0xFFFF;
                        _loc38_ = li32(_loc16_ + 128);
                        si16(_loc13_ = li8(_loc13_ = _loc38_ + _loc13_),_loc19_ + 266);
                        _loc13_ = _loc11_ + 1;
                        si16(_loc13_,_loc19_ + 264);
                        si16(16,_loc19_ + 262);
                        _loc13_ &= 65535;
                        _loc38_ += _loc13_;
                        _loc8_ = li8(_loc38_ += _loc13_);
                        §§goto(addr1171);
                        §§goto(addr1041);
                     }
                     _loc38_ = _loc22_ << 4;
                     _loc14_ = _loc16_ + _loc38_;
                     _loc38_ = li8(_loc14_ + 2);
                     _loc13_ = li8(_loc14_ + 3);
                     _loc15_ = (_loc13_ = (_loc13_ = _loc13_ << 8) & 0x3F00) | _loc38_;
                     _loc38_ = li8(_loc16_ + 45);
                     if((_loc38_ = _loc38_ & _loc18_) != 0)
                     {
                        _loc38_ = _loc15_ * (_loc24_ + 32768);
                        _loc15_ = _loc38_ >>> 15;
                     }
                     _loc38_ = li16(_loc19_ + 252);
                     si16(_loc13_ = (_loc13_ = _loc38_ & 0x0FFF) + _loc15_,_loc19_ + 252);
                     _loc38_ >>>= 2;
                     _loc38_ = _loc38_ >>>= 2 & 0x03FC;
                     _loc13_ = sample.libgme.__ZN7Spc_Dsp5gaussE + _loc38_;
                     _loc13_ = si16(li16(_loc13_));
                     _loc17_ = si16(li16(_loc19_ + 254));
                     _loc13_ = (_loc13_ = _loc17_ * _loc13_) >>> 12;
                     _loc17_ = _loc38_ | 2;
                     _loc17_ = sample.libgme.__ZN7Spc_Dsp5gaussE + _loc17_;
                     _loc17_ = si16(li16(_loc17_));
                     var _loc6_:* = si16(li16(_loc19_ + 256));
                     _loc13_ = (_loc17_ = (_loc17_ = _loc6_ * _loc17_) >>> 12) + _loc13_;
                     _loc38_ = 1020 - _loc38_;
                     _loc17_ = _loc38_ | 2;
                     _loc17_ = sample.libgme.__ZN7Spc_Dsp5gaussE + _loc17_;
                     _loc17_ = si16(li16(_loc17_));
                     _loc6_ = si16(li16(_loc19_ + 258));
                     _loc17_ = (_loc17_ = _loc6_ * _loc17_) >>> 12;
                     _loc13_ += _loc17_;
                     _loc13_ = (_loc13_ = _loc13_ += _loc17_ << 17) >> 16;
                     _loc38_ = sample.libgme.__ZN7Spc_Dsp5gaussE + _loc38_;
                     _loc17_ = si16(li16(_loc38_));
                     _loc38_ = si16(li16(_loc19_ + 260));
                     if((_loc38_ = (_loc38_ = (_loc24_ = (_loc38_ = (_loc38_ = (_loc38_ = _loc38_ * _loc17_) >> 11) & -2) + _loc13_) << 16) >> 16) != _loc24_)
                     {
                        _loc38_ = 32767 - (_loc24_ >> 31);
                        _loc24_ = (_loc38_ = _loc38_ << 16) >> 16;
                     }
                     _loc38_ = li8(_loc16_ + 61);
                     if((_loc38_ = _loc38_ & _loc18_) != 0)
                     {
                        _loc24_ = li32(_loc16_ + 232);
                     }
                     _loc17_ = _loc24_ * _loc20_;
                     _loc13_ = _loc17_ >>> 19;
                     _loc15_ = si16(li16(_loc19_ + 250));
                     _loc20_ = si16(li16(_loc19_ + 274));
                     _loc38_ = si16(li16(_loc19_ + 248));
                     si8(_loc13_,_loc14_ + 9);
                     _loc13_ = _loc17_ >> 11;
                     _loc19_ = (_loc38_ = (_loc24_ = _loc13_ & -2) * _loc38_) >> _loc20_;
                     _loc38_ = li8(_loc16_ + 77);
                     _loc18_ = _loc38_ & _loc18_;
                     _loc12_ = _loc14_ = 0;
                     if(_loc18_ != _loc14_)
                     {
                        _loc12_ = _loc19_;
                     }
                     _loc38_ = _loc15_ * _loc24_;
                     _loc20_ = _loc38_ >> _loc20_;
                     if(_loc18_ != _loc14_)
                     {
                        _loc14_ = _loc20_;
                     }
                     _loc26_ = _loc12_ + _loc26_;
                     _loc21_ = _loc14_ + _loc21_;
                     _loc35_ = _loc20_ + _loc35_;
                     _loc32_ = _loc19_ + _loc32_;
                  }
                  _loc22_ += 1;
                  if(_loc22_ += 1 == 8)
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr777);
            }
            _loc24_ = li32(_loc16_ + 228);
            _loc22_ = _loc24_ + 4;
            _loc38_ = li8(_loc16_ + 125);
            if((_loc38_ = (_loc38_ = _loc38_ << 11) & 0x7800) <= _loc22_)
            {
               _loc22_ = 0;
            }
            _loc38_ = li8(_loc16_ + 109);
            _loc13_ = (_loc17_ = (_loc38_ = (_loc38_ = _loc38_ << 8) + _loc24_) & 0xFFFF) + 2;
            _loc38_ = li32(_loc16_ + 128);
            _loc6_ = li8(_loc19_ = _loc38_ + _loc13_);
            _loc13_ = _loc17_ + 3;
            _loc15_ = _loc38_ + _loc13_;
            var _loc2_:* = li8(_loc15_);
            _loc14_ = _loc38_ + _loc17_;
            _loc13_ = li8(_loc14_);
            _loc17_ += 1;
            _loc12_ = _loc38_ + _loc17_;
            var _loc4_:* = li8(_loc12_);
            si32(_loc22_,_loc16_ + 228);
            _loc38_ = li32(_loc16_ + 212);
            var _loc1_:* = (_loc17_ = _loc38_ + 7) & 7;
            si32(_loc1_,_loc16_ + 212);
            _loc1_ = _loc4_ << 8;
            _loc13_ = _loc1_ | _loc13_;
            _loc13_ = (_loc13_ = _loc13_ << 16) >> 16;
            var _loc25_:* = _loc16_ + 148;
            _loc38_ <<= 2;
            _loc38_ = _loc25_ + _loc38_;
            si16(_loc13_,_loc38_);
            _loc2_ <<= 8;
            _loc6_ = _loc2_ | _loc6_;
            si16(_loc6_ = (_loc6_ = _loc6_ << 16) >> 16,_loc38_ + 2);
            si16(_loc13_,_loc38_ + 32);
            si16(_loc6_,_loc38_ + 34);
            var _loc23_:* = si16(li16(_loc16_ + 146));
            _loc6_ *= _loc23_;
            _loc2_ = si16(li16(_loc38_ + 6));
            _loc1_ = si16(li16(_loc16_ + 144));
            _loc2_ *= _loc1_;
            _loc6_ = _loc2_ + _loc6_;
            _loc2_ = si16(li16(_loc38_ + 14));
            var _loc29_:* = si16(li16(_loc16_ + 140));
            _loc2_ *= _loc29_;
            _loc6_ += _loc2_;
            _loc4_ = si16(li16(_loc38_ + 10));
            _loc2_ = si16(li16(_loc16_ + 142));
            _loc4_ *= _loc2_;
            _loc4_ = _loc6_ + _loc4_;
            var _loc27_:* = si16(li16(_loc38_ + 22));
            _loc6_ = si16(li16(_loc16_ + 136));
            _loc27_ *= _loc6_;
            _loc27_ = _loc4_ + _loc27_;
            var _loc33_:* = si16(li16(_loc38_ + 18));
            _loc4_ = si16(li16(_loc16_ + 138));
            _loc33_ *= _loc4_;
            _loc33_ = _loc27_ + _loc33_;
            _loc17_ <<= 2;
            _loc27_ = _loc25_ + _loc17_;
            _loc25_ = si16(li16(_loc27_ + 2));
            _loc17_ = si16(li16(_loc16_ + 132));
            _loc25_ *= _loc17_;
            _loc33_ += _loc25_;
            var _loc31_:* = si16(li16(_loc38_ + 26));
            _loc25_ = si16(li16(_loc16_ + 134));
            _loc31_ *= _loc25_;
            _loc24_ = _loc33_ + _loc31_;
            _loc22_ = si8(li8(_loc16_ + 60));
            _loc13_ = _loc23_ * _loc13_;
            _loc23_ = si16(li16(_loc38_ + 4));
            _loc1_ *= _loc23_;
            _loc13_ = _loc1_ + _loc13_;
            _loc1_ = si16(li16(_loc38_ + 12));
            _loc1_ = _loc29_ * _loc1_;
            _loc13_ += _loc1_;
            _loc1_ = si16(li16(_loc38_ + 8));
            _loc2_ *= _loc1_;
            _loc13_ += _loc2_;
            _loc2_ = si16(li16(_loc38_ + 20));
            _loc6_ *= _loc2_;
            _loc13_ += _loc6_;
            _loc6_ = si16(li16(_loc38_ + 16));
            _loc6_ = _loc4_ * _loc6_;
            _loc13_ += _loc6_;
            _loc6_ = si16(li16(_loc27_));
            _loc17_ *= _loc6_;
            _loc13_ += _loc17_;
            _loc38_ = si16(li16(_loc38_ + 24));
            _loc38_ = _loc25_ * _loc38_;
            _loc18_ = _loc13_ + _loc38_;
            _loc20_ = si8(li8(_loc16_ + 44));
            _loc38_ = li8(_loc16_ + 108);
            if((_loc38_ = _loc38_ & 0x20) == 0)
            {
               _loc10_ = si8(li8(_loc16_ + 13));
               _loc11_ = (_loc26_ = (_loc38_ = (_loc38_ = _loc10_ * _loc18_) >> 14) + _loc26_) >>> 8;
               _loc38_ = _loc26_ << 16;
               if((_loc38_ = _loc38_ >> 16) != _loc26_)
               {
                  _loc26_ = 32767 - (_loc26_ >> 31);
                  _loc11_ = (_loc38_ = _loc26_ & 0xFF00) >>> 8;
               }
               _loc38_ = _loc10_ * _loc24_;
               _loc21_ = (_loc38_ = _loc38_ >> 14) + _loc21_;
               si8(_loc11_,_loc12_);
               si8(_loc26_,_loc14_);
               _loc26_ = _loc21_ >>> 8;
               _loc38_ = _loc21_ << 16;
               if((_loc38_ = _loc38_ >> 16) != _loc21_)
               {
                  _loc21_ = 32767 - (_loc21_ >> 31);
                  _loc26_ = (_loc38_ = _loc21_ & 0xFF00) >>> 8;
               }
               si8(_loc26_,_loc15_);
               si8(_loc21_,_loc19_);
            }
            _loc21_ = 0;
            if(_loc34_ != 0)
            {
               _loc38_ = _loc20_ * _loc18_;
               if((_loc38_ = (_loc38_ = (_loc32_ = (_loc38_ >> 14) + ((_loc13_ = _loc30_ * _loc32_) >> 15)) << 16) >> 16) != _loc32_)
               {
                  _loc32_ = 32767 - (_loc32_ >> 31);
               }
               _loc38_ = _loc22_ * _loc24_;
               _loc38_ = _loc38_ >> 14;
               _loc13_ = _loc28_ * _loc35_;
               _loc13_ = _loc13_ >> 15;
               _loc35_ = _loc38_ + _loc13_;
               if((_loc38_ = (_loc38_ = _loc35_ << 16) >> 16) != _loc35_)
               {
                  _loc35_ = 32767 - (_loc35_ >> 31);
               }
               _loc38_ = li8(_loc16_ + 108);
               si16(_loc32_,_loc34_);
               si16(_loc35_,_loc34_ + 2);
               _loc21_ = _loc34_ + 4;
               _loc38_ &= 64;
               if(_loc38_ &= 64 != 0)
               {
                  si16(0,_loc34_);
                  si16(0,_loc34_ + 2);
               }
            }
         }
         while(_loc37_ += -1, _loc37_ += -1 != 0);
         
      }
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
