package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN12Nes_Vrc6_Apu10load_stateERK16vrc6_apu_state_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 72);
      si8(0,_loc1_ + 2);
      si16(0,_loc1_);
      si32(0,_loc1_ + 8);
      si32(0,_loc1_ + 12);
      si32(_loc7_ = 1,_loc1_ + 16);
      si32(0,_loc1_ + 32);
      si32(0,_loc1_ + 36);
      si8(0,_loc1_ + 26);
      si16(0,_loc1_ + 24);
      si32(0,_loc1_ + 20);
      si32(_loc7_,_loc1_ + 40);
      si32(0,_loc1_ + 56);
      si32(0,_loc1_ + 60);
      si8(0,_loc1_ + 50);
      si16(0,_loc1_ + 48);
      si32(0,_loc1_ + 44);
      si32(_loc7_,_loc1_ + 64);
      si32(0,_loc1_ + 68);
      var _loc5_:*;
      si32(_loc5_ = li8((_loc6_ = li32(_loc3_ + 4)) + 9),_loc1_ + 68);
      si8(_loc5_ = li8(_loc6_),_loc1_);
      si8(_loc5_ = li8(_loc6_ + 1),_loc1_ + 1);
      si8(_loc5_ = li8(_loc6_ + 2),_loc1_ + 2);
      si32(_loc5_ = li16(_loc6_ + 10),_loc1_ + 8);
      si32(_loc5_ = li8(_loc6_ + 16),_loc1_ + 16);
      si8(_loc5_ = li8(_loc6_ + 3),_loc1_ + 24);
      si8(_loc5_ = li8(_loc6_ + 4),_loc1_ + 25);
      si8(_loc5_ = li8(_loc6_ + 5),_loc1_ + 26);
      si32(_loc5_ = li16(_loc6_ + 12),_loc1_ + 32);
      si32(_loc5_ = li8(_loc6_ + 17),_loc1_ + 40);
      si8(_loc5_ = li8(_loc6_ + 6),_loc1_ + 48);
      si8(_loc5_ = li8(_loc6_ + 7),_loc1_ + 49);
      si8(_loc5_ = li8(_loc6_ + 8),_loc1_ + 50);
      si32(_loc5_ = li16(_loc6_ + 14),_loc1_ + 56);
      if((_loc4_ = li8(_loc6_ + 18)) != 0)
      {
         _loc7_ = _loc4_;
      }
      si32(_loc7_,_loc1_ + 64);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
