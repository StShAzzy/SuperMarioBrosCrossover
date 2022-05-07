package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nes_Apu6volumeEd() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = NaN;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si8(0,_loc1_ + 1363);
      _loc2_ -= 16;
      var _loc4_:Number;
      sf64(_loc4_ = (_loc5_ = lf64(_loc3_ + 4)) * 0.00752,_loc2_ + 4);
      var _loc6_:int;
      si32(_loc6_ = _loc1_ + 1992,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_ = _loc5_ * 0.00851,_loc2_ + 4);
      si32(_loc6_ = _loc1_ + 744,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_ = _loc5_ * 0.00494,_loc2_ + 4);
      si32(_loc6_ = _loc1_ + 152,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc5_ *= 0.00335,_loc2_ + 4);
      _loc1_ += 1376;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
