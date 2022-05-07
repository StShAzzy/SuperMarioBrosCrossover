package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN16Remaining_Reader10read_availEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 4);
      _loc10_ = int((_loc11_ = li32(_loc1_ + 8)) - _loc12_);
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      if(_loc11_ != _loc12_)
      {
         _loc7_ = _loc9_;
         if(_loc10_ <= _loc9_)
         {
            _loc7_ = _loc10_;
         }
         si32(_loc11_ = int(_loc12_ + _loc7_),_loc1_ + 4);
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 8);
         si32(_loc12_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         _loc10_ = _loc7_;
      }
      _loc6_ = _loc9_ - _loc10_;
      if(_loc10_ != _loc9_)
      {
         var _loc5_:*;
         var _loc4_:* = li32((_loc5_ = li32(_loc11_ = li32(_loc1_ + 12))) + 8);
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 8);
         si32(_loc5_ = int(_loc8_ + _loc10_),_loc2_ + 4);
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
         if((_loc6_ = eax) >= 1)
         {
            addr176:
            _loc6_ += _loc10_;
         }
         eax = _loc6_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr176);
   }
}
