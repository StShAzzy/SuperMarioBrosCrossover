package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Classic_Emu17change_clock_rateEl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      si32(_loc1_,_loc6_ + 260);
      var _loc5_:*;
      _loc4_ = li32((_loc5_ = li32(_loc6_ = li32(_loc6_ + 252))) + 20);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc6_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc4_]();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
