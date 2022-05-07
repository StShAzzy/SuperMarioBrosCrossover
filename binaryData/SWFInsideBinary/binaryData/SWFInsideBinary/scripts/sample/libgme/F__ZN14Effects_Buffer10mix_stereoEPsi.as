package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer10mix_stereoEPsi() : void
   {
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc7_:* = 0;
      var _loc15_:* = 0;
      var _loc5_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      _loc18_ = li32((_loc4_ = li32(_loc6_ = _loc3_)) + 124);
      _loc17_ = li32(_loc4_ + 80);
      _loc16_ = li32(_loc4_ + 36);
      if((_loc15_ = li32(_loc6_ + 8)) != 0)
      {
         _loc14_ = li32(_loc4_ + 40);
         var _loc13_:*;
         _loc12_ = (_loc13_ = li32(_loc6_ + 4)) + 2;
         _loc11_ = li32(_loc4_ + 28);
         _loc1_ = li32(_loc4_ + 72);
         _loc7_ = li32(_loc4_ + 116);
         do
         {
            _loc8_ = _loc16_ >> 14;
            _loc9_ = li32(_loc7_);
            _loc10_ = li32(_loc1_);
            _loc2_ = li32(_loc11_);
            _loc13_ = _loc17_ >> 14;
            if((_loc13_ = (_loc13_ = (_loc5_ = _loc8_ + _loc13_) << 16) >> 16) != _loc5_)
            {
               _loc5_ = 32767 - (_loc5_ >> 24);
            }
            _loc13_ = _loc18_ >> 14;
            _loc8_ += _loc13_;
            si16(_loc5_,_loc12_ - 2);
            if((_loc13_ = (_loc13_ = _loc8_ << 16) >> 16) != _loc8_)
            {
               _loc8_ = int(32767 - (_loc8_ >> 24));
            }
            _loc13_ = _loc18_ >> _loc14_;
            _loc18_ = int((_loc13_ = int(_loc9_ - _loc13_)) + _loc18_);
            _loc13_ = _loc17_ >> _loc14_;
            _loc17_ = int((_loc13_ = int(_loc10_ - _loc13_)) + _loc17_);
            _loc13_ = _loc16_ >> _loc14_;
            _loc16_ = int((_loc13_ = int(_loc2_ - _loc13_)) + _loc16_);
            si16(_loc8_,_loc12_);
            _loc1_ += 4;
            _loc11_ += 4;
            _loc12_ += 4;
            _loc7_ += 4;
         }
         while((_loc15_ += -1) != 0);
         
      }
      si32(_loc18_,_loc4_ + 124);
      si32(_loc17_,_loc4_ + 80);
      si32(_loc16_,_loc4_ + 36);
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
