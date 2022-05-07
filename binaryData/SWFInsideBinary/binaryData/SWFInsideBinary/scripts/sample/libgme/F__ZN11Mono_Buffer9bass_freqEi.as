package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Mono_Buffer9bass_freqEi() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      si32(_loc1_,_loc8_ + 52);
      _loc7_ = 31;
      if(_loc1_ >= 1)
      {
         var _loc5_:*;
         _loc4_ = int((_loc5_ = _loc1_ << 16) / li32(_loc8_ + 44));
         _loc1_ = 13;
         do
         {
            _loc4_ >>= 1;
            _loc7_ = _loc1_;
            if(_loc4_ == 0)
            {
               break;
            }
            _loc1_ += -1;
            _loc7_ = 0;
         }
         while(_loc1_ != 0);
         
      }
      si32(_loc7_,_loc8_ + 40);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
