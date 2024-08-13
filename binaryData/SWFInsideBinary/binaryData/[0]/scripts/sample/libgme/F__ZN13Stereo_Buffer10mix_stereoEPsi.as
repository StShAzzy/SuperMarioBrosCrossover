package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer10mix_stereoEPsi() : void
   {
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc14_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:int = 0;
      var _loc15_:* = 0;
      var _loc9_:int = 0;
      var _loc18_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc3_:* = sample.libgme.ESP;
      _loc6_ = _loc3_;
      _loc18_ = li32((_loc4_ = li32(_loc6_)) + 36);
      _loc17_ = li32(_loc4_ + 124);
      _loc16_ = li32(_loc4_ + 80);
      _loc15_ = li32(_loc6_ + 8);
      if(_loc15_ != 0)
      {
         _loc14_ = li32(_loc4_ + 84);
         var _loc13_:* = li32(_loc6_ + 4);
         _loc12_ = _loc13_ + 2;
         _loc11_ = li32(_loc4_ + 72);
         _loc1_ = li32(_loc4_ + 116);
         _loc7_ = li32(_loc4_ + 28);
         do
         {
            _loc8_ = _loc18_ >> 14;
            _loc13_ = _loc16_ >> 14;
            if((_loc13_ = (_loc13_ = (_loc9_ = _loc13_ + _loc8_) << 16) >> 16) != _loc9_)
            {
               _loc9_ = 32767 - (_loc9_ >> 24);
            }
            _loc13_ = _loc17_ >> 14;
            _loc8_ = _loc13_ + _loc8_;
            _loc10_ = li32(_loc7_);
            _loc13_ = _loc8_ << 16;
            if((_loc13_ = _loc13_ >> 16) != _loc8_)
            {
               _loc8_ = 32767 - (_loc8_ >> 24);
            }
            _loc13_ = _loc18_ >> _loc14_;
            _loc13_ = _loc18_ - _loc13_;
            _loc18_ = _loc10_ + _loc13_;
            _loc13_ = li32(_loc11_);
            var _loc2_:* = li32(_loc1_);
            si16(_loc9_,_loc12_ - 2);
            si16(_loc8_,_loc12_);
            var _loc5_:* = _loc17_ >> _loc14_;
            _loc5_ = _loc17_ - _loc5_;
            _loc17_ = _loc2_ + _loc5_;
            _loc2_ = _loc16_ >> _loc14_;
            _loc2_ = _loc16_ - _loc2_;
            _loc16_ = _loc13_ + _loc2_;
            _loc7_ += 4;
            _loc1_ += 4;
            _loc11_ += 4;
            _loc12_ += 4;
         }
         while(_loc15_ += -1, _loc15_ += -1 != 0);
         
      }
      si32(_loc18_,_loc4_ + 36);
      si32(_loc17_,_loc4_ + 124);
      si32(_loc16_,_loc4_ + 80);
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
