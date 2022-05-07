package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN10Nes_Square11clock_sweepEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = li8(_loc1_ + 1);
      si32(_loc8_ = int((_loc8_ = li32(_loc1_ + 36)) + -1),_loc1_ + 36);
      if(_loc8_ <= -1)
      {
         si8(1,_loc1_ + 5);
         if((_loc8_ = _loc9_ & 128) != 0)
         {
            if((_loc7_ = _loc9_ & 7) != 0)
            {
               var _loc5_:*;
               if((uint(_loc4_ = (_loc5_ = (_loc5_ = (_loc6_ = li8(_loc1_ + 3)) << 8) & 1792) | li8(_loc1_ + 2))) >= 8)
               {
                  _loc7_ = int(_loc4_ >>> _loc7_);
                  if((_loc8_ = _loc9_ & 8) != 0)
                  {
                     _loc7_ = int((_loc8_ = li32(_loc3_ + 4)) - _loc7_);
                  }
                  if((_loc4_ = int(_loc7_ + _loc4_)) <= 2047)
                  {
                     si8(_loc4_,_loc1_ + 2);
                     si8(_loc8_ = (_loc5_ = (_loc5_ = int(_loc4_ >>> 8)) & 7) | _loc6_ & 248,_loc1_ + 3);
                  }
               }
            }
         }
         addr165:
         si8(0,_loc1_ + 5);
         si32(_loc8_ = (_loc8_ = int(_loc9_ >>> 4)) & 7,_loc1_ + 36);
      }
      else if((_loc8_ = li8(_loc1_ + 5)) != 0)
      {
         §§goto(addr165);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
