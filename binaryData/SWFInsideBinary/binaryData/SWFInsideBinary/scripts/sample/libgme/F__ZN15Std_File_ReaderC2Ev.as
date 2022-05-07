package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN15Std_File_ReaderC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __ZTV15Std_File_Reader + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      si32(0,_loc4_ + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
