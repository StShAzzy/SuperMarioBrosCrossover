package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN8Snes_Spc10load_stateERKN7Spc_Cpu11registers_tEPKvS5_() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc4_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc11_ = li32(_loc1_);
      _loc10_ = li32(_loc3_);
      si32(_loc11_,_loc10_ + 608);
      si8(_loc11_ = li8(_loc1_ + 4),_loc10_ + 612);
      si8(_loc11_ = li8(_loc1_ + 5),_loc10_ + 613);
      si8(_loc11_ = li8(_loc1_ + 6),_loc10_ + 614);
      si8(_loc11_ = li8(_loc1_ + 7),_loc10_ + 615);
      _loc1_ = li8(_loc1_ + 8);
      si8(_loc1_,_loc10_ + 616);
      si32(32,_loc10_ + 72);
      _loc2_ -= 16;
      si32(65536,_loc2_ + 8);
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = int(_loc10_ + 948);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(64,_loc2_ + 8);
      si32(_loc9_ = int(_loc10_ + 66420),_loc2_ + 4);
      si32(_loc8_ = int(_loc10_ + 628),_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ += 16;
      _loc1_ = li8(_loc10_ + 1189);
      _loc1_ >>>= 7;
      si8(_loc1_,_loc10_ + 603);
      _loc2_ -= 16;
      si32(64,_loc2_ + 8);
      _loc7_ = 0;
      if(_loc1_ != _loc7_)
      {
         _loc8_ = int(_loc10_ + 66740);
      }
      si32(_loc8_,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      Fmemcpy();
      _loc2_ += 16;
      si32(_loc7_,_loc10_ + 312);
      si32(_loc7_,_loc10_ + 316);
      si32(_loc7_,_loc10_ + 328);
      si32(1,_loc10_ + 324);
      si32(_loc7_,_loc10_ + 300);
      si8(-32,_loc10_ + 196);
      si8(_loc7_,_loc10_ + 164);
      si16(_loc7_,_loc10_ + 360);
      si16(_loc7_,_loc10_ + 336);
      si16(_loc7_,_loc10_ + 338);
      si16(3,_loc10_ + 364);
      si16(_loc7_,_loc10_ + 392);
      si16(_loc7_,_loc10_ + 368);
      si16(_loc7_,_loc10_ + 370);
      si16(3,_loc10_ + 396);
      si16(_loc7_,_loc10_ + 424);
      si16(_loc7_,_loc10_ + 400);
      si16(_loc7_,_loc10_ + 402);
      si16(3,_loc10_ + 428);
      si16(_loc7_,_loc10_ + 456);
      si16(_loc7_,_loc10_ + 432);
      si16(_loc7_,_loc10_ + 434);
      si16(3,_loc10_ + 460);
      si16(_loc7_,_loc10_ + 488);
      si16(_loc7_,_loc10_ + 464);
      si16(_loc7_,_loc10_ + 466);
      si16(3,_loc10_ + 492);
      si16(_loc7_,_loc10_ + 520);
      si16(_loc7_,_loc10_ + 496);
      si16(_loc7_,_loc10_ + 498);
      si16(3,_loc10_ + 524);
      si16(_loc7_,_loc10_ + 552);
      si16(_loc7_,_loc10_ + 528);
      si16(_loc7_,_loc10_ + 530);
      si16(3,_loc10_ + 556);
      si16(_loc7_,_loc10_ + 584);
      si16(_loc7_,_loc10_ + 560);
      si16(_loc7_,_loc10_ + 562);
      si16(3,_loc10_ + 588);
      _loc2_ -= 16;
      si32(64,_loc2_ + 8);
      si32(_loc7_,_loc2_ + 4);
      _loc1_ = int(_loc10_ + 236);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc9_ = int(_loc10_ + 88);
      _loc8_ = li32(_loc3_ + 12);
      do
      {
         _loc11_ = int(_loc9_ + _loc7_);
         _loc1_ = int(_loc8_ + _loc7_);
         si8(_loc6_ = li8(_loc1_),_loc11_);
         _loc5_ = _loc7_ & 15;
         _loc4_ = _loc7_ >> 4;
         if(_loc5_ != 15)
         {
            if(uint(_loc5_) <= 1)
            {
               _loc5_ = si8(li8(int(_loc9_ + (_loc7_ | 1))));
               _loc6_ = int(_loc10_ + (_loc4_ << 5));
               si16(_loc4_ = si8(li8(int(_loc9_ + (_loc7_ & -2)))),_loc6_ + 336);
               si16(_loc5_,_loc6_ + 338);
               if(int(_loc5_ * _loc4_) < li32(_loc10_ + 332))
               {
                  if(_loc4_ <= -1)
                  {
                     si16(int(0 - _loc4_),_loc6_ + 336);
                  }
                  else
                  {
                     si16(int(0 - _loc5_),_loc6_ + 338);
                  }
               }
            }
         }
         else
         {
            si16(_loc11_ = (_loc11_ = _loc6_ << 24) >> 24,int(_loc10_ + (_loc4_ << 1)) + 220);
         }
      }
      while((_loc7_ += 1) != 128);
      
      si32(0,_loc10_);
      si32((_loc7_ = li8(_loc10_ + 1189)) & 1,_loc10_ + 16);
      if(((_loc7_ = li8(_loc10_ + 1189)) & 1) == 0)
      {
         si32(127,_loc10_);
      }
      si32(0,_loc10_ + 8);
      _loc1_ = li8(_loc10_ + 1201);
      _loc1_ &= 15;
      si32(_loc1_,_loc10_ + 20);
      _loc9_ = li8(_loc10_ + 1198);
      _loc8_ = 256;
      if(_loc9_ != 0)
      {
         _loc8_ = _loc9_;
      }
      si32(_loc8_,_loc10_ + 4);
      si32(0,_loc10_ + 24);
      _loc1_ = int(_loc7_ >>> 1);
      _loc1_ &= 1;
      si32(_loc1_,_loc10_ + 40);
      if(_loc1_ == 0)
      {
         si32(127,_loc10_ + 24);
      }
      si32(0,_loc10_ + 32);
      _loc1_ = li8(_loc10_ + 1202);
      _loc1_ &= 15;
      si32(_loc1_,_loc10_ + 44);
      _loc9_ = li8(_loc10_ + 1199);
      _loc8_ = 256;
      if(_loc9_ != 0)
      {
         _loc8_ = _loc9_;
      }
      si32(_loc8_,_loc10_ + 28);
      si32(0,_loc10_ + 48);
      _loc1_ = int(_loc7_ >>> 2);
      _loc1_ &= 1;
      si32(_loc1_,_loc10_ + 64);
      if(_loc1_ == 0)
      {
         si32(127,_loc10_ + 48);
      }
      si32(0,_loc10_ + 56);
      _loc1_ = li8(_loc10_ + 1203);
      _loc1_ &= 15;
      si32(_loc1_,_loc10_ + 68);
      _loc8_ = li8(_loc10_ + 1200);
      _loc7_ = 256;
      if(_loc8_ != 0)
      {
         _loc7_ = _loc8_;
      }
      si32(_loc7_,_loc10_ + 52);
      si8(0,_loc10_ + 1188);
      si8(0,_loc10_ + 1189);
      si8(-1,_loc10_ + 1191);
      si8(0,_loc10_ + 1198);
      si8(0,_loc10_ + 1199);
      si8(0,_loc10_ + 1200);
      si8(-1,_loc10_ + 1201);
      si8(-1,_loc10_ + 1202);
      si8(-1,_loc10_ + 1203);
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
