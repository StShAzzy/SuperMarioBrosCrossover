package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Sms_Apu6volumeEd() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = NaN;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      sf64(_loc4_ = Number((_loc4_ = lf64(_loc3_ + 4)) * 0.00166015625),_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      var _loc6_:int;
      si32(_loc6_ = _loc1_ + 160,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_,_loc2_ + 4);
      var _loc5_:int;
      si32(_loc5_ = _loc1_ + 1032,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
