package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3140;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4141;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu10osc_outputEiP11Blip_BufferS1_S1_E8__func__;
   
   public function F__ZN7Gbs_Emu9set_voiceEiP11Blip_BufferS1_S1_() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(uint(_loc1_) >= 4)
      {
         _loc2_ -= 16;
         si32(L__2E_str3140,_loc2_ + 12);
         si32(59,_loc2_ + 8);
         si32(L__2E_str2139,_loc2_ + 4);
         si32(__ZZN6Gb_Apu10osc_outputEiP11Blip_BufferS1_S1_E8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc11_ = li32(_loc3_ + 12);
      _loc9_ = _loc10_ = 1;
      if(_loc11_ != 0)
      {
         _loc9_ = 0;
      }
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = _loc10_;
      if(_loc8_ != 0)
      {
         _loc7_ = 0;
      }
      if((_loc6_ = li32(_loc3_ + 16)) != 0)
      {
         _loc10_ = 0;
      }
      var _loc5_:*;
      if((_loc5_ = (_loc5_ = _loc8_ | _loc11_) | _loc6_) != 0)
      {
         if((_loc5_ = (_loc5_ = (_loc5_ = _loc7_ | _loc9_) | _loc10_) ^ 1) == 0)
         {
            _loc2_ -= 16;
            si32(L__2E_str4141,_loc2_ + 12);
            si32(60,_loc2_ + 8);
            si32(L__2E_str2139,_loc2_ + 4);
            si32(__ZZN6Gb_Apu10osc_outputEiP11Blip_BufferS1_S1_E8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
      }
      _loc5_ = li32(_loc3_);
      var _loc4_:* = _loc1_ << 2;
      _loc5_ = li32((_loc5_ += _loc4_) + 25072);
      si32(_loc6_,_loc5_ + 4);
      si32(_loc11_,_loc5_ + 8);
      si32(_loc8_,_loc5_ + 12);
      _loc4_ = (_loc4_ = li32(_loc5_ + 20)) << 2;
      si32(_loc4_ = li32(_loc4_ = int(_loc5_ + _loc4_)),_loc5_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
