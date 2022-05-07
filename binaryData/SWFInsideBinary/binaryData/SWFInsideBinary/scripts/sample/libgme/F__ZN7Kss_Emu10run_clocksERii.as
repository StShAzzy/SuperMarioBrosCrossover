package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str14224;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str15225;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4213;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6215;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7462;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Scc_Apu9end_frameEiE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu9end_frameEiE8__func__;
   
   public function F__ZN7Kss_Emu10run_clocksERii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:Number = NaN;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc14_ = li32((_loc15_ = li32(_loc3_ + 788)) + 76);
      _loc13_ = int((_loc15_ = li32(_loc15_ + 72)) + _loc14_);
      _loc10_ = li32(_loc12_ = li32(_loc4_ + 4));
      if(_loc13_ < _loc10_)
      {
         _loc9_ = _loc3_ + 68872;
         _loc7_ = int(_loc3_ + 68312);
         _loc6_ = int(_loc3_ + 67264);
         _loc1_ = int(_loc3_ + 272);
         do
         {
            _loc13_ = li32(_loc3_ + 980);
            if(_loc10_ >= _loc13_)
            {
               _loc10_ = _loc13_;
            }
            _loc2_ -= 16;
            si32(_loc10_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZN7Kss_Cpu3runEi();
            _loc2_ += 16;
            if((_loc14_ = li16(_loc3_ + 872)) == 65535)
            {
               si32(_loc15_ = int(_loc10_ - li32((_loc14_ = li32(_loc3_ + 788)) + 72)),_loc14_ + 76);
            }
            _loc14_ = li32((_loc10_ = li32(_loc3_ + 788)) + 76);
            _loc14_ = int((_loc15_ = li32(_loc10_ + 72)) + _loc14_);
            _loc13_ = li32(_loc3_ + 980);
            if(_loc14_ >= _loc13_)
            {
               si32(_loc14_ = int((_loc14_ = li32(_loc3_ + 976)) + _loc13_),_loc3_ + 980);
               if((_loc14_ = li16(_loc3_ + 872)) == 65535)
               {
                  if((_loc14_ = li8(_loc3_ + 961)) == 0)
                  {
                     si8(1,_loc3_ + 961);
                     if((_loc14_ = li8(_loc3_ + 960)) != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_);
                        var _loc11_:Number;
                        sf64(_loc11_ = (_loc8_ = (_loc11_ = lf64(_loc3_ + 184) * 1.4) * 1.5) * 0.000915032679738562,_loc2_ + 4);
                        ESP = _loc2_;
                        F__ZN11Blip_Synth_11volume_unitEd();
                        _loc2_ += 16;
                        _loc2_ -= 16;
                        sf64(_loc11_ = _loc8_ * 0.00000262451171875,_loc2_ + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F__ZN11Blip_Synth_11volume_unitEd();
                        _loc2_ += 16;
                        if((_loc13_ = li32(_loc9_)) != 0)
                        {
                           _loc2_ -= 16;
                           sf64(_loc11_ = _loc8_ * 0.00166015625,_loc2_ + 4);
                           si32(_loc15_ = int(_loc13_ + 160),_loc2_);
                           ESP = _loc2_;
                           F__ZN11Blip_Synth_11volume_unitEd();
                           _loc2_ += 16;
                           _loc2_ -= 16;
                           sf64(_loc11_,_loc2_ + 4);
                           si32(_loc14_ = int(_loc13_ + 1032),_loc2_);
                           ESP = _loc2_;
                           F__ZN11Blip_Synth_11volume_unitEd();
                           _loc2_ += 16;
                        }
                     }
                  }
                  si16(_loc15_ = int((_loc14_ = li16(_loc3_ + 874)) + -1),_loc3_ + 874);
                  _loc14_ = int(_loc3_ + 988);
                  _loc15_ &= 65535;
                  _loc15_ = int(_loc14_ + _loc15_);
                  si8(-1,_loc15_);
                  si16(_loc15_ = int((_loc15_ = li16(_loc3_ + 874)) + -1),_loc3_ + 874);
                  _loc15_ &= 65535;
                  _loc14_ += _loc15_;
                  si8(-1,_loc14_);
                  _loc14_ = li8(_loc3_ + 938);
                  si16(_loc14_ = (_loc15_ = (_loc15_ = li8(_loc3_ + 939)) << 8) | _loc14_,_loc3_ + 872);
                  _loc10_ = li32(_loc3_ + 788);
               }
            }
            _loc15_ = li32(_loc10_ + 76);
            _loc13_ = int((_loc14_ = li32(_loc10_ + 72)) + _loc15_);
            _loc10_ = li32(_loc12_);
         }
         while(_loc13_ < _loc10_);
         
      }
      si32(_loc13_,_loc12_);
      si32(_loc14_ = int((_loc14_ = li32(_loc3_ + 980)) - _loc13_),_loc3_ + 980);
      var _loc5_:* = li32(_loc12_);
      si32(_loc15_ = int((_loc15_ = li32((_loc14_ = li32(_loc3_ + 788)) + 76)) - _loc5_),_loc14_ + 76);
      _loc6_ = int(_loc3_ + 66832);
      _loc7_ = li32(_loc3_ + 66832);
      _loc1_ = li32(_loc12_);
      if(_loc7_ < _loc1_)
      {
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 4);
         si32(_loc14_ = int(_loc3_ + 66784),_loc2_);
         ESP = _loc2_;
         F__ZN6Ay_Apu9run_untilEi();
         _loc2_ += 16;
         _loc7_ = li32(_loc6_);
      }
      if(_loc7_ < _loc1_)
      {
         _loc2_ -= 16;
         si32(L__2E_str14224,_loc2_ + 12);
         si32(103,_loc2_ + 8);
         si32(L__2E_str6215,_loc2_ + 4);
         si32(__ZZN7Scc_Apu9end_frameEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      si32(_loc14_ = int(_loc7_ - _loc1_),_loc6_);
      _loc7_ = int(_loc3_ + 68160);
      _loc1_ = li32(_loc3_ + 68160);
      _loc6_ = li32(_loc12_);
      if(_loc1_ < _loc6_)
      {
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 4);
         si32(_loc14_ = int(_loc3_ + 68080),_loc2_);
         ESP = _loc2_;
         F__ZN7Scc_Apu9run_untilEi();
         _loc2_ += 16;
         _loc1_ = li32(_loc7_);
      }
      si32(_loc14_ = int(_loc1_ - _loc6_),_loc7_);
      if(_loc14_ <= -1)
      {
         _loc2_ -= 16;
         si32(L__2E_str15225,_loc2_ + 12);
         si32(82,_loc2_ + 8);
         si32(L__2E_str4213,_loc2_ + 4);
         si32(__ZZN7Scc_Apu9end_frameEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc1_ = li32(_loc3_ + 68872);
      if(_loc1_ != 0)
      {
         _loc3_ = li32(_loc1_ + 976);
         _loc12_ = li32(_loc12_);
         if(_loc3_ < _loc12_)
         {
            _loc2_ -= 16;
            si32(_loc12_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F__ZN7Sms_Apu9run_untilEi();
            _loc2_ += 16;
            _loc3_ = li32(_loc1_ + 976);
         }
         if(_loc3_ < _loc12_)
         {
            _loc2_ -= 16;
            si32(L__2E_str7462,_loc2_ + 12);
            si32(263,_loc2_ + 8);
            si32(L__2E_str2456,_loc2_ + 4);
            si32(__ZZN7Sms_Apu9end_frameEiE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         si32(_loc14_ = int(_loc3_ - _loc12_),_loc1_ + 976);
      }
      eax = 0;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
