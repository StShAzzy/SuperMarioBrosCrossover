package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK13Stereo_Buffer13samples_availEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc1_ = li32(_loc1_ + 24);
      _loc1_ >>>= 15;
      _loc1_ &= 131070;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
