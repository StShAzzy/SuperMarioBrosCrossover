package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Osc5resetEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 28);
      si32(0,_loc1_ + 32);
      si32(0,_loc1_ + 40);
      si32(3,_loc1_ + 20);
      var _loc4_:*;
      si32(_loc4_ = li32(_loc1_ + 12),_loc1_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
