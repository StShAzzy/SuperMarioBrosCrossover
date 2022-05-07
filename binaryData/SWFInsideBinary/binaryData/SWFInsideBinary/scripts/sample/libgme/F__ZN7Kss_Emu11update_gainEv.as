package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Kss_Emu11update_gainEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:Number = NaN;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li8(_loc1_ + 960);
      var _loc5_:*;
      _loc4_ = (_loc5_ = lf64(_loc1_ + 184)) * 1.4;
      if(_loc8_ != 0)
      {
         _loc4_ *= 1.5;
      }
      _loc2_ -= 16;
      var _loc6_:Number;
      sf64(_loc6_ = _loc4_ * 0.000915032679738562,_loc2_ + 4);
      si32(_loc8_ = int(_loc1_ + 67264),_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc2_ -= 16;
      sf64(_loc6_ = _loc4_ * 0.00000262451171875,_loc2_ + 4);
      si32(_loc8_ = int(_loc1_ + 68312),_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_11volume_unitEd();
      _loc2_ += 16;
      _loc1_ = li32(_loc1_ + 68872);
      if(_loc1_ != 0)
      {
         _loc2_ -= 16;
         sf64(_loc6_ = _loc4_ * 0.00166015625,_loc2_ + 4);
         var _loc7_:int;
         si32(_loc7_ = _loc1_ + 160,_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc2_ += 16;
         _loc2_ -= 16;
         sf64(_loc6_,_loc2_ + 4);
         si32(_loc8_ = int(_loc1_ + 1032),_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
