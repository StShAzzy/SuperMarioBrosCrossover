package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN16Remaining_Reader10read_firstEPvl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 4);
      _loc7_ = li32(_loc1_ + 8);
      _loc6_ = _loc7_ - _loc8_;
      if(_loc7_ != _loc8_)
      {
         _loc5_ = li32(_loc3_ + 8);
         if(_loc6_ <= _loc5_)
         {
            _loc5_ = _loc6_;
         }
         _loc7_ = li32(_loc3_ + 4);
         var _loc4_:int = _loc8_ + _loc5_;
         si32(_loc4_,_loc1_ + 4);
         _loc2_ -= 16;
         si32(_loc5_,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         _loc6_ = _loc5_;
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
