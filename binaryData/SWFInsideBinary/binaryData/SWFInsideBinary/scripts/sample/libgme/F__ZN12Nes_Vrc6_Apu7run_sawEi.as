package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   
   public function F__ZN12Nes_Vrc6_Apu7run_sawEi() : void
   {
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc17_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc8_:* = 0;
      var _loc13_:* = 0;
      var _loc2_:int = 0;
      var _loc14_:* = 0;
      var _loc9_:* = 0;
      var _loc16_:* = 0;
      var _loc1_:* = 0;
      var _loc3_:* = int(ESP);
      if((_loc17_ = li32((_loc4_ = li32(_loc5_ = _loc3_)) + 52)) != 0)
      {
         si32(1,_loc17_ + 40);
         _loc16_ = li32(_loc4_ + 60);
         _loc15_ = li32(_loc4_ + 72);
         _loc14_ = li32(_loc4_ + 68);
         if((_loc13_ = si8(li8(_loc4_ + 50))) <= -1)
         {
            var _loc12_:*;
            if((_loc12_ = (_loc11_ = (_loc12_ = li8(_loc4_ + 48)) & 63) | _loc14_) == 0)
            {
               addr93:
               si32(0,_loc4_ + 56);
               _loc12_ = li32(_loc17_ + 4);
               var _loc10_:* = li32(_loc17_);
               _loc3_ -= 16;
               si32(_loc17_,_loc3_ + 12);
               _loc1_ = _loc14_ >> 3;
               var _loc6_:int;
               si32(_loc6_ = _loc1_ - _loc16_,_loc3_ + 8);
               si32(_loc12_ = int((_loc10_ *= _loc15_) + _loc12_),_loc3_ + 4);
               si32(_loc12_ = int(_loc4_ + 80),_loc3_);
               ESP = _loc3_;
               F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc3_ += 16;
            }
            else
            {
               _loc7_ = li32(_loc5_ + 4);
               _loc1_ = int((_loc8_ = li32(_loc4_ + 56)) + _loc15_);
               if(_loc1_ < _loc7_)
               {
                  _loc1_ = int(_loc8_ + _loc15_);
                  _loc12_ = li8(_loc4_ + 49);
                  _loc15_ = int((_loc12_ = (_loc12_ |= (_loc10_ = (_loc13_ & 255) << 8) & 3840) << 1) + 2);
                  _loc13_ = int(_loc4_ + 80);
                  _loc9_ = li32(_loc4_ + 64);
                  do
                  {
                     _loc2_ = _loc9_ + -1;
                     _loc9_ = 7;
                     _loc8_ = 0;
                     if(_loc2_ != _loc8_)
                     {
                        _loc9_ = _loc2_;
                     }
                     if(_loc2_ != _loc8_)
                     {
                        _loc8_ = _loc14_;
                     }
                     if((_loc14_ = _loc8_ >> 3) != _loc16_)
                     {
                        _loc3_ -= 16;
                        si32(_loc17_,_loc3_ + 12);
                        si32(_loc10_ = int(_loc14_ - _loc16_),_loc3_ + 8);
                        si32(_loc12_ = int((_loc10_ = int(li32(_loc17_) * _loc1_)) + li32(_loc17_ + 4)),_loc3_ + 4);
                        si32(_loc13_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                        _loc16_ = _loc14_;
                     }
                     _loc1_ += _loc15_;
                     _loc14_ = (_loc12_ = int(_loc8_ + _loc11_)) & 255;
                  }
                  while(_loc1_ < _loc7_);
                  
                  si32(_loc9_,_loc4_ + 64);
                  si32(_loc14_,_loc4_ + 68);
               }
               si32(_loc12_ = int(_loc1_ - _loc7_),_loc4_ + 56);
               _loc1_ = _loc16_;
            }
            si32(_loc1_,_loc4_ + 60);
            §§goto(addr362);
         }
         §§goto(addr93);
      }
      addr362:
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
