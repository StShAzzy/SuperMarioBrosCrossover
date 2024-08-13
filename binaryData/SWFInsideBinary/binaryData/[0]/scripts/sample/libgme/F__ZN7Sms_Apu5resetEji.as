package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL13noise_periods;
   
   public function F__ZN7Sms_Apu5resetEji() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 976);
      si32(0,_loc1_ + 980);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = 1;
      if(_loc10_ != 0)
      {
         _loc9_ = 0;
      }
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = 1;
      if(_loc8_ != 0)
      {
         _loc7_ = 0;
      }
      _loc7_ |= _loc9_;
      _loc9_ = 16;
      if(_loc7_ == 0)
      {
         _loc9_ = _loc10_;
      }
      var _loc6_:* = _loc9_ + -1;
      _loc6_ = 1 << _loc6_;
      si32(_loc6_,_loc1_ + 1596);
      si32(0,_loc1_ + 1592);
      if(_loc9_ != 0)
      {
         _loc10_ = 9;
         _loc5_ = 0;
         if(_loc7_ == _loc5_)
         {
            _loc10_ = _loc8_;
         }
         do
         {
            _loc6_ = _loc5_ << 1;
            var _loc4_:* = _loc10_ & 1;
            _loc5_ = _loc4_ | _loc6_;
            _loc9_ += -1;
            _loc10_ >>>= 1;
         }
         while(_loc9_ != 0);
         
         si32(_loc5_,_loc1_ + 1592);
      }
      si32(0,_loc1_ + 52);
      si32(0,_loc1_ + 56);
      si32(0,_loc1_ + 40);
      si32(0,_loc1_ + 44);
      si32(0,_loc1_ + 48);
      si32(3,_loc1_ + 36);
      _loc6_ = li32(_loc1_ + 28);
      si32(_loc6_,_loc1_ + 32);
      si32(0,_loc1_ + 100);
      si32(0,_loc1_ + 104);
      si32(0,_loc1_ + 88);
      si32(0,_loc1_ + 92);
      si32(0,_loc1_ + 96);
      si32(3,_loc1_ + 84);
      _loc6_ = li32(_loc1_ + 76);
      si32(_loc6_,_loc1_ + 80);
      si32(0,_loc1_ + 148);
      si32(0,_loc1_ + 152);
      si32(0,_loc1_ + 136);
      si32(0,_loc1_ + 140);
      si32(0,_loc1_ + 144);
      si32(3,_loc1_ + 132);
      _loc6_ = li32(_loc1_ + 124);
      si32(_loc6_,_loc1_ + 128);
      si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL13noise_periods,_loc1_ + 1020);
      si32(32768,_loc1_ + 1024);
      si32(36864,_loc1_ + 1028);
      si32(0,_loc1_ + 1008);
      si32(0,_loc1_ + 1012);
      si32(0,_loc1_ + 1016);
      si32(3,_loc1_ + 1004);
      _loc6_ = li32(_loc1_ + 996);
      si32(_loc6_,_loc1_ + 1000);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
