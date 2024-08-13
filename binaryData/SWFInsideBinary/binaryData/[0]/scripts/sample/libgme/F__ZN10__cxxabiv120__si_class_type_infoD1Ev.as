package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN10__cxxabiv120__si_class_type_infoD1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = sample.libgme.__ZTVN10__cxxabiv117__class_type_infoE + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
