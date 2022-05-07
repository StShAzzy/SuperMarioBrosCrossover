package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F___dynamic_cast() : void
   {
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = 0;
      var _loc18_:* = 0;
      var _loc15_:int = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc17_:* = 0;
      var _loc7_:int = 0;
      var _loc10_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ -= 32;
      _loc17_ = li32((_loc18_ = li32(_loc4_ = li32(_loc6_))) - 8);
      _loc18_ = li32(_loc18_ - 4);
      si32(_loc16_ = 0,_loc6_ - 24);
      _loc14_ = (_loc15_ = _loc6_ - 24) | 4;
      si32(_loc16_,_loc14_);
      si32(_loc16_,_loc6_ - 16);
      si32(_loc16_,_loc6_ - 12);
      si32(16,_loc6_ - 8);
      var _loc13_:*;
      _loc12_ = li32((_loc13_ = li32(_loc18_)) + 28);
      _loc3_ -= 32;
      si32(_loc15_,_loc3_ + 28);
      si32(_loc4_,_loc3_ + 24);
      si32(_loc11_ = li32(_loc6_ + 4),_loc3_ + 20);
      si32(_loc17_ = int(_loc4_ + _loc17_),_loc3_ + 16);
      _loc1_ = li32(_loc6_ + 8);
      si32(_loc1_,_loc3_ + 12);
      si32(_loc7_ = 6,_loc3_ + 8);
      si32(_loc8_ = li32(_loc6_ + 12),_loc3_ + 4);
      si32(_loc18_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc12_]();
      _loc3_ += 32;
      if((_loc9_ = li32(_loc6_ - 24)) != 0)
      {
         _loc16_ = _loc9_;
         if(((_loc10_ = li32(_loc6_ - 12)) & 6) != 6)
         {
            _loc2_ = li32(_loc6_ - 16);
            _loc16_ = _loc9_;
            if(((_loc17_ = _loc2_ & li32(_loc14_)) & 6) != 6)
            {
               _loc16_ = 0;
               if((_loc2_ & 5) != 4)
               {
                  if(_loc10_ == 0)
                  {
                     if(_loc8_ >= 0)
                     {
                        if((_loc17_ = int(_loc9_ + _loc8_)) != _loc4_)
                        {
                           _loc7_ = 1;
                        }
                     }
                     else
                     {
                        _loc7_ = 1;
                        if(_loc8_ != -2)
                        {
                           var _loc5_:* = li32((_loc17_ = li32(_loc1_)) + 32);
                           _loc3_ -= 32;
                           si32(_loc4_,_loc3_ + 16);
                           si32(_loc11_,_loc3_ + 12);
                           si32(_loc9_,_loc3_ + 8);
                           si32(_loc8_,_loc3_ + 4);
                           si32(_loc1_,_loc3_);
                           ESP = _loc3_;
                           ptr2fun[_loc5_]();
                           _loc3_ += 32;
                           _loc7_ = eax;
                        }
                     }
                     si32(_loc7_,_loc6_ - 12);
                     _loc10_ = _loc7_;
                  }
                  _loc17_ = _loc10_ & 6;
                  _loc16_ = 0;
                  if(_loc17_ == 6)
                  {
                     _loc16_ = li32(_loc6_ - 24);
                  }
               }
            }
         }
      }
      eax = _loc16_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
