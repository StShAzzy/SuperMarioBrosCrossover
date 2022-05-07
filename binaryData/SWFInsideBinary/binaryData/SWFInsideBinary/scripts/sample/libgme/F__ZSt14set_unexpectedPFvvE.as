package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZSt14set_unexpectedPFvvE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(__ZN10__cxxabiv120__unexpected_handlerE);
      var _loc4_:*;
      si32(_loc4_ = li32(_loc3_),__ZN10__cxxabiv120__unexpected_handlerE);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
