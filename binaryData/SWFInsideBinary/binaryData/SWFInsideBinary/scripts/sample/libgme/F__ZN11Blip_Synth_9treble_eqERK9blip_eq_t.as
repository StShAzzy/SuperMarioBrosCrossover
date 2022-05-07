package sample.libgme
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc13_:Number = NaN;
      var _loc5_:* = 0;
      var _loc15_:* = NaN;
      var _loc16_:int = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc6_:int = 0;
      var _loc9_:int = 0;
      var _loc10_:* = NaN;
      var _loc11_:* = NaN;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 2432;
      _loc3_ = li32(_loc4_);
      _loc18_ = li32(_loc3_ + 28);
      _loc2_ -= 16;
      si32(_loc14_ = int((_loc16_ = _loc4_ - 2432) + 256),_loc2_ + 4);
      var _loc12_:*;
      si32(_loc12_ = li32(_loc4_ + 4),_loc2_);
      si32(_loc9_ = (_loc12_ = _loc18_ << 5) + -32,_loc2_ + 8);
      _loc18_ <<= 7;
      _loc7_ = _loc16_ + _loc18_;
      ESP = _loc2_;
      F__ZNK9blip_eq_t8generateEPfi();
      _loc2_ += 16;
      _loc6_ = -32;
      do
      {
         _loc12_ = _loc6_ << 2;
         _loc18_ = int(_loc7_ - _loc12_);
         var _loc1_:* = lf32(_loc12_ = int(_loc7_ + _loc12_));
         sf32(_loc1_,_loc18_ + 252);
      }
      while((_loc6_ += 1) != 32);
      
      _loc2_ -= 16;
      si32(256,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc16_,_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc10_ = 0;
      if(_loc9_ >= 1)
      {
         _loc10_ = 0;
         do
         {
            var _loc8_:*;
            _loc10_ = Number((_loc8_ = lf32(_loc14_)) + _loc10_);
            _loc14_ += 4;
         }
         while((_loc9_ += -1) != 0);
         
      }
      si32(32768,_loc3_ + 32);
      if((_loc18_ = (_loc14_ = (_loc18_ = li32(_loc3_ + 28)) << 5) | 1) >= 1)
      {
         _loc13_ = 16384 / _loc10_;
         _loc5_ = _loc14_ ^ -1;
         _loc10_ = 0;
         _loc7_ = 0;
         _loc11_ = _loc10_;
         do
         {
            var _loc17_:* = Number((_loc8_ = Number((_loc8_ = Number(_loc10_ - _loc11_)) * _loc13_)) + 0.5);
            _loc18_ = li32(_loc3_ + 24);
            _loc2_ -= 16;
            sf64(_loc17_,_loc2_);
            _loc12_ = _loc7_ << 1;
            _loc18_ -= _loc12_;
            ESP = _loc2_;
            F_floor();
            _loc2_ += 16;
            si16(_loc12_ = int(_loc17_ = Number(st0)),_loc18_);
            _loc18_ = _loc7_ << 2;
            _loc10_ = Number((_loc17_ = lf32((_loc18_ = int(_loc16_ - _loc18_)) + 256)) + _loc10_);
            _loc11_ = Number((_loc8_ = lf32(_loc18_)) + _loc11_);
            _loc7_ += -1;
         }
         while(_loc5_ != _loc7_);
         
      }
      _loc2_ -= 16;
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_14adjust_impulseEv();
      _loc2_ += 16;
      if((_loc15_ = lf64(_loc3_ + 16)) != 0)
      {
         si32(0,_loc3_ + 20);
         si32(0,_loc3_ + 16);
         _loc2_ -= 16;
         sf64(_loc15_,_loc2_ + 4);
         si32(_loc3_,_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_11volume_unitEd();
         _loc2_ += 16;
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
