package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Music_Emu18end_track_if_errorEPKc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      if(_loc1_ != 0)
      {
         var _loc4_:* = li32(_loc3_);
         si8(1,_loc4_ + 208);
         si32(_loc1_,_loc4_ + 16);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
