package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str314;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3317;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6322;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7323;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8324;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Cpu8map_codeEjjPKvbE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__321;
   
   public function F__ZN7Nsf_Emu9cpu_writeEji() : void
   {
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc14_ = _loc3_ ^ 24576;
      _loc13_ = li32(_loc4_ + 8);
      _loc12_ = li32(_loc4_);
      if(uint(_loc14_) <= 8191)
      {
         si8(_loc13_,int(_loc12_ + _loc14_) + 5512);
      }
      else
      {
         var _loc11_:*;
         if((_loc11_ = _loc3_ & 57344) == 0)
         {
            si8(_loc13_,int(_loc12_ + (_loc3_ & 2047)) + 272);
         }
         else if((uint(_loc11_ = int(_loc3_ + -16384))) <= 23)
         {
            _loc2_ -= 16;
            si32(_loc13_,_loc2_ + 12);
            si32(_loc3_,_loc2_ + 8);
            var _loc10_:*;
            si32(_loc11_ = int(li32((_loc10_ = li32(_loc12_ + 2328)) + 132) + li32(_loc10_ + 136)),_loc2_ + 4);
            si32(_loc11_ = int(_loc12_ + 2576),_loc2_);
            ESP = _loc2_;
            F__ZN7Nes_Apu14write_registerEiji();
            _loc2_ += 16;
         }
         else if((uint(_loc9_ = _loc3_ + -24568)) <= 7)
         {
            _loc8_ = (_loc11_ = li32(_loc12_ + 2556)) & _loc13_ << 12;
            if((_loc11_ = li32(_loc12_ + 2560)) <= _loc8_)
            {
               si32(L__2E_str8324,_loc12_ + 16);
            }
            _loc11_ = li32(_loc12_ + 2552);
            _loc7_ = _loc8_ - _loc11_;
            _loc1_ = li32(_loc12_ + 2544);
            _loc11_ = int(_loc1_ + -4104);
            _loc5_ = 0;
            if(uint(_loc11_) >= uint(_loc7_))
            {
               _loc5_ = _loc7_;
            }
            if(uint(_loc1_) < uint(_loc5_))
            {
               _loc2_ -= 16;
               si32(L__2E_str7323,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(L__2E_str6322,_loc2_ + 4);
               si32(__ZZNK13blargg_vectorIhEixEjE8__func__321,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            if((uint(_loc11_ = int((_loc11_ = _loc9_ << 12) + 36864))) >= 65537)
            {
               _loc2_ -= 16;
               si32(L__2E_str3317,_loc2_ + 12);
               si32(94,_loc2_ + 8);
               si32(L__2E_str314,_loc2_ + 4);
               si32(__ZZN7Nes_Cpu8map_codeEjjPKvbE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc11_ = int((_loc11_ = li32(_loc12_ + 2540)) + _loc5_);
            _loc10_ = li32(_loc12_ + 2328);
            var _loc6_:* = int((_loc6_ = int((_loc6_ = _loc3_ << 12) + -100597760)) >>> 9);
            _loc10_ += _loc6_;
            si32(_loc11_,_loc10_);
            _loc10_ = _loc6_ | 4;
            _loc10_ = int((_loc6_ = li32(_loc12_ + 2328)) + _loc10_);
            si32(_loc11_ += 2048,_loc10_);
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc13_,_loc2_ + 8);
            si32(_loc3_,_loc2_ + 4);
            si32(_loc12_,_loc2_);
            ESP = _loc2_;
            F__ZN7Nsf_Emu14cpu_write_miscEji();
            _loc2_ += 16;
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
