package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___divdi3() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = int(_loc3_ + 8);
      _loc1_ |= 4;
      _loc10_ = (_loc11_ = li32(_loc1_)) >> 31;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = _loc10_ ^ _loc1_;
      _loc9_ = int(_loc1_ - _loc10_);
      _loc2_ -= 32;
      si32(_loc9_,_loc2_ + 8);
      _loc7_ = (_loc8_ = li32(_loc9_ = (_loc9_ = _loc3_) | 4)) >> 31;
      _loc9_ = li32(_loc3_);
      si32(_loc9_ = int((_loc6_ = _loc7_ ^ _loc9_) - _loc7_),_loc2_);
      si32(0,_loc2_ + 16);
      _loc4_ = _loc5_ = 1;
      if(uint(_loc1_) >= uint(_loc10_))
      {
         _loc4_ = 0;
      }
      _loc1_ = _loc10_ ^ _loc11_;
      _loc1_ -= _loc10_;
      _loc1_ -= _loc4_;
      si32(_loc1_,_loc2_ + 12);
      _loc4_ = _loc5_;
      if(uint(_loc6_) >= uint(_loc7_))
      {
         _loc4_ = 0;
      }
      _loc1_ = _loc7_ ^ _loc8_;
      _loc1_ -= _loc7_;
      _loc1_ -= _loc4_;
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = _loc11_ ^ _loc8_;
      _loc6_ = _loc1_ >> 31;
      ESP = _loc2_;
      F___udivmoddi4();
      _loc2_ += 32;
      _loc1_ = int(eax);
      _loc7_ = int(edx);
      if((uint(_loc8_ = _loc1_ ^ _loc6_)) >= uint(_loc6_))
      {
         _loc5_ = 0;
      }
      _loc1_ = _loc7_ ^ _loc6_;
      _loc1_ -= _loc6_;
      _loc9_ = int(_loc1_ - _loc5_);
      _loc1_ = int(_loc8_ - _loc6_);
      eax = _loc1_;
      edx = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
