package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1105;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer11mix_samplesEPKslE8__func__;
   
   public function F__ZN11Blip_Buffer11mix_samplesEPKsl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc11_:* = li32(_loc1_ + 12);
      if(_loc11_ == 1)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1105,_loc2_ + 12);
         si32(429,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer11mix_samplesEPKslE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc1_ + 8);
      _loc8_ = li32(_loc1_ + 4);
      _loc7_ = _loc8_ >>> 16;
      _loc6_ = 0;
      if(_loc10_ != 0)
      {
         _loc1_ = li32(_loc3_ + 4);
         _loc11_ = _loc8_ & -65536;
         _loc5_ = (_loc11_ = (_loc11_ = _loc11_ >>> 14) + _loc9_) + 32;
         _loc6_ = 0;
         _loc8_ = _loc10_;
         do
         {
            _loc11_ = li32(_loc5_);
            _loc11_ = _loc11_ - _loc6_;
            var _loc4_:* = si16(li16(_loc1_));
            _loc6_ = _loc4_ << 14;
            _loc11_ += _loc6_;
            si32(_loc11_ += _loc6_,_loc5_);
            _loc5_ += 4;
            _loc1_ += 2;
         }
         while(_loc8_ += -1, _loc8_ += -1 != 0);
         
         _loc7_ += _loc10_;
      }
      _loc11_ = _loc7_ << 2;
      si32(_loc4_ = (_loc4_ = li32((_loc11_ = _loc11_ + _loc9_) + 32)) - _loc6_,_loc11_ + 32);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
