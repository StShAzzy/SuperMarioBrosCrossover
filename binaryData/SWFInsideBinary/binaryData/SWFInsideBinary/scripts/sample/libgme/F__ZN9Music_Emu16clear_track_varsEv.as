package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Music_Emu16clear_track_varsEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(-1,_loc1_ + 196);
      si32(0,_loc1_ + 200);
      si32(0,_loc1_ + 204);
      si8(1,_loc1_ + 208);
      si8(1,_loc1_ + 209);
      si32(1073741824,_loc1_ + 212);
      si32(1,_loc1_ + 216);
      si32(0,_loc1_ + 228);
      si32(0,_loc1_ + 232);
      si32(0,_loc1_ + 236);
      si32(0,_loc1_ + 16);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
