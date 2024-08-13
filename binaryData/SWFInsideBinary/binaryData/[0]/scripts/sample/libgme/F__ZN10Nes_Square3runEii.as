package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN10Nes_Square3runEii() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc16_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc16_ = li8(_loc3_ + 2);
      var _loc15_:* = li8(_loc3_ + 3);
      _loc12_ = (_loc13_ = (_loc14_ = (_loc15_ = (_loc15_ = _loc15_ << 8) & 0x0700) | _loc16_) << 1) + 2;
      _loc11_ = li32(_loc3_ + 8);
      _loc10_ = li32(_loc4_ + 8);
      _loc9_ = li32(_loc4_ + 4);
      if(_loc11_ == 0)
      {
         _loc16_ = li32(_loc3_ + 16);
         _loc9_ = _loc16_ + _loc9_;
         _loc11_ = _loc10_ - _loc9_;
         if(_loc11_ >= 1)
         {
            _loc16_ = _loc11_ + (_loc13_ | 1);
            _loc16_ = _loc16_ / _loc12_;
            _loc15_ = li32(_loc3_ + 32);
            si32(_loc15_ = (_loc15_ = _loc15_ + _loc16_) & 7,_loc3_ + 32);
            _loc16_ *= _loc12_;
            _loc9_ = _loc16_ *= _loc12_ + _loc9_;
         }
         _loc16_ = _loc9_ - _loc10_;
         si32(_loc16_,_loc3_ + 16);
      }
      else
      {
         si32(1,_loc11_ + 40);
         _loc15_ = li8(_loc3_ + 1);
         _loc1_ = _loc14_ >>> (_loc15_ & 7);
         _loc16_ = _loc15_ & 8;
         if(_loc16_ != 0)
         {
            _loc1_ = 0;
         }
         _loc16_ = li32(_loc3_ + 12);
         if(_loc16_ != 0)
         {
            _loc5_ = li8(_loc3_);
            if((_loc16_ = _loc5_ & 0x10) != 0)
            {
               _loc11_ = _loc5_ & 0x0F;
            }
            else
            {
               _loc11_ = li32(_loc3_ + 24);
            }
            if(_loc11_ != 0)
            {
               if(uint(_loc14_) >= 8)
               {
                  _loc16_ = _loc1_ + _loc14_;
                  if(_loc16_ >= 2048)
                  {
                     addr237:
                     _loc11_ = li32(_loc3_ + 20);
                     if(_loc11_ != 0)
                     {
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_ + 12);
                        var _loc6_:*;
                        si32(_loc6_ = 0 - _loc11_,_loc2_ + 8);
                        var _loc7_:int;
                        si32(_loc15_ = (_loc7_ = li32(_loc6_) * _loc9_) + li32((_loc6_ = li32(_loc3_ + 8)) + 4),_loc2_ + 4);
                        si32(li32(_loc3_ + 40),_loc2_);
                        ESP = _loc2_;
                        F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc2_ += 16;
                        si32(0,_loc3_ + 20);
                     }
                     _loc16_ = li32(_loc3_ + 16);
                     _loc14_ = _loc16_ + _loc9_;
                     _loc11_ = _loc10_ - _loc14_;
                     if(_loc11_ >= 1)
                     {
                        _loc16_ = _loc11_ + (_loc13_ | 1);
                        _loc16_ = _loc16_ / _loc12_;
                        _loc15_ = li32(_loc3_ + 32);
                        si32(_loc15_ = (_loc15_ = _loc15_ + _loc16_) & 7,_loc3_ + 32);
                        _loc16_ *= _loc12_;
                        _loc14_ = _loc16_ *= _loc12_ + _loc14_;
                     }
                  }
                  else
                  {
                     _loc1_ = _loc5_ >>> 6;
                     _loc14_ = _loc11_;
                     if(_loc1_ != 3)
                     {
                        _loc14_ = 0;
                     }
                     _loc13_ = 2;
                     if(_loc1_ != 3)
                     {
                        _loc13_ = 1 << _loc1_;
                     }
                     _loc16_ = li32(_loc3_ + 32);
                     _loc1_ = _loc11_;
                     if(_loc16_ >= _loc13_)
                     {
                        _loc1_ = 0;
                     }
                     _loc1_ ^= _loc14_;
                     _loc14_ = li32(_loc3_ + 20);
                     si32(_loc1_,_loc3_ + 20);
                     if(_loc1_ != _loc14_)
                     {
                        _loc2_ -= 16;
                        si32(_loc6_,_loc2_ + 12);
                        si32(_loc6_ = _loc1_ - _loc14_,_loc2_ + 8);
                        si32(_loc15_ = (_loc7_ = li32(_loc6_) * _loc9_) + li32((_loc6_ = li32(_loc3_ + 8)) + 4),_loc2_ + 4);
                        si32(li32(_loc3_ + 40),_loc2_);
                        ESP = _loc2_;
                        F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc2_ += 16;
                     }
                     _loc5_ = li32(_loc3_ + 16);
                     if((_loc14_ = _loc5_ + _loc9_) < _loc10_)
                     {
                        _loc14_ = _loc5_ + _loc9_;
                        _loc16_ = _loc1_ << 1;
                        _loc8_ = _loc16_ - _loc11_;
                        _loc5_ = li32(_loc3_ + 32);
                        _loc9_ = li32(_loc3_ + 40);
                        _loc1_ = li32(_loc3_ + 8);
                        do
                        {
                           _loc16_ = _loc5_ + 1;
                           if((_loc5_ = _loc16_ & 7) != 0)
                           {
                              if(_loc5_ != _loc13_)
                              {
                                 continue;
                              }
                           }
                           _loc16_ = li32(_loc1_ + 4);
                           _loc15_ = li32(_loc1_);
                           _loc2_ -= 16;
                           si32(_loc1_,_loc2_ + 12);
                           _loc8_ = 0 - _loc8_;
                           si32(_loc8_,_loc2_ + 8);
                           _loc15_ *= _loc14_;
                           si32(_loc16_ = _loc15_ *= _loc14_ + _loc16_,_loc2_ + 4);
                           si32(_loc9_,_loc2_);
                           ESP = _loc2_;
                           F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc2_ += 16;
                        }
                        while(_loc14_ += _loc12_, _loc14_ += _loc12_ < _loc10_);
                        
                        _loc16_ = _loc8_ + _loc11_;
                        si32(_loc16_ = _loc16_ >> 1,_loc3_ + 20);
                        si32(_loc5_,_loc3_ + 32);
                     }
                  }
                  _loc16_ = _loc14_ - _loc10_;
                  si32(_loc16_,_loc3_ + 16);
                  §§goto(addr653);
               }
            }
         }
         §§goto(addr237);
      }
      addr653:
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
