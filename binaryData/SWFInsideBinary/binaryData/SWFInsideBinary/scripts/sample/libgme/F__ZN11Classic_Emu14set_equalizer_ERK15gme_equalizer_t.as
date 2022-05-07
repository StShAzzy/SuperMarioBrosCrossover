package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Classic_Emu14set_equalizer_ERK15gme_equalizer_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 32;
      _loc1_ = li32(_loc3_);
      var _loc8_:*;
      _loc7_ = li32((_loc8_ = li32(_loc1_)) + 72);
      var _loc4_:*;
      sf64(_loc4_ = lf64(_loc8_ = li32(_loc3_ + 4)),_loc3_ - 24);
      si32(0,_loc3_ - 16);
      si32(44100,_loc3_ - 12);
      si32(0,_loc3_ - 8);
      _loc2_ -= 16;
      si32(_loc8_ = int(_loc3_ - 24),_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc7_]();
      _loc2_ += 16;
      if((_loc6_ = li32(_loc1_ + 252)) != 0)
      {
         var _loc5_:* = li32((_loc8_ = li32(_loc6_)) + 24);
         _loc2_ -= 16;
         si32(li32(_loc1_ + 152),_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
