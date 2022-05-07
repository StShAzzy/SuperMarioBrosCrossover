package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK7Nes_Dmc11count_readsEiPi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:int = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc12_ = li32(_loc3_ + 4);
      if(_loc1_ != 0)
      {
         si32(_loc12_,_loc1_);
      }
      _loc10_ = li32((_loc11_ = li32(_loc3_)) + 12);
      _loc9_ = 0;
      if(_loc10_ != 0)
      {
         _loc8_ = li32(_loc11_ + 28);
         var _loc6_:*;
         var _loc5_:*;
         var _loc7_:*;
         _loc4_ = (_loc6_ = int(li32(_loc11_ + 16) + li32((_loc5_ = li32(_loc11_ + 68)) + 1948))) + int((_loc7_ = int((_loc7_ = li32(_loc11_ + 36)) + -1)) * _loc8_);
         _loc12_ -= _loc4_;
         _loc9_ = 0;
         if(_loc12_ >= 1)
         {
            _loc11_ = _loc9_ = 1;
            if(((_loc7_ = li8(_loc11_)) & 64) != 0)
            {
               _loc11_ = 0;
            }
            _loc6_ = _loc8_ << 3;
            _loc12_ = int((_loc7_ = int((_loc7_ = int(_loc12_ + -1)) / _loc6_)) + 1);
            if(_loc10_ >= _loc12_)
            {
               _loc9_ = 0;
            }
            if((_loc7_ = _loc11_ & _loc9_) == 0)
            {
               _loc10_ = _loc12_;
            }
            _loc9_ = _loc10_;
            if(_loc1_ != 0)
            {
               si32(_loc7_ = int((_loc7_ = int(_loc4_ + int((_loc7_ = int((_loc7_ = _loc10_ << 3) + -8)) * _loc8_))) + 1),_loc1_);
               _loc9_ = _loc10_;
            }
         }
      }
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
