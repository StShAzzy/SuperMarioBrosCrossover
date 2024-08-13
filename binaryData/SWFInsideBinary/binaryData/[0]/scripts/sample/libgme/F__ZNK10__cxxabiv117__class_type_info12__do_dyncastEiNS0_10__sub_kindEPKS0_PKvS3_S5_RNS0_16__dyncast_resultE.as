package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv117__class_type_info12__do_dyncastEiNS0_10__sub_kindEPKS0_PKvS3_S5_RNS0_16__dyncast_resultE() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li32(_loc1_ + 4);
      _loc6_ = li32(_loc3_ + 28);
      _loc5_ = li32(_loc3_ + 16);
      _loc4_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc3_ + 24);
      if(_loc5_ == _loc1_)
      {
         if(_loc7_ != li32(li32(_loc3_ + 20) + 4))
         {
            addr63:
            _loc1_ = li32(_loc3_ + 12);
            _loc1_ = li32(_loc1_ + 4);
            if(_loc7_ == _loc1_)
            {
               si32(_loc5_,_loc6_);
               si32(_loc4_,_loc6_ + 4);
               si32(1,_loc6_ + 12);
            }
         }
         else
         {
            si32(_loc4_,_loc6_ + 8);
         }
         eax = 0;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr63);
   }
}
