package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2472;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3473;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4474;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc5Timer10run_until_EiE8__func__;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc8run_dsp_EiE8__func__;
   
   public function F__ZN8Snes_Spc4readEj() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      var _loc7_:*;
      _loc6_ = li8((_loc7_ = _loc8_ + _loc1_) + 948);
      _loc7_ = _loc1_ + -240;
      if((uint(_loc7_)) <= 15)
      {
         _loc7_ = _loc1_ + -253;
         if(_loc7_ >= 0)
         {
            _loc1_ = _loc8_ + _loc1_ * 24;
            _loc6_ = li32(_loc1_ - 6072);
            _loc8_ = 0 - li32(_loc8_ + 620);
            if(_loc6_ <= _loc8_)
            {
               _loc7_ = li32(_loc1_ - 6056);
               if(_loc7_ == 0)
               {
                  _loc2_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3473,_loc2_ + 12);
                  si32(183,_loc2_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2472,_loc2_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc5Timer10run_until_EiE8__func__,_loc2_);
                  ESP = _loc2_;
                  F___assert();
                  _loc2_ += 16;
               }
               _loc7_ = _loc8_ - _loc6_;
               var _loc5_:* = li32(_loc1_ - 6060);
               _loc7_ /= _loc5_;
               si32(_loc5_ = (_loc5_ = (_loc7_ = _loc7_ /= _loc5_ + 1) * _loc5_) + _loc6_,_loc1_ - 6072);
               _loc5_ = li32(_loc1_ - 6064);
               _loc8_ = _loc5_ + _loc7_;
               _loc6_ = li32(_loc1_ - 6068);
               if(_loc6_ <= _loc8_)
               {
                  _loc7_ = _loc8_ / _loc6_;
                  _loc5_ = li32(_loc1_ - 6052);
                  si32(_loc5_ = (_loc5_ = _loc5_ + _loc7_) & 0x0F,_loc1_ - 6052);
                  _loc8_ -= _loc7_ * _loc6_;
               }
               si32(_loc8_,_loc1_ - 6064);
            }
            _loc6_ = li32(_loc1_ - 6052);
            si32(0,_loc1_ - 6052);
         }
         else if(_loc1_ == 243)
         {
            _loc1_ = li32(_loc8_ + 84);
            _loc6_ = 0 - li32(_loc8_ + 620);
            if(_loc1_ > _loc6_)
            {
               _loc1_ = _loc8_ + 88;
            }
            else
            {
               _loc7_ = _loc6_ - _loc1_;
               _loc6_ = (_loc7_ = _loc7_ >> 5) + 1;
               _loc4_ = li32(_loc8_ + 76);
               if(_loc4_ != 0)
               {
                  _loc7_ = _loc4_ + (_loc6_ << 2);
                  si32(_loc7_,_loc8_ + 76);
                  if(uint(_loc7_) > uint(li32(_loc8_ + 80)))
                  {
                     _loc2_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4474,_loc2_ + 12);
                     si32(208,_loc2_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2472,_loc2_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Snes_Spc8run_dsp_EiE8__func__,_loc2_);
                     ESP = _loc2_;
                     F___assert();
                     _loc2_ += 16;
                  }
               }
               _loc7_ = _loc6_ << 5;
               si32(_loc7_ = _loc7_ + _loc1_,_loc8_ + 84);
               _loc2_ -= 16;
               si32(_loc4_,_loc2_ + 8);
               si32(_loc6_,_loc2_ + 4);
               _loc1_ = _loc8_ + 88;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F__ZN7Spc_Dsp3runElPs();
               _loc2_ += 16;
            }
            _loc7_ = li8(_loc8_ + 1190);
            _loc7_ = _loc7_ & 0x7F;
            _loc7_ = _loc1_ + _loc7_;
            _loc6_ = li8(_loc7_);
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
