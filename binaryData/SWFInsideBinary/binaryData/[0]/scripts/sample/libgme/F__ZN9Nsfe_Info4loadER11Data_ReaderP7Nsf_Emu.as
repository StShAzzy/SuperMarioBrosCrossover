package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Nsfe_Info4loadER11Data_ReaderP7Nsf_Emu() : void
   {
      var _loc2_:* = 0;
      var _loc7_:int = 0;
      var _loc17_:* = 0;
      var _loc24_:* = 0;
      var _loc27_:* = 0;
      var _loc35_:int = 0;
      var _loc70_:int = 0;
      var _loc75_:* = 0;
      var _loc72_:int = 0;
      var _loc76_:* = 0;
      var _loc66_:* = 0;
      var _loc68_:* = 0;
      var _loc49_:int = 0;
      var _loc54_:int = 0;
      var _loc53_:int = 0;
      var _loc56_:int = 0;
      var _loc30_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc13_:* = 0;
      var _loc67_:* = 0;
      var _loc71_:* = 0;
      var _loc80_:* = 0;
      var _loc79_:* = 0;
      var _loc81_:* = 0;
      var _loc78_:int = 0;
      var _loc52_:int = 0;
      var _loc58_:* = 0;
      var _loc11_:* = 0;
      var _loc42_:* = 0;
      var _loc21_:* = 0;
      var _loc15_:* = 0;
      var _loc39_:* = 0;
      var _loc37_:int = 0;
      var _loc33_:int = 0;
      var _loc31_:int = 0;
      var _loc14_:* = 0;
      var _loc64_:int = 0;
      var _loc63_:int = 0;
      var _loc57_:int = 0;
      var _loc55_:int = 0;
      var _loc43_:* = 0;
      var _loc26_:* = 0;
      var _loc25_:* = 0;
      var _loc50_:* = 0;
      var _loc40_:* = 0;
      var _loc20_:* = 0;
      var _loc41_:* = 0;
      var _loc74_:* = 0;
      var _loc69_:int = 0;
      var _loc82_:int = 0;
      var _loc77_:* = 0;
      var _loc28_:* = 0;
      var _loc32_:int = 0;
      var _loc38_:* = 0;
      var _loc36_:* = 0;
      var _loc51_:int = 0;
      var _loc46_:* = 0;
      var _loc44_:int = 0;
      var _loc62_:* = 0;
      var _loc61_:int = 0;
      var _loc45_:int = 0;
      var _loc60_:* = 0;
      var _loc59_:* = 0;
      var _loc19_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc48_:* = 0;
      var _loc22_:* = 0;
      var _loc29_:int = 0;
      var _loc34_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:int = 0;
      var _loc3_:* = 0;
      var _loc12_:int = 0;
      var _loc65_:int = 0;
      var _loc5_:int = 0;
      var _loc47_:* = 0;
      var _loc73_:* = 0;
      var _loc23_:* = 0;
      var _loc1_:* = ESP;
      while(true)
      {
         try
         {
            if(!_loc7_)
            {
               _loc2_ = _loc1_;
               _loc1_ -= 160;
               _loc24_ = li32(_loc2_ + 4);
               _loc39_ = li32((_loc41_ = li32(_loc24_)) + 12);
               _loc1_ -= 16;
               si32(4,_loc1_ + 8);
               _loc37_ = _loc2_ - 76;
               si32(_loc37_,_loc1_ + 4);
               si32(_loc24_,_loc1_);
               ESP = _loc1_;
               ptr2fun[_loc39_]();
               _loc1_ += 16;
               _loc35_ = eax;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_519,_loc2_ - 28);
               si32(___gxx_personality_sj0,_loc2_ - 32);
               _loc41_ = _loc2_;
               si32(_loc41_,_loc2_ - 24);
               _loc41_ = _loc1_;
               si32(_loc41_,_loc2_ - 16);
               _loc33_ = _loc2_ - 56;
               _loc31_ = _loc33_ + 32;
               _loc29_ = 0;
               eax = setjmp(_loc31_,1,_loc1_);
            }
            else
            {
               switch(_loc7_ - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            _loc41_ = eax;
            if(_loc41_ == 0)
            {
               _loc27_ = li32(_loc2_ + 8);
               _loc17_ = li32(_loc2_);
               _loc1_ -= 16;
               si32(_loc33_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Register();
               _loc1_ += 16;
               if(_loc35_ != 0)
               {
                  _loc73_ = _gme_wrong_file_type;
                  if(_loc35_ != __ZN11Data_Reader9eof_errorE)
                  {
                     _loc73_ = _loc35_;
                  }
               }
               else
               {
                  loop3:
                  while(true)
                  {
                     _loc41_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5407 - _loc29_;
                     _loc41_ = li8(_loc41_);
                     _loc74_ = _loc37_ - _loc29_;
                     _loc74_ = li8(_loc74_);
                     _loc73_ = _gme_wrong_file_type;
                     if(_loc74_ == _loc41_)
                     {
                        _loc29_ += -1;
                        if(_loc29_ += -1 != -4)
                        {
                           continue;
                        }
                        _loc75_ = li32(_loc17_ + 1152);
                        si32(0,_loc17_ + 1152);
                        si32(0,_loc17_ + 1156);
                        if(_loc75_ != 0)
                        {
                           _loc1_ -= 16;
                           si32(_loc75_,_loc1_);
                           ESP = _loc1_;
                           F_idalloc();
                           _loc1_ += 16;
                        }
                        _loc76_ = li32(_loc17_ + 1160);
                        si32(0,_loc17_ + 1160);
                        si32(0,_loc17_ + 1164);
                        if(_loc76_ != 0)
                        {
                           _loc1_ -= 16;
                           si32(_loc76_,_loc1_);
                           ESP = _loc1_;
                           F_idalloc();
                           _loc1_ += 16;
                        }
                        _loc66_ = li32(_loc17_ + 1168);
                        si32(0,_loc17_ + 1168);
                        si32(0,_loc17_ + 1172);
                        if(_loc66_ != 0)
                        {
                           _loc1_ -= 16;
                           si32(_loc66_,_loc1_);
                           ESP = _loc1_;
                           F_idalloc();
                           _loc1_ += 16;
                        }
                        _loc68_ = li32(_loc17_ + 1176);
                        si32(0,_loc17_ + 1176);
                        si32(0,_loc17_ + 1180);
                        if(_loc68_ != 0)
                        {
                           _loc1_ -= 16;
                           si32(_loc68_,_loc1_);
                           ESP = _loc1_;
                           F_idalloc();
                           _loc1_ += 16;
                        }
                        _loc70_ = _loc17_ + 1152;
                        _loc72_ = _loc17_ + 1160;
                        _loc1_ -= 16;
                        si32(128,_loc1_ + 8);
                        si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Nsfe_Info4loadER11Data_ReaderP7Nsf_EmuE11base_header,_loc1_ + 4);
                        si32(_loc17_,_loc1_);
                        ESP = _loc1_;
                        Fmemcpy();
                        _loc1_ += 16;
                        _loc64_ = _loc2_ - 152;
                        si32(_loc64_,_loc2_ - 72);
                        _loc63_ = _loc2_ - 136;
                        si32(_loc63_,_loc2_ - 68);
                        _loc57_ = _loc2_ - 112;
                        si32(_loc57_,_loc2_ - 64);
                        _loc55_ = _loc2_ - 120;
                        si32(_loc55_,_loc2_ - 60);
                        _loc56_ = _loc17_ + 254;
                        _loc53_ = _loc17_ + 128;
                        _loc54_ = _loc17_ + 8;
                        _loc49_ = _loc17_ + 112;
                        _loc51_ = __ZTV13Subset_Reader + 8;
                        _loc45_ = __ZTV16Remaining_Reader + 8;
                        _loc47_ = 0;
                        loop4:
                        while(true)
                        {
                           _loc42_ = _loc47_;
                           _loc73_ = 0;
                           if(_loc42_ == 3)
                           {
                              break loop3;
                           }
                           _loc41_ = li32(_loc24_);
                           _loc43_ = li32(_loc41_ + 12);
                           _loc26_ = _loc33_ | 4;
                           si32(-1,_loc26_);
                           _loc1_ -= 16;
                           si32(8,_loc1_ + 8);
                           _loc41_ = _loc2_ - 84;
                           si32(_loc41_,_loc1_ + 4);
                           si32(_loc24_,_loc1_);
                           ESP = _loc1_;
                           ptr2fun[_loc43_]();
                           _loc1_ += 16;
                           _loc73_ = eax;
                           if(_loc73_ != 0)
                           {
                              break loop3;
                           }
                           _loc41_ = li8(_loc2_ - 77);
                           _loc74_ = _loc41_ << 8;
                           _loc41_ = li8(_loc2_ - 78);
                           _loc41_ = _loc74_ | _loc41_;
                           _loc74_ = _loc41_ << 8;
                           _loc41_ = li8(_loc2_ - 79);
                           _loc41_ = _loc74_ | _loc41_;
                           _loc74_ = _loc41_ << 8;
                           _loc41_ = li8(_loc2_ - 80);
                           _loc25_ = _loc74_ | _loc41_;
                           _loc41_ = li8(_loc2_ - 81);
                           _loc74_ = _loc41_ << 8;
                           _loc41_ = li8(_loc2_ - 82);
                           _loc41_ = _loc74_ | _loc41_;
                           _loc74_ = _loc41_ << 8;
                           _loc41_ = li8(_loc2_ - 83);
                           _loc41_ = _loc74_ | _loc41_;
                           _loc41_ = _loc41_ << 8;
                           _loc74_ = li8(_loc2_ - 84);
                           _loc30_ = _loc41_ | _loc74_;
                           if(_loc25_ <= 1701669235)
                           {
                              if(_loc25_ <= 1263419713)
                              {
                                 if(_loc25_ != 1096040772)
                                 {
                                    _loc47_ = 3;
                                    if(_loc25_ == 1145980238)
                                    {
                                       continue;
                                    }
                                 }
                                 else
                                 {
                                    if(_loc27_ == 0)
                                    {
                                       _loc41_ = li32(_loc24_);
                                       _loc48_ = li32(_loc41_ + 20);
                                       si32(-1,_loc26_);
                                       _loc1_ -= 16;
                                       si32(_loc30_,_loc1_ + 4);
                                       si32(_loc24_,_loc1_);
                                       ESP = _loc1_;
                                       ptr2fun[_loc48_]();
                                       _loc47_ = 2;
                                       _loc1_ += 16;
                                       _loc73_ = eax;
                                       if(_loc73_ != 0)
                                       {
                                          break loop3;
                                       }
                                       continue;
                                    }
                                    addr2148:
                                    _loc41_ = li32(_loc2_ - 68);
                                    si32(_loc51_,_loc41_);
                                    _loc41_ = _loc63_ | 4;
                                    si32(_loc24_,_loc41_);
                                    _loc41_ = li32(_loc24_);
                                    _loc46_ = li32(_loc41_ + 16);
                                    si32(2,_loc26_);
                                    _loc1_ -= 16;
                                    si32(_loc24_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc46_]();
                                    _loc1_ += 16;
                                    _loc44_ = eax;
                                    while(true)
                                    {
                                       if(_loc44_ <= _loc30_)
                                       {
                                          _loc30_ = _loc44_;
                                       }
                                       si32(_loc30_,_loc2_ - 128);
                                       _loc41_ = li32(_loc2_ - 72);
                                       si32(_loc45_,_loc41_);
                                       _loc41_ = _loc64_ | 4;
                                       si32(_loc17_,_loc41_);
                                       si32(_loc53_,_loc2_ - 144);
                                       si32(_loc63_,_loc2_ - 140);
                                       _loc41_ = li32(_loc27_);
                                       _loc60_ = li32(_loc41_ + 24);
                                       si32(3,_loc26_);
                                       _loc1_ -= 16;
                                       si32(_loc27_,_loc1_);
                                       ESP = _loc1_;
                                       ptr2fun[_loc60_]();
                                       _loc1_ += 16;
                                       _loc41_ = li32(_loc27_);
                                       _loc59_ = li32(_loc41_ + 12);
                                       si32(4,_loc26_);
                                       _loc1_ -= 16;
                                       si32(_loc64_,_loc1_ + 4);
                                       si32(_loc27_,_loc1_);
                                       ESP = _loc1_;
                                       ptr2fun[_loc59_]();
                                       _loc1_ += 16;
                                       _loc73_ = eax;
                                       _loc41_ = li32(_loc27_ + 8);
                                       if(_loc41_ == 0)
                                       {
                                          _loc41_ = li32(_loc27_ + 4);
                                          si32(_loc41_ = li32(_loc41_ + 4),_loc27_ + 12);
                                          si32(_loc41_,_loc27_ + 8);
                                       }
                                       _loc58_ = li32(_loc27_);
                                       if(_loc73_ != 0)
                                       {
                                          _loc19_ = li32(_loc58_ + 8);
                                          si32(6,_loc26_);
                                          _loc1_ -= 16;
                                          si32(_loc27_,_loc1_);
                                          ESP = _loc1_;
                                          ptr2fun[_loc19_]();
                                          _loc1_ += 16;
                                          _loc41_ = li32(_loc2_ - 72);
                                          si32(_loc45_,_loc41_);
                                          _loc41_ = li32(_loc2_ - 68);
                                          si32(_loc51_,_loc41_);
                                          break loop3;
                                       }
                                       _loc18_ = li32(_loc58_ + 28);
                                       si32(5,_loc26_);
                                       _loc1_ -= 16;
                                       si32(_loc27_,_loc1_);
                                       ESP = _loc1_;
                                       ptr2fun[_loc18_]();
                                       _loc1_ += 16;
                                       _loc41_ = li32(_loc2_ - 72);
                                       si32(_loc45_,_loc41_);
                                       _loc41_ = li32(_loc2_ - 68);
                                       si32(_loc51_,_loc41_);
                                       _loc47_ = 2;
                                       continue loop4;
                                    }
                                 }
                              }
                              else
                              {
                                 if(_loc25_ == 1263419714)
                                 {
                                    _loc73_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7409;
                                    if(_loc30_ > 8)
                                    {
                                       break loop3;
                                    }
                                    _loc41_ = li32(_loc24_);
                                    _loc36_ = li32(_loc41_ + 12);
                                    si32(-1,_loc26_);
                                    _loc1_ -= 16;
                                    si32(_loc30_,_loc1_ + 8);
                                    si32(_loc49_,_loc1_ + 4);
                                    si32(_loc24_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc36_]();
                                    _loc1_ += 16;
                                    _loc73_ = eax;
                                    _loc47_ = _loc42_;
                                    if(_loc73_ != 0)
                                    {
                                       break loop3;
                                    }
                                    continue;
                                 }
                                 if(_loc25_ == 1330007625)
                                 {
                                    _loc73_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7409;
                                    if(_loc30_ < 8)
                                    {
                                       break loop3;
                                    }
                                    si8(1,_loc2_ - 96);
                                    si8(0,_loc2_ - 95);
                                    _loc41_ = li32(_loc24_);
                                    _loc28_ = li32(_loc41_ + 12);
                                    si32(-1,_loc26_);
                                    _loc34_ = _loc30_;
                                    if(_loc30_ >= 16)
                                    {
                                       _loc34_ = 16;
                                    }
                                    _loc1_ -= 16;
                                    si32(_loc34_,_loc1_ + 8);
                                    _loc32_ = _loc2_ - 104;
                                    si32(_loc32_,_loc1_ + 4);
                                    si32(_loc24_,_loc1_);
                                    ESP = _loc1_;
                                    ptr2fun[_loc28_]();
                                    _loc1_ += 16;
                                    _loc73_ = eax;
                                    if(_loc73_ != 0)
                                    {
                                       break loop3;
                                    }
                                    if(_loc30_ >= 17)
                                    {
                                       _loc41_ = li32(_loc24_);
                                       _loc38_ = li32(_loc41_ + 20);
                                       si32(-1,_loc26_);
                                       _loc1_ -= 16;
                                       _loc41_ = _loc30_ + -16;
                                       si32(_loc41_,_loc1_ + 4);
                                       si32(_loc24_,_loc1_);
                                       ESP = _loc1_;
                                       ptr2fun[_loc38_]();
                                       _loc1_ += 16;
                                       _loc73_ = eax;
                                       if(_loc73_ != 0)
                                       {
                                          break loop3;
                                       }
                                    }
                                    _loc41_ = _loc32_ | 6;
                                    si8(_loc41_ = li8(_loc41_),_loc17_ + 122);
                                    _loc41_ = _loc32_ | 7;
                                    si8(_loc41_ = li8(_loc41_),_loc17_ + 123);
                                    _loc41_ = li8(_loc2_ - 96);
                                    si8(_loc41_,_loc17_ + 6);
                                    si32(_loc41_,_loc17_ + 1184);
                                    _loc41_ = li8(_loc2_ - 95);
                                    si8(_loc41_,_loc17_ + 7);
                                    _loc41_ = _loc32_ | 4;
                                    si16(_loc41_ = li16(_loc41_),_loc54_ + 4);
                                    _loc41_ = li32(_loc2_ - 104);
                                    si32(_loc41_,_loc54_);
                                    _loc47_ = 1;
                                    continue;
                                 }
                              }
                           }
                           else if(_loc25_ <= 1818389619)
                           {
                              if(_loc25_ == 1701669236)
                              {
                                 _loc41_ = li32(_loc17_ + 1176);
                                 _loc1_ -= 16;
                                 si32(_loc41_,_loc1_);
                                 _loc41_ = _loc30_ >> 31;
                                 _loc41_ = _loc41_ >>> 30;
                                 _loc82_ = _loc30_ + _loc41_;
                                 si32(_loc81_ = _loc82_ & -4,_loc1_ + 4);
                                 ESP = _loc1_;
                                 F_realloc();
                                 _loc1_ += 16;
                                 _loc78_ = eax;
                                 if(_loc78_ == 0)
                                 {
                                    _loc41_ = _loc30_ + 3;
                                    _loc73_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6408;
                                    if(uint(_loc41_) <= 6)
                                    {
                                    }
                                    break loop3;
                                 }
                                 _loc41_ = _loc82_ >> 2;
                                 si32(_loc78_,_loc17_ + 1176);
                                 si32(_loc41_,_loc17_ + 1180);
                                 _loc41_ = li32(_loc24_);
                                 _loc77_ = li32(_loc41_ + 12);
                                 si32(-1,_loc26_);
                                 _loc1_ -= 16;
                                 si32(_loc81_,_loc1_ + 8);
                                 si32(_loc78_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 ptr2fun[_loc77_]();
                                 _loc1_ += 16;
                                 _loc73_ = eax;
                                 _loc47_ = _loc42_;
                                 if(_loc73_ != 0)
                                 {
                                    break loop3;
                                 }
                                 continue;
                              }
                              if(_loc25_ == 1752462689)
                              {
                                 _loc41_ = li32(_loc2_ - 64);
                                 si32(0,_loc41_);
                                 _loc41_ = _loc57_ | 4;
                                 si32(0,_loc41_);
                                 _loc41_ = li32(_loc2_ - 60);
                                 si32(0,_loc41_);
                                 _loc40_ = _loc55_ | 4;
                                 si32(0,_loc40_);
                                 si32(1,_loc26_);
                                 _loc1_ -= 16;
                                 si32(_loc55_,_loc1_ + 12);
                                 si32(_loc57_,_loc1_ + 8);
                                 si32(_loc30_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZL9read_strsR11Data_ReaderlR13blargg_vectorIcERS1_IPKcE();
                                 _loc1_ += 16;
                                 _loc73_ = eax;
                                 _loc5_ = 1;
                                 if(_loc73_ == 0)
                                 {
                                    _loc4_ = li32(_loc40_);
                                    if(_loc4_ >= 4)
                                    {
                                       _loc41_ = li32(_loc2_ - 60);
                                       _loc3_ = li32(_loc41_);
                                       _loc10_ = li32(_loc3_ + 12);
                                       _loc9_ = 0;
                                       si8(_loc9_,_loc17_ + 1151);
                                       do
                                       {
                                          _loc41_ = _loc17_ + _loc9_;
                                          _loc74_ = _loc10_ + _loc9_;
                                          si8(_loc74_ = li8(_loc74_),_loc41_ + 896);
                                          if(_loc74_ == 0)
                                          {
                                             if(_loc9_ != 254)
                                             {
                                                _loc1_ -= 16;
                                                si32(0,_loc1_ + 4);
                                                _loc41_ = 254 - _loc9_;
                                                si32(_loc41_,_loc1_ + 8);
                                                _loc41_ = _loc56_ + _loc9_;
                                                si32(_loc41_ = _loc41_ + 643,_loc1_);
                                                ESP = _loc1_;
                                                Fmemset();
                                                _loc1_ += 16;
                                             }
                                             break;
                                          }
                                       }
                                       while(_loc9_ += 1, _loc9_ += 1 != 255);
                                       
                                       addr1304:
                                       _loc8_ = li32(_loc3_ + 8);
                                       _loc6_ = 0;
                                       si8(_loc6_,_loc17_ + 895);
                                       do
                                       {
                                          _loc41_ = _loc17_ + _loc6_;
                                          _loc74_ = _loc8_ + _loc6_;
                                          si8(_loc74_ = li8(_loc74_),_loc41_ + 640);
                                          if(_loc74_ == 0)
                                          {
                                             if(_loc6_ != 254)
                                             {
                                                _loc1_ -= 16;
                                                si32(0,_loc1_ + 4);
                                                _loc41_ = 254 - _loc6_;
                                                si32(_loc41_,_loc1_ + 8);
                                                _loc41_ = _loc56_ + _loc6_;
                                                si32(_loc41_ = _loc41_ + 387,_loc1_);
                                                ESP = _loc1_;
                                                Fmemset();
                                                _loc1_ += 16;
                                             }
                                             break;
                                          }
                                       }
                                       while(_loc6_ += 1, _loc6_ += 1 != 255);
                                       
                                       addr1412:
                                       _loc13_ = li32(_loc3_ + 4);
                                       _loc12_ = 0;
                                       si8(_loc12_,_loc17_ + 639);
                                       do
                                       {
                                          _loc41_ = _loc17_ + _loc12_;
                                          _loc74_ = _loc13_ + _loc12_;
                                          si8(_loc74_ = li8(_loc74_),_loc41_ + 384);
                                          if(_loc74_ == 0)
                                          {
                                             if(_loc12_ != 254)
                                             {
                                                _loc1_ -= 16;
                                                si32(0,_loc1_ + 4);
                                                _loc41_ = 254 - _loc12_;
                                                si32(_loc41_,_loc1_ + 8);
                                                _loc41_ = _loc56_ + _loc12_;
                                                si32(_loc41_ = _loc41_ + 131,_loc1_);
                                                ESP = _loc1_;
                                                Fmemset();
                                                _loc1_ += 16;
                                             }
                                             break;
                                          }
                                       }
                                       while(_loc12_ += 1, _loc12_ += 1 != 255);
                                       
                                       _loc67_ = li32(_loc3_);
                                       si8(0,_loc17_ + 383);
                                       _loc65_ = 254;
                                       do
                                       {
                                          _loc71_ = _loc65_;
                                          _loc69_ = _loc17_ - _loc71_;
                                          _loc41_ = _loc67_ - _loc71_;
                                          si8(_loc41_ = li8(_loc41_ + 254),_loc69_ + 382);
                                          if(_loc41_ == 0)
                                          {
                                             _loc5_ = 0;
                                             _loc73_ = _loc11_;
                                             if(_loc71_ != 0)
                                             {
                                                _loc1_ -= 16;
                                                _loc5_ = 0;
                                                si32(_loc5_,_loc1_ + 4);
                                                si32(_loc71_,_loc1_ + 8);
                                                _loc41_ = _loc69_ + 383;
                                                si32(_loc41_,_loc1_);
                                                ESP = _loc1_;
                                                Fmemset();
                                                _loc1_ += 16;
                                                _loc73_ = _loc11_;
                                             }
                                             break;
                                          }
                                          _loc65_ = _loc71_ + -1;
                                          _loc5_ = 0;
                                          _loc73_ = _loc11_;
                                       }
                                       while(_loc71_ != 0);
                                       
                                    }
                                    else if(_loc4_ >= 3)
                                    {
                                       _loc41_ = li32(_loc2_ - 60);
                                       _loc3_ = li32(_loc41_);
                                       §§goto(addr1304);
                                    }
                                    else if(_loc4_ >= 2)
                                    {
                                       _loc41_ = li32(_loc2_ - 60);
                                       _loc3_ = li32(_loc41_);
                                       §§goto(addr1412);
                                    }
                                    else
                                    {
                                       _loc5_ = 0;
                                       _loc73_ = _loc11_;
                                       if(_loc4_ >= 1)
                                       {
                                          _loc41_ = li32(_loc2_ - 60);
                                          _loc3_ = li32(_loc41_);
                                          §§goto(addr1304);
                                       }
                                    }
                                 }
                                 _loc41_ = li32(_loc2_ - 60);
                                 if((_loc80_ = li32(_loc41_)) != 0)
                                 {
                                    _loc1_ -= 16;
                                    si32(_loc80_,_loc1_);
                                    ESP = _loc1_;
                                    F_idalloc();
                                    _loc1_ += 16;
                                 }
                                 _loc41_ = li32(_loc2_ - 64);
                                 if((_loc79_ = li32(_loc41_)) != 0)
                                 {
                                    _loc1_ -= 16;
                                    si32(_loc79_,_loc1_);
                                    ESP = _loc1_;
                                    F_idalloc();
                                    _loc1_ += 16;
                                 }
                                 _loc11_ = _loc73_;
                                 _loc47_ = _loc42_;
                                 if(_loc5_ != 0)
                                 {
                                    break loop3;
                                 }
                                 continue;
                              }
                           }
                           else
                           {
                              if(_loc25_ == 1818389620)
                              {
                                 si32(-1,_loc26_);
                                 _loc1_ -= 16;
                                 si32(_loc72_,_loc1_ + 12);
                                 si32(_loc70_,_loc1_ + 8);
                                 si32(_loc30_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 F__ZL9read_strsR11Data_ReaderlR13blargg_vectorIcERS1_IPKcE();
                                 _loc1_ += 16;
                                 _loc73_ = eax;
                                 _loc47_ = _loc42_;
                                 if(_loc73_ != 0)
                                 {
                                    break loop3;
                                 }
                                 continue;
                              }
                              if(_loc25_ == 1953721456)
                              {
                                 _loc41_ = li32(_loc17_ + 1168);
                                 _loc1_ -= 16;
                                 si32(_loc30_,_loc1_ + 4);
                                 si32(_loc41_,_loc1_);
                                 ESP = _loc1_;
                                 F_realloc();
                                 _loc1_ += 16;
                                 _loc52_ = eax;
                                 if(_loc52_ == 0)
                                 {
                                    _loc73_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6408;
                                    if(_loc30_ == 0)
                                    {
                                    }
                                    break loop3;
                                 }
                                 si32(_loc52_,_loc17_ + 1168);
                                 si32(_loc30_,_loc17_ + 1172);
                                 _loc41_ = li32(_loc24_);
                                 _loc50_ = li32(_loc41_ + 12);
                                 si32(-1,_loc26_);
                                 _loc1_ -= 16;
                                 si32(_loc30_,_loc1_ + 8);
                                 si32(_loc52_,_loc1_ + 4);
                                 si32(_loc24_,_loc1_);
                                 ESP = _loc1_;
                                 ptr2fun[_loc50_]();
                                 _loc1_ += 16;
                                 _loc73_ = eax;
                                 _loc47_ = _loc42_;
                                 if(_loc73_ != 0)
                                 {
                                    break loop3;
                                 }
                                 continue;
                              }
                           }
                           _loc41_ = li32(_loc24_);
                           _loc22_ = li32(_loc41_ + 20);
                           si32(-1,_loc26_);
                           _loc1_ -= 16;
                           si32(_loc30_,_loc1_ + 4);
                           si32(_loc24_,_loc1_);
                           ESP = _loc1_;
                           ptr2fun[_loc22_]();
                           _loc1_ += 16;
                           _loc73_ = eax;
                           _loc47_ = _loc42_;
                           if(_loc73_ != 0)
                           {
                              break loop3;
                           }
                        }
                     }
                     break;
                  }
               }
               _loc1_ -= 16;
               si32(_loc33_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Unregister();
               _loc1_ += 16;
               eax = _loc73_;
               _loc1_ = _loc2_;
               ESP = _loc1_;
               return;
            }
            while(true)
            {
               _loc41_ = _loc33_ | 4;
               if((_loc14_ = li32(_loc41_)) == 0)
               {
                  _loc23_ = li32(_loc2_ - 48);
                  _loc20_ = li32(_loc2_ - 44);
                  _loc41_ = li32(_loc2_ - 60);
                  if((_loc21_ = li32(_loc41_)) != 0)
                  {
                     _loc1_ -= 16;
                     si32(_loc21_,_loc1_);
                     ESP = _loc1_;
                     F_idalloc();
                     _loc1_ += 16;
                  }
                  _loc41_ = li32(_loc2_ - 64);
                  if((_loc15_ = li32(_loc41_)) != 0)
                  {
                     _loc1_ -= 16;
                     si32(_loc15_,_loc1_);
                     ESP = _loc1_;
                     F_idalloc();
                     _loc1_ += 16;
                  }
                  continue;
               }
               if(_loc14_ == 1)
               {
                  break;
               }
               _loc41_ = _loc14_ + -2;
               if((uint(_loc41_)) < 4)
               {
                  _loc23_ = li32(_loc2_ - 48);
                  _loc16_ = li32(_loc2_ - 44);
                  _loc74_ = __ZTV16Remaining_Reader + 8;
                  _loc41_ = li32(_loc2_ - 72);
                  si32(_loc74_,_loc41_);
                  _loc74_ = __ZTV13Subset_Reader + 8;
                  _loc41_ = li32(_loc2_ - 68);
                  si32(_loc74_,_loc41_);
                  continue;
               }
               while(true)
               {
               }
               _loc41_ = _loc33_ | 4;
               si32(-1,_loc41_);
               _loc1_ -= 16;
               si32(_loc23_,_loc1_);
               ESP = _loc1_;
               F__Unwind_SjLj_Resume();
               _loc1_ += 16;
            }
            _loc41_ = li32(_loc2_ - 48);
            _loc62_ = li32(_loc2_ - 44);
            _loc61_ = __ZTV11Data_Reader + 8;
            _loc74_ = li32(_loc2_ - 68);
            si32(_loc61_,_loc74_);
            _loc74_ = _loc33_ | 4;
            si32(-1,_loc74_);
            _loc1_ -= 16;
            si32(_loc41_,_loc1_);
            ESP = _loc1_;
            F__Unwind_SjLj_Resume();
            _loc1_ += 16;
            §§goto(addr2148);
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc2_)
            {
               throw l;
            }
         }
         ESP = _loc1_ = int(l.esp);
         eax = l.retval;
         _loc7_ = int(l.sjid);
      }
   }
}
