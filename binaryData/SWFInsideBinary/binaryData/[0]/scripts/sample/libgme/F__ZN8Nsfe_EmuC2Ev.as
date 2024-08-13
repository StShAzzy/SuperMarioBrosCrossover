package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Nsfe_EmuC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN7Nsf_EmuC2Ev();
      _loc2_ += 16;
      var _loc4_:int = sample.libgme.__ZTV8Nsfe_Emu + 8;
      si32(_loc4_,_loc1_);
      si8(0,_loc1_ + 16948);
      si32(0,_loc1_ + 16940);
      si32(0,_loc1_ + 16936);
      si32(0,_loc1_ + 16932);
      si32(0,_loc1_ + 16928);
      si32(0,_loc1_ + 16924);
      si32(0,_loc1_ + 16920);
      si32(0,_loc1_ + 16916);
      si32(0,_loc1_ + 16912);
      si8(0,_loc1_ + 16952);
      si32(sample.libgme._gme_nsfe_type,_loc1_ + 4);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
