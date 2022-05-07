package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nes_Dmc10recalc_irqEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li8(_loc1_ + 56);
      _loc11_ = 1073741824;
      if(_loc12_ != 0)
      {
         _loc10_ = li32(_loc1_ + 12);
         _loc11_ = 1073741824;
         if(_loc10_ != 0)
         {
            var _loc9_:*;
            var _loc8_:*;
            _loc11_ = (_loc12_ = int(int((_loc9_ = li32((_loc9_ = li32(_loc1_ + 68)) + 1948)) + li32(_loc1_ + 16)) + int((int((_loc9_ = int((_loc8_ = _loc10_ << 3) + li32(_loc1_ + 36))) + -9)) * li32(_loc1_ + 28)))) + 1;
         }
      }
      if((_loc12_ = li32(_loc1_ + 52)) != _loc11_)
      {
         si32(_loc11_,_loc1_ + 52);
         _loc6_ = 0;
         if(((_loc12_ = (_loc9_ = li8(_loc7_ + 1980)) | li8((_loc7_ = li32(_loc1_ + 68)) + 1361)) & 255) == 0)
         {
            _loc6_ = li32(_loc7_ + 1356);
            if((_loc5_ = li32(_loc7_ + 1956)) < _loc6_)
            {
               _loc6_ = _loc5_;
            }
         }
         if((_loc12_ = li32(_loc7_ + 1952)) != _loc6_)
         {
            si32(_loc6_,_loc7_ + 1952);
            if((_loc4_ = li32(_loc7_ + 1984)) != 0)
            {
               _loc2_ -= 16;
               si32(li32(_loc7_ + 1988),_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc4_]();
               _loc2_ += 16;
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
