package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN8Snes_Spc9set_tempoEd() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = NaN;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc4_ = lf64(_loc3_ + 4);
      _loc4_ = 16 / _loc4_;
      _loc1_ = _loc4_ = _loc4_ + 0.5;
      _loc6_ = _loc1_ << 3;
      _loc5_ = li32(_loc3_);
      si32(_loc6_,_loc5_ + 12);
      si32(_loc6_,_loc5_ + 36);
      si32(_loc1_,_loc5_ + 60);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
