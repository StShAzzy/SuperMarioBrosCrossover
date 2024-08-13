package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN16Blip_Synth_Fast_11volume_unitEd() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      var _loc4_:* = lf64(_loc3_ + 4);
      _loc1_ = _loc4_ = (_loc4_ = _loc4_ * 1073741824) + 0.5;
      _loc5_ = li32(_loc3_);
      si32(_loc1_,_loc5_ + 8);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
