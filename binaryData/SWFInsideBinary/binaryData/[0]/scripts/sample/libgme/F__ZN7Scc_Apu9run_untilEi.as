package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN7Scc_Apu9run_untilEi() : void
   {
      var _loc2_:* = 0;
      var _loc9_:* = 0;
      var _loc22_:* = 0;
      var _loc25_:int = 0;
      var _loc17_:* = 0;
      var _loc19_:* = 0;
      var _loc6_:* = 0;
      var _loc14_:int = 0;
      var _loc11_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:int = 0;
      var _loc12_:int = 0;
      var _loc13_:* = 0;
      var _loc5_:int = 0;
      var _loc23_:int = 0;
      var _loc24_:int = 0;
      var _loc21_:* = 0;
      var _loc15_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = 0;
      var _loc1_:* = sample.libgme.ESP;
      _loc2_ = _loc1_;
      _loc9_ = li32(_loc2_);
      _loc25_ = _loc9_ + 232;
      _loc24_ = -213;
      _loc23_ = 0;
      _loc22_ = li32(_loc2_ + 4);
      _loc21_ = _loc23_;
      do
      {
         var _loc20_:* = _loc21_ << 4;
         _loc20_ = _loc9_ + _loc20_;
         if((_loc19_ = li32(_loc20_ + 12)) != 0)
         {
            si32(1,_loc19_ + 40);
            var _loc18_:* = _loc9_ - _loc24_;
            _loc14_ = (_loc6_ = (_loc18_ = (_loc18_ = (_loc18_ = li8(_loc18_)) << 8) & 0x0F00) | li8(_loc18_ - 1)) + 1;
            _loc15_ = 0;
            if(((_loc20_ = li8(_loc9_ + 227)) & 1 << _loc21_) != 0)
            {
               _loc15_ = 0;
               _loc20_ = li32(_loc19_ + 28);
               if(uint(_loc14_) > uint((_loc20_ = _loc20_ + 524288) >>> 18))
               {
                  _loc20_ = _loc9_ + _loc21_;
                  _loc15_ = (_loc20_ = (_loc20_ = li8(_loc20_ + 222)) << 3) & 0x78;
               }
            }
            _loc16_ = _loc23_ + -32;
            if(_loc21_ != 4)
            {
               _loc16_ = _loc23_;
            }
            _loc17_ = _loc21_ << 2;
            _loc20_ = _loc17_ << 2;
            _loc10_ = _loc9_ + _loc20_;
            _loc20_ = (_loc20_ = li32(_loc10_ + 4)) + _loc16_;
            _loc20_ = _loc9_ + _loc20_;
            _loc11_ = (_loc20_ = si8(li8(_loc20_ + 84))) * _loc15_;
            _loc20_ = _loc17_ << 2;
            _loc12_ = _loc9_ + _loc20_;
            _loc13_ = li32(_loc12_ + 8);
            if(_loc11_ != _loc13_)
            {
               si32(_loc11_,_loc12_ + 8);
               _loc1_ -= 16;
               si32(_loc19_,_loc1_ + 12);
               si32(_loc18_ = _loc11_ - _loc13_,_loc1_ + 8);
               _loc20_ = (_loc18_ = li32(_loc19_) * li32(_loc9_ + 80)) + li32(_loc19_ + 4);
               si32(_loc20_,_loc1_ + 4);
               si32(_loc25_,_loc1_);
               ESP = _loc1_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc1_ += 16;
            }
            _loc20_ = _loc17_ << 2;
            _loc13_ = _loc9_ + _loc20_;
            _loc17_ = li32(_loc13_);
            _loc11_ = li32(_loc9_ + 80);
            _loc5_ = _loc17_ + _loc11_;
            if(_loc5_ < _loc22_)
            {
               if(_loc15_ == 0)
               {
                  _loc20_ = _loc6_ + _loc22_;
                  _loc20_ = (_loc20_ = _loc20_ - _loc5_) / _loc14_;
                  _loc18_ = li32(_loc10_ + 4);
                  si32(_loc18_ = (_loc18_ = _loc18_ + _loc20_) & 0x1F,_loc10_ + 4);
                  _loc20_ *= _loc14_;
                  _loc5_ = _loc20_ *= _loc14_ + _loc5_;
               }
               else
               {
                  _loc6_ = li32(_loc10_ + 4);
                  _loc3_ = si8(li8((_loc20_ = _loc9_ + (_loc6_ + _loc16_)) + 84));
                  do
                  {
                     _loc20_ = _loc6_ + 1;
                     _loc20_ = (_loc6_ = _loc20_ & 0x1F) | _loc16_;
                     _loc5_ = _loc9_ + _loc20_;
                     if((_loc4_ = si8(li8(_loc5_ + 84))) != _loc3_)
                     {
                        _loc1_ -= 16;
                        si32(_loc19_,_loc1_ + 12);
                        var _loc7_:int;
                        si32(_loc7_ = (_loc7_ = _loc4_ - _loc3_) * _loc15_,_loc1_ + 8);
                        _loc20_ = (_loc18_ = li32(_loc19_) * (_loc11_ + _loc17_)) + li32(_loc19_ + 4);
                        si32(_loc20_,_loc1_ + 4);
                        si32(_loc25_,_loc1_);
                        ESP = _loc1_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc1_ += 16;
                        _loc3_ = _loc4_;
                     }
                     _loc4_ = _loc5_ + 84;
                     _loc17_ += _loc14_;
                  }
                  while(_loc5_ = _loc11_ + _loc17_, _loc5_ < _loc22_);
                  
                  si32(_loc6_,_loc10_ + 4);
                  _loc20_ = si8(li8(_loc4_));
                  si32(_loc20_ = _loc20_ * _loc15_,_loc12_ + 8);
               }
            }
            _loc20_ = _loc5_ - _loc22_;
            si32(_loc20_,_loc13_);
         }
         _loc23_ += 32;
         _loc24_ += -2;
      }
      while(_loc21_ += 1, _loc21_ += 1 != 5);
      
      si32(_loc22_,_loc9_ + 80);
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
