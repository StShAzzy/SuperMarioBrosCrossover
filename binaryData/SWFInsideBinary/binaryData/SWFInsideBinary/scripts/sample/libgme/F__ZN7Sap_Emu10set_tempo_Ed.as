package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Sap_Emu10set_tempo_Ed() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = NaN;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc4_ = lf64(_loc3_ + 4);
      _loc1_ = _loc4_ = Number(114 / _loc4_);
      _loc5_ = li32(_loc3_);
      si32(_loc1_,_loc5_ + 888);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
