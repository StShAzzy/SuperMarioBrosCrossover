package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Apu9set_tempoEd() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc1_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = 16384;
      _loc5_ = lf64(_loc3_ + 4);
      if(_loc5_ != 1)
      {
         var _loc4_:Number;
         _loc1_ = _loc4_ = 16384 / _loc5_;
      }
      var _loc6_:* = li32(_loc3_);
      si32(_loc1_,_loc6_ + 24);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
