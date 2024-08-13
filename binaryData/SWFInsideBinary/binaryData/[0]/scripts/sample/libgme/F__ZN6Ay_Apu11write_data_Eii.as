package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str298;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7103;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Ay_Apu11write_data_EiiE8__func__;
   
   public function F__ZN6Ay_Apu11write_data_Eii() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(uint(_loc1_) >= 16)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7103,_loc2_ + 12);
         si32(122,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str298,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Ay_Apu11write_data_EiiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_);
      if(_loc1_ == 13)
      {
         var _loc8_:* = _loc10_ & 8;
         if(_loc8_ == 0)
         {
            _loc10_ = 9;
            if((_loc10_ & 4) != 0)
            {
               _loc10_ = 15;
            }
         }
         var _loc7_:* = _loc9_ + 80;
         _loc8_ = _loc10_ * 48;
         si32(_loc8_ = (_loc8_ = _loc8_ + _loc7_) + -324,_loc9_ + 84);
         si32(-48,_loc9_ + 88);
         si32(0,_loc9_ + 80);
      }
      _loc8_ = _loc9_ + _loc1_;
      si8(_loc10_,_loc8_ + 53);
      _loc6_ = _loc1_ >> 1;
      if(_loc6_ <= 2)
      {
         _loc8_ = (_loc7_ = _loc9_ + 53) + (_loc1_ & -2);
         _loc4_ = (_loc7_ = (_loc7_ = (_loc7_ = li8(_loc7_ += _loc1_ | 1)) << 8) & 0x0F00) | li8(_loc8_);
         _loc10_ = 16;
         _loc1_ = 0;
         if(_loc4_ != _loc1_)
         {
            _loc10_ = _loc4_ << 4;
         }
         _loc8_ = _loc6_ << 4;
         _loc9_ += _loc8_;
         _loc8_ = li32(_loc9_ += _loc8_);
         _loc8_ = _loc10_ - _loc8_;
         _loc7_ = li32(_loc9_ + 4);
         _loc6_ = _loc8_ + _loc7_;
         if(_loc6_ >= _loc1_)
         {
            _loc1_ = _loc6_;
         }
         si32(_loc1_,_loc9_ + 4);
         si32(_loc10_,_loc9_);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
