package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nes_Apu5resetEbi() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = NaN;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc3_);
      si8(_loc1_,_loc10_ + 1362);
      _loc9_ = 7458;
      if(_loc1_ != 0)
      {
         _loc9_ = 8314;
      }
      if((_loc6_ = lf64(_loc10_ + 1936)) != 1)
      {
         var _loc4_:Number;
         _loc9_ = (int(_loc4_ = (_loc4_ = _loc9_) / _loc6_)) & -2;
      }
      _loc8_ = li32(_loc3_ + 8);
      si32(_loc9_,_loc10_ + 1960);
      si32(0,_loc10_ + 56);
      si32(0,_loc10_ + 44);
      si32(0,_loc10_ + 48);
      si32(0,_loc10_ + 36);
      si32(0,_loc10_ + 40);
      si32(0,_loc10_ + 100);
      si32(0,_loc10_ + 88);
      si32(0,_loc10_ + 92);
      si32(0,_loc10_ + 80);
      si32(0,_loc10_ + 84);
      si32(0,_loc10_ + 740);
      si32(1,_loc10_ + 736);
      si32(0,_loc10_ + 728);
      si32(0,_loc10_ + 732);
      si32(_loc7_ = 16384,_loc10_ + 144);
      si32(0,_loc10_ + 136);
      si32(0,_loc10_ + 140);
      si32(0,_loc10_ + 128);
      si32(0,_loc10_ + 132);
      si32(0,_loc10_ + 1328);
      si32(0,_loc10_ + 1352);
      si32(0,_loc10_ + 1336);
      si32(1,_loc10_ + 1340);
      si32(0,_loc10_ + 1344);
      si8(0,_loc10_ + 1348);
      si8(1,_loc10_ + 1349);
      si32(1073741824,_loc10_ + 1356);
      si8(0,_loc10_ + 1361);
      si8(0,_loc10_ + 1360);
      si32(0,_loc10_ + 1320);
      si32(0,_loc10_ + 1324);
      si32(428,_loc10_ + 1332);
      si32(0,_loc10_ + 1944);
      si32(0,_loc10_ + 1948);
      si32(0,_loc10_ + 1972);
      si8(0,_loc10_ + 1980);
      si32(1073741824,_loc10_ + 1952);
      si32(1,_loc10_ + 1964);
      _loc2_ -= 16;
      si32(0,_loc2_ + 12);
      si32(16407,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F__ZN7Nes_Apu14write_registerEiji();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(0,_loc2_ + 12);
      si32(16405,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F__ZN7Nes_Apu14write_registerEiji();
      _loc2_ += 16;
      do
      {
         _loc2_ -= 16;
         si32(_loc10_,_loc2_);
         si32(0,_loc2_ + 4);
         si32(_loc7_,_loc2_ + 8);
         _loc1_ = _loc7_ & 3;
         _loc5_ = 16;
         if(_loc1_ != 0)
         {
            _loc5_ = 0;
         }
         si32(_loc5_,_loc2_ + 12);
         ESP = _loc2_;
         F__ZN7Nes_Apu14write_registerEiji();
         _loc2_ += 16;
      }
      while((_loc7_ += 1) != 16404);
      
      si32(_loc8_,_loc10_ + 1352);
      if(li8(_loc10_ + 1363) == 0)
      {
         si32(15,_loc10_ + 732);
         si32(_loc8_,_loc10_ + 1324);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
