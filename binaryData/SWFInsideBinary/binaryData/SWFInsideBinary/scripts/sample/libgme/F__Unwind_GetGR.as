package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__Unwind_GetGR() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc1_ <<= 2;
      var _loc4_:*;
      _loc1_ = int((_loc4_ = li32(_loc4_ = li32(_loc3_))) + _loc1_);
      _loc1_ = li32(_loc1_ + 8);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
