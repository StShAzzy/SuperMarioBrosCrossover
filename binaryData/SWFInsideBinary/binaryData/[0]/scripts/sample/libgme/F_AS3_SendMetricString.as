package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_AS3_SendMetricString() : void
   {
      var _loc3_:* = 0;
      var _loc4_:String = null;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:int = 0;
      var _loc12_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = _loc1_ & -4;
      _loc10_ = (_loc11_ = li32(_loc12_)) + -16843009;
      _loc11_ &= -2139062144;
      _loc10_ = (_loc11_ = _loc11_ &= -2139062144 ^ -2139062144) & _loc10_;
      _loc9_ = li32(_loc3_ + 4);
      if(_loc10_ != 0)
      {
         _loc8_ = _loc12_ + 4;
         _loc7_ = 0;
         while(true)
         {
            _loc6_ = _loc1_ + _loc7_;
            if((uint(_loc6_)) < uint(_loc8_))
            {
               _loc10_ = li8(_loc6_);
               if(_loc10_ == 0)
               {
                  break;
               }
               _loc7_ += 1;
               continue;
            }
         }
         addr212:
         _loc4_ = CModule.readString(_loc1_,_loc7_);
         _loc8_ = _loc9_ & -4;
         _loc10_ = (_loc11_ = li32(_loc8_)) + -16843009;
         _loc11_ &= -2139062144;
         if((_loc10_ = (_loc11_ = _loc11_ &= -2139062144 ^ -2139062144) & _loc10_) != 0)
         {
            _loc6_ = _loc8_ + 4;
            _loc12_ = 0;
            while(true)
            {
               _loc1_ = _loc9_ + _loc12_;
               if(uint(_loc1_) < uint(_loc6_))
               {
                  _loc10_ = li8(_loc1_);
                  if(_loc10_ == 0)
                  {
                     break;
                  }
                  _loc12_ += 1;
                  continue;
               }
            }
            §§goto(addr394);
         }
         _loc6_ = _loc8_ + 4;
         while(true)
         {
            _loc1_ = li32(_loc6_);
            _loc10_ = _loc1_ + -16843009;
            _loc11_ = _loc1_ & -2139062144;
            if((_loc10_ = (_loc11_ = _loc11_ ^ -2139062144) & _loc10_) == 0)
            {
               continue;
            }
            _loc10_ = _loc1_ & 0xFF;
            if(_loc10_ == 0)
            {
               _loc12_ = _loc6_ - _loc9_;
            }
            else
            {
               _loc10_ = li8(_loc6_ + 1);
               if(_loc10_ == 0)
               {
                  _loc10_ = 1 - _loc9_;
                  _loc12_ = _loc10_ + _loc6_;
               }
               else
               {
                  _loc10_ = li8(_loc6_ + 2);
                  if(_loc10_ == 0)
                  {
                     _loc10_ = 2 - _loc9_;
                     _loc12_ = _loc10_ + _loc6_;
                  }
                  else
                  {
                     _loc10_ = li8(_loc6_ + 3);
                     if(_loc10_ != 0)
                     {
                        continue;
                     }
                     _loc10_ = 3 - _loc9_;
                     _loc12_ = _loc10_ + _loc6_;
                  }
               }
            }
            addr394:
            var _loc5_:String = CModule.readString(_loc9_,_loc12_);
            CModule.sendMetric(_loc4_,_loc5_);
            _loc2_ = _loc3_;
            ESP = _loc2_;
            return;
            _loc6_ += 4;
         }
      }
      _loc8_ = _loc12_ + 4;
      while(true)
      {
         _loc6_ = li32(_loc8_);
         _loc10_ = _loc6_ + -16843009;
         _loc11_ = _loc6_ & -2139062144;
         if((_loc10_ = (_loc11_ = _loc11_ ^ -2139062144) & _loc10_) == 0)
         {
            continue;
         }
         _loc10_ = _loc6_ & 0xFF;
         if(_loc10_ == 0)
         {
            _loc7_ = _loc8_ - _loc1_;
         }
         else
         {
            _loc10_ = li8(_loc8_ + 1);
            if(_loc10_ == 0)
            {
               _loc10_ = 1 - _loc1_;
               _loc7_ = _loc10_ + _loc8_;
            }
            else
            {
               _loc10_ = li8(_loc8_ + 2);
               if(_loc10_ == 0)
               {
                  _loc10_ = 2 - _loc1_;
                  _loc7_ = _loc10_ + _loc8_;
               }
               else
               {
                  _loc10_ = li8(_loc8_ + 3);
                  if(_loc10_ != 0)
                  {
                     continue;
                  }
                  _loc10_ = 3 - _loc1_;
                  _loc7_ = _loc10_ + _loc8_;
               }
            }
         }
         §§goto(addr212);
         _loc8_ += 4;
      }
   }
}
