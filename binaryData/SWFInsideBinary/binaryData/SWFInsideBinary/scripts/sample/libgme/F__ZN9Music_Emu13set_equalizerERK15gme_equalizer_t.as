package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN9Music_Emu13set_equalizerERK15gme_equalizer_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = NaN;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc4_ = lf64(_loc1_);
      _loc7_ = li32(_loc3_);
      sf64(_loc4_,_loc7_ + 144);
      var _loc6_:*;
      si32(_loc6_ = li32(_loc1_ + 8),_loc7_ + 152);
      si32(_loc6_ = li32(_loc1_ + 12),_loc7_ + 156);
      _loc5_ = li32((_loc6_ = li32(_loc7_)) + 44);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
