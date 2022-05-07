package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.sxi16;
   
   public function F__ZN11Blip_Synth_14adjust_impulseEv() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      var _loc13_:*;
      if((_loc12_ = (_loc13_ = (_loc14_ = li32(_loc3_ + 28)) << 5) | 1) >= 2)
      {
         _loc11_ = _loc14_ << 6;
         _loc10_ = 0;
         _loc9_ = 63;
         _loc8_ = -1;
         while(true)
         {
            _loc14_ = li32(_loc3_ + 24);
            _loc1_ = li32(_loc3_ + 32);
            _loc6_ = 1;
            _loc5_ = _loc14_;
            do
            {
               _loc13_ = si16(li16((_loc13_ = int(_loc5_ - _loc10_)) + 128));
               _loc13_ = int(_loc1_ - _loc13_);
               var _loc7_:* = si16(li16(_loc7_ = int(_loc5_ + _loc10_)));
               _loc1_ = int(_loc13_ - _loc7_);
               _loc5_ += 128;
            }
            while((_loc6_ += 64) < _loc12_);
            
            if(_loc8_ == _loc9_)
            {
               _loc1_ = (_loc13_ = int(_loc1_ + (int(_loc1_ >>> 31)))) >> 1;
            }
            si16(_loc7_ = int((_loc7_ = li16(_loc13_ = int((_loc13_ = int(_loc14_ + _loc11_)) - _loc10_))) + _loc1_),_loc13_);
            _loc8_ += 1;
            _loc9_ += -1;
            if((_loc10_ += 2) != 66)
            {
               continue;
            }
         }
      }
      else
      {
         _loc10_ = _loc14_ << 6;
         _loc14_ = 63;
         _loc12_ = -1;
         do
         {
            _loc9_ = li32(_loc3_ + 32);
            if(_loc12_ == _loc14_)
            {
               _loc9_ = (_loc13_ = int(_loc9_ + (int(_loc9_ >>> 31)))) >> 1;
            }
            _loc7_ = int((_loc13_ = li32(_loc3_ + 24)) + _loc10_);
            _loc13_ = _loc12_ << 1;
            si16(_loc7_ = int((_loc7_ = li16((_loc13_ = int(_loc7_ - _loc13_)) - 2)) + _loc9_),_loc13_ - 2);
            _loc12_ += 1;
         }
         while((_loc14_ += -1) != 30);
         
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
