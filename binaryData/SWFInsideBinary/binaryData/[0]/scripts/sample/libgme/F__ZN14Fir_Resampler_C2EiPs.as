package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Fir_Resampler_C2EiPs() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_);
      si32(0,_loc1_ + 4);
      _loc4_ = li32(_loc3_ + 4);
      si32(_loc4_,_loc1_ + 20);
      _loc4_ <<= 1;
      si32(_loc4_ = _loc4_ <<= 1 + -2,_loc1_ + 24);
      _loc4_ = li32(_loc3_ + 8);
      si32(_loc4_,_loc1_ + 48);
      si32(0,_loc1_ + 8);
      si32(1,_loc1_ + 12);
      si32(0,_loc1_ + 16);
      si32(0,_loc1_ + 28);
      si32(2,_loc1_ + 32);
      si32(1072693248,_loc1_ + 44);
      si32(0,_loc1_ + 40);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
