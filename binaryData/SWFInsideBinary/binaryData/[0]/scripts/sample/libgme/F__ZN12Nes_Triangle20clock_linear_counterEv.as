package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN12Nes_Triangle20clock_linear_counterEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc5_:* = li8(_loc1_ + 7);
      if(_loc5_ != 0)
      {
         _loc5_ = li8(_loc1_);
         si32(_loc5_ = _loc5_ & 0x7F,_loc1_ + 28);
      }
      else
      {
         _loc4_ = li32(_loc1_ + 28);
         if(_loc4_ != 0)
         {
            _loc5_ = _loc4_ + -1;
            si32(_loc5_,_loc1_ + 28);
         }
      }
      _loc5_ = si8(li8(_loc1_));
      if(_loc5_ >= 0)
      {
         si8(0,_loc1_ + 7);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
