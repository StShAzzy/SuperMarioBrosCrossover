package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4458;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu10osc_outputEiP11Blip_BufferS1_S1_E8__func__;
   
   public function F__ZN7Sms_Apu6outputEP11Blip_BufferS1_S1_() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = 1;
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = _loc1_;
      if(_loc11_ != 0)
      {
         _loc10_ = 0;
      }
      _loc9_ = li32(_loc3_ + 4);
      _loc8_ = _loc1_;
      if(_loc9_ != 0)
      {
         _loc8_ = 0;
      }
      _loc7_ = li32(_loc3_ + 12);
      if(_loc7_ != 0)
      {
         _loc1_ = 0;
      }
      var _loc6_:* = _loc9_ | _loc11_;
      if((_loc6_ = _loc6_ | _loc7_) != 0)
      {
         _loc6_ = _loc8_ | _loc10_;
         if((_loc6_ = (_loc6_ = (_loc6_ = _loc6_ | _loc1_) ^ 1) & 1) == 0)
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4458,_loc2_ + 12);
            si32(195,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu10osc_outputEiP11Blip_BufferS1_S1_E8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
            return;
         }
      }
      _loc6_ = li32(_loc3_);
      var _loc5_:* = li32(_loc6_);
      si32(_loc7_,_loc5_ + 4);
      si32(_loc11_,_loc5_ + 8);
      si32(_loc9_,_loc5_ + 12);
      var _loc4_:* = li32(_loc5_ + 20);
      _loc4_ = _loc4_ << 2;
      _loc4_ = _loc5_ + _loc4_;
      si32(_loc4_ = li32(_loc4_),_loc5_ + 16);
      _loc5_ = li32(_loc6_ + 4);
      si32(_loc7_,_loc5_ + 4);
      si32(_loc11_,_loc5_ + 8);
      si32(_loc9_,_loc5_ + 12);
      _loc4_ = li32(_loc5_ + 20);
      _loc4_ = _loc4_ << 2;
      _loc4_ = _loc5_ + _loc4_;
      si32(_loc4_ = li32(_loc4_),_loc5_ + 16);
      _loc5_ = li32(_loc6_ + 8);
      si32(_loc7_,_loc5_ + 4);
      si32(_loc11_,_loc5_ + 8);
      si32(_loc9_,_loc5_ + 12);
      _loc4_ = li32(_loc5_ + 20);
      _loc4_ = _loc4_ << 2;
      _loc4_ = _loc5_ + _loc4_;
      si32(_loc4_ = li32(_loc4_),_loc5_ + 16);
      _loc6_ = li32(_loc6_ + 12);
      si32(_loc7_,_loc6_ + 4);
      si32(_loc11_,_loc6_ + 8);
      si32(_loc9_,_loc6_ + 12);
      _loc5_ = li32(_loc6_ + 20);
      _loc5_ = _loc5_ << 2;
      _loc5_ = _loc6_ + _loc5_;
      si32(_loc5_ = li32(_loc5_),_loc6_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
