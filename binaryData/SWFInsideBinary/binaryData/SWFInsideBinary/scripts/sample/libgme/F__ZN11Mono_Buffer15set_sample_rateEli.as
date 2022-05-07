package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Mono_Buffer15set_sample_rateEli() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 8);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = int((_loc6_ = li32(_loc3_)) + 20);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Buffer15set_sample_rateEli();
      _loc2_ += 16;
      if((_loc5_ = eax) == 0)
      {
         si32(li32(_loc6_ + 44),_loc6_ + 8);
         si32(li32(_loc6_ + 56),_loc6_ + 12);
         _loc5_ = 0;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
