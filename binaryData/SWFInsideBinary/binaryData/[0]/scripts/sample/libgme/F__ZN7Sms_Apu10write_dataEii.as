package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6461;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL13noise_periods;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL7volumes;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu10write_dataEiiE8__func__;
   
   public function F__ZN7Sms_Apu10write_dataEii() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      if(uint(_loc1_) >= 256)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6461,_loc2_ + 12);
         si32(299,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu10write_dataEiiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      var _loc8_:* = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      _loc2_ -= 16;
      si32(_loc8_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      F__ZN7Sms_Apu9run_untilEi();
      _loc2_ += 16;
      _loc6_ = _loc1_ & 0x80;
      if(_loc6_ == 0)
      {
         _loc5_ = li32(_loc7_ + 980);
      }
      else
      {
         si32(_loc1_,_loc7_ + 980);
         _loc5_ = _loc1_;
      }
      _loc8_ = _loc5_ & 0x10;
      var _loc4_:* = _loc5_ >>> 5;
      _loc5_ = _loc4_ & 3;
      if(_loc8_ != 0)
      {
         _loc8_ = _loc7_ + (_loc5_ << 2);
         si32(_loc4_ = li8(_loc4_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL7volumes + (_loc1_ & 0x0F)),li32(_loc8_) + 32);
      }
      else if(_loc5_ != 3)
      {
         _loc7_ += _loc5_ * 48;
         _loc5_ = li32(_loc7_ += _loc5_ * 48 + 52);
         if(_loc6_ != 0)
         {
            _loc8_ = _loc5_ & 0xFF00 | (_loc4_ = _loc1_ << 4) & 0xF0;
            si32(_loc8_,_loc7_ + 52);
         }
         else
         {
            _loc8_ = _loc5_ & 0xFF | (_loc4_ = _loc1_ << 8) & 0x3F00;
            si32(_loc8_,_loc7_ + 52);
         }
      }
      else
      {
         _loc6_ = _loc1_ & 3;
         if(_loc6_ != 3)
         {
            _loc8_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL13noise_periods + (_loc6_ << 2);
            si32(_loc8_,_loc7_ + 1020);
         }
         else
         {
            _loc8_ = _loc7_ + 148;
            si32(_loc8_,_loc7_ + 1020);
         }
         _loc6_ = _loc7_ + 1596;
         _loc8_ = _loc1_ & 4;
         if(_loc8_ != 0)
         {
            _loc6_ = _loc7_ + 1592;
         }
         _loc8_ = li32(_loc6_);
         si32(_loc8_,_loc7_ + 1028);
         si32(32768,_loc7_ + 1024);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
