package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN14Effects_Buffer9set_depthEd() : void
   {
      var _loc5_:* = 0;
      var _loc6_:* = NaN;
      var _loc10_:* = NaN;
      var _loc13_:* = NaN;
      var _loc7_:* = NaN;
      var _loc8_:* = NaN;
      var _loc1_:* = NaN;
      var _loc11_:* = NaN;
      var _loc4_:int = 0;
      var _loc3_:* = ESP;
      _loc5_ = _loc3_;
      _loc3_ -= 64;
      _loc1_ = -0.6000000238418579;
      _loc7_ = _loc1_;
      _loc1_ = _loc6_ = lf64(_loc5_ + 4);
      _loc10_ = _loc1_;
      _loc1_ = _loc8_ = _loc10_ * _loc7_;
      _loc8_ = _loc1_;
      sf64(_loc8_,_loc5_ - 64);
      _loc1_ = 0.6000000238418579;
      _loc8_ = _loc1_;
      _loc1_ = _loc8_ = _loc10_ * _loc8_;
      _loc8_ = _loc1_;
      sf64(_loc8_,_loc5_ - 56);
      si32(1079377920,_loc5_ - 28);
      si32(0,_loc5_ - 32);
      si32(1078886400,_loc5_ - 44);
      si32(0,_loc5_ - 48);
      _loc1_ = 0.5;
      _loc11_ = _loc13_ = _loc1_;
      if(_loc10_ <= _loc13_)
      {
         _loc11_ = _loc10_;
      }
      _loc1_ = _loc11_;
      _loc8_ = _loc1_;
      var _loc2_:* = _loc7_ = _loc8_ * _loc13_;
      _loc7_ = _loc2_;
      sf64(_loc7_,_loc5_ - 16);
      _loc2_ = 0.30000001192092896;
      _loc7_ = _loc2_;
      _loc1_ = _loc8_ *= _loc7_;
      _loc8_ = _loc1_;
      sf64(_loc8_,_loc5_ - 40);
      si32(1077018624,_loc5_ - 20);
      si32(0,_loc5_ - 24);
      _loc4_ = 1;
      if(_loc6_ <= 0)
      {
         _loc4_ = 0;
      }
      var _loc14_:* = _loc4_ & 1;
      si8(_loc14_,_loc5_ - 8);
      _loc14_ = li32(_loc5_);
      var _loc12_:*;
      var _loc9_:* = li32((_loc12_ = li32(_loc14_)) + 44);
      _loc3_ -= 16;
      _loc12_ = _loc5_ - 64;
      si32(_loc12_,_loc3_ + 4);
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc9_]();
      _loc3_ += 16;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
