package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN15Mem_File_ReaderC1EPKvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = sample.libgme.__ZTV15Mem_File_Reader + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc4_ + 4);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc4_ + 8);
      si32(0,_loc4_ + 12);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
