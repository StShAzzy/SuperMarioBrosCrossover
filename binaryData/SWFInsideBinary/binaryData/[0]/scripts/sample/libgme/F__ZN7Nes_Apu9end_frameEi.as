package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10313;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9312;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu9end_frameEiE8__func__;
   
   public function F__ZN7Nes_Apu9end_frameEi() : void
   {
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc21_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc22_:* = 0;
      var _loc18_:* = 0;
      var _loc5_:*;
      _loc10_ = _loc5_ = sample.libgme.ESP;
      _loc22_ = li32((_loc6_ = li32(_loc10_)) + 1944);
      _loc21_ = li32(_loc10_ + 4);
      if(_loc22_ < _loc21_)
      {
         _loc5_ -= 16;
         si32(_loc21_,_loc5_ + 4);
         si32(_loc6_,_loc5_);
         ESP = _loc5_;
         F__ZN7Nes_Apu10run_until_Ei();
         _loc5_ += 16;
      }
      _loc22_ = li8(_loc6_ + 1363);
      if(_loc22_ != 0)
      {
         _loc20_ = li32(_loc6_ + 40);
         _loc19_ = li32(_loc6_ + 28);
         _loc18_ = li32(_loc6_ + 1944);
         si32(0,_loc6_ + 40);
         if(_loc19_ != 0)
         {
            if(_loc20_ != 0)
            {
               _loc5_ -= 16;
               si32(_loc19_,_loc5_ + 12);
               var _loc15_:int;
               si32(_loc15_ = 0 - _loc20_,_loc5_ + 8);
               var _loc17_:int;
               var _loc16_:int;
               si32(_loc17_ = (_loc16_ = li32(_loc19_) * _loc18_) + li32(_loc19_ + 4),_loc5_ + 4);
               si32(li32(_loc6_ + 60),_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
               _loc18_ = li32(_loc6_ + 1944);
            }
         }
         _loc1_ = li32(_loc6_ + 84);
         _loc11_ = li32(_loc6_ + 72);
         si32(0,_loc6_ + 84);
         if(_loc11_ != 0)
         {
            if(_loc1_ != 0)
            {
               _loc5_ -= 16;
               si32(_loc11_,_loc5_ + 12);
               si32(_loc15_ = 0 - _loc1_,_loc5_ + 8);
               si32(_loc17_ = (_loc16_ = li32(_loc11_) * _loc18_) + li32(_loc11_ + 4),_loc5_ + 4);
               si32(li32(_loc6_ + 104),_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
               _loc18_ = li32(_loc6_ + 1944);
            }
         }
         _loc12_ = li32(_loc6_ + 732);
         _loc13_ = li32(_loc6_ + 720);
         si32(0,_loc6_ + 732);
         if(_loc13_ != 0)
         {
            if(_loc12_ != 0)
            {
               _loc5_ -= 16;
               si32(_loc13_,_loc5_ + 12);
               si32(_loc17_ = 0 - _loc12_,_loc5_ + 8);
               _loc22_ = (_loc17_ = li32(_loc13_) * _loc18_) + li32(_loc13_ + 4);
               si32(_loc22_,_loc5_ + 4);
               _loc22_ = _loc6_ + 744;
               si32(_loc22_,_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
               _loc18_ = li32(_loc6_ + 1944);
            }
         }
         _loc14_ = li32(_loc6_ + 132);
         _loc4_ = li32(_loc6_ + 120);
         si32(0,_loc6_ + 132);
         if(_loc4_ != 0)
         {
            if(_loc14_ != 0)
            {
               _loc5_ -= 16;
               si32(_loc4_,_loc5_ + 12);
               si32(_loc17_ = 0 - _loc14_,_loc5_ + 8);
               _loc22_ = (_loc17_ = li32(_loc4_) * _loc18_) + li32(_loc4_ + 4);
               si32(_loc22_,_loc5_ + 4);
               _loc22_ = _loc6_ + 152;
               si32(_loc22_,_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
               _loc18_ = li32(_loc6_ + 1944);
            }
         }
         _loc7_ = li32(_loc6_ + 1324);
         _loc8_ = li32(_loc6_ + 1312);
         si32(0,_loc6_ + 1324);
         if(_loc8_ != 0)
         {
            if(_loc7_ != 0)
            {
               _loc5_ -= 16;
               si32(_loc8_,_loc5_ + 12);
               si32(_loc17_ = 0 - _loc7_,_loc5_ + 8);
               _loc22_ = (_loc17_ = li32(_loc8_) * _loc18_) + li32(_loc8_ + 4);
               si32(_loc22_,_loc5_ + 4);
               _loc22_ = _loc6_ + 1376;
               si32(_loc22_,_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
            }
         }
      }
      _loc22_ = li32(_loc6_ + 1944);
      si32(_loc22_ = _loc22_ - _loc21_,_loc6_ + 1944);
      if(_loc22_ <= -1)
      {
         _loc5_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9312,_loc5_ + 12);
         si32(254,_loc5_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307,_loc5_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu9end_frameEiE8__func__,_loc5_);
         ESP = _loc5_;
         F___assert();
         _loc5_ += 16;
      }
      _loc22_ = li32(_loc6_ + 1948);
      si32(_loc22_ = _loc22_ - _loc21_,_loc6_ + 1948);
      if(_loc22_ <= -1)
      {
         _loc5_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10313,_loc5_ + 12);
         si32(257,_loc5_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307,_loc5_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu9end_frameEiE8__func__,_loc5_);
         ESP = _loc5_;
         F___assert();
         _loc5_ += 16;
      }
      _loc9_ = li32(_loc6_ + 1956);
      if(_loc9_ != 1073741824)
      {
         _loc22_ = _loc9_ - _loc21_;
         si32(_loc22_,_loc6_ + 1956);
      }
      _loc3_ = li32(_loc6_ + 1356);
      if(_loc3_ != 1073741824)
      {
         _loc22_ = _loc3_ - _loc21_;
         si32(_loc22_,_loc6_ + 1356);
      }
      _loc2_ = li32(_loc6_ + 1952);
      if(_loc2_ != 1073741824)
      {
         _loc22_ = _loc2_ - _loc21_;
         si32(_loc22_,_loc6_ + 1952);
         if(_loc22_ <= -1)
         {
            si32(0,_loc6_ + 1952);
         }
      }
      ESP = _loc5_ = _loc10_;
   }
}
