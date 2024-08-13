package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Gbs_Emu12update_timerEvE5rates;
   
   public function F__ZN7Gbs_Emu10set_tempo_Ed() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = NaN;
      var _loc6_:* = NaN;
      var _loc1_:* = 0;
      var _loc7_:Number = NaN;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = 16384;
      _loc5_ = lf64(_loc3_ + 4);
      if(_loc5_ != 1)
      {
         var _loc4_:Number;
         _loc1_ = _loc4_ = 16384 / _loc5_;
      }
      _loc10_ = li32(_loc3_);
      si32(_loc1_,_loc10_ + 25096);
      _loc1_ = li8(_loc10_ + 387);
      var _loc9_:* = _loc1_ & 4;
      if(_loc9_ != 0)
      {
         _loc9_ = li8(_loc10_ + 24811);
         var _loc8_:int;
         si32(_loc9_ = (_loc8_ = 256 - li8(_loc10_ + 24810)) << li8(_loc9_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Gbs_Emu12update_timerEvE5rates + (_loc9_ & 3)) - (_loc1_ >>> 7),_loc10_ + 364);
         _loc7_ = _loc9_;
      }
      else
      {
         si32(70224,_loc10_ + 364);
         _loc7_ = 70224;
      }
      _loc6_ = lf64(_loc10_ + 176);
      if(_loc6_ != 1)
      {
         _loc9_ = _loc4_ = _loc7_ / _loc6_;
         si32(_loc9_,_loc10_ + 364);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
