package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN6Gb_ApuC2Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc9_ = _loc1_ + 416;
      si32(_loc9_,_loc1_ + 400);
      si32(12,_loc1_ + 404);
      si32(0,_loc1_ + 396);
      si32(0,_loc1_ + 392);
      si32(0,_loc1_ + 408);
      si32(0,_loc1_ + 376);
      si32(0,_loc1_ + 380);
      si32(0,_loc1_ + 384);
      _loc9_ = _loc1_ + 1232;
      si32(_loc9_,_loc1_ + 1216);
      si32(8,_loc1_ + 1220);
      si32(0,_loc1_ + 1212);
      si32(0,_loc1_ + 1208);
      si32(0,_loc1_ + 1224);
      si32(0,_loc1_ + 1192);
      si32(0,_loc1_ + 1196);
      si32(0,_loc1_ + 1200);
      _loc8_ = _loc1_ + 376;
      si32(_loc8_,_loc1_ + 96);
      si32(_loc8_,_loc1_ + 164);
      _loc7_ = _loc1_ + 1192;
      si32(_loc7_,_loc1_ + 228);
      si32(_loc7_,_loc1_ + 320);
      _loc9_ = _loc1_ + 44;
      si32(_loc9_,_loc1_);
      _loc9_ = _loc1_ + 112;
      si32(_loc9_,_loc1_ + 4);
      _loc9_ = _loc1_ + 180;
      si32(_loc9_,_loc1_ + 8);
      _loc9_ = _loc1_ + 268;
      si32(_loc9_,_loc1_ + 12);
      _loc9_ = _loc1_ + 328;
      si32(_loc9_,_loc1_ + 68);
      si32(0,_loc1_ + 60);
      si32(0,_loc1_ + 44);
      si32(0,_loc1_ + 48);
      si32(0,_loc1_ + 52);
      si32(0,_loc1_ + 56);
      _loc9_ = _loc1_ + 333;
      si32(_loc9_,_loc1_ + 136);
      si32(0,_loc1_ + 128);
      si32(0,_loc1_ + 112);
      si32(0,_loc1_ + 116);
      si32(0,_loc1_ + 120);
      si32(0,_loc1_ + 124);
      _loc9_ = _loc1_ + 338;
      si32(_loc9_,_loc1_ + 204);
      si32(0,_loc1_ + 196);
      si32(0,_loc1_ + 180);
      si32(0,_loc1_ + 184);
      si32(0,_loc1_ + 188);
      si32(0,_loc1_ + 192);
      _loc9_ = _loc1_ + 343;
      si32(_loc9_,_loc1_ + 292);
      si32(0,_loc1_ + 284);
      si32(0,_loc1_ + 268);
      si32(0,_loc1_ + 272);
      si32(0,_loc1_ + 276);
      si32(0,_loc1_ + 280);
      si32(16384,_loc1_ + 24);
      si32(1061452513,_loc1_ + 36);
      si32(1202590843,_loc1_ + 32);
      _loc9_ = li8(_loc1_ + 348);
      _loc2_ -= 16;
      si32(_loc8_,_loc2_);
      _loc6_ = _loc9_ & 7;
      _loc9_ >>>= 4;
      _loc5_ = _loc9_ >>>= 4 & 7;
      if(uint(_loc6_) >= uint(_loc5_))
      {
         _loc5_ = _loc6_;
      }
      var _loc4_:* = _loc9_ = _loc5_ + 1;
      sf64(_loc4_ = _loc4_ * 0.000625,_loc2_ + 4);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      si32(0,_loc1_ + 16);
      si32(0,_loc1_ + 20);
      si32(0,_loc1_ + 40);
      si32(0,_loc1_ + 108);
      si32(0,_loc1_ + 104);
      si32(0,_loc1_ + 100);
      si32(0,_loc1_ + 92);
      si32(0,_loc1_ + 72);
      si32(0,_loc1_ + 76);
      si32(0,_loc1_ + 84);
      si32(3,_loc1_ + 64);
      _loc9_ = li32(_loc1_ + 56);
      si32(_loc9_,_loc1_ + 60);
      si32(0,_loc1_ + 176);
      si32(0,_loc1_ + 172);
      si32(0,_loc1_ + 168);
      si32(0,_loc1_ + 160);
      si32(0,_loc1_ + 140);
      si32(0,_loc1_ + 144);
      si32(0,_loc1_ + 152);
      si32(3,_loc1_ + 132);
      _loc9_ = li32(_loc1_ + 124);
      si32(_loc9_,_loc1_ + 128);
      si32(0,_loc1_ + 208);
      si32(0,_loc1_ + 212);
      si32(0,_loc1_ + 220);
      si32(3,_loc1_ + 200);
      _loc9_ = li32(_loc1_ + 192);
      si32(_loc9_,_loc1_ + 196);
      si32(0,_loc1_ + 316);
      si32(0,_loc1_ + 296);
      si32(0,_loc1_ + 300);
      si32(0,_loc1_ + 308);
      si32(3,_loc1_ + 288);
      _loc9_ = li32(_loc1_ + 280);
      si32(_loc9_,_loc1_ + 284);
      si32(1,_loc1_ + 324);
      si32(0,_loc1_ + 232);
      si8(119,_loc1_ + 348);
      _loc4_ = lf64(_loc1_ + 32);
      _loc2_ -= 16;
      _loc4_ *= 8;
      sf64(_loc4_ *= 8,_loc2_ + 4);
      si32(_loc8_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_,_loc2_ + 4);
      si32(_loc7_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      si8(1,_loc1_ + 350);
      _loc2_ -= 16;
      si32(0,_loc2_ + 12);
      si32(65318,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN6Gb_Apu14write_registerEiji();
      _loc2_ += 16;
      si32(-1073741824,_loc1_ + 264);
      si32(270140975,_loc1_ + 260);
      si32(32767,_loc1_ + 256);
      si32(0,_loc1_ + 252);
      si32(-634472396,_loc1_ + 248);
      si32(-1336321696,_loc1_ + 244);
      si32(1016231981,_loc1_ + 240);
      si32(-1438433148,_loc1_ + 236);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
