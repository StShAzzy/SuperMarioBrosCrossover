package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK9Music_Emu15msec_to_samplesEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = _loc1_ / 1000;
      _loc5_ = int((_loc4_ = li32((_loc5_ = li32(_loc3_)) + 192)) * _loc6_);
      _loc1_ = int((_loc6_ *= -1000) + _loc1_);
      _loc1_ *= _loc4_;
      _loc1_ /= 1000;
      eax = _loc5_ = (_loc5_ += _loc1_) << 1;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
