package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Gbs_Emu12update_timerEvE5rates;
   
   public function F__ZN7Gbs_Emu12update_timerEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = NaN;
      var _loc5_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc8_:*;
      if((_loc8_ = (_loc9_ = li8(_loc1_ + 387)) & 4) != 0)
      {
         var _loc7_:int;
         si32(_loc8_ = (_loc7_ = 256 - li8(_loc1_ + 24810)) << int(li8(_loc8_ = int(__ZZN7Gbs_Emu12update_timerEvE5rates + ((_loc8_ = li8(_loc1_ + 24811)) & 3))) - (int(_loc9_ >>> 7))),_loc1_ + 364);
         _loc5_ = Number(_loc8_);
      }
      else
      {
         si32(70224,_loc1_ + 364);
         _loc5_ = 70224;
      }
      if((_loc4_ = lf64(_loc1_ + 176)) != 1)
      {
         var _loc6_:Number;
         si32(_loc8_ = int(_loc6_ = _loc5_ / _loc4_),_loc1_ + 364);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
