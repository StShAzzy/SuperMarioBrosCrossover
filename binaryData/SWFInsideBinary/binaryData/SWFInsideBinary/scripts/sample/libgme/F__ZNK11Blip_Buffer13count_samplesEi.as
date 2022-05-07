package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK11Blip_Buffer13count_samplesEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_);
      _loc4_ = li32(_loc3_ + 4);
      _loc5_ *= _loc4_;
      _loc1_ = li32(_loc1_ + 4);
      _loc5_ = int((_loc5_ += _loc1_) >>> 16);
      _loc1_ >>>= 16;
      _loc1_ = int(_loc5_ - _loc1_);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
