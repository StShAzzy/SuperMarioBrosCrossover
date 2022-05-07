package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nsf_Emu10set_tempo_Ed() : void
   {
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = NaN;
      var _loc12_:* = 0;
      var _loc13_:* = 0;
      var _loc6_:* = NaN;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      _loc2_ = li32(_loc3_);
      _loc13_ = li8(_loc2_ + 5494);
      _loc12_ = li8(_loc2_ + 5495);
      si32(1094405964,_loc2_ + 2508);
      si32(-1171366431,_loc2_ + 2504);
      si32(357366,_loc2_ + 2528);
      _loc10_ = (_loc12_ <<= 8) | _loc13_;
      _loc13_ = li8(_loc2_ + 2512);
      _loc8_ = 16666;
      _loc6_ = 1789772.72727;
      if(_loc13_ != 0)
      {
         si32(398964,_loc2_ + 2528);
         si32(1094278799,_loc2_ + 2508);
         si32(536870912,_loc2_ + 2504);
         _loc10_ = (_loc12_ = (_loc12_ = li8(_loc2_ + 5505)) << 8) | li8(_loc2_ + 5504);
         _loc8_ = 20000;
         _loc6_ = 1662607.125;
      }
      _loc7_ = _loc8_;
      if(_loc10_ != 0)
      {
         _loc7_ = _loc10_;
      }
      _loc4_ = lf64(_loc3_ + 4);
      if(_loc7_ == _loc8_)
      {
         if(_loc4_ != 1)
         {
            addr135:
            var _loc11_:Number;
            var _loc9_:Number = (_loc11_ = uint(_loc7_)) * _loc6_;
            _loc11_ = _loc4_ * 83333.33333333333;
            si32(_loc13_ = int(_loc11_ = _loc9_ / _loc11_),_loc2_ + 2528);
         }
         sf64(_loc4_,_loc2_ + 4512);
         _loc13_ = li8(_loc2_ + 3938);
         _loc5_ = 7458;
         if(_loc13_ != 0)
         {
            _loc5_ = 8314;
         }
         if(_loc4_ != 1)
         {
            _loc5_ = (_loc13_ = int(_loc11_ = (_loc11_ = _loc5_) / _loc4_)) & -2;
         }
         si32(_loc5_,_loc2_ + 4536);
         _loc1_ = _loc3_;
         ESP = _loc1_;
         return;
      }
      §§goto(addr135);
   }
}
