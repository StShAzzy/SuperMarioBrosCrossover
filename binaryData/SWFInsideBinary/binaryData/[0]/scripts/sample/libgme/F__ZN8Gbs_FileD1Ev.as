package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN8Gbs_FileD1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = sample.libgme.__ZTV9Gme_Info_ + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc1_,_loc4_);
      _loc2_ -= 16;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN9Music_EmuD2Ev();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
