package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Sap_Emu11run_routineEj() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      si16(_loc1_,_loc6_ + 272);
      if((_loc5_ = li8(_loc6_ + 278)) == 254)
      {
         _loc5_ = 254;
         if(li8(_loc6_ + 1875) == 254)
         {
            si8(-1,_loc6_ + 278);
            _loc5_ = 255;
         }
      }
      var _loc4_:* = _loc5_ | 256;
      _loc1_ = int(_loc6_ + 1364);
      _loc4_ = int(_loc1_ + _loc4_);
      si8(-2,_loc4_);
      _loc4_ = (_loc4_ = (_loc4_ = int(_loc5_ + -1)) & 255) | 256;
      _loc4_ = int(_loc1_ + _loc4_);
      si8(-2,_loc4_);
      _loc4_ = (_loc4_ = (_loc4_ = int(_loc5_ + -2)) & 255) | 256;
      _loc1_ += _loc4_;
      si8(-2,_loc1_);
      _loc1_ = int(_loc5_ + -3);
      si8(_loc1_,_loc6_ + 278);
      _loc2_ -= 16;
      si32(2134080,_loc2_ + 4);
      _loc1_ = int(_loc6_ + 272);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN7Sap_Cpu3runEi();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
