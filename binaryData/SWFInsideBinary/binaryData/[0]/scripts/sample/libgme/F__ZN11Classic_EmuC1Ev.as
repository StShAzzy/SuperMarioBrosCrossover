package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Classic_EmuC1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN9Music_EmuC2Ev();
      _loc2_ += 16;
      var _loc4_:int = sample.libgme.__ZTV11Classic_Emu + 8;
      si32(_loc4_,_loc1_);
      si32(0,_loc1_ + 252);
      si32(0,_loc1_ + 256);
      si32(0,_loc1_ + 268);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
