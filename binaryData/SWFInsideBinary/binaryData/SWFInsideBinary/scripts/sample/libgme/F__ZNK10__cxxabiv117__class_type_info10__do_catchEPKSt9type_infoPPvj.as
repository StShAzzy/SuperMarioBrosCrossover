package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv117__class_type_info10__do_catchEPKSt9type_infoPPvj() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc1_ + 4);
      _loc6_ = li32((_loc7_ = li32(_loc3_)) + 4);
      _loc5_ = 1;
      if(_loc6_ != _loc8_)
      {
         _loc5_ = 0;
         if(uint(li32(_loc3_ + 12)) <= 3)
         {
            var _loc4_:* = li32((_loc8_ = li32(_loc1_)) + 20);
            _loc2_ -= 16;
            si32(li32(_loc3_ + 8),_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc4_]();
            _loc2_ += 16;
            _loc5_ = eax;
         }
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
