package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv117__class_type_info11__do_upcastEPKS0_PKvRNS0_15__upcast_resultE() : void
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
      _loc4_ = 0;
      if(_loc5_ == _loc1_)
      {
         _loc5_ = li32(_loc3_ + 12);
         si32(li32(_loc3_ + 8),_loc5_);
         si32(8,_loc5_ + 12);
         si32(6,_loc5_ + 4);
         _loc4_ = 1;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
