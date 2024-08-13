package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Nes_Namco_Apu5resetEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_);
      si32(0,_loc1_ + 12);
      si32(0,_loc1_ + 8);
      si32(0,_loc1_ + 24);
      si32(0,_loc1_ + 20);
      si32(0,_loc1_ + 36);
      si32(0,_loc1_ + 32);
      si32(0,_loc1_ + 48);
      si32(0,_loc1_ + 44);
      si32(0,_loc1_ + 60);
      si32(0,_loc1_ + 56);
      si32(0,_loc1_ + 72);
      si32(0,_loc1_ + 68);
      si32(0,_loc1_ + 84);
      si32(0,_loc1_ + 80);
      _loc2_ -= 16;
      si32(140,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      _loc1_ += 92;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
