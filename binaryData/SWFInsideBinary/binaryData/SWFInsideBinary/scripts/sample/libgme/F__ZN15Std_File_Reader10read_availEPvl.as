package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN15Std_File_Reader10read_availEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc1_ = li32(_loc1_ + 4);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 12);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 8);
      si32(1,_loc2_ + 4);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F_fread();
      _loc2_ += 16;
      _loc1_ = int(eax);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
