package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Gbs_Emu7cpu_jsrEj() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_ + 280);
      _loc1_ = li16(_loc4_ + 284);
      _loc1_ += -1;
      si16(_loc1_,_loc4_ + 284);
      _loc2_ -= 16;
      si32(240,_loc2_ + 8);
      _loc1_ &= 65535;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN7Gbs_Emu9cpu_writeEji();
      _loc2_ += 16;
      _loc1_ = li16(_loc4_ + 284);
      _loc1_ += -1;
      si16(_loc1_,_loc4_ + 284);
      _loc2_ -= 16;
      si32(13,_loc2_ + 8);
      _loc1_ &= 65535;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN7Gbs_Emu9cpu_writeEji();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
