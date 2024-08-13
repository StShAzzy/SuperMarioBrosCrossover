package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Nsf_Emu5load_ER11Data_Reader() : void
   {
      var _loc6_:* = 0;
      var _loc34_:* = 0;
      var _loc16_:* = 0;
      var _loc27_:int = 0;
      var _loc20_:* = 0;
      var _loc21_:int = 0;
      var _loc23_:int = 0;
      var _loc18_:int = 0;
      var _loc17_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:int = 0;
      var _loc13_:* = NaN;
      var _loc24_:* = 0;
      var _loc26_:* = 0;
      var _loc32_:int = 0;
      var _loc25_:* = 0;
      var _loc30_:* = 0;
      var _loc22_:int = 0;
      var _loc19_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc12_:* = NaN;
      var _loc15_:* = NaN;
      var _loc33_:* = 0;
      var _loc2_:* = ESP;
      _loc6_ = _loc2_;
      _loc2_ -= 32;
      si32(4104,_loc2_ + 20);
      _loc19_ = 0;
      si32(_loc19_,_loc2_ + 16);
      si32(128,_loc2_ + 8);
      var _loc35_:* = li32(_loc6_ + 4);
      si32(_loc35_,_loc2_ + 4);
      _loc34_ = li32(_loc6_);
      si32(_loc35_ = _loc34_ + 5384,_loc2_ + 12);
      _loc35_ = _loc34_ + 2540;
      si32(_loc35_,_loc2_);
      ESP = _loc2_;
      F__ZN9Rom_Data_14load_rom_data_ER11Data_ReaderiPvil();
      _loc2_ += 32;
      _loc33_ = eax;
      if(_loc33_ == 0)
      {
         _loc35_ = li8(_loc34_ + 5390);
         si32(_loc35_,_loc34_ + 12);
         si32(_loc35_,_loc34_ + 8);
         _loc32_ = 5;
         while(true)
         {
            _loc35_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11371 - _loc32_;
            _loc35_ = li8(_loc35_ + 5);
            var _loc31_:* = _loc34_ - _loc32_;
            _loc31_ = li8(_loc31_ + 5389);
            _loc33_ = _gme_wrong_file_type;
            if(_loc31_ != _loc35_)
            {
               break;
            }
            _loc32_ += -1;
            if(_loc32_ += -1 == 0)
            {
               _loc35_ = li8(_loc34_ + 5389);
               if(_loc35_ != 1)
               {
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str35396,_loc34_ + 16);
               }
               _loc2_ -= 16;
               si32(_loc34_,_loc2_);
               ESP = _loc2_;
               F__ZN7Nsf_Emu10init_soundEv();
               _loc2_ += 16;
               _loc33_ = eax;
               if(_loc33_ == 0)
               {
                  _loc30_ = (_loc31_ = (_loc31_ = li8(_loc34_ + 5395)) << 8) | li8(_loc34_ + 5394);
                  si32(_loc30_,_loc34_ + 2492);
                  var _loc28_:*;
                  si32(_loc16_ = (_loc28_ = (_loc28_ = li8(_loc34_ + 5397)) << 8) | li8(_loc34_ + 5396),_loc34_ + 2496);
                  _loc24_ = (_loc31_ = li8(_loc34_ + 5393) << 8) | li8(_loc34_ + 5392);
                  _loc25_ = 32768;
                  if(_loc24_ != _loc19_)
                  {
                     _loc25_ = _loc24_;
                  }
                  if(_loc30_ == 0)
                  {
                     _loc30_ = 32768;
                     si32(_loc30_,_loc34_ + 2492);
                  }
                  if(_loc16_ == 0)
                  {
                     si32(32768,_loc34_ + 2496);
                  }
                  if(uint(_loc25_) >= 32768)
                  {
                     if(uint(_loc30_) > 32767)
                     {
                        _loc31_ = _loc25_ & 0x0FFF;
                        si32(_loc27_ = _loc31_ + -4104,_loc34_ + 2552);
                        _loc35_ = _loc31_ + li32(_loc34_ + 2548);
                        if((_loc20_ = (_loc35_ += (_loc31_ = (_loc35_ = _loc35_ + 4095) >> 31) >>> 20) & -4096) >= 1)
                        {
                           _loc21_ = _loc20_ + -1;
                           _loc22_ = 0;
                           if(_loc21_ != 0)
                           {
                              do
                              {
                                 _loc22_ += 1;
                              }
                              while(_loc35_ = _loc21_ >>> _loc22_, _loc35_ != 0);
                              
                           }
                           _loc35_ = 1 << _loc22_;
                           si32(_loc35_ = _loc35_ + -1,_loc34_ + 2556);
                           _loc19_ = _loc20_;
                        }
                        si32(_loc19_,_loc34_ + 2560);
                        _loc35_ = _loc19_ - _loc27_;
                        _loc23_ = _loc35_ + 8;
                        _loc35_ = li32(_loc34_ + 2540);
                        _loc2_ -= 16;
                        si32(_loc23_,_loc2_ + 4);
                        si32(_loc35_,_loc2_);
                        ESP = _loc2_;
                        F_realloc();
                        _loc2_ += 16;
                        _loc18_ = eax;
                        if(_loc18_ == 0)
                        {
                           if(_loc23_ == 0)
                           {
                              addr490:
                              si32(_loc18_,_loc34_ + 2540);
                              si32(_loc23_,_loc34_ + 2544);
                           }
                           _loc35_ = li32(_loc34_ + 2560);
                           _loc31_ = (_loc31_ = _loc35_ >> 31) >>> 20;
                           _loc35_ += _loc31_;
                           _loc17_ = _loc35_ += _loc31_ >> 12;
                           _loc35_ = _loc25_ + -32768;
                           _loc35_ = _loc35_ >>> 12;
                           _loc11_ = 0 - _loc35_;
                           _loc9_ = 0;
                           _loc10_ = _loc11_;
                           while(_loc9_ < 8)
                           {
                              _loc7_ = _loc10_;
                              if(uint(_loc17_) <= uint(_loc11_ + _loc9_))
                              {
                                 _loc7_ = 0;
                              }
                              _loc35_ = _loc34_ + _loc9_;
                              si8(_loc7_,_loc35_ + 2484);
                              _loc35_ = li8(_loc35_ + 5496);
                              if(_loc35_ != 0)
                              {
                                 si32(_loc31_ = li32(_loc34_ + 5500),_loc34_ + 2488);
                                 si32(li32(_loc34_ + 5496),_loc34_ + 2484);
                                 break;
                              }
                              _loc10_ += 1;
                              _loc9_ += 1;
                           }
                           _loc35_ = li8(_loc34_ + 5506);
                           _loc35_ = _loc35_ & 3;
                           _loc8_ = 1;
                           if(_loc35_ != _loc8_)
                           {
                              _loc8_ = 0;
                           }
                           _loc35_ = _loc8_ & 1;
                           si8(_loc35_,_loc34_ + 2512);
                           si8(0,_loc34_ + 5506);
                           _loc35_ = li32(_loc34_ + 192);
                           if(_loc35_ == 0)
                           {
                              _loc2_ -= 16;
                              si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4271,_loc2_ + 12);
                              si32(117,_loc2_ + 8);
                              si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268,_loc2_ + 4);
                              si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu9set_tempoEdE8__func__,_loc2_);
                              ESP = _loc2_;
                              F___assert();
                              _loc2_ += 16;
                           }
                           _loc13_ = lf64(_loc34_ + 176);
                           _loc12_ = 0.02;
                           if(_loc13_ >= _loc12_)
                           {
                              _loc12_ = _loc13_;
                           }
                           _loc15_ = 4;
                           if(_loc12_ <= _loc15_)
                           {
                              _loc15_ = _loc12_;
                           }
                           sf64(_loc15_,_loc34_ + 176);
                           _loc35_ = li32(_loc34_);
                           var _loc4_:* = li32(_loc35_ + 52);
                           _loc2_ -= 16;
                           sf64(_loc15_,_loc2_ + 4);
                           si32(_loc34_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc4_]();
                           _loc2_ += 16;
                           var _loc14_:* = lf64(_loc34_ + 2504);
                           si32(_loc35_ = _loc14_ = _loc14_ + 0.5,_loc34_ + 260);
                           _loc31_ = li32(_loc34_ + 252);
                           var _loc29_:*;
                           var _loc5_:* = li32((_loc29_ = li32(_loc31_)) + 20);
                           _loc2_ -= 16;
                           si32(_loc35_,_loc2_ + 4);
                           si32(_loc31_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc5_]();
                           _loc2_ += 16;
                           _loc35_ = li32(_loc34_ + 252);
                           var _loc1_:* = li32((_loc31_ = li32(_loc35_)) + 8);
                           _loc31_ = li32(_loc34_ + 168);
                           _loc2_ -= 16;
                           si32(_loc31_,_loc2_ + 4);
                           si32(_loc35_,_loc2_);
                           ESP = _loc2_;
                           ptr2fun[_loc1_]();
                           _loc2_ += 16;
                           _loc33_ = eax;
                           if(_loc33_ == 0)
                           {
                              _loc35_ = li32(_loc34_);
                              var _loc3_:* = li32(_loc35_ + 44);
                              _loc2_ -= 16;
                              _loc35_ = _loc34_ + 144;
                              si32(_loc35_,_loc2_ + 4);
                              si32(_loc34_,_loc2_);
                              ESP = _loc2_;
                              ptr2fun[_loc3_]();
                              _loc2_ += 16;
                              _loc35_ = li32(_loc34_ + 252);
                              si32(_loc35_ = li32(_loc35_ + 4),_loc34_ + 264);
                              _loc33_ = 0;
                           }
                           break;
                        }
                        §§goto(addr490);
                     }
                  }
                  _loc26_ = li32(_loc34_ + 16);
                  si32(0,_loc34_ + 16);
                  _loc33_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str36397;
                  if(_loc26_ != 0)
                  {
                     _loc33_ = _loc26_;
                  }
               }
               break;
            }
         }
      }
      eax = _loc33_;
      _loc2_ = _loc6_;
      ESP = _loc2_;
   }
}
