package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN14Effects_Buffer9set_depthEd() : void
   {
      var _loc5_:* = 0;
      var _loc6_:* = NaN;
      var _loc10_:* = NaN;
      var _loc13_:Number = NaN;
      var _loc7_:* = NaN;
      var _loc8_:* = NaN;
      var _loc1_:* = NaN;
      var _loc11_:* = NaN;
      var _loc4_:int = 0;
      var _loc3_:* = int(ESP);
      _loc5_ = _loc3_;
      _loc3_ -= 64;
      _loc1_ = -0.6000000238418579;
      _loc7_ = _loc1_;
      _loc1_ = _loc6_ = lf64(_loc5_ + 4);
      _loc1_ = _loc8_ = Number((_loc10_ = _loc1_) * _loc7_);
      sf64(_loc8_ = _loc1_,_loc5_ - 64);
      _loc1_ = 0.6000000238418579;
      _loc8_ = _loc1_;
      _loc1_ = _loc8_ = Number(_loc10_ * _loc8_);
      sf64(_loc8_ = _loc1_,_loc5_ - 56);
      si32(1079377920,_loc5_ - 28);
      si32(0,_loc5_ - 32);
      si32(1078886400,_loc5_ - 44);
      si32(0,_loc5_ - 48);
      _loc1_ = 0.5;
      if(_loc10_ <= (_loc11_ = _loc1_))
      {
         _loc11_ = _loc10_;
      }
      _loc1_ = _loc11_;
      var _loc2_:* = _loc7_ = Number((_loc8_ = _loc1_) * _loc13_);
      sf64(_loc7_ = _loc2_,_loc5_ - 16);
      _loc2_ = 0.30000001192092896;
      _loc7_ = _loc2_;
      _loc1_ = _loc8_ *= _loc7_;
      sf64(_loc8_ = _loc1_,_loc5_ - 40);
      si32(1077018624,_loc5_ - 20);
      si32(0,_loc5_ - 24);
      _loc4_ = 1;
      if(_loc6_ <= 0)
      {
         _loc4_ = 0;
      }
      var _loc14_:*;
      si8(_loc14_ = _loc4_ & 1,_loc5_ - 8);
      var _loc12_:*;
      var _loc9_:* = li32((_loc12_ = li32(_loc14_ = li32(_loc5_))) + 44);
      _loc3_ -= 16;
      si32(_loc12_ = int(_loc5_ - 64),_loc3_ + 4);
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc9_]();
      _loc3_ += 16;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
