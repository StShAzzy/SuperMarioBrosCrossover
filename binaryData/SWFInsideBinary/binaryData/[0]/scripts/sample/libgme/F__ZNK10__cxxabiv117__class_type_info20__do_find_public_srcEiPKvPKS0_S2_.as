package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK10__cxxabiv117__class_type_info20__do_find_public_srcEiPKvPKS0_S2_() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = 6;
      _loc5_ = li32(_loc3_ + 8);
      var _loc4_:* = li32(_loc3_ + 16);
      if(_loc4_ != _loc5_)
      {
         _loc1_ = 1;
      }
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
