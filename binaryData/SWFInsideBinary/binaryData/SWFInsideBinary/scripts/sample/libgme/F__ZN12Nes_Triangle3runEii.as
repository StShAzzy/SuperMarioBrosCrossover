package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN12Nes_Triangle3runEii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc13_ = li8(_loc3_ + 2);
      var _loc12_:*;
      _loc10_ = int((_loc11_ = (_loc12_ = (_loc12_ = (_loc12_ = li8(_loc3_ + 3)) << 8) & 1792) | _loc13_) + 1);
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc4_ + 8);
      _loc7_ = li32(_loc4_ + 4);
      if(_loc9_ == 0)
      {
         _loc9_ = li32(_loc3_ + 16);
         si32(0,_loc3_ + 16);
         if((_loc13_ = li32(_loc3_ + 12)) != 0)
         {
            if((_loc13_ = li32(_loc3_ + 28)) != 0)
            {
               if(uint(_loc10_) >= 3)
               {
                  _loc7_ = int(_loc9_ + _loc7_);
                  if((_loc9_ = int(_loc8_ - _loc7_)) >= 1)
                  {
                     _loc13_ = int((_loc13_ = int(_loc9_ + _loc11_)) / _loc10_);
                     si32(_loc12_ = int((_loc12_ = (_loc12_ = int(int(1 - _loc13_) + li32(_loc3_ + 24))) & 31) + 1),_loc3_ + 24);
                     _loc7_ = int((_loc13_ *= _loc10_) + _loc7_);
                  }
                  si32(_loc13_ = int(_loc7_ - _loc8_),_loc3_ + 16);
               }
            }
         }
      }
      else
      {
         si32(1,_loc9_ + 40);
         _loc11_ = int((_loc13_ = li32(_loc3_ + 24)) + -17);
         if((_loc9_ = int(16 - _loc13_)) >= 0)
         {
            _loc11_ = _loc9_;
         }
         _loc9_ = li32(_loc3_ + 20);
         si32(_loc11_,_loc3_ + 20);
         if(_loc11_ != _loc9_)
         {
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 12);
            var _loc6_:*;
            si32(_loc6_ = int(_loc11_ - _loc9_),_loc2_ + 8);
            si32(_loc13_ = int((_loc12_ = int(li32(_loc6_) * _loc7_)) + li32((_loc6_ = li32(_loc3_ + 8)) + 4)),_loc2_ + 4);
            si32(_loc13_ = int(_loc3_ + 32),_loc2_);
            ESP = _loc2_;
            F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
            _loc2_ += 16;
         }
         _loc13_ = li32(_loc3_ + 12);
         _loc11_ = _loc8_;
         if(_loc13_ != 0)
         {
            _loc11_ = _loc8_;
            if(li32(_loc3_ + 28) != 0)
            {
               _loc11_ = _loc8_;
               if(uint(_loc10_) >= 3)
               {
                  _loc1_ = li32(_loc3_ + 16);
                  if((_loc11_ = int(_loc1_ + _loc7_)) < _loc8_)
                  {
                     _loc11_ = li32(_loc3_ + 24);
                     _loc5_ = -1;
                     if(_loc11_ <= 16)
                     {
                        _loc5_ = 1;
                     }
                     _loc9_ = int(_loc11_ + -16);
                     if(_loc11_ <= 16)
                     {
                        _loc9_ = _loc11_;
                     }
                     _loc11_ = int(_loc1_ + _loc7_);
                     _loc1_ = int(_loc3_ + 32);
                     _loc7_ = li32(_loc3_ + 8);
                     do
                     {
                        if((_loc9_ += -1) == 0)
                        {
                           _loc5_ = 0 - _loc5_;
                           _loc9_ = 16;
                        }
                        else
                        {
                           _loc2_ -= 16;
                           si32(_loc7_,_loc2_ + 12);
                           si32(_loc5_,_loc2_ + 8);
                           si32(_loc13_ = int((_loc12_ = int(li32(_loc7_) * _loc11_)) + li32(_loc7_ + 4)),_loc2_ + 4);
                           si32(_loc1_,_loc2_);
                           ESP = _loc2_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc2_ += 16;
                        }
                     }
                     while((_loc11_ += _loc10_) < _loc8_);
                     
                     _loc10_ = int(_loc9_ + 16);
                     if(_loc5_ >= 0)
                     {
                        _loc10_ = _loc9_;
                     }
                     si32(_loc10_,_loc3_ + 24);
                     _loc7_ = int(_loc10_ + -17);
                     if((_loc10_ = int(16 - _loc10_)) >= 0)
                     {
                        _loc7_ = _loc10_;
                     }
                     si32(_loc7_,_loc3_ + 20);
                  }
               }
            }
         }
         si32(_loc13_ = int(_loc11_ - _loc8_),_loc3_ + 16);
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
