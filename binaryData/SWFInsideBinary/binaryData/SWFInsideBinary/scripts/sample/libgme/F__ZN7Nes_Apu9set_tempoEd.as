package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nes_Apu9set_tempoEd() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = NaN;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc5_ = lf64(_loc3_ + 4);
      _loc1_ = li32(_loc3_);
      sf64(_loc5_,_loc1_ + 1936);
      _loc7_ = li8(_loc1_ + 1362);
      _loc6_ = 7458;
      if(_loc7_ != 0)
      {
         _loc6_ = 8314;
      }
      if(_loc5_ != 1)
      {
         var _loc4_:Number;
         _loc6_ = (_loc7_ = int(_loc4_ = (_loc4_ = _loc6_) / _loc5_)) & -2;
      }
      si32(_loc6_,_loc1_ + 1960);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
