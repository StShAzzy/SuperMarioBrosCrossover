package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6309;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu10run_until_EiE8__func__;
   
   public function F__ZN7Nes_Apu10run_until_Ei() : void
   {
      var _loc7_:* = 0;
      var _loc18_:* = 0;
      var _loc42_:* = 0;
      var _loc40_:* = 0;
      var _loc15_:int = 0;
      var _loc30_:int = 0;
      var _loc32_:int = 0;
      var _loc34_:int = 0;
      var _loc28_:int = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc21_:* = 0;
      var _loc22_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc10_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc27_:int = 0;
      var _loc31_:* = 0;
      var _loc29_:* = 0;
      var _loc35_:* = 0;
      var _loc33_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:* = 0;
      var _loc43_:* = 0;
      var _loc41_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc23_:int = 0;
      var _loc26_:* = 0;
      var _loc44_:* = 0;
      var _loc24_:* = 0;
      var _loc8_:int = 0;
      var _loc1_:int = 0;
      var _loc25_:int = 0;
      var _loc36_:* = 0;
      var _loc3_:* = int(ESP);
      _loc44_ = li32((_loc18_ = li32(_loc7_ = _loc3_)) + 1944);
      _loc42_ = li32(_loc7_ + 4);
      if(_loc44_ > _loc42_)
      {
         _loc3_ -= 16;
         si32(L__2E_str6309,_loc3_ + 12);
         si32(150,_loc3_ + 8);
         si32(L__2E_str4307,_loc3_ + 4);
         si32(__ZZN7Nes_Apu10run_until_EiE8__func__,_loc3_);
         ESP = _loc3_;
         F___assert();
         _loc3_ += 16;
      }
      if(_loc44_ != _loc42_)
      {
         if((_loc40_ = li32(_loc18_ + 1948)) < _loc42_)
         {
            si32(_loc42_,_loc18_ + 1948);
            _loc3_ -= 16;
            si32(_loc42_,_loc3_ + 8);
            si32(_loc40_,_loc3_ + 4);
            var _loc38_:*;
            si32(_loc38_ = int(_loc18_ + 1304),_loc3_);
            ESP = _loc3_;
            F__ZN7Nes_Dmc3runEii();
            _loc3_ += 16;
            _loc44_ = li32(_loc18_ + 1944);
         }
         _loc36_ = li32(_loc18_ + 1964);
         _loc34_ = _loc18_ + 112;
         _loc32_ = _loc18_ + 712;
         _loc30_ = _loc18_ + 64;
         _loc15_ = _loc18_ + 20;
         while(true)
         {
            _loc23_ = _loc36_ + _loc44_;
            _loc24_ = _loc42_;
            if(_loc23_ <= _loc42_)
            {
               _loc24_ = _loc23_;
            }
            si32(_loc38_ = int(_loc23_ - _loc24_),_loc18_ + 1964);
            _loc3_ -= 16;
            si32(_loc24_,_loc3_ + 8);
            si32(_loc44_,_loc3_ + 4);
            si32(_loc15_,_loc3_);
            ESP = _loc3_;
            F__ZN10Nes_Square3runEii();
            _loc3_ += 16;
            _loc38_ = li32(_loc18_ + 1944);
            _loc3_ -= 16;
            si32(_loc24_,_loc3_ + 8);
            si32(_loc38_,_loc3_ + 4);
            si32(_loc30_,_loc3_);
            ESP = _loc3_;
            F__ZN10Nes_Square3runEii();
            _loc3_ += 16;
            _loc38_ = li32(_loc18_ + 1944);
            _loc3_ -= 16;
            si32(_loc24_,_loc3_ + 8);
            si32(_loc38_,_loc3_ + 4);
            si32(_loc32_,_loc3_);
            ESP = _loc3_;
            F__ZN12Nes_Triangle3runEii();
            _loc3_ += 16;
            _loc38_ = li32(_loc18_ + 1944);
            _loc3_ -= 16;
            si32(_loc24_,_loc3_ + 8);
            si32(_loc38_,_loc3_ + 4);
            si32(_loc34_,_loc3_);
            ESP = _loc3_;
            F__ZN9Nes_Noise3runEii();
            _loc3_ += 16;
            si32(_loc24_,_loc18_ + 1944);
            if(_loc24_ == _loc42_)
            {
               break;
            }
            si32(_loc36_ = li32(_loc18_ + 1960),_loc18_ + 1964);
            si32(_loc28_ = (_loc26_ = li32(_loc18_ + 1968)) + 1,_loc18_ + 1968);
            if(_loc26_ <= 1)
            {
               if(_loc26_ != 0)
               {
                  if(_loc26_ == 1)
                  {
                     if((_loc38_ = li8(_loc18_ + 1362)) == 0)
                     {
                        si32(_loc36_ += -2,_loc18_ + 1964);
                     }
                  }
               }
               else
               {
                  if((_loc38_ = (_loc38_ = li8(_loc18_ + 1976)) & 192) == 0)
                  {
                     si32(_loc38_ = int((_loc38_ = int(_loc24_ + (_loc36_ << 2))) + 2),_loc18_ + 1956);
                     si8(1,_loc18_ + 1980);
                     addr473:
                     if((_loc19_ = li32(_loc18_ + 32)) != 0)
                     {
                        if((_loc38_ = (_loc38_ = li8(_loc18_ + 20)) & 32) == 0)
                        {
                           si32(_loc38_ = int(_loc19_ + -1),_loc18_ + 32);
                        }
                     }
                     if((_loc20_ = li32(_loc18_ + 76)) != 0)
                     {
                        if((_loc38_ = (_loc38_ = li8(_loc18_ + 64)) & 32) == 0)
                        {
                           si32(_loc38_ = int(_loc20_ + -1),_loc18_ + 76);
                        }
                     }
                     if((_loc21_ = li32(_loc18_ + 124)) != 0)
                     {
                        if((_loc38_ = (_loc38_ = li8(_loc18_ + 112)) & 32) == 0)
                        {
                           si32(_loc38_ = int(_loc21_ + -1),_loc18_ + 124);
                        }
                     }
                     if((_loc22_ = li32(_loc18_ + 724)) != 0)
                     {
                        if((_loc38_ = (_loc38_ = li8(_loc18_ + 712)) & 128) == 0)
                        {
                           si32(_loc38_ = int(_loc22_ + -1),_loc18_ + 724);
                        }
                     }
                     _loc17_ = li8(_loc18_ + 21);
                     si32(_loc38_ = int((_loc38_ = li32(_loc18_ + 56)) + -1),_loc18_ + 56);
                     if(_loc38_ <= -1)
                     {
                        si8(1,_loc18_ + 25);
                        if((_loc38_ = _loc17_ & 128) != 0)
                        {
                           if((_loc16_ = _loc17_ & 7) != 0)
                           {
                              var _loc12_:*;
                              if((uint(_loc13_ = (_loc12_ = (_loc12_ = (_loc14_ = li8(_loc18_ + 23)) << 8) & 1792) | li8(_loc18_ + 22))) >= 8)
                              {
                                 _loc8_ = -1;
                                 if((_loc17_ & 8) == 0)
                                 {
                                    _loc8_ = 0;
                                 }
                                 if((_loc10_ = (_loc38_ = (_loc38_ = int(_loc13_ >>> _loc16_)) ^ _loc8_) + _loc13_) <= 2047)
                                 {
                                    si8(_loc10_,_loc18_ + 22);
                                    si8(_loc38_ = (_loc12_ = (_loc12_ = int(_loc10_ >>> 8)) & 7) | _loc14_ & 248,_loc18_ + 23);
                                 }
                              }
                           }
                        }
                        addr741:
                        si8(0,_loc18_ + 25);
                        si32(_loc38_ = (_loc38_ = int(_loc17_ >>> 4)) & 7,_loc18_ + 56);
                     }
                     else if((_loc38_ = li8(_loc18_ + 25)) != 0)
                     {
                        §§goto(addr741);
                     }
                     _loc5_ = li8(_loc18_ + 65);
                     si32(_loc38_ = int((_loc38_ = li32(_loc18_ + 100)) + -1),_loc18_ + 100);
                     if(_loc38_ <= -1)
                     {
                        si8(1,_loc18_ + 69);
                        if((_loc38_ = _loc5_ & 128) != 0)
                        {
                           if((_loc6_ = _loc5_ & 7) != 0)
                           {
                              _loc2_ = li8(_loc18_ + 67);
                              if((uint(_loc4_ = (_loc12_ = (_loc12_ = _loc2_ << 8) & 1792) | li8(_loc18_ + 66))) >= 8)
                              {
                                 _loc1_ = _loc4_ >>> _loc6_;
                                 if((_loc38_ = _loc5_ & 8) != 0)
                                 {
                                    _loc1_ = 0 - _loc1_;
                                 }
                                 if((_loc27_ = _loc1_ + _loc4_) <= 2047)
                                 {
                                    si8(_loc27_,_loc18_ + 66);
                                    si8(_loc38_ = (_loc12_ = (_loc12_ = int(_loc27_ >>> 8)) & 7) | _loc2_ & 248,_loc18_ + 67);
                                 }
                              }
                           }
                        }
                        addr896:
                        si8(0,_loc18_ + 69);
                        si32(_loc38_ = (_loc38_ = int(_loc5_ >>> 4)) & 7,_loc18_ + 100);
                     }
                     else if((_loc38_ = li8(_loc18_ + 69)) != 0)
                     {
                        §§goto(addr896);
                     }
                     if((_loc38_ = li8(_loc18_ + 1362)) != 0)
                     {
                        if(_loc28_ == 3)
                        {
                           si32(_loc36_ += -2,_loc18_ + 1964);
                        }
                     }
                  }
                  §§goto(addr473);
               }
               addr1006:
               if((_loc38_ = li8(_loc18_ + 719)) != 0)
               {
                  si32(_loc38_ = (_loc38_ = li8(_loc18_ + 712)) & 127,_loc18_ + 740);
               }
               else if((_loc31_ = li32(_loc18_ + 740)) != 0)
               {
                  si32(_loc38_ = int(_loc31_ + -1),_loc18_ + 740);
               }
               if((_loc38_ = si8(li8(_loc18_ + 712))) >= 0)
               {
                  si8(0,_loc18_ + 719);
               }
               _loc38_ = li8(_loc18_ + 27);
               _loc35_ = (_loc29_ = li8(_loc18_ + 20)) & 15;
               if(_loc38_ != 0)
               {
                  si8(0,_loc18_ + 27);
                  si32(_loc35_,_loc18_ + 48);
                  si32(15,_loc18_ + 44);
               }
               else
               {
                  si32(_loc38_ = int((_loc38_ = li32(_loc18_ + 48)) + -1),_loc18_ + 48);
                  if(_loc38_ <= -1)
                  {
                     si32(_loc35_,_loc18_ + 48);
                     if((_loc38_ = (_loc33_ = li32(_loc18_ + 44)) | _loc29_ & 32) != 0)
                     {
                        si32(_loc38_ = (_loc38_ = int(_loc33_ + 15)) & 15,_loc18_ + 44);
                     }
                  }
               }
               _loc38_ = li8(_loc18_ + 71);
               _loc37_ = (_loc39_ = li8(_loc18_ + 64)) & 15;
               if(_loc38_ != 0)
               {
                  si8(0,_loc18_ + 71);
                  si32(_loc37_,_loc18_ + 92);
                  si32(15,_loc18_ + 88);
               }
               else
               {
                  si32(_loc38_ = int((_loc38_ = li32(_loc18_ + 92)) + -1),_loc18_ + 92);
                  if(_loc38_ <= -1)
                  {
                     si32(_loc37_,_loc18_ + 92);
                     if((_loc38_ = (_loc43_ = li32(_loc18_ + 88)) | _loc39_ & 32) != 0)
                     {
                        si32(_loc38_ = (_loc38_ = int(_loc43_ + 15)) & 15,_loc18_ + 88);
                     }
                  }
               }
               _loc38_ = li8(_loc18_ + 119);
               _loc11_ = (_loc41_ = li8(_loc18_ + 112)) & 15;
               if(_loc38_ != 0)
               {
                  si8(0,_loc18_ + 119);
                  si32(_loc11_,_loc18_ + 140);
                  si32(15,_loc18_ + 136);
                  _loc44_ = _loc24_;
               }
               else
               {
                  si32(_loc38_ = int((_loc38_ = li32(_loc18_ + 140)) + -1),_loc18_ + 140);
                  _loc44_ = _loc24_;
                  if(_loc38_ <= -1)
                  {
                     si32(_loc11_,_loc18_ + 140);
                     _loc44_ = _loc24_;
                     if(((_loc9_ = li32(_loc18_ + 136)) | _loc41_ & 32) != 0)
                     {
                        si32(_loc38_ = (_loc38_ = int(_loc9_ + 15)) & 15,_loc18_ + 136);
                        _loc44_ = _loc24_;
                     }
                  }
               }
               continue;
            }
            if(_loc26_ != 2)
            {
               if(_loc26_ == 3)
               {
                  si32(0,_loc18_ + 1968);
                  if((_loc38_ = (_loc38_ = li8(_loc18_ + 1976)) & 128) != 0)
                  {
                     _loc25_ = -6;
                     if(li8(_loc18_ + 1362) != 0)
                     {
                        _loc25_ = -2;
                     }
                     _loc38_ = _loc36_ << 1;
                     si32(_loc36_ = int(_loc25_ + _loc38_),_loc18_ + 1964);
                  }
               }
            }
            else
            {
               §§goto(addr473);
            }
            §§goto(addr1006);
            §§goto(addr473);
         }
      }
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
