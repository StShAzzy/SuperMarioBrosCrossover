package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Classic_Emu12setup_bufferEl() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc3_);
      si32(_loc1_,_loc10_ + 260);
      var _loc8_:*;
      _loc7_ = li32((_loc8_ = li32(_loc9_ = li32(_loc10_ + 252))) + 20);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc7_]();
      _loc2_ += 16;
      _loc1_ = li32(_loc10_ + 252);
      _loc6_ = li32((_loc9_ = li32(_loc1_)) + 8);
      _loc9_ = li32(_loc10_ + 168);
      _loc2_ -= 16;
      si32(_loc9_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc6_]();
      _loc2_ += 16;
      if((_loc5_ = eax) == 0)
      {
         var _loc4_:* = li32(li32(_loc10_) + 44);
         _loc2_ -= 16;
         si32(int(_loc10_ + 144),_loc2_ + 4);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
         si32(li32(li32(_loc10_ + 252) + 4),_loc10_ + 264);
         _loc5_ = 0;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
