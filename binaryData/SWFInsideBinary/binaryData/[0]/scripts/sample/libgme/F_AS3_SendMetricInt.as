package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F_AS3_SendMetricInt() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = _loc1_ & -4;
      _loc9_ = (_loc10_ = li32(_loc11_)) + -16843009;
      _loc10_ &= -2139062144;
      _loc9_ = (_loc10_ = _loc10_ &= -2139062144 ^ -2139062144) & _loc9_;
      _loc8_ = li32(_loc3_ + 4);
      if(_loc9_ != 0)
      {
         _loc7_ = _loc11_ + 4;
         _loc6_ = 0;
         while(true)
         {
            _loc5_ = _loc1_ + _loc6_;
            if((uint(_loc5_)) < uint(_loc7_))
            {
               _loc9_ = li8(_loc5_);
               if(_loc9_ == 0)
               {
                  break;
               }
               _loc6_ += 1;
               continue;
            }
         }
         §§goto(addr210);
      }
      _loc11_ += 4;
      while(true)
      {
         _loc6_ = li32(_loc11_);
         _loc9_ = _loc6_ + -16843009;
         _loc10_ = _loc6_ & -2139062144;
         if((_loc9_ = (_loc10_ = _loc10_ ^ -2139062144) & _loc9_) == 0)
         {
            continue;
         }
         _loc9_ = _loc6_ & 0xFF;
         if(_loc9_ == 0)
         {
            _loc6_ = _loc11_ - _loc1_;
         }
         else
         {
            _loc9_ = li8(_loc11_ + 1);
            if(_loc9_ == 0)
            {
               _loc9_ = 1 - _loc1_;
               _loc6_ = _loc9_ + _loc11_;
            }
            else
            {
               _loc9_ = li8(_loc11_ + 2);
               if(_loc9_ == 0)
               {
                  _loc9_ = 2 - _loc1_;
                  _loc6_ = _loc9_ + _loc11_;
               }
               else
               {
                  _loc9_ = li8(_loc11_ + 3);
                  if(_loc9_ != 0)
                  {
                     continue;
                  }
                  _loc9_ = 3 - _loc1_;
                  _loc6_ = _loc9_ + _loc11_;
               }
            }
         }
         addr210:
         var _loc4_:String = CModule.readString(_loc1_,_loc6_);
         CModule.sendMetric(_loc4_,_loc8_);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
         _loc11_ += 4;
      }
   }
}
