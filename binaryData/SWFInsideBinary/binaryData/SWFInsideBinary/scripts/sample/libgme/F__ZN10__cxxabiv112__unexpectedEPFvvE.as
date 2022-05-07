package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZN10__cxxabiv112__unexpectedEPFvvE() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      ESP = _loc2_;
      ptr2fun[_loc1_]();
      ESP = _loc2_;
      F__ZSt9terminatev();
   }
}
