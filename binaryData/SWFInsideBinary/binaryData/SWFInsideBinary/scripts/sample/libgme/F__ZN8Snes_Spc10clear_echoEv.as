package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN8Snes_Spc10clear_echoEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc8_:*;
      if((_loc8_ = (_loc8_ = li8(_loc1_ + 196)) & 32) == 0)
      {
         _loc2_ -= 16;
         si32(255,_loc2_ + 4);
         _loc6_ = li8(_loc1_ + 213) << 11;
         _loc5_ = li8(_loc1_ + 197) << 8;
         _loc4_ = 65536 - _loc5_;
         if(uint(_loc6_) >= uint(_loc4_))
         {
            _loc6_ = _loc4_;
         }
         si32(_loc6_,_loc2_ + 8);
         si32(_loc8_ = int((_loc8_ = int(_loc1_ + _loc5_)) + 948),_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
