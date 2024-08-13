package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5460;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu9run_untilEiE8__func__;
   
   public function F__ZN7Sms_Apu9run_untilEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li32(_loc1_ + 976);
      _loc6_ = li32(_loc3_ + 4);
      if(_loc7_ > _loc6_)
      {
         _loc2_ -= 16;
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5460,_loc2_ + 12);
         si32(236,_loc2_ + 8);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456,_loc2_ + 4);
         si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu9run_untilEiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      if(_loc7_ < _loc6_)
      {
         var _loc5_:* = li32(_loc1_);
         if((_loc7_ = li32(_loc5_ + 16)) != 0)
         {
            si32(1,_loc7_ + 40);
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 8);
            si32(li32(_loc1_ + 976),_loc2_ + 4);
            _loc5_ = _loc1_ + 16;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__ZN10Sms_Square3runEii();
            _loc2_ += 16;
         }
         _loc5_ = li32(_loc1_ + 4);
         if((_loc7_ = li32(_loc5_ + 16)) != 0)
         {
            si32(1,_loc7_ + 40);
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 8);
            si32(li32(_loc1_ + 976),_loc2_ + 4);
            _loc5_ = _loc1_ + 64;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__ZN10Sms_Square3runEii();
            _loc2_ += 16;
         }
         _loc5_ = li32(_loc1_ + 8);
         if((_loc7_ = li32(_loc5_ + 16)) != 0)
         {
            si32(1,_loc7_ + 40);
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 8);
            si32(li32(_loc1_ + 976),_loc2_ + 4);
            _loc5_ = _loc1_ + 112;
            si32(_loc5_,_loc2_);
            ESP = _loc2_;
            F__ZN10Sms_Square3runEii();
            _loc2_ += 16;
         }
         _loc5_ = li32(_loc1_ + 12);
         if((_loc7_ = li32(_loc5_ + 16)) != 0)
         {
            si32(1,_loc7_ + 40);
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 8);
            si32(li32(_loc1_ + 976),_loc2_ + 4);
            si32(_loc1_ + 984,_loc2_);
            ESP = _loc2_;
            F__ZN9Sms_Noise3runEii();
            _loc2_ += 16;
         }
         si32(_loc6_,_loc1_ + 976);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
