package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str197;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str96;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_BufferE8__func__;
   
   public function F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc15_:int = 0;
      var _loc13_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_ + 4);
      _loc15_ = _loc3_ >>> 16;
      _loc14_ = li32(_loc4_ + 12);
      _loc13_ = li32(_loc14_ + 12);
      if(_loc15_ >= _loc13_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str197,_loc2_ + 12);
         si32(343,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str96,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_BufferE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      var _loc12_:* = li32(_loc4_ + 8);
      var _loc11_:* = li32(_loc4_);
      _loc13_ = (_loc13_ = li32(_loc11_ + 8)) * _loc12_;
      _loc11_ += 40;
      _loc12_ = _loc3_ >>> 10;
      var _loc10_:* = _loc12_ & 0x3F;
      var _loc9_:* = 64 - _loc10_;
      _loc12_ = _loc9_ << 1;
      var _loc8_:* = _loc11_ + _loc12_;
      var _loc1_:* = (_loc12_ = si16(li16(_loc8_))) * _loc13_;
      _loc12_ = li32(_loc14_ + 8);
      var _loc5_:* = _loc15_ << 2;
      _loc5_ = li32((_loc12_ = _loc5_ + _loc12_) + 8);
      _loc1_ += _loc5_;
      _loc5_ = _loc9_ | 0x80;
      _loc5_ = _loc5_ << 1;
      _loc5_ = _loc11_ + _loc5_;
      _loc5_ = si16(li16(_loc5_));
      var _loc6_:* = li32(_loc12_ + 12);
      var _loc7_:* = si16(li16(_loc8_ + 128));
      si32(_loc1_,_loc12_ + 8);
      _loc1_ = _loc7_ * _loc13_;
      _loc1_ += _loc6_;
      si32(_loc1_,_loc12_ + 12);
      _loc1_ = _loc5_ * _loc13_;
      _loc5_ = li32(_loc12_ + 16);
      _loc1_ += _loc5_;
      _loc9_ |= 256;
      _loc9_ = _loc9_ |= 256 << 1;
      _loc9_ = _loc11_ + _loc9_;
      _loc9_ = si16(li16(_loc9_));
      _loc5_ = li32(_loc12_ + 20);
      _loc6_ = si16(li16(_loc8_ + 384));
      si32(_loc1_,_loc12_ + 16);
      _loc1_ = _loc6_ * _loc13_;
      _loc1_ += _loc5_;
      si32(_loc1_,_loc12_ + 20);
      _loc9_ *= _loc13_;
      _loc1_ = li32(_loc12_ + 24);
      _loc9_ += _loc1_;
      _loc1_ = _loc10_ | 0x0140;
      _loc1_ <<= 1;
      _loc1_ = _loc11_ + _loc1_;
      _loc1_ = si16(li16(_loc1_));
      _loc5_ = li32(_loc12_ + 28);
      _loc8_ = si16(li16(_loc8_ + 640));
      si32(_loc9_,_loc12_ + 24);
      _loc8_ *= _loc13_;
      si32(_loc8_ = _loc8_ *= _loc13_ + _loc5_,_loc12_ + 28);
      _loc9_ = _loc1_ * _loc13_;
      _loc8_ = li32(_loc12_ + 32);
      _loc8_ = _loc9_ + _loc8_;
      _loc9_ = _loc10_ | 0xC0;
      _loc9_ = _loc9_ << 1;
      _loc9_ = _loc11_ + _loc9_;
      _loc9_ = si16(li16(_loc9_));
      _loc1_ = li32(_loc12_ + 36);
      _loc5_ = _loc10_ | 0x0100;
      _loc5_ = _loc5_ << 1;
      _loc5_ = _loc11_ + _loc5_;
      _loc5_ = si16(li16(_loc5_));
      si32(_loc8_,_loc12_ + 32);
      _loc8_ = _loc5_ * _loc13_;
      si32(_loc8_ = _loc8_ + _loc1_,_loc12_ + 36);
      _loc8_ = _loc9_ * _loc13_;
      _loc9_ = li32(_loc12_ + 40);
      _loc8_ += _loc9_;
      _loc9_ = _loc10_ | 0x40;
      _loc9_ = _loc9_ << 1;
      _loc9_ = _loc11_ + _loc9_;
      _loc9_ = si16(li16(_loc9_));
      _loc1_ = li32(_loc12_ + 44);
      _loc5_ = _loc10_ | 0x80;
      _loc5_ = _loc5_ << 1;
      _loc5_ = _loc11_ + _loc5_;
      _loc5_ = si16(li16(_loc5_));
      si32(_loc8_,_loc12_ + 40);
      _loc8_ = _loc5_ * _loc13_;
      si32(_loc8_ = _loc8_ + _loc1_,_loc12_ + 44);
      _loc8_ = _loc9_ * _loc13_;
      _loc9_ = li32(_loc12_ + 48);
      _loc9_ = _loc8_ + _loc9_;
      _loc8_ = li32(_loc12_ + 52);
      _loc10_ <<= 1;
      _loc11_ += _loc10_;
      _loc11_ = si16(li16(_loc11_ += _loc10_));
      si32(_loc9_,_loc12_ + 48);
      _loc13_ = _loc11_ * _loc13_;
      si32(_loc13_ = _loc13_ + _loc8_,_loc12_ + 52);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
