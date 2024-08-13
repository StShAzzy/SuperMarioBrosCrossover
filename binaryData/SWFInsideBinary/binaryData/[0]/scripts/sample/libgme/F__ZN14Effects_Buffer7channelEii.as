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
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc1_ == 0)
      {
         var _loc6_:* = li32(_loc3_ + 8);
         if((_loc5_ = _loc6_ % 5) >= 3)
         {
            _loc5_ = 2;
         }
      }
      else
      {
         _loc5_ = 2;
         if((_loc1_ & 0x0200) == 0)
         {
            _loc5_ = 2;
            _loc6_ = _loc1_ & 0xFF;
            if(int((uint(_loc6_)) % 3) != 0)
            {
               _loc5_ = _loc1_ & 1;
            }
         }
      }
      _loc6_ = _loc5_ * 12;
      _loc6_ = _loc8_ + _loc6_;
      var _loc4_:*;
      si32(_loc4_ = li32(_loc6_ + 328),_loc7_);
      _loc4_ = li32(_loc6_ + 332);
      si32(_loc4_,_loc7_ + 4);
      _loc6_ = li32(_loc6_ + 336);
      si32(_loc6_,_loc7_ + 8);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
