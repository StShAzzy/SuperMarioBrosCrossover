package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN7Nsf_Emu8pcm_readEPvj() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_ + 2328);
      _loc1_ = li32(_loc3_ + 4);
      _loc4_ = _loc1_ & -2048;
      _loc4_ = _loc4_ >>> 9;
      _loc5_ += _loc4_;
      _loc5_ = li32(_loc5_ += _loc4_);
      _loc1_ &= 2047;
      _loc1_ = _loc5_ + _loc1_;
      _loc1_ = li8(_loc1_);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
