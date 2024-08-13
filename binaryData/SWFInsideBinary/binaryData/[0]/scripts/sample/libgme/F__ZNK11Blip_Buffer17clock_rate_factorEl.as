package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6108;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK11Blip_Buffer17clock_rate_factorElE8__func__;
   
   public function F__ZNK11Blip_Buffer17clock_rate_factorEl() : void
   {
      var _loc3_:* = 0;
      var _loc6_:int = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:Number = NaN;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc5_ = _loc1_;
      var _loc8_:* = li32(_loc3_);
      var _loc4_:Number;
      _loc5_ = (_loc5_ = (_loc5_ = (_loc4_ = _loc7_ = li32(_loc8_ + 24)) / _loc5_) * 65536) + 0.5;
      _loc2_ -= 16;
      sf64(_loc5_,_loc2_);
      ESP = _loc2_;
      F_floor();
      _loc2_ += 16;
      _loc6_ = _loc5_ = sample.libgme.st0;
      if(_loc6_ <= 0)
      {
         if(_loc7_ != 0)
         {
            _loc2_ -= 16;
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6108,_loc2_ + 12);
            si32(127,_loc2_ + 8);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc2_ + 4);
            si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK11Blip_Buffer17clock_rate_factorElE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
