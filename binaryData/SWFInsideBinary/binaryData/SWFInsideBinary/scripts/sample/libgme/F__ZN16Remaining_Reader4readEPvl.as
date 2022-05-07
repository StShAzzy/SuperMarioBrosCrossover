package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN16Remaining_Reader4readEPvl() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc13_ = li32(_loc3_ + 4);
      _loc11_ = int((_loc12_ = li32(_loc3_ + 8)) - _loc13_);
      _loc10_ = li32(_loc4_ + 8);
      _loc9_ = li32(_loc4_ + 4);
      if(_loc12_ != _loc13_)
      {
         _loc8_ = _loc10_;
         if(_loc11_ <= _loc10_)
         {
            _loc8_ = _loc11_;
         }
         si32(_loc12_ = int(_loc13_ + _loc8_),_loc3_ + 4);
         _loc2_ -= 16;
         si32(_loc8_,_loc2_ + 8);
         si32(_loc13_,_loc2_ + 4);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         _loc11_ = _loc8_;
      }
      _loc7_ = 0;
      if(_loc11_ != _loc10_)
      {
         var _loc5_:* = li32(li32(_loc12_ = li32(_loc3_ + 12)) + 12);
         _loc2_ -= 16;
         si32(int(_loc10_ - _loc11_),_loc2_ + 8);
         var _loc6_:int;
         si32(_loc6_ = _loc9_ + _loc11_,_loc2_ + 4);
         si32(_loc12_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
         _loc7_ = eax;
      }
      eax = _loc7_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
