package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Nsfe_Info16disable_playlistEb() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc5_ = li32(_loc3_);
      si8(_loc1_,_loc5_ + 1188);
      si8(_loc4_ = li8(_loc5_ + 1172),_loc5_ + 6);
      if(_loc4_ != 0)
      {
         if(_loc1_ != 0)
         {
            addr47:
            si8(_loc4_ = li32(_loc5_ + 1184),_loc5_ + 6);
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr47);
   }
}
