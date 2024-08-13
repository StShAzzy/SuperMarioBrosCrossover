package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN7Nsf_Emu12start_track_Ei() : void
   {
      var _loc7_:* = 0;
      var _loc22_:* = 0;
      var _loc27_:* = 0;
      var _loc40_:int = 0;
      var _loc38_:int = 0;
      var _loc34_:int = 0;
      var _loc28_:* = 0;
      var _loc23_:* = 0;
      var _loc21_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:* = 0;
      var _loc31_:* = 0;
      var _loc39_:* = 0;
      var _loc47_:* = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc44_:* = 0;
      var _loc30_:int = 0;
      var _loc32_:* = 0;
      var _loc24_:int = 0;
      var _loc25_:* = 0;
      var _loc20_:int = 0;
      var _loc16_:* = 0;
      var _loc9_:int = 0;
      var _loc11_:* = 0;
      var _loc2_:int = 0;
      var _loc4_:* = 0;
      var _loc29_:int = 0;
      var _loc35_:* = 0;
      var _loc37_:int = 0;
      var _loc43_:* = 0;
      var _loc45_:int = 0;
      var _loc12_:* = 0;
      var _loc48_:* = 0;
      var _loc19_:int = 0;
      var _loc36_:* = 0;
      var _loc42_:* = 0;
      var _loc26_:* = 0;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc33_:* = 0;
      var _loc41_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = ESP;
      _loc7_ = _loc3_;
      _loc3_ -= 16;
      _loc22_ = li32(_loc7_);
      var _loc46_:*;
      _loc44_ = li32((_loc46_ = li32(_loc48_ = li32(_loc22_ + 252))) + 28);
      _loc3_ -= 16;
      si32(_loc48_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc44_]();
      _loc3_ += 16;
      _loc3_ -= 16;
      si32(2048,_loc3_ + 8);
      _loc42_ = 0;
      si32(_loc42_,_loc3_ + 4);
      _loc40_ = _loc22_ + 272;
      si32(_loc40_,_loc3_);
      ESP = _loc3_;
      Fmemset();
      _loc3_ += 16;
      _loc3_ -= 16;
      si32(8192,_loc3_ + 8);
      si32(_loc42_,_loc3_ + 4);
      _loc38_ = _loc22_ + 5512;
      si32(_loc38_,_loc3_);
      ESP = _loc3_;
      Fmemset();
      _loc3_ += 16;
      _loc36_ = _loc22_ + 2332;
      si32(_loc36_,_loc22_ + 2328);
      si8(4,_loc22_ + 2325);
      si8(-1,_loc22_ + 2326);
      si32(_loc42_,_loc22_ + 2468);
      si32(_loc42_,_loc22_ + 2464);
      si8(_loc42_,_loc22_ + 2324);
      si32(_loc42_,_loc22_ + 2320);
      si32(1073741824,_loc22_ + 2472);
      si32(1073741824,_loc22_ + 2476);
      si32(_loc42_,_loc22_ + 2480);
      _loc34_ = _loc22_ + 13704;
      si32(_loc34_,_loc22_ + 2460);
      si32(_loc34_,_loc22_ + 2348);
      si32(_loc34_,_loc22_ + 2352);
      _loc19_ = 6;
      _loc27_ = li32(_loc7_ + 4);
      do
      {
         _loc48_ = _loc19_ << 2;
         _loc48_ = _loc36_ + _loc48_;
         si32(_loc34_,_loc48_);
         _loc19_ += 1;
         _loc36_ = li32(_loc22_ + 2328);
      }
      while(_loc19_ != 32);
      
      si32(_loc40_,_loc36_);
      si32(_loc40_,li32(_loc22_ + 2328) + 4);
      si32(_loc40_,li32(_loc22_ + 2328) + 8);
      si32(_loc40_,li32(_loc22_ + 2328) + 12);
      si32(1,_loc7_ - 4);
      _loc48_ = li8(_loc7_ - 4);
      if(_loc48_ != 0)
      {
         si32(_loc38_,li32(_loc22_ + 2328) + 48);
         si32(_loc22_ + 7560,li32(_loc22_ + 2328) + 52);
         si32(_loc22_ + 9608,li32(_loc22_ + 2328) + 56);
         si32(_loc22_ + 11656,li32(_loc22_ + 2328) + 60);
         _loc28_ = (_loc46_ = (_loc46_ = li8(_loc22_ + 2484)) << 12) & li32(_loc22_ + 2556);
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc28_)
         {
            addr470:
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc30_ = _loc28_ - _loc48_;
         _loc32_ = li32(_loc22_ + 2544);
         if((uint(_loc48_ = _loc32_ + -4104)) >= uint(_loc30_))
         {
            _loc42_ = _loc30_;
         }
         if(uint(_loc32_) < uint(_loc42_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc48_ = _loc48_ + _loc42_;
         _loc46_ = li32(_loc22_ + 2328);
         si32(_loc48_,_loc46_ + 64);
         _loc48_ += 2048;
         _loc46_ = li32(_loc22_ + 2328);
         si32(_loc48_,_loc46_ + 68);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2485);
         _loc23_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc23_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc24_ = _loc23_ - _loc48_;
         _loc25_ = li32(_loc22_ + 2544);
         _loc48_ = _loc25_ + -4104;
         _loc26_ = 0;
         if(uint(_loc48_) >= uint(_loc24_))
         {
            _loc26_ = _loc24_;
         }
         if(uint(_loc25_) < uint(_loc26_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc48_ = _loc48_ + _loc26_;
         _loc46_ = li32(_loc22_ + 2328);
         si32(_loc48_,_loc46_ + 72);
         _loc46_ = _loc48_ + 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 76);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2486);
         _loc21_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc21_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc20_ = _loc21_ - _loc48_;
         _loc16_ = li32(_loc22_ + 2544);
         _loc48_ = _loc16_ + -4104;
         _loc13_ = 0;
         if(uint(_loc48_) >= uint(_loc20_))
         {
            _loc13_ = _loc20_;
         }
         if(uint(_loc16_) < uint(_loc13_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc13_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 80);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 84);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2487);
         _loc14_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc14_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc9_ = _loc14_ - _loc48_;
         _loc11_ = li32(_loc22_ + 2544);
         _loc48_ = _loc11_ + -4104;
         _loc5_ = 0;
         if(uint(_loc48_) >= uint(_loc9_))
         {
            _loc5_ = _loc9_;
         }
         if(uint(_loc11_) < uint(_loc5_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc5_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 88);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 92);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2488);
         _loc6_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc6_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc2_ = _loc6_ - _loc48_;
         _loc4_ = li32(_loc22_ + 2544);
         _loc48_ = _loc4_ + -4104;
         _loc1_ = 0;
         if(uint(_loc48_) >= uint(_loc2_))
         {
            _loc1_ = _loc2_;
         }
         if(uint(_loc4_) < uint(_loc1_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc1_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 96);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 100);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2489);
         _loc31_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc31_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc29_ = _loc31_ - _loc48_;
         _loc35_ = li32(_loc22_ + 2544);
         _loc48_ = _loc35_ + -4104;
         _loc33_ = 0;
         if(uint(_loc48_) >= uint(_loc29_))
         {
            _loc33_ = _loc29_;
         }
         if(uint(_loc35_) < uint(_loc33_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc33_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 104);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 108);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2490);
         _loc39_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc39_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc37_ = _loc39_ - _loc48_;
         _loc43_ = li32(_loc22_ + 2544);
         _loc48_ = _loc43_ + -4104;
         _loc41_ = 0;
         if(uint(_loc48_) >= uint(_loc37_))
         {
            _loc41_ = _loc37_;
         }
         if(uint(_loc43_) < uint(_loc41_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc41_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 112);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 116);
         _loc48_ = li32(_loc22_ + 2556);
         _loc46_ = li8(_loc22_ + 2491);
         _loc47_ = (_loc46_ = _loc46_ << 12) & _loc48_;
         _loc48_ = li32(_loc22_ + 2560);
         if(_loc48_ <= _loc47_)
         {
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324,_loc22_ + 16);
         }
         _loc48_ = li32(_loc22_ + 2552);
         _loc45_ = _loc47_ - _loc48_;
         _loc12_ = li32(_loc22_ + 2544);
         _loc48_ = _loc12_ + -4104;
         _loc10_ = 0;
         if(uint(_loc48_) >= uint(_loc45_))
         {
            _loc10_ = _loc45_;
         }
         if(uint(_loc12_) < uint(_loc10_))
         {
            _loc3_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323,_loc3_ + 12);
            si32(51,_loc3_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322,_loc3_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc48_ = li32(_loc22_ + 2540);
         _loc46_ = _loc48_ + _loc10_;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 120);
         _loc46_ += 2048;
         _loc48_ = li32(_loc22_ + 2328);
         si32(_loc46_,_loc48_ + 124);
         _loc46_ = li8(_loc22_ + 5506);
         _loc48_ = li8(_loc22_ + 2512);
         _loc3_ -= 16;
         si32(_loc48_,_loc3_ + 4);
         var _loc8_:int = _loc22_ + 2576;
         si32(_loc8_,_loc3_);
         _loc48_ = _loc46_ << 26;
         si32(_loc48_ = (_loc48_ = _loc48_ >> 31) & 0x3F,_loc3_ + 8);
         ESP = _loc3_;
         F__ZN7Nes_Apu5resetEbi();
         _loc3_ += 16;
         _loc3_ -= 16;
         si32(15,_loc3_ + 12);
         si32(16405,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         si32(_loc8_,_loc3_);
         ESP = _loc3_;
         F__ZN7Nes_Apu14write_registerEiji();
         _loc3_ += 16;
         _loc48_ = li8(_loc22_ + 5506);
         _loc3_ -= 16;
         si32(16407,_loc3_ + 8);
         si32(0,_loc3_ + 4);
         si32(_loc8_,_loc3_);
         _loc48_ <<= 3;
         si32(_loc48_ = _loc48_ <<= 3 & 0x80,_loc3_ + 12);
         ESP = _loc3_;
         F__ZN7Nes_Apu14write_registerEiji();
         _loc3_ += 16;
         _loc18_ = li32(_loc22_ + 2564);
         if(_loc18_ != 0)
         {
            si32(0,_loc18_);
            si32(0,_loc18_ + 12);
            si32(0,_loc18_ + 8);
            si32(0,_loc18_ + 24);
            si32(0,_loc18_ + 20);
            si32(0,_loc18_ + 36);
            si32(0,_loc18_ + 32);
            si32(0,_loc18_ + 48);
            si32(0,_loc18_ + 44);
            si32(0,_loc18_ + 60);
            si32(0,_loc18_ + 56);
            si32(0,_loc18_ + 72);
            si32(0,_loc18_ + 68);
            si32(0,_loc18_ + 84);
            si32(0,_loc18_ + 80);
            _loc3_ -= 16;
            si32(140,_loc3_ + 8);
            si32(0,_loc3_ + 4);
            _loc48_ = _loc18_ + 92;
            si32(_loc48_,_loc3_);
            ESP = _loc3_;
            Fmemset();
            _loc3_ += 16;
         }
         _loc17_ = li32(_loc22_ + 2568);
         if(_loc17_ != 0)
         {
            si32(0,_loc17_ + 72);
            si8(0,_loc17_ + 2);
            si16(0,_loc17_);
            si32(0,_loc17_ + 8);
            si32(0,_loc17_ + 12);
            si32(1,_loc17_ + 16);
            si32(0,_loc17_ + 32);
            si32(0,_loc17_ + 36);
            si8(0,_loc17_ + 26);
            si16(0,_loc17_ + 24);
            si32(0,_loc17_ + 20);
            si32(1,_loc17_ + 40);
            si32(0,_loc17_ + 56);
            si32(0,_loc17_ + 60);
            si8(0,_loc17_ + 50);
            si16(0,_loc17_ + 48);
            si32(0,_loc17_ + 44);
            si32(1,_loc17_ + 64);
            si32(0,_loc17_ + 68);
         }
         _loc15_ = li32(_loc22_ + 2572);
         if(_loc15_ != 0)
         {
            si32(0,_loc15_ + 48);
            si32(0,_loc15_ + 28);
            si32(0,_loc15_ + 36);
            si32(0,_loc15_ + 44);
            si32(0,_loc15_ + 20);
            si32(0,_loc15_ + 16);
            si32(0,_loc15_ + 12);
            si32(0,_loc15_ + 8);
            si32(0,_loc15_ + 4);
            si32(0,_loc15_);
         }
         si32(4,_loc22_ + 2536);
         si32(0,_loc22_ + 2532);
         _loc48_ = li32(_loc22_ + 2528);
         si32(_loc48_ = _loc48_ / 12,_loc22_ + 2524);
         si16(24568,_loc22_ + 2514);
         si8(95,_loc22_ + 783);
         si8(-9,_loc22_ + 782);
         si8(-3,_loc22_ + 2326);
         _loc48_ = li32(_loc22_ + 2492);
         si16(_loc48_,_loc22_ + 2320);
         si8(_loc27_,_loc22_ + 2322);
         _loc48_ = li8(_loc22_ + 2512);
         si8(_loc48_,_loc22_ + 2323);
         eax = 0;
         _loc3_ = _loc7_;
         ESP = _loc3_;
         return;
      }
      _loc3_ -= 16;
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5320,_loc3_ + 12);
      si32(62,_loc3_ + 8);
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4319,_loc3_ + 4);
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZ24blargg_verify_byte_ordervE8__func__318,_loc3_);
      ESP = _loc3_;
      F___assert();
      _loc3_ += 16;
      §§goto(addr470);
   }
}
