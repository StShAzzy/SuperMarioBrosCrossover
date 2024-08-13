package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5502;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6503;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__501;
   
   public function F__ZN13Fir_ResamplerILi24EE4readEPsi() : void
   {
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc21_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc16_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:int = 0;
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc4_:*;
      _loc9_ = _loc4_ = sample.libgme.ESP;
      _loc21_ = li32((_loc5_ = li32(_loc9_)) + 16);
      _loc20_ = li32(_loc5_ + 12);
      _loc19_ = _loc20_ - _loc21_;
      _loc18_ = li32(_loc5_);
      _loc17_ = li32(_loc5_ + 8);
      _loc16_ = _loc17_ - _loc18_;
      _loc14_ = _loc15_ = li32(_loc9_ + 4);
      if(_loc16_ >= 96)
      {
         _loc20_ = li32(_loc5_ + 32);
         _loc10_ = li32(_loc5_ + 28) >>> _loc21_;
         _loc11_ = (_loc21_ = _loc5_ + 52) + _loc21_ * 48;
         _loc17_ += -96;
         _loc16_ = li32(_loc9_ + 8) >> 1;
         _loc12_ = _loc16_ + -1;
         _loc14_ = _loc15_;
         do
         {
            _loc13_ = 0;
            _loc3_ = -1;
            _loc6_ = _loc13_;
            if(_loc12_ < 0)
            {
               break;
            }
            do
            {
               var _loc1_:* = _loc3_ << 1;
               var _loc7_:* = _loc11_ - _loc1_;
               _loc16_ = si16(li16(_loc7_));
               _loc1_ <<= 1;
               _loc1_ = _loc18_ - _loc1_;
               var _loc8_:* = si16(li16(_loc1_ + 2));
               _loc8_ = _loc8_ * _loc16_;
               _loc7_ = si16(li16(_loc7_ - 2));
               var _loc2_:* = si16(li16(_loc1_ - 2));
               _loc2_ *= _loc7_;
               _loc2_ += _loc13_;
               _loc13_ = _loc2_ + _loc8_;
               _loc8_ = si16(li16(_loc1_));
               _loc16_ = _loc8_ * _loc16_;
               _loc1_ = si16(li16(_loc1_ - 4));
               _loc1_ *= _loc7_;
               _loc1_ += _loc6_;
               _loc6_ = _loc1_ + _loc16_;
               _loc3_ += -2;
            }
            while(_loc3_ != -25);
            
            _loc3_ = _loc10_ >>> 1;
            _loc19_ += -1;
            _loc11_ += 48;
            if(_loc19_ == 0)
            {
               _loc19_ = li32(_loc5_ + 12);
               _loc3_ = li32(_loc5_ + 28);
               _loc11_ = _loc21_;
            }
            _loc16_ = _loc10_ << 1;
            _loc16_ = (_loc16_ = (_loc16_ = _loc16_ & 2) + _loc20_) << 1;
            _loc18_ += _loc16_;
            _loc1_ = _loc13_ >>> 15;
            _loc16_ = _loc6_ >>> 15;
            si16(_loc16_,_loc14_);
            si16(_loc1_,_loc14_ + 2);
            _loc12_ += -1;
            _loc14_ += 4;
            _loc10_ = _loc3_;
         }
         while(uint(_loc18_) <= uint(_loc17_));
         
         _loc17_ = li32(_loc5_ + 8);
         _loc20_ = li32(_loc5_ + 12);
      }
      _loc16_ = _loc20_ - _loc19_;
      si32(_loc16_,_loc5_ + 16);
      _loc19_ = _loc17_ - _loc18_;
      _loc20_ = _loc19_ >> 1;
      _loc16_ = li32(_loc5_ + 4);
      if((uint(_loc16_)) < uint(_loc20_))
      {
         _loc4_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6503,_loc4_ + 12);
         si32(51,_loc4_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5502,_loc4_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__501,_loc4_);
         ESP = _loc4_;
         F___assert();
         _loc4_ += 16;
      }
      _loc1_ = _loc20_ << 1;
      _loc16_ = li32(_loc5_);
      _loc1_ = _loc16_ + _loc1_;
      si32(_loc1_,_loc5_ + 8);
      _loc4_ -= 16;
      si32(_loc19_,_loc4_ + 8);
      si32(_loc18_,_loc4_ + 4);
      si32(_loc16_,_loc4_);
      _loc16_ = _loc14_ - _loc15_;
      _loc16_ = _loc16_ >> 1;
      ESP = _loc4_;
      Fmemmove();
      _loc4_ += 16;
      eax = _loc16_;
      ESP = _loc4_ = _loc9_;
   }
}
