package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Apu13update_volumeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = NaN;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = lf64(_loc1_ + 32);
      _loc9_ = li8(_loc1_ + 348);
      _loc2_ -= 16;
      var _loc8_:int;
      si32(_loc8_ = _loc1_ + 376,_loc2_);
      _loc7_ = _loc9_ & 7;
      _loc6_ = (_loc9_ >>>= 4) & 7;
      if(uint(_loc7_) >= uint(_loc6_))
      {
         _loc6_ = _loc7_;
      }
      var _loc4_:Number;
      sf64(_loc4_ = (_loc4_ = _loc9_ = int(_loc6_ + 1)) * _loc5_,_loc2_ + 4);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc4_,_loc2_ + 4);
      si32(_loc9_ = int(_loc1_ + 1192),_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
