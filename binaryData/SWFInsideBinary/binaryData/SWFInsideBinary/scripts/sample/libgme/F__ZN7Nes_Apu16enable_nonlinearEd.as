package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nes_Apu16enable_nonlinearEd() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si8(1,_loc1_ + 1363);
      _loc2_ -= 16;
      var _loc4_:*;
      sf64(_loc4_ = Number((_loc4_ = lf64(_loc3_ + 4)) * 0.007514724138480537),_loc2_ + 4);
      var _loc5_:int;
      si32(_loc5_ = _loc1_ + 1992,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(1064691263,_loc2_ + 8);
      si32(2008854010,_loc2_ + 4);
      si32(_loc5_ = _loc1_ + 744,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(1064121087,_loc2_ + 8);
      si32(1246816248,_loc2_ + 4);
      si32(_loc5_ = _loc1_ + 152,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(1063072511,_loc2_ + 8);
      si32(1246816248,_loc2_ + 4);
      si32(_loc5_ = _loc1_ + 1376,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      si32(0,_loc1_ + 40);
      si32(0,_loc1_ + 84);
      si32(0,_loc1_ + 732);
      si32(0,_loc1_ + 132);
      si32(0,_loc1_ + 1324);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
