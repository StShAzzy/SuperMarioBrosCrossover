package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv120__si_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc1_ + 4);
      _loc8_ = li32((_loc9_ = li32(_loc3_)) + 4);
      _loc7_ = li32(_loc3_ + 12);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc8_ == _loc10_)
      {
         si32(_loc6_,_loc7_);
         si32(8,_loc7_ + 12);
         si32(6,_loc7_ + 4);
         _loc5_ = 1;
      }
      else
      {
         var _loc4_:* = li32((_loc10_ = li32(_loc8_ = li32(_loc9_ + 8))) + 24);
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 12);
         si32(_loc6_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
         _loc5_ = eax;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
