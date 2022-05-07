package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__Unwind_GetCFA() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_);
      _loc4_ = 0;
      if(_loc5_ != 0)
      {
         _loc4_ = li32(_loc5_ + 40);
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
