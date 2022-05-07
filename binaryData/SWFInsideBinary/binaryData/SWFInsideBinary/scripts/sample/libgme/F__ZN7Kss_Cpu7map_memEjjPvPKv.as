package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str203;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2205;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3206;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Kss_Cpu7map_memEjjPvPKvE8__func__;
   
   public function F__ZN7Kss_Cpu7map_memEjjPvPKv() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:int = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      var _loc11_:*;
      if((_loc11_ = _loc1_ & 8191) != 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str2205,_loc2_ + 12);
         si32(103,_loc2_ + 8);
         si32(L__2E_str203,_loc2_ + 4);
         si32(__ZZN7Kss_Cpu7map_memEjjPvPKvE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      if((_loc11_ = (_loc10_ = li32(_loc3_ + 8)) & 8191) != 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str3206,_loc2_ + 12);
         si32(104,_loc2_ + 8);
         si32(L__2E_str203,_loc2_ + 4);
         si32(__ZZN7Kss_Cpu7map_memEjjPvPKvE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      if(uint(_loc10_) >= 8192)
      {
         _loc8_ = li32(_loc3_);
         var _loc7_:*;
         _loc6_ = li32(_loc3_ + 12) + (_loc7_ = (_loc7_ = int(_loc10_ + -8192)) & -8192);
         _loc5_ = li32(_loc3_ + 16) + _loc7_;
         var _loc9_:*;
         _loc1_ = int((_loc11_ = int((_loc9_ = int((_loc9_ = _loc10_ & -8192) >>> 11)) + (int((_loc11_ = _loc1_ & -8192) >>> 11)))) + 32);
         _loc10_ = int(0 - (int(_loc10_ >>> 13)));
         _loc4_ = 0;
         do
         {
            _loc9_ = int((_loc11_ = li32(_loc8_ + 516)) + _loc1_);
            _loc11_ = _loc4_ << 2;
            _loc9_ += _loc11_;
            si32(_loc6_,_loc9_);
            _loc11_ = int((_loc9_ = int((_loc9_ = li32(_loc8_ + 516)) + _loc1_)) + _loc11_);
            si32(_loc5_,_loc11_ - 36);
            _loc6_ += -8192;
            _loc5_ += -8192;
            _loc4_ += -1;
         }
         while(_loc10_ != _loc4_);
         
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
