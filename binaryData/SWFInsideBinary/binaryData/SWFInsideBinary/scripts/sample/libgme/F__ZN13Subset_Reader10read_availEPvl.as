package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Subset_Reader10read_availEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = li32(_loc1_ + 8);
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = _loc9_;
      if(_loc9_ >= _loc8_)
      {
         _loc7_ = _loc8_;
      }
      var _loc6_:*;
      si32(_loc6_ = int(_loc9_ - _loc7_),_loc1_ + 8);
      var _loc5_:*;
      var _loc4_:* = li32((_loc5_ = li32(_loc6_ = li32(_loc1_ + 4))) + 8);
      _loc2_ -= 16;
      si32(_loc7_,_loc2_ + 8);
      si32(_loc5_ = li32(_loc3_ + 4),_loc2_ + 4);
      si32(_loc6_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc4_]();
      _loc2_ += 16;
      eax = _loc6_ = int(eax);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
