package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN10Sms_Square3runEii() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 32);
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc3_ + 4);
      if(_loc12_ != 0)
      {
         var _loc9_:*;
         if((_loc9_ = li32(_loc1_ + 36)) <= 128)
         {
            addr53:
            if((_loc12_ = li32(_loc1_ + 28)) != 0)
            {
               _loc2_ -= 16;
               si32(_loc8_,_loc2_ + 12);
               var _loc8_:*;
               si32(_loc8_ = int(0 - _loc12_),_loc2_ + 8);
               var _loc7_:*;
               var _loc6_:*;
               si32(_loc7_ = int((_loc6_ = int(li32(_loc8_) * _loc10_)) + li32((_loc8_ = li32(_loc1_ + 16)) + 4)),_loc2_ + 4);
               si32(li32(_loc1_ + 44),_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
               si32(0,_loc1_ + 28);
            }
            _loc5_ = li32(_loc1_ + 36);
            _loc12_ = _loc11_;
            if(_loc5_ != 0)
            {
               if((_loc12_ = int((_loc9_ = li32(_loc1_ + 24)) + _loc10_)) < _loc11_)
               {
                  _loc9_ = int((_loc9_ = int((_loc9_ = int((_loc9_ = int(_loc11_ + -1)) - _loc12_)) + _loc5_)) / _loc5_);
                  si32(_loc7_ = (_loc7_ = int((_loc7_ = li32(_loc1_ + 40)) + _loc9_)) & 1,_loc1_ + 40);
                  _loc12_ = int((_loc9_ *= _loc5_) + _loc12_);
               }
            }
         }
         else
         {
            _loc5_ = int(0 - _loc12_);
            if((_loc9_ = li32(_loc1_ + 40)) != 0)
            {
               _loc5_ = _loc12_;
            }
            _loc12_ = li32(_loc1_ + 28);
            if(_loc5_ != _loc12_)
            {
               si32(_loc5_,_loc1_ + 28);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_ + 12);
               si32(_loc8_ = int(_loc5_ - _loc12_),_loc2_ + 8);
               si32(_loc7_ = int((_loc6_ = int(li32(_loc8_) * _loc10_)) + li32((_loc8_ = li32(_loc1_ + 16)) + 4)),_loc2_ + 4);
               si32(li32(_loc1_ + 44),_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            if((_loc12_ = int((_loc9_ = li32(_loc1_ + 24)) + _loc10_)) < _loc11_)
            {
               _loc4_ = _loc5_ << 1;
               _loc5_ = li32(_loc1_ + 16);
               do
               {
                  _loc9_ = li32(_loc1_ + 44);
                  _loc7_ = li32(_loc5_ + 4);
                  _loc6_ = li32(_loc5_);
                  _loc2_ -= 16;
                  si32(_loc5_,_loc2_ + 12);
                  si32(_loc4_ = int(0 - _loc4_),_loc2_ + 8);
                  si32(_loc7_ = int((_loc6_ *= _loc12_) + _loc7_),_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                  _loc2_ += 16;
                  _loc7_ = li32(_loc1_ + 36);
                  si32(_loc9_ = (_loc10_ = li32(_loc1_ + 40)) ^ 1,_loc1_ + 40);
               }
               while((_loc12_ = int(_loc7_ + _loc12_)) < _loc11_);
               
               _loc5_ = li32(_loc1_ + 32);
               _loc4_ = int(0 - _loc5_);
               if(_loc10_ != 1)
               {
                  _loc4_ = _loc5_;
               }
               si32(_loc4_,_loc1_ + 28);
            }
         }
         si32(_loc9_ = int(_loc12_ - _loc11_),_loc1_ + 24);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr53);
   }
}
