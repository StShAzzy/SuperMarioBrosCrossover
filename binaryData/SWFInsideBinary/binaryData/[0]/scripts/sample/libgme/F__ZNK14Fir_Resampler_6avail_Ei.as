package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK14Fir_Resampler_6avail_Ei() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:int = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc13_ = li32(_loc3_ + 36);
      _loc12_ = li32(_loc4_ + 4);
      _loc13_ = (_loc11_ = _loc12_ / _loc13_) * _loc13_;
      _loc10_ = _loc12_ - _loc13_;
      _loc9_ = li32(_loc3_ + 12);
      _loc12_ = _loc11_ * _loc9_;
      _loc8_ = _loc12_ << 1;
      if(_loc10_ >= 0)
      {
         _loc12_ = li32(_loc3_ + 16);
         _loc7_ = _loc9_ - _loc12_;
         _loc6_ = li32(_loc3_ + 28);
         _loc1_ = _loc6_ >>> _loc12_;
         _loc12_ = _loc9_ * _loc11_;
         _loc8_ = _loc12_ << 1;
         _loc5_ = li32(_loc3_ + 32);
         do
         {
            _loc11_ = _loc7_ + -1;
            _loc3_ = _loc6_;
            if(_loc11_ != 0)
            {
               _loc3_ = _loc1_ >>> 1;
            }
            _loc7_ = _loc9_;
            if(_loc11_ != 0)
            {
               _loc7_ = _loc11_;
            }
            _loc12_ = _loc1_ << 1;
            _loc12_ = _loc12_ & 2;
            _loc12_ = _loc10_ - _loc12_;
            _loc10_ = _loc12_ - _loc5_;
            _loc8_ += 2;
            _loc1_ = _loc3_;
         }
         while(_loc10_ > -1);
         
      }
      eax = _loc8_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
