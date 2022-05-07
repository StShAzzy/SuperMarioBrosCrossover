package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info11__do_upcastEPKNS_17__class_type_infoEPKvRNS1_15__upcast_resultE() : void
   {
      var _loc2_:* = 0;
      var _loc25_:* = 0;
      var _loc10_:* = 0;
      var _loc22_:* = 0;
      var _loc23_:* = 0;
      var _loc20_:* = 0;
      var _loc19_:* = 0;
      var _loc11_:* = 0;
      var _loc18_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:int = 0;
      var _loc24_:* = 0;
      var _loc15_:int = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:int = 0;
      var _loc26_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc3_:int = 0;
      var _loc21_:* = 0;
      var _loc1_:* = int(ESP);
      _loc2_ = _loc1_;
      _loc1_ -= 16;
      _loc26_ = li32((_loc10_ = li32(_loc2_ + 4)) + 4);
      _loc24_ = li32((_loc25_ = li32(_loc2_)) + 4);
      _loc23_ = li32(_loc2_ + 12);
      _loc22_ = li32(_loc2_ + 8);
      if(_loc24_ == _loc26_)
      {
         si32(_loc22_,_loc23_);
         si32(8,_loc23_ + 12);
         si32(6,_loc23_ + 4);
         _loc21_ = 1;
      }
      else
      {
         if((_loc26_ = (_loc20_ = li32(_loc23_ + 8)) & 16) != 0)
         {
            _loc20_ = li32(_loc25_ + 8);
         }
         _loc19_ = _loc20_ & 1;
         _loc7_ = (_loc26_ = li32(_loc25_ + 12)) + 1;
         while(true)
         {
            if(_loc7_ == 1)
            {
               _loc3_ = 1;
               if(li32(_loc23_ + 4) == 0)
               {
                  _loc3_ = 0;
               }
               _loc21_ = _loc3_ & 1;
               break;
            }
            si32(0,_loc2_ - 16);
            _loc16_ = (_loc15_ = _loc2_ - 16) | 4;
            si32(0,_loc16_);
            si32(_loc20_,_loc2_ - 8);
            si32(0,_loc2_ - 4);
            _loc18_ = (_loc17_ = li32((_loc26_ = int(_loc25_ + (_loc7_ << 3))) + 4)) & 2;
            if(_loc19_ == 0)
            {
               if((_loc26_ = int(_loc18_ >>> 1)) == 0)
               {
                  continue;
               }
            }
            _loc11_ = _loc17_ & 1;
            _loc12_ = 0;
            if(_loc22_ != 0)
            {
               _loc13_ = _loc17_ >> 8;
               if(_loc11_ != 0)
               {
                  _loc13_ = li32(_loc26_ = int((_loc26_ = li32(_loc22_)) + _loc13_));
               }
               _loc12_ = _loc22_ + _loc13_;
            }
            _loc26_ = (_loc26_ = _loc7_ << 1) << 2;
            var _loc9_:* = li32((_loc26_ = li32(_loc24_ = li32(_loc14_ = _loc25_ + _loc26_))) + 24);
            _loc1_ -= 16;
            si32(_loc15_,_loc1_ + 12);
            si32(_loc12_,_loc1_ + 8);
            si32(_loc10_,_loc1_ + 4);
            si32(_loc24_,_loc1_);
            ESP = _loc1_;
            ptr2fun[_loc9_]();
            _loc1_ += 16;
            if((_loc26_ = int(eax)) != 0)
            {
               if((_loc8_ = li32(_loc2_ - 4)) == 8)
               {
                  if(_loc11_ != 0)
                  {
                     si32(_loc8_ = li32(_loc14_),_loc2_ - 4);
                  }
               }
               if((_loc6_ = li32(_loc16_)) >= 4)
               {
                  if(_loc18_ == 0)
                  {
                     si32(_loc6_ &= -3,_loc16_);
                  }
               }
               if((_loc4_ = li32(_loc23_ + 12)) != 0)
               {
                  _loc5_ = li32(_loc23_);
                  if(_loc5_ != li32(_loc2_ - 16))
                  {
                     si32(0,_loc23_);
                     si32(2,_loc23_ + 4);
                     _loc21_ = 1;
                     break;
                  }
                  if(_loc5_ == 0)
                  {
                     if(_loc8_ != 8)
                     {
                        if(_loc4_ != 8)
                        {
                           if((_loc26_ = li32(_loc8_ + 4)) == li32(_loc4_ + 4))
                           {
                              si32(_loc26_ = (_loc26_ = li32(_loc23_ + 4)) | _loc6_,_loc23_ + 4);
                              continue;
                           }
                        }
                     }
                     si32(2,_loc23_ + 4);
                     _loc21_ = 1;
                  }
                  si32(_loc26_ = (_loc26_ = li32(_loc23_ + 4)) | _loc6_,_loc23_ + 4);
               }
               si32(_loc26_ = li32(_loc2_ - 16),_loc23_);
               si32(_loc6_,_loc23_ + 4);
               si32(_loc26_ = li32(_loc2_ - 8),_loc23_ + 8);
               si32(_loc8_,_loc23_ + 12);
               _loc21_ = 1;
               if(_loc6_ < 4)
               {
                  break;
               }
               if((_loc26_ = _loc6_ & 2) != 0)
               {
                  _loc21_ = 1;
                  if(((_loc26_ = li8(_loc25_ + 8)) & 1) == 0)
                  {
                     break;
                  }
               }
               else
               {
                  _loc21_ = 1;
                  if((_loc6_ & 1) == 0)
                  {
                     break;
                  }
                  _loc21_ = 1;
                  if(((_loc26_ = li8(_loc25_ + 8)) & 2) == 0)
                  {
                     break;
                  }
               }
               continue;
               continue;
               break;
            }
         }
      }
      eax = _loc21_;
      _loc1_ = _loc2_;
      ESP = _loc1_;
   }
}
