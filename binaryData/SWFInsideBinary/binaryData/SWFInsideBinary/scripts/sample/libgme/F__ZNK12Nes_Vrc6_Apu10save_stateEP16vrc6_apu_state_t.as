package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZNK12Nes_Vrc6_Apu10save_stateEP16vrc6_apu_state_t() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_ + 68);
      _loc4_ = li32(_loc3_ + 4);
      si8(_loc5_,_loc4_ + 9);
      si8(_loc5_ = li8(_loc1_),_loc4_);
      si8(_loc5_ = li8(_loc1_ + 1),_loc4_ + 1);
      si8(_loc5_ = li8(_loc1_ + 2),_loc4_ + 2);
      si16(_loc5_ = li32(_loc1_ + 8),_loc4_ + 10);
      si8(_loc5_ = li32(_loc1_ + 16),_loc4_ + 16);
      si8(_loc5_ = li8(_loc1_ + 24),_loc4_ + 3);
      si8(_loc5_ = li8(_loc1_ + 25),_loc4_ + 4);
      si8(_loc5_ = li8(_loc1_ + 26),_loc4_ + 5);
      si16(_loc5_ = li32(_loc1_ + 32),_loc4_ + 12);
      si8(_loc5_ = li32(_loc1_ + 40),_loc4_ + 17);
      si8(_loc5_ = li8(_loc1_ + 48),_loc4_ + 6);
      si8(_loc5_ = li8(_loc1_ + 49),_loc4_ + 7);
      si8(_loc5_ = li8(_loc1_ + 50),_loc4_ + 8);
      si16(_loc5_ = li32(_loc1_ + 56),_loc4_ + 14);
      _loc1_ = li32(_loc1_ + 64);
      si8(_loc1_,_loc4_ + 18);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
