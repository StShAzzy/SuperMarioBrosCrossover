package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Nsfe_Emu15clear_playlist_Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si8(1,_loc1_ + 16948);
      _loc4_ = li32(_loc1_ + 16944);
      si8(_loc4_,_loc1_ + 15766);
      _loc4_ &= 255;
      si32(_loc4_ &= 255,_loc1_ + 12);
      si32(_loc4_,_loc1_ + 8);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
