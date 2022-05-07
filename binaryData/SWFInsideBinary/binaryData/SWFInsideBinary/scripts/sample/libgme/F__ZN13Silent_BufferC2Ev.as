package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Silent_BufferC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(1,_loc1_ + 16);
      si32(0,_loc1_ + 12);
      si32(0,_loc1_ + 8);
      si32(1,_loc1_ + 4);
      var _loc4_:int;
      si32(_loc4_ = __ZTV13Silent_Buffer + 8,_loc1_);
      si32(0,_loc1_ + 24);
      si32(0,_loc1_ + 20);
      si32(0,_loc1_ + 28);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
