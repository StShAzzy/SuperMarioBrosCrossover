package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nes_Apu11read_statusEi() : void
   {
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc17_:* = 0;
      var _loc1_:int = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc3_ -= 16;
      si32(_loc4_ = li32(_loc6_),_loc3_);
      si32(_loc17_ = int((_loc18_ = li32(_loc6_ + 4)) + -1),_loc3_ + 4);
      ESP = _loc3_;
      F__ZN7Nes_Apu10run_until_Ei();
      _loc3_ += 16;
      _loc16_ = li32((_loc17_ = li32(_loc4_ + 16)) + 12);
      _loc15_ = li32((_loc17_ = li32(_loc4_ + 12)) + 12);
      _loc14_ = li32((_loc17_ = li32(_loc4_ + 8)) + 12);
      _loc13_ = li32((_loc17_ = li32(_loc4_ + 4)) + 12);
      _loc12_ = li8(_loc4_ + 1980);
      _loc11_ = li8(_loc4_ + 1361);
      _loc17_ = li32((_loc17_ = li32(_loc4_)) + 12);
      _loc3_ -= 16;
      si32(_loc18_,_loc3_ + 4);
      si32(_loc4_,_loc3_);
      _loc1_ = 1;
      if(_loc17_ == 0)
      {
         _loc1_ = 0;
      }
      _loc17_ = _loc1_ & 1;
      var _loc7_:* = _loc11_ << 7;
      var _loc8_:*;
      _loc9_ = (_loc7_ = (_loc8_ = _loc12_ << 6) | _loc7_) | _loc17_;
      if(_loc13_ != 0)
      {
         _loc9_ |= 2;
      }
      if(_loc14_ != 0)
      {
         _loc9_ |= 4;
      }
      if(_loc15_ != 0)
      {
         _loc9_ |= 8;
      }
      if(_loc16_ != 0)
      {
         _loc9_ |= 16;
      }
      ESP = _loc3_;
      F__ZN7Nes_Apu10run_until_Ei();
      _loc3_ += 16;
      if((_loc17_ = li8(_loc4_ + 1980)) != 0)
      {
         si8(_loc10_ = 0,_loc4_ + 1980);
         if((_loc17_ = li8(_loc4_ + 1361)) == 0)
         {
            _loc10_ = li32(_loc4_ + 1356);
            _loc2_ = li32(_loc4_ + 1956);
            if(_loc2_ < _loc10_)
            {
               _loc10_ = _loc2_;
            }
         }
         _loc9_ |= 64;
         if((_loc17_ = li32(_loc4_ + 1952)) != _loc10_)
         {
            si32(_loc10_,_loc4_ + 1952);
            if((_loc5_ = li32(_loc4_ + 1984)) != 0)
            {
               _loc3_ -= 16;
               si32(li32(_loc4_ + 1988),_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc5_]();
               _loc3_ += 16;
            }
         }
      }
      eax = _loc9_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
