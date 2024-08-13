package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer20mix_stereo_no_centerEPsi() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:int = 0;
      var _loc13_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc4_ = _loc2_;
      _loc3_ = li32(_loc4_);
      _loc15_ = li32(_loc3_ + 124);
      _loc14_ = li32(_loc3_ + 80);
      _loc13_ = li32(_loc4_ + 8);
      if(_loc13_ != 0)
      {
         _loc12_ = li32(_loc3_ + 84);
         var _loc11_:* = li32(_loc4_ + 4);
         _loc10_ = _loc11_ + 2;
         _loc9_ = li32(_loc3_ + 72);
         _loc8_ = li32(_loc3_ + 116);
         do
         {
            _loc1_ = _loc14_ >> 14;
            _loc11_ = _loc14_ << 2;
            if((_loc11_ = _loc11_ >> 16) != _loc1_)
            {
               _loc1_ = 32767 - (_loc14_ >> 31);
            }
            _loc5_ = _loc15_ >> 14;
            _loc11_ = _loc15_ << 2;
            if((_loc11_ = _loc11_ >> 16) != _loc5_)
            {
               _loc5_ = 32767 - (_loc15_ >> 31);
            }
            _loc11_ = li32(_loc9_);
            var _loc6_:* = li32(_loc8_);
            si16(_loc1_,_loc10_ - 2);
            si16(_loc5_,_loc10_);
            var _loc7_:* = _loc15_ >> _loc12_;
            _loc7_ = _loc15_ - _loc7_;
            _loc15_ = _loc6_ + _loc7_;
            _loc6_ = _loc14_ >> _loc12_;
            _loc6_ = _loc14_ - _loc6_;
            _loc14_ = _loc11_ + _loc6_;
            _loc8_ += 4;
            _loc9_ += 4;
            _loc10_ += 4;
         }
         while(_loc13_ += -1, _loc13_ += -1 != 0);
         
      }
      si32(_loc15_,_loc3_ + 124);
      si32(_loc14_,_loc3_ + 80);
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
