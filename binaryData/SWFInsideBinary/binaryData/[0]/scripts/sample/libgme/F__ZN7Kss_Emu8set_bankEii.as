package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str203;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2211;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3206;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3212;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_Cpu7map_memEjjPvPKvE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__210;
   
   public function F__ZN7Kss_Emu8set_bankEii() : void
   {
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:int = 0;
      var _loc14_:* = 0;
      var _loc3_:int = 0;
      var _loc9_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = 1;
      _loc14_ = li32(_loc4_ + 4);
      _loc13_ = _loc3_;
      if(_loc14_ == 0)
      {
         _loc13_ = 0;
      }
      _loc12_ = li32(_loc4_);
      _loc14_ = (_loc14_ = li8(_loc12_ + 941)) >>> 7;
      _loc11_ = 16384 >>> _loc14_;
      if(_loc11_ != 8192)
      {
         _loc3_ = 0;
      }
      _loc14_ = _loc13_ & _loc3_;
      _loc13_ = 40960;
      if(_loc14_ == 0)
      {
         _loc13_ = 32768;
      }
      var _loc10_:* = li8(_loc12_ + 940);
      _loc14_ = li32(_loc4_ + 8);
      _loc3_ = _loc14_ - _loc10_;
      _loc14_ = li32(_loc12_ + 972);
      if(uint(_loc3_) >= uint(_loc14_))
      {
         _loc14_ = _loc11_ & 0x1FFF;
         if(_loc14_ != 0)
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3206,_loc2_ + 12);
            si32(104,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str203,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_Cpu7map_memEjjPvPKvE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         if(uint(_loc11_) >= 8192)
         {
            _loc14_ = _loc11_ & -8192;
            _loc3_ = (_loc14_ = (_loc10_ = (_loc10_ = _loc13_ & -8192) >>> 11) + (_loc14_ >>> 11)) + -4;
            _loc14_ = _loc11_ + -8192;
            _loc13_ = (_loc14_ = (_loc14_ = _loc13_ + (_loc14_ & -8192)) + _loc12_) + 988;
            _loc9_ = 0 - (_loc11_ >>> 13);
            _loc11_ = 0;
            while(true)
            {
               _loc14_ = li32(_loc12_ + 788);
               _loc10_ = _loc14_ + _loc3_;
               _loc14_ = _loc11_ << 2;
               _loc10_ += _loc14_;
               si32(_loc13_,_loc10_ + 36);
               _loc10_ = li32(_loc12_ + 788);
               _loc14_ = (_loc10_ = _loc10_ + _loc3_) + _loc14_;
               si32(_loc13_,_loc14_);
               _loc13_ += -8192;
               _loc11_ += -1;
               if(_loc9_ != _loc11_)
               {
                  continue;
               }
            }
         }
      }
      else if(_loc11_ != 0)
      {
         _loc8_ = _loc11_ * _loc3_;
         _loc7_ = 0;
         do
         {
            _loc14_ = _loc8_ + _loc7_;
            _loc10_ = li32(_loc12_ + 920);
            _loc14_ &= _loc10_;
            _loc10_ = li32(_loc12_ + 916);
            _loc3_ = _loc14_ - _loc10_;
            _loc9_ = li32(_loc12_ + 908);
            _loc14_ = _loc9_ + -8200;
            _loc1_ = 0;
            if(uint(_loc14_) >= uint(_loc3_))
            {
               _loc1_ = _loc3_;
            }
            if(uint(_loc9_) < uint(_loc1_))
            {
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3212,_loc2_ + 12);
               si32(51,_loc2_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2211,_loc2_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__210,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc14_ = _loc13_ + _loc7_;
            _loc14_ = (_loc14_ = _loc14_ >>> 13) << 2;
            _loc10_ = li32(_loc12_ + 788);
            var _loc5_:int = _loc10_ + _loc14_;
            var _loc6_:* = li32(_loc12_ + 904);
            _loc10_ = _loc12_ + 69132;
            si32(_loc10_,_loc5_ + 36);
            _loc10_ = _loc6_ + _loc1_;
            _loc6_ = li32(_loc12_ + 788);
            _loc14_ = _loc6_ + _loc14_;
            si32(_loc10_,_loc14_);
         }
         while(_loc7_ += 8192, (uint(_loc7_ += 8192)) < uint(_loc11_));
         
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
