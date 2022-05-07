package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info20__do_find_public_srcEiPKvPKNS_17__class_type_infoES2_() : void
   {
      var _loc8_:* = 0;
      var _loc18_:* = 0;
      var _loc14_:* = 0;
      var _loc19_:* = 0;
      var _loc20_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:int = 0;
      var _loc12_:* = 0;
      var _loc15_:* = 0;
      var _loc3_:* = int(ESP);
      _loc4_ = li32((_loc8_ = _loc3_) + 16);
      _loc20_ = li32(_loc8_ + 12);
      _loc19_ = li32(_loc8_ + 8);
      _loc18_ = li32(_loc8_);
      if(_loc19_ == _loc4_)
      {
         _loc15_ = 6;
         if(li32(_loc18_ + 4) != li32(_loc20_ + 4))
         {
            addr73:
            _loc14_ = li32(_loc8_ + 4);
            _loc13_ = li32(_loc18_ + 12);
            if(_loc14_ != -3)
            {
               _loc1_ = _loc13_ + 1;
               while(true)
               {
                  _loc15_ = 1;
                  if(_loc1_ != 1)
                  {
                     var _loc17_:*;
                     if((_loc17_ = (_loc5_ = li32((_loc17_ = int(_loc18_ + (_loc1_ << 3))) + 4)) & 2) == 0)
                     {
                        continue;
                     }
                     _loc12_ = _loc5_ & 1;
                     _loc6_ = _loc5_ >> 8;
                     if(_loc12_ != 0)
                     {
                        _loc6_ = li32(_loc17_ = int((_loc17_ = li32(_loc19_)) + _loc6_));
                     }
                     _loc17_ = (_loc17_ = _loc1_ << 1) << 2;
                     var _loc16_:*;
                     var _loc7_:* = li32((_loc16_ = li32(_loc17_ = li32(_loc17_ = int(_loc18_ + _loc17_)))) + 32);
                     _loc3_ -= 32;
                     si32(_loc4_,_loc3_ + 16);
                     si32(_loc20_,_loc3_ + 12);
                     si32(_loc16_ = int(_loc19_ + _loc6_),_loc3_ + 8);
                     si32(_loc14_,_loc3_ + 4);
                     si32(_loc17_,_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc7_]();
                     _loc3_ += 32;
                     _loc2_ = eax;
                     if(_loc2_ < 4)
                     {
                        continue;
                     }
                  }
                  §§goto(addr372);
               }
            }
            else
            {
               _loc9_ = _loc13_ + 1;
               while(true)
               {
                  _loc15_ = 1;
                  if(_loc9_ != 1)
                  {
                     if((_loc17_ = (_loc10_ = li32((_loc17_ = int(_loc18_ + (_loc9_ << 3))) + 4)) & 2) == 0)
                     {
                        continue;
                     }
                     if((_loc17_ = _loc10_ & 1) != 0)
                     {
                        continue;
                     }
                     var _loc11_:* = li32((_loc16_ = li32(_loc17_ = li32(_loc17_ = int(_loc18_ + ((_loc17_ = _loc9_ << 1) << 2))))) + 32);
                     _loc3_ -= 32;
                     si32(_loc4_,_loc3_ + 16);
                     si32(_loc20_,_loc3_ + 12);
                     si32(_loc16_ = int(_loc19_ + (_loc10_ >> 8)),_loc3_ + 8);
                     si32(_loc14_,_loc3_ + 4);
                     si32(_loc17_,_loc3_);
                     ESP = _loc3_;
                     ptr2fun[_loc11_]();
                     _loc12_ = 0;
                     _loc3_ += 32;
                     _loc2_ = eax;
                     if(_loc2_ <= 3)
                     {
                        continue;
                     }
                  }
                  break;
               }
               §§goto(addr372);
            }
            _loc15_ = _loc2_ | _loc12_;
         }
         addr372:
         eax = _loc15_;
         _loc3_ = _loc8_;
         ESP = _loc3_;
         return;
      }
      §§goto(addr73);
   }
}
