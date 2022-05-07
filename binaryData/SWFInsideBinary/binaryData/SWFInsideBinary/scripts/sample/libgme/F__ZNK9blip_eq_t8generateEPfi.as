package sample.libgme
{
   import avm2.intrinsics.memory.lf32;
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf32;
   
   public function F__ZNK9blip_eq_t8generateEPfi() : void
   {
      var _loc9_:* = 0;
      var _loc18_:* = 0;
      var _loc23_:* = 0;
      var _loc24_:* = 0;
      var _loc10_:Number = NaN;
      var _loc26_:* = 0;
      var _loc1_:Number = NaN;
      var _loc2_:Number = NaN;
      var _loc11_:Number = NaN;
      var _loc12_:* = NaN;
      var _loc13_:Number = NaN;
      var _loc15_:* = NaN;
      var _loc14_:* = NaN;
      var _loc22_:int = 0;
      var _loc21_:* = 0;
      var _loc20_:* = 0;
      var _loc8_:*;
      _loc26_ = li32((_loc18_ = li32(_loc9_ = _loc8_ = int(ESP))) + 16);
      var _loc25_:*;
      _loc10_ = (_loc11_ = _loc25_ = li32(_loc18_ + 12)) * 0.5;
      _loc11_ = _loc24_ = li32(_loc9_ + 8);
      _loc13_ = (_loc11_ = 144 / _loc11_) + 0.85;
      if(_loc26_ != 0)
      {
         _loc13_ = _loc10_ / _loc26_;
      }
      _loc12_ = lf64(_loc18_);
      _loc15_ = Number(-300);
      if(_loc12_ >= _loc15_)
      {
         _loc15_ = _loc12_;
      }
      _loc12_ = 0.00006103515625;
      if(_loc15_ <= 5)
      {
         _loc12_ = Number(_loc15_ * 0.00001220703125);
      }
      if(!((_loc14_ = Number((_loc11_ = (_loc11_ = _loc25_ = li32(_loc18_ + 8)) * _loc13_) / _loc10_)) < 0.999 | _loc14_ != _loc14_ | false))
      {
         _loc14_ = 0.999;
      }
      _loc23_ = li32(_loc9_ + 4);
      _loc11_ = 1 - _loc14_;
      _loc11_ = _loc12_ / _loc11_;
      _loc1_ = Math.pow(10,_loc11_);
      _loc11_ = (_loc11_ = _loc14_ * -4096) + 4096;
      _loc12_ = Number(Math.pow(_loc1_,_loc11_));
      if(_loc24_ >= 1)
      {
         _loc13_ = 0.0003834951969714103 / (Number(_loc13_ * 64));
         _loc22_ = 1 - (_loc24_ << 1);
         _loc2_ = (_loc14_ *= 4096) + -1;
         _loc21_ = _loc23_;
         _loc20_ = _loc24_;
         do
         {
            var _loc3_:Number = (_loc11_ = (_loc11_ = _loc22_) * _loc13_) * 4095;
            var _loc4_:Number = Math.cos(_loc3_);
            _loc3_ = _loc11_ * 4096;
            var _loc7_:* = Number(Math.cos(_loc3_));
            _loc3_ = _loc14_ * _loc11_;
            var _loc6_:* = Number(Math.cos(_loc3_));
            _loc3_ = _loc2_ * _loc11_;
            var _loc5_:* = Number(Math.cos(_loc3_));
            _loc3_ = Math.cos(_loc11_);
            _loc11_ = (_loc11_ = 2 - _loc3_) - _loc3_;
            _loc7_ = Number((_loc7_ = Number((_loc4_ *= _loc1_) - _loc7_)) * _loc12_);
            _loc4_ = _loc1_ * _loc5_;
            _loc7_ = Number((_loc7_ = Number((_loc7_ -= _loc4_) + _loc6_)) * _loc11_);
            _loc5_ = Number((_loc6_ = Number((_loc4_ = 1 - _loc3_) - _loc6_)) + _loc5_);
            _loc3_ = (_loc6_ = Number(_loc1_ - _loc3_)) - _loc3_;
            _loc3_ *= _loc1_;
            _loc3_ += 1;
            _loc5_ = Number((_loc5_ *= _loc3_) + _loc7_);
            _loc11_ *= _loc3_;
            sf32(_loc11_ = _loc5_ / _loc11_,_loc21_);
            _loc22_ += 2;
            _loc21_ += 4;
         }
         while((_loc20_ += -1) != 0);
         
      }
      if(_loc24_ != 0)
      {
         _loc1_ = 3.141592653589793 / (Number(_loc24_ += -1));
         do
         {
            var _loc19_:* = (_loc25_ = _loc24_) << 2;
            _loc5_ = lf32(_loc19_ = int(_loc23_ + _loc19_));
            _loc6_ = Number((_loc6_ = Number(_loc25_)) * _loc1_);
            var _loc16_:*;
            _loc6_ = _loc16_ = _loc6_ = Number(Math.cos(_loc6_));
            var _loc17_:*;
            _loc7_ = _loc17_ = -0.46000000834465027;
            _loc6_ = _loc16_ = _loc6_ *= _loc7_;
            _loc7_ = _loc17_ = 0.5400000214576721;
            _loc6_ = _loc16_ = _loc6_ += _loc7_;
            sf32(_loc5_ *= _loc6_,_loc19_);
            _loc24_ = int(_loc25_ + -1);
         }
         while(_loc25_ != 0);
         
      }
      ESP = _loc8_ = _loc9_;
   }
}
