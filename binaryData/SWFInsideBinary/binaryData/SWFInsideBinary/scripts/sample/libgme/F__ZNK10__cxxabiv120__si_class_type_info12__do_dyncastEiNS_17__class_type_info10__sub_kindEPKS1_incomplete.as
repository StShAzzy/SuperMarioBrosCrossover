package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv120__si_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc16_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc16_ = li32(_loc3_ + 4);
      _loc14_ = li32((_loc15_ = li32(_loc4_ + 12)) + 4);
      _loc13_ = li32(_loc4_ + 28);
      _loc12_ = li32(_loc4_ + 24);
      _loc11_ = li32(_loc4_ + 16);
      _loc10_ = li32(_loc4_ + 8);
      _loc9_ = li32(_loc4_ + 4);
      if(_loc16_ == _loc14_)
      {
         si32(_loc11_,_loc13_);
         si32(_loc10_,_loc13_ + 4);
         if(_loc9_ >= 0)
         {
            _loc1_ = 6;
            if(int(_loc11_ + _loc9_) != _loc12_)
            {
               _loc1_ = 1;
            }
            si32(_loc1_,_loc13_ + 12);
            _loc5_ = 0;
         }
         else
         {
            _loc5_ = 0;
            if(_loc9_ == -2)
            {
               si32(1,_loc13_ + 12);
               _loc5_ = 0;
            }
         }
      }
      else
      {
         _loc6_ = li32(_loc4_ + 20);
         if(_loc11_ == _loc12_)
         {
            if(_loc16_ == li32(_loc6_ + 4))
            {
               si32(_loc10_,_loc13_ + 8);
               _loc5_ = 0;
            }
            §§goto(addr230);
         }
         var _loc7_:*;
         var _loc8_:* = li32((_loc7_ = li32(_loc14_ = li32(_loc3_ + 8))) + 28);
         _loc2_ -= 32;
         si32(_loc13_,_loc2_ + 28);
         si32(_loc12_,_loc2_ + 24);
         si32(_loc6_,_loc2_ + 20);
         si32(_loc11_,_loc2_ + 16);
         si32(_loc15_,_loc2_ + 12);
         si32(_loc10_,_loc2_ + 8);
         si32(_loc9_,_loc2_ + 4);
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc8_]();
         _loc2_ += 32;
         _loc5_ = eax;
      }
      addr230:
      eax = _loc5_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
