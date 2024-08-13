package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZNK14Fir_Resampler_12input_neededEi() : void
   {
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:int = 0;
      var _loc3_:* = 0;
      var _loc13_:int = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      var _loc14_:* = li32(_loc4_ + 4);
      _loc13_ = _loc14_ + -2;
      _loc12_ = 0;
      if(_loc13_ >= 1)
      {
         _loc14_ = li32(_loc3_ + 16);
         _loc11_ = li32(_loc3_ + 28);
         _loc10_ = _loc11_ >>> _loc14_;
         _loc9_ = li32(_loc3_ + 12);
         _loc8_ = _loc9_ - _loc14_;
         _loc7_ = li32(_loc3_ + 32);
         _loc12_ = 0;
         do
         {
            _loc1_ = _loc8_ + -1;
            _loc5_ = _loc11_;
            if(_loc1_ != 0)
            {
               _loc5_ = _loc10_ >>> 1;
            }
            _loc8_ = _loc9_;
            if(_loc1_ != 0)
            {
               _loc8_ = _loc1_;
            }
            _loc14_ = _loc12_ + _loc7_;
            var _loc6_:* = _loc10_ << 1;
            _loc6_ = _loc6_ & 2;
            _loc12_ = _loc14_ + _loc6_;
            _loc13_ += -4;
            _loc10_ = _loc5_;
         }
         while(_loc13_ > 0);
         
      }
      _loc14_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_ + 20);
      _loc1_ = (_loc6_ = _loc6_ << 1) + -2;
      if(uint(_loc14_) < uint(_loc1_))
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135,_loc2_ + 12);
         si32(51,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc6_ = _loc1_ << 1;
      _loc14_ = li32(_loc3_);
      _loc6_ = _loc14_ + _loc6_;
      _loc14_ = li32(_loc3_ + 8);
      _loc14_ = (_loc14_ = _loc14_ - _loc6_) >> 1;
      _loc3_ = _loc12_ - _loc14_;
      _loc12_ = 0;
      if(_loc3_ >= _loc12_)
      {
         _loc12_ = _loc3_;
      }
      eax = _loc12_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
