package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNKSt9type_info10__do_catchEPKS_PPvj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc1_ = li32(_loc1_ + 4);
      _loc5_ = li32(_loc3_);
      _loc5_ = li32(_loc5_ + 4);
      _loc4_ = 1;
      if(_loc5_ != _loc1_)
      {
         _loc4_ = 0;
      }
      _loc1_ = _loc4_ & 1;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
