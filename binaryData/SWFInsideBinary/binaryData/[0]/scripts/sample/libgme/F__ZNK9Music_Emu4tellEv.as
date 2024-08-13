package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK9Music_Emu4tellEv() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 200);
      _loc1_ = li32(_loc1_ + 192);
      _loc5_ = _loc1_ << 1;
      _loc1_ = _loc6_ / _loc5_;
      _loc4_ = _loc1_ * _loc5_;
      _loc6_ -= _loc4_;
      _loc6_ = (_loc6_ = _loc6_ -= _loc4_ * 1000) / _loc5_;
      _loc1_ *= 1000;
      _loc1_ += _loc6_;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
