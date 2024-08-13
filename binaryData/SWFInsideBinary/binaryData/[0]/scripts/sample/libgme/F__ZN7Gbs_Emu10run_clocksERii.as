package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7144;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8145;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8176;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu9end_frameEiE8__func__;
   
   public function F__ZN7Gbs_Emu10run_clocksERii() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = 0;
      _loc11_ = li32(_loc3_);
      si32(_loc1_,_loc11_ + 360);
      _loc10_ = _loc11_ + 272;
      _loc9_ = li32(_loc3_ + 4);
      while(true)
      {
         _loc8_ = li32(_loc9_);
         if(_loc1_ >= _loc8_)
         {
            break;
         }
         si32(_loc8_,_loc11_ + 360);
         _loc2_ -= 16;
         si32(_loc8_ - _loc1_,_loc2_ + 4);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F__ZN6Gb_Cpu3runEi();
         _loc2_ += 16;
         var _loc5_:*;
         _loc1_ = li32(_loc11_ + 360) - ((_loc5_ = li32((_loc5_ = li32(_loc11_ + 292)) + 36)) << 2);
         si32(_loc1_,_loc11_ + 360);
         if(sample.libgme.eax != 0)
         {
            _loc8_ = li32(_loc11_ + 280);
            if(_loc8_ == 61453)
            {
               _loc8_ = li32(_loc9_);
               _loc4_ = li32(_loc11_ + 368);
               if(_loc4_ > _loc8_)
               {
                  si32(_loc8_,_loc11_ + 360);
                  _loc1_ = _loc8_;
                  break;
               }
               if(_loc1_ < _loc4_)
               {
                  si32(_loc4_,_loc11_ + 360);
               }
               var _loc7_:* = li32(_loc11_ + 364);
               si32(_loc7_ = _loc7_ + _loc4_,_loc11_ + 368);
               _loc7_ = li8(_loc11_ + 382);
               var _loc6_:* = li8(_loc11_ + 383);
               si32(_loc7_ = (_loc6_ = _loc6_ << 8) | _loc7_,_loc11_ + 280);
               _loc7_ = li16(_loc11_ + 284);
               si16(_loc7_ = _loc7_ + -1,_loc11_ + 284);
               _loc2_ -= 16;
               si32(240,_loc2_ + 8);
               _loc7_ &= 65535;
               si32(_loc7_ &= 65535,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__ZN7Gbs_Emu9cpu_writeEji();
               _loc2_ += 16;
               _loc7_ = li16(_loc11_ + 284);
               si16(_loc7_ = _loc7_ + -1,_loc11_ + 284);
               _loc2_ -= 16;
               si32(13,_loc2_ + 8);
               _loc7_ &= 65535;
               si32(_loc7_ &= 65535,_loc2_ + 4);
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__ZN7Gbs_Emu9cpu_writeEji();
               _loc2_ += 16;
               _loc1_ = li32(_loc11_ + 360);
            }
            else if(_loc8_ >= 65536)
            {
               _loc7_ = _loc8_ & 0xFFFF;
               si32(_loc7_,_loc11_ + 280);
            }
            else
            {
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8176,_loc11_ + 16);
               _loc7_ = _loc8_ + 1;
               si32(_loc7_ = _loc7_ & 0xFFFF,_loc11_ + 280);
               _loc1_ += 6;
               si32(_loc1_,_loc11_ + 360);
            }
         }
      }
      si32(_loc1_,_loc9_);
      _loc10_ = li32(_loc11_ + 360);
      _loc7_ = li32(_loc11_ + 368);
      _loc1_ = _loc7_ - _loc10_;
      _loc9_ = 0;
      if(_loc1_ >= _loc9_)
      {
         _loc9_ = _loc1_;
      }
      si32(_loc9_,_loc11_ + 368);
      _loc7_ = li32(_loc11_ + 25092);
      if(_loc7_ < _loc10_)
      {
         _loc2_ -= 16;
         si32(_loc10_,_loc2_ + 4);
         _loc7_ = _loc11_ + 25072;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__ZN6Gb_Apu9run_untilEi();
         _loc2_ += 16;
      }
      _loc9_ = li32(_loc11_ + 25088);
      if(_loc9_ < _loc10_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7144,_loc2_ + 12);
         si32(193,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu9end_frameEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc7_ = _loc9_ - _loc10_;
      si32(_loc7_,_loc11_ + 25088);
      _loc9_ = li32(_loc11_ + 25092);
      if(_loc9_ < _loc10_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8145,_loc2_ + 12);
         si32(196,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu9end_frameEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc7_ = _loc9_ - _loc10_;
      si32(_loc7_,_loc11_ + 25092);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
