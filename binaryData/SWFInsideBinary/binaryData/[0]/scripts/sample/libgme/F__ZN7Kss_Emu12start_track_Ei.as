package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Kss_Emu12start_track_Ei() : void
   {
      var _loc2_:* = 0;
      var _loc14_:* = 0;
      var _loc17_:* = 0;
      var _loc27_:int = 0;
      var _loc25_:int = 0;
      var _loc19_:* = 0;
      var _loc21_:int = 0;
      var _loc22_:* = 0;
      var _loc15_:int = 0;
      var _loc18_:int = 0;
      var _loc13_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc8_:Number = NaN;
      var _loc4_:* = 0;
      var _loc28_:* = 0;
      var _loc30_:* = 0;
      var _loc24_:* = 0;
      var _loc23_:* = 0;
      var _loc20_:int = 0;
      var _loc11_:* = 0;
      var _loc16_:int = 0;
      var _loc26_:* = 0;
      var _loc1_:* = ESP;
      _loc2_ = _loc1_;
      _loc14_ = li32(_loc2_);
      var _loc29_:*;
      _loc28_ = li32((_loc29_ = li32(_loc30_ = li32(_loc14_ + 252))) + 28);
      _loc1_ -= 16;
      si32(_loc30_,_loc1_);
      ESP = _loc1_;
      ptr2fun[_loc28_]();
      _loc1_ += 16;
      _loc1_ -= 16;
      si32(16384,_loc1_ + 8);
      si32(201,_loc1_ + 4);
      _loc27_ = _loc14_ + 988;
      si32(_loc27_,_loc1_);
      ESP = _loc1_;
      Fmemset();
      _loc1_ += 16;
      _loc1_ -= 16;
      si32(49408,_loc1_ + 8);
      _loc26_ = 0;
      si32(_loc26_,_loc1_ + 4);
      _loc25_ = _loc14_ + 17372;
      si32(_loc25_,_loc1_);
      ESP = _loc1_;
      Fmemset();
      _loc1_ += 16;
      si8(-55,_loc14_ + 1001);
      si32(-1562664749,_loc14_ + 997);
      si32(-906911277,_loc14_ + 993);
      si32(2079695059,_loc14_ + 989);
      si16(9,_loc14_ + 1139);
      si32(-1023409725,_loc14_ + 1135);
      _loc30_ = li8(_loc14_ + 934);
      _loc29_ = li8(_loc14_ + 935);
      _loc24_ = (_loc29_ = _loc29_ << 8) | _loc30_;
      _loc23_ = li32(_loc14_ + 912);
      _loc11_ = _loc24_;
      if(_loc24_ >= _loc23_)
      {
         _loc11_ = _loc23_;
      }
      _loc30_ = li8(_loc14_ + 932);
      _loc29_ = li8(_loc14_ + 933);
      _loc19_ = (_loc29_ = _loc29_ << 8) | _loc30_;
      _loc20_ = 65536 - _loc19_;
      if(_loc11_ >= _loc20_)
      {
         _loc11_ = _loc20_;
      }
      if(_loc11_ != _loc24_)
      {
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str20229,_loc14_ + 16);
      }
      _loc30_ = li32(_loc14_ + 904);
      _loc29_ = li8(_loc14_ + 942);
      _loc30_ = (_loc30_ = _loc29_ + _loc30_) + 8200;
      _loc1_ -= 16;
      si32(_loc30_,_loc1_ + 4);
      _loc30_ = _loc14_ + _loc19_;
      si32(_loc30_ = _loc30_ + 988,_loc1_);
      si32(_loc11_,_loc1_ + 8);
      ESP = _loc1_;
      Fmemcpy();
      _loc1_ += 16;
      _loc30_ = li8(_loc14_ + 942);
      _loc30_ = _loc30_ + _loc11_;
      _loc21_ = -8200 - _loc30_;
      si32(_loc21_,_loc14_ + 916);
      _loc29_ = 8191 - _loc30_;
      _loc30_ = li32(_loc14_ + 912);
      _loc30_ = _loc29_ + _loc30_;
      _loc29_ = (_loc29_ = _loc30_ >> 31) >>> 19;
      _loc30_ += _loc29_;
      if((_loc22_ = _loc30_ += _loc29_ & -8192) >= 1)
      {
         _loc15_ = _loc22_ + -1;
         _loc16_ = 0;
         if(_loc15_ != 0)
         {
            do
            {
               _loc16_ += 1;
            }
            while(_loc30_ = _loc15_ >>> _loc16_, _loc30_ != 0);
            
         }
         _loc30_ = 1 << _loc16_;
         si32(_loc30_ = _loc30_ + -1,_loc14_ + 920);
         _loc26_ = _loc22_;
      }
      _loc17_ = li32(_loc2_ + 4);
      si32(_loc26_,_loc14_ + 924);
      _loc30_ = _loc26_ - _loc21_;
      _loc18_ = _loc30_ + 8;
      _loc30_ = li32(_loc14_ + 904);
      _loc1_ -= 16;
      si32(_loc18_,_loc1_ + 4);
      si32(_loc30_,_loc1_);
      ESP = _loc1_;
      F_realloc();
      _loc1_ += 16;
      _loc13_ = eax;
      if(_loc13_ == 0)
      {
         if(_loc18_ == 0)
         {
            addr482:
            si32(_loc13_,_loc14_ + 904);
            si32(_loc18_,_loc14_ + 908);
         }
         var _loc12_:* = li32(_loc14_ + 912);
         var _loc7_:* = li8(_loc14_ + 941);
         si32(_loc30_ = _loc7_ & 0x7F,_loc14_ + 972);
         _loc29_ = _loc11_ ^ -1;
         _loc29_ = _loc12_ + _loc29_;
         _loc7_ >>>= 7;
         _loc7_ = 16384 >>> _loc7_;
         _loc29_ += _loc7_;
         _loc5_ = _loc29_ += _loc7_ / _loc7_;
         if(_loc30_ > _loc5_)
         {
            si32(_loc5_,_loc14_ + 972);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str21230,_loc14_ + 16);
         }
         si8(-1,_loc14_ + 66523);
         _loc30_ = _loc14_ + 792;
         si32(_loc30_,_loc14_ + 788);
         si32(0,_loc14_ + 868);
         si32(0,_loc14_ + 864);
         si32(0,_loc14_ + 784);
         _loc30_ = _loc14_ + 69132;
         si32(_loc30_,_loc14_ + 828);
         _loc29_ = _loc14_ + 68876;
         si32(_loc29_,_loc14_ + 792);
         si32(_loc30_,_loc14_ + 832);
         si32(_loc29_,_loc14_ + 796);
         si32(_loc30_,_loc14_ + 836);
         si32(_loc29_,_loc14_ + 800);
         si32(_loc30_,_loc14_ + 840);
         si32(_loc29_,_loc14_ + 804);
         si32(_loc30_,_loc14_ + 844);
         si32(_loc29_,_loc14_ + 808);
         si32(_loc30_,_loc14_ + 848);
         si32(_loc29_,_loc14_ + 812);
         si32(_loc30_,_loc14_ + 852);
         si32(_loc29_,_loc14_ + 816);
         si32(_loc30_,_loc14_ + 856);
         si32(_loc29_,_loc14_ + 820);
         si32(_loc30_,_loc14_ + 860);
         si32(_loc29_,_loc14_ + 824);
         si16(0,_loc14_ + 900);
         si32(0,_loc14_ + 896);
         si32(0,_loc14_ + 892);
         si32(0,_loc14_ + 888);
         si32(0,_loc14_ + 884);
         si32(0,_loc14_ + 880);
         si32(0,_loc14_ + 876);
         si32(0,_loc14_ + 872);
         _loc30_ = _loc14_ + 58332;
         si32(_loc30_,_loc14_ + 856);
         si32(_loc30_,_loc14_ + 820);
         _loc30_ = _loc14_ + 50140;
         si32(_loc30_,_loc14_ + 852);
         si32(_loc30_,_loc14_ + 816);
         _loc30_ = _loc14_ + 41948;
         si32(_loc30_,_loc14_ + 848);
         si32(_loc30_,_loc14_ + 812);
         _loc30_ = _loc14_ + 33756;
         si32(_loc30_,_loc14_ + 844);
         si32(_loc30_,_loc14_ + 808);
         _loc30_ = _loc14_ + 25564;
         si32(_loc30_,_loc14_ + 840);
         si32(_loc30_,_loc14_ + 804);
         si32(_loc25_,_loc14_ + 836);
         si32(_loc25_,_loc14_ + 800);
         _loc30_ = _loc14_ + 9180;
         si32(_loc30_,_loc14_ + 832);
         si32(_loc30_,_loc14_ + 796);
         si32(_loc27_,_loc14_ + 828);
         si32(_loc27_,_loc14_ + 792);
         si32(0,_loc14_ + 66832);
         si32(0,_loc14_ + 66856);
         si32(1,_loc14_ + 66860);
         si32(16,_loc14_ + 66816);
         si32(0,_loc14_ + 66824);
         si32(0,_loc14_ + 66820);
         si32(16,_loc14_ + 66800);
         si32(0,_loc14_ + 66808);
         si32(0,_loc14_ + 66804);
         si32(16,_loc14_ + 66784);
         si32(0,_loc14_ + 66792);
         si32(0,_loc14_ + 66788);
         si32(0,_loc14_ + 66849);
         si32(0,_loc14_ + 66845);
         si32(0,_loc14_ + 66841);
         si32(0,_loc14_ + 66837);
         si8(-1,_loc14_ + 66844);
         _loc30_ = _loc14_ + 66972;
         si32(_loc30_,_loc14_ + 66868);
         si32(-48,_loc14_ + 66872);
         si32(0,_loc14_ + 66864);
         si8(9,_loc14_ + 66850);
         si32(0,_loc14_ + 68088);
         si32(0,_loc14_ + 68084);
         si32(0,_loc14_ + 68080);
         si32(0,_loc14_ + 68104);
         si32(0,_loc14_ + 68100);
         si32(0,_loc14_ + 68096);
         si32(0,_loc14_ + 68120);
         si32(0,_loc14_ + 68116);
         si32(0,_loc14_ + 68112);
         si32(0,_loc14_ + 68136);
         si32(0,_loc14_ + 68132);
         si32(0,_loc14_ + 68128);
         si32(0,_loc14_ + 68152);
         si32(0,_loc14_ + 68148);
         si32(0,_loc14_ + 68144);
         _loc1_ -= 16;
         si32(148,_loc1_ + 8);
         si32(0,_loc1_ + 4);
         _loc30_ = _loc14_ + 68160;
         si32(_loc30_,_loc1_);
         ESP = _loc1_;
         Fmemset();
         _loc1_ += 16;
         _loc6_ = li32(_loc14_ + 68872);
         if(_loc6_ != 0)
         {
            si32(0,_loc6_ + 976);
            si32(0,_loc6_ + 980);
            si32(32768,_loc6_ + 1596);
            si32(36864,_loc6_ + 1592);
            si32(0,_loc6_ + 52);
            si32(0,_loc6_ + 56);
            si32(0,_loc6_ + 40);
            si32(0,_loc6_ + 44);
            si32(0,_loc6_ + 48);
            si32(3,_loc6_ + 36);
            _loc30_ = li32(_loc6_ + 28);
            si32(_loc30_,_loc6_ + 32);
            si32(0,_loc6_ + 100);
            si32(0,_loc6_ + 104);
            si32(0,_loc6_ + 88);
            si32(0,_loc6_ + 92);
            si32(0,_loc6_ + 96);
            si32(3,_loc6_ + 84);
            _loc30_ = li32(_loc6_ + 76);
            si32(_loc30_,_loc6_ + 80);
            si32(0,_loc6_ + 148);
            si32(0,_loc6_ + 152);
            si32(0,_loc6_ + 136);
            si32(0,_loc6_ + 140);
            si32(0,_loc6_ + 144);
            si32(3,_loc6_ + 132);
            _loc30_ = li32(_loc6_ + 124);
            si32(_loc30_,_loc6_ + 128);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL13noise_periods,_loc6_ + 1020);
            si32(32768,_loc6_ + 1024);
            si32(36864,_loc6_ + 1028);
            si32(0,_loc6_ + 1008);
            si32(0,_loc6_ + 1012);
            si32(0,_loc6_ + 1016);
            si32(3,_loc6_ + 1004);
            _loc30_ = li32(_loc6_ + 996);
            si32(_loc30_,_loc6_ + 1000);
         }
         var _loc3_:int = _loc14_ + 68872;
         si8(-1,_loc14_ + 63323);
         si16(-3202,_loc14_ + 874);
         si8(-1,_loc14_ + 63322);
         si8(_loc17_,_loc14_ + 886);
         _loc30_ = li8(_loc14_ + 936);
         _loc29_ = li8(_loc14_ + 937);
         si16(_loc30_ = (_loc29_ = _loc29_ << 8) | _loc30_,_loc14_ + 872);
         _loc30_ = li32(_loc14_ + 976);
         si32(_loc30_,_loc14_ + 980);
         si8(0,_loc14_ + 960);
         si8(0,_loc14_ + 961);
         var _loc9_:* = lf64(_loc14_ + 184);
         _loc1_ -= 16;
         _loc29_ = _loc14_ + 67264;
         si32(_loc29_,_loc1_);
         _loc8_ = _loc9_ * 1.4;
         sf64(_loc9_ = _loc8_ * 0.000915032679738562,_loc1_ + 4);
         ESP = _loc1_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc1_ += 16;
         _loc1_ -= 16;
         _loc9_ = _loc8_ * 0.00000262451171875;
         sf64(_loc9_,_loc1_ + 4);
         _loc30_ = _loc14_ + 68312;
         si32(_loc30_,_loc1_);
         ESP = _loc1_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc1_ += 16;
         _loc4_ = li32(_loc3_);
         if(_loc4_ != 0)
         {
            _loc1_ -= 16;
            var _loc10_:Number = _loc8_ * 0.00166015625;
            sf64(_loc10_,_loc1_ + 4);
            _loc30_ = _loc4_ + 160;
            si32(_loc30_,_loc1_);
            ESP = _loc1_;
            F__ZN11Blip_Synth_11volume_unitEd();
            _loc1_ += 16;
            _loc1_ -= 16;
            sf64(_loc10_,_loc1_ + 4);
            _loc30_ = _loc4_ + 1032;
            si32(_loc30_,_loc1_);
            ESP = _loc1_;
            F__ZN11Blip_Synth_11volume_unitEd();
            _loc1_ += 16;
         }
         si32(0,_loc14_ + 984);
         eax = 0;
         _loc1_ = _loc2_;
         ESP = _loc1_;
         return;
      }
      §§goto(addr482);
   }
}
