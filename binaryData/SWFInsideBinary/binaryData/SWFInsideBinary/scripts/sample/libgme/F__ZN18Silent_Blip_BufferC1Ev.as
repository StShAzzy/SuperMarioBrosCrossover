package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN18Silent_Blip_BufferC1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 4);
      si32(0,_loc1_ + 24);
      si32(0,_loc1_ + 16);
      si32(0,_loc1_ + 20);
      si32(0,_loc1_ + 28);
      si32(16,_loc1_ + 32);
      si32(0,_loc1_ + 36);
      si32(0,_loc1_);
      si32(_loc4_ = _loc1_ + 44,_loc1_ + 8);
      si32(1,_loc1_ + 12);
      _loc2_ -= 16;
      si32(76,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
