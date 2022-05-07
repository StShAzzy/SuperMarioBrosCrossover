package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Snes_Spc10enable_romEb() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li8(_loc1_ + 603);
      _loc5_ = li32(_loc3_ + 4);
      if(_loc6_ != _loc5_)
      {
         si8(_loc5_,_loc1_ + 603);
         _loc2_ -= 16;
         si32(64,_loc2_ + 8);
         _loc4_ = _loc1_ + 628;
         if(_loc5_ != 0)
         {
            _loc4_ = _loc1_ + 66740;
         }
         si32(_loc4_,_loc2_ + 4);
         si32(_loc6_ = int(_loc1_ + 66420),_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
