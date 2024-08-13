package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN16Remaining_ReaderC2EPKvlP11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = sample.libgme.__ZTV16Remaining_Reader + 8;
      _loc5_ = li32(_loc3_);
      si32(_loc1_,_loc5_);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc5_ + 4);
      _loc4_ = li32(_loc3_ + 8);
      _loc1_ += _loc4_;
      si32(_loc1_,_loc5_ + 8);
      _loc1_ = li32(_loc3_ + 12);
      si32(_loc1_,_loc5_ + 12);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
