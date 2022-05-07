package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer7channelEii() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         var _loc6_:*;
         if((_loc5_ = int((_loc6_ = li32(_loc3_ + 8)) % 5)) >= 3)
         {
            _loc5_ = 2;
         }
      }
      else
      {
         _loc5_ = 2;
         if((_loc1_ & 512) == 0)
         {
            _loc5_ = 2;
            if(int((uint(_loc6_ = _loc1_ & 255)) % 3) != 0)
            {
               _loc5_ = _loc1_ & 1;
            }
         }
      }
      _loc6_ = int(_loc5_ * 12);
      var _loc4_:*;
      si32(_loc4_ = li32((_loc6_ = int(_loc8_ + _loc6_)) + 328),_loc7_);
      si32(_loc4_ = li32(_loc6_ + 332),_loc7_ + 4);
      si32(_loc6_ = li32(_loc6_ + 336),_loc7_ + 8);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
