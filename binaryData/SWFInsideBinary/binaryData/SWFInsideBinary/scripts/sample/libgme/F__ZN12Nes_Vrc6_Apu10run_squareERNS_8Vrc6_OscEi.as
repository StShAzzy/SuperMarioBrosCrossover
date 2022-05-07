package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN12Nes_Vrc6_Apu10run_squareERNS_8Vrc6_OscEi() : void
   {
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      if((_loc15_ = li32(_loc3_ + 4)) != 0)
      {
         si32(1,_loc15_ + 40);
         _loc14_ = si8(li8(_loc3_ + 2));
         _loc13_ = li8(_loc3_);
         _loc12_ = 0;
         if(_loc14_ <= -1)
         {
            _loc12_ = _loc13_ & 15;
         }
         _loc11_ = _loc13_ & 128;
         var _loc10_:*;
         _loc13_ = int((_loc10_ = (_loc10_ = int(_loc13_ >>> 4)) & 7) + 1);
         _loc9_ = _loc12_;
         if(_loc11_ == 0)
         {
            _loc9_ = _loc12_;
            if(li32(_loc3_ + 16) >= _loc13_)
            {
               _loc9_ = 0;
            }
         }
         _loc1_ = li32((_loc8_ = li32(_loc4_)) + 72);
         _loc5_ = li32(_loc3_ + 12);
         if(_loc9_ != _loc5_)
         {
            si32(_loc9_,_loc3_ + 12);
            _loc2_ -= 16;
            si32(_loc15_,_loc2_ + 12);
            var _loc7_:int;
            si32(_loc7_ = _loc9_ - _loc5_,_loc2_ + 8);
            var _loc6_:int;
            si32(_loc10_ = int((_loc6_ = li32(_loc15_) * _loc1_) + li32(_loc15_ + 4)),_loc2_ + 4);
            si32(_loc10_ = int(_loc8_ + 640),_loc2_);
            ESP = _loc2_;
            F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
            _loc2_ += 16;
            _loc14_ = li8(_loc3_ + 2);
         }
         _loc5_ = li32(_loc3_ + 8);
         si32(0,_loc3_ + 8);
         if(_loc12_ != 0)
         {
            if(_loc11_ == 0)
            {
               if((uint(_loc14_ = int((_loc10_ = (_loc10_ = _loc14_ << 8) & 3840 | li8(_loc3_ + 1)) + 1))) >= 5)
               {
                  _loc9_ = li32(_loc4_ + 8);
                  if((_loc11_ = int(_loc5_ + _loc1_)) < _loc9_)
                  {
                     _loc11_ = int(_loc5_ + _loc1_);
                     _loc1_ = int(0 - _loc12_);
                     _loc5_ = int(_loc8_ + 640);
                     _loc8_ = li32(_loc3_ + 16);
                     do
                     {
                        if((_loc8_ += 1) == 16)
                        {
                           si32(_loc12_,_loc3_ + 12);
                           _loc2_ -= 16;
                           si32(_loc15_,_loc2_ + 12);
                           si32(_loc12_,_loc2_ + 8);
                           si32(_loc10_ = int((_loc6_ = li32(_loc15_) * _loc11_) + li32(_loc15_ + 4)),_loc2_ + 4);
                           si32(_loc5_,_loc2_);
                           ESP = _loc2_;
                           F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc2_ += 16;
                           _loc8_ = 0;
                        }
                        else if(_loc8_ == _loc13_)
                        {
                           si32(0,_loc3_ + 12);
                           _loc2_ -= 16;
                           si32(_loc15_,_loc2_ + 12);
                           si32(_loc1_,_loc2_ + 8);
                           si32(_loc10_ = int((_loc6_ = li32(_loc15_) * _loc11_) + li32(_loc15_ + 4)),_loc2_ + 4);
                           si32(_loc5_,_loc2_);
                           ESP = _loc2_;
                           F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc2_ += 16;
                        }
                     }
                     while((_loc11_ += _loc14_) < _loc9_);
                     
                     si32(_loc8_,_loc3_ + 16);
                  }
                  si32(_loc10_ = int(_loc11_ - _loc9_),_loc3_ + 8);
               }
            }
         }
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
