package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sap_Apu9run_untilEiE11hipass_bits;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sap_Apu9run_untilEiE5poly1;
   
   public function F__ZN7Sap_Apu9run_untilEi() : void
   {
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc31_:* = 0;
      var _loc36_:* = 0;
      var _loc33_:* = 0;
      var _loc30_:* = 0;
      var _loc28_:* = 0;
      var _loc34_:* = 0;
      var _loc13_:int = 0;
      var _loc21_:int = 0;
      var _loc17_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc18_:* = 0;
      var _loc9_:* = 0;
      var _loc25_:int = 0;
      var _loc26_:int = 0;
      var _loc35_:* = 0;
      var _loc4_:int = 0;
      var _loc23_:* = 0;
      var _loc27_:* = 0;
      var _loc15_:* = 0;
      var _loc24_:int = 0;
      var _loc32_:int = 0;
      var _loc22_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = 0;
      var _loc8_:* = 0;
      var _loc29_:* = 0;
      var _loc3_:* = int(ESP);
      _loc35_ = (_loc36_ = li32((_loc16_ = li32(_loc7_ = _loc3_)) + 100)) & 1;
      _loc34_ = 28;
      if(_loc35_ != 0)
      {
         _loc34_ = 114;
      }
      _loc32_ = (_loc35_ = int((_loc33_ = li8(_loc16_)) + 1)) * _loc34_;
      if((_loc31_ = _loc36_ & 64) != 0)
      {
         _loc32_ = _loc33_ + 4;
      }
      si32(_loc32_,_loc16_ + 12);
      _loc28_ = int((_loc35_ = int((_loc30_ = li8(_loc16_ + 20)) + 1)) * _loc34_);
      if((_loc35_ = _loc36_ & 16) != 0)
      {
         _loc28_ = int((_loc33_ = (_loc35_ = _loc30_ << 8) | _loc33_) + 7);
         if(_loc31_ == 0)
         {
            _loc28_ = int((_loc35_ = int(_loc33_ + 1)) * _loc34_);
         }
      }
      si32(_loc28_,_loc16_ + 32);
      _loc31_ = int((_loc35_ = int((_loc33_ = li8(_loc16_ + 40)) + 1)) * _loc34_);
      if((_loc28_ = _loc36_ & 32) != 0)
      {
         _loc31_ = int(_loc33_ + 4);
      }
      si32(_loc31_,_loc16_ + 52);
      _loc31_ = int((_loc35_ = int((_loc30_ = li8(_loc16_ + 60)) + 1)) * _loc34_);
      if((_loc35_ = _loc36_ & 8) != 0)
      {
         _loc31_ = int((_loc33_ = (_loc35_ = _loc30_ << 8) | _loc33_) + 7);
         if(_loc28_ == 0)
         {
            _loc31_ = int((_loc35_ = int(_loc33_ + 1)) * _loc34_);
         }
      }
      si32(_loc31_,_loc16_ + 72);
      _loc31_ = _loc36_ & 128;
      _loc36_ = 131071;
      if(_loc31_ != 0)
      {
         _loc36_ = 511;
      }
      _loc35_ = int((_loc35_ = li32(_loc16_ + 96)) % _loc36_);
      _loc34_ = li32(_loc16_ + 80);
      si32(_loc35_,_loc16_ + 96);
      _loc28_ = int(_loc34_ + 882);
      if(_loc31_ != 0)
      {
         _loc28_ = int(_loc34_ + 818);
      }
      _loc31_ = li32(_loc7_ + 4);
      _loc30_ = int(_loc16_ + 92);
      _loc13_ = _loc16_ + 96;
      _loc21_ = _loc34_ + 816;
      _loc22_ = li32(_loc16_ + 84);
      _loc24_ = 3;
      while(true)
      {
         _loc35_ = (_loc33_ = int(_loc24_ * -5)) << 2;
         _loc22_ = int((_loc35_ = li32((_loc26_ = _loc16_ + _loc35_) + 68)) + _loc22_);
         if((_loc17_ = li32(_loc26_ + 76)) == 0)
         {
            continue;
         }
         si32(1,_loc17_ + 40);
         _loc20_ = (_loc19_ = li8((_loc18_ = int(_loc16_ + int(_loc24_ * -20))) + 61)) & 16;
         if((_loc15_ = (_loc35_ = _loc19_ << 1) & 30) != 0)
         {
            if(_loc20_ == 0)
            {
               if((_loc35_ = _loc19_ & 160) == 160)
               {
                  if(_loc32_ <= 73)
                  {
                     addr430:
                     _loc35_ = (_loc35_ = int(_loc20_ >>> 4)) ^ 1;
                     _loc20_ = int(_loc15_ >>> _loc35_);
                     _loc35_ = _loc33_ << 2;
                     _loc18_ = li32((_loc15_ = int(_loc16_ + _loc35_)) + 64);
                     if(_loc20_ != _loc18_)
                     {
                        si32(_loc20_,_loc15_ + 64);
                        _loc3_ -= 16;
                        si32(_loc17_,_loc3_ + 12);
                        var _loc10_:int;
                        si32(_loc10_ = _loc20_ - _loc18_,_loc3_ + 8);
                        var _loc14_:*;
                        si32(_loc35_ = int((_loc14_ = int(li32(_loc17_) * li32(_loc16_ + 84))) + li32(_loc17_ + 4)),_loc3_ + 4);
                        si32(_loc34_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                     }
                     continue;
                  }
               }
               _loc35_ = li8((_loc35_ = int(__ZZN7Sap_Apu9run_untilEiE11hipass_bits - _loc24_)) + 3);
               _loc14_ = li32(_loc16_ + 100);
               _loc35_ &= _loc14_;
               _loc20_ = 0;
               _loc11_ = _loc31_;
               if(_loc35_ != 0)
               {
                  _loc11_ = int(li32((_loc35_ = int(_loc16_ + (_loc33_ << 2))) + 108) + li32(_loc16_ + 84));
                  _loc20_ = li32((_loc35_ = int(_loc16_ + (_loc33_ << 2))) + 112);
                  if((_loc35_ = li8(_loc18_ + 63)) != 0)
                  {
                     si32(_loc14_ = int((_loc14_ = li32((_loc35_ = int(_loc16_ + (_loc33_ << 2))) + 64)) - _loc15_),_loc35_ + 64);
                     _loc15_ = int(0 - _loc15_);
                  }
               }
               if(_loc22_ >= _loc31_)
               {
                  if(_loc11_ < _loc31_)
                  {
                     addr631:
                     _loc8_ = (_loc35_ = li8(_loc18_ + 62)) & 1;
                     _loc35_ = _loc19_ & 32;
                     _loc9_ = 16;
                     _loc5_ = int(__ZZN7Sap_Apu9run_untilEiE5poly1);
                     _loc6_ = 1;
                     if(_loc35_ == 0)
                     {
                        _loc6_ = _loc19_ & 64;
                        _loc9_ = _loc36_;
                        if(_loc6_ != 0)
                        {
                           _loc9_ = 15;
                        }
                        _loc5_ = _loc13_;
                        if(_loc6_ != 0)
                        {
                           _loc5_ = _loc30_;
                        }
                        _loc8_ = li32(_loc5_);
                        _loc2_ = li32(_loc26_ + 68);
                        _loc5_ = _loc28_;
                        if(_loc6_ != 0)
                        {
                           _loc5_ = _loc21_;
                        }
                        _loc8_ = int((_loc35_ = int(_loc2_ + _loc8_)) % _loc9_);
                        _loc6_ = int(_loc32_ % _loc9_);
                     }
                     _loc35_ = _loc19_ & 128;
                     _loc19_ = 0;
                     _loc2_ = 377253537;
                     if(_loc35_ == 0)
                     {
                        _loc14_ = int((_loc35_ = int((_loc14_ = li32(_loc16_ + 88)) + li32(_loc26_ + 68))) % 31);
                        _loc2_ = (_loc14_ = (_loc14_ = 377253537 << _loc14_) & 2147483647) | int(377253537 >>> int(31 - _loc14_));
                        _loc19_ = int(_loc32_ % 31);
                     }
                     _loc9_ = int(_loc6_ - _loc9_);
                     _loc35_ = _loc33_ << 2;
                     _loc1_ = li32((_loc4_ = _loc16_ + _loc35_) + 64);
                     _loc25_ = 31 - _loc19_;
                     while(true)
                     {
                        if(_loc11_ < _loc22_)
                        {
                           if((_loc23_ = (_loc35_ = _loc15_ >> 31) & _loc15_) != _loc1_)
                           {
                              _loc35_ = int(_loc23_ - _loc1_);
                              _loc3_ -= 16;
                              si32(_loc17_,_loc3_ + 12);
                              var _loc12_:int;
                              si32(_loc12_ = (_loc10_ = li32(_loc17_) * _loc11_) + li32(_loc17_ + 4),_loc3_ + 4);
                              si32(_loc34_,_loc3_);
                              si32(_loc35_,_loc3_ + 8);
                              _loc1_ = int(int(_loc1_ - _loc15_) + _loc35_);
                              ESP = _loc3_;
                              F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                              _loc3_ += 16;
                              _loc15_ = int(0 - _loc15_);
                           }
                        }
                        if(_loc11_ <= _loc22_)
                        {
                           while((_loc11_ += _loc20_) <= _loc22_)
                           {
                           }
                        }
                        _loc23_ = _loc11_;
                        if(_loc11_ >= _loc31_)
                        {
                           _loc23_ = _loc31_;
                        }
                        if(_loc22_ < _loc23_)
                        {
                           do
                           {
                              if((_loc35_ = _loc2_ & 1) != 0)
                              {
                                 _loc29_ = int(_loc8_ + _loc6_);
                                 if((_loc27_ = int(_loc8_ + _loc9_)) >= 0)
                                 {
                                    _loc29_ = _loc27_;
                                 }
                                 _loc35_ = _loc8_ >> 3;
                                 _loc35_ = li8(_loc35_ = int(_loc5_ + _loc35_));
                                 _loc14_ = _loc8_ & 7;
                                 _loc35_ = (_loc35_ >>>= _loc14_) & 1;
                                 _loc35_ = int(0 - _loc35_);
                                 _loc27_ = _loc15_ & _loc35_;
                                 _loc8_ = _loc29_;
                                 if(_loc27_ != _loc1_)
                                 {
                                    _loc3_ -= 16;
                                    si32(_loc17_,_loc3_ + 12);
                                    si32(_loc14_ = int(_loc27_ - _loc1_),_loc3_ + 8);
                                    si32(_loc35_ = int((_loc14_ = int(li32(_loc17_) * _loc22_)) + li32(_loc17_ + 4)),_loc3_ + 4);
                                    si32(_loc34_,_loc3_);
                                    ESP = _loc3_;
                                    F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                                    _loc3_ += 16;
                                    _loc8_ = _loc29_;
                                    _loc1_ = _loc27_;
                                 }
                              }
                              _loc35_ = int(_loc2_ >>> _loc25_);
                              _loc2_ = (_loc14_ = (_loc14_ = _loc2_ << _loc19_) & 2147483647) | _loc35_;
                           }
                           while((_loc22_ += _loc32_) < _loc23_);
                           
                        }
                        if(_loc22_ >= _loc31_)
                        {
                           if(_loc11_ >= _loc31_)
                           {
                              break;
                           }
                        }
                     }
                     si8(_loc8_,_loc18_ + 62);
                     si32(_loc1_,_loc4_ + 64);
                  }
                  si8(0,_loc18_ + 63);
                  if(_loc15_ <= -1)
                  {
                     si32(_loc14_ = int((_loc14_ = li32((_loc35_ = int(_loc16_ + (_loc33_ << 2))) + 64)) - _loc15_),_loc35_ + 64);
                     si8(1,_loc18_ + 63);
                  }
                  continue;
               }
               §§goto(addr631);
            }
         }
         §§goto(addr430);
      }
      si32(_loc31_,_loc16_ + 84);
      _loc35_ = int(_loc31_ - _loc22_);
      si32(_loc14_ = int((_loc14_ = int((_loc14_ = li32(_loc16_ + 92)) + _loc35_)) % 15),_loc16_ + 92);
      si32(_loc14_ = int((_loc14_ = int((_loc14_ = li32(_loc16_ + 88)) + _loc35_)) % 31),_loc16_ + 88);
      si32(_loc35_ = int((_loc14_ = li32(_loc16_ + 96)) + _loc35_),_loc16_ + 96);
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
