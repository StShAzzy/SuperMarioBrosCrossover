package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer8mix_monoEPsi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:int = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_ + 36);
      if((_loc10_ = li32(_loc3_ + 8)) != 0)
      {
         _loc9_ = li32(_loc1_ + 40);
         var _loc8_:*;
         _loc7_ = (_loc8_ = li32(_loc3_ + 4)) + 2;
         _loc6_ = li32(_loc1_ + 28);
         do
         {
            _loc5_ = _loc11_ >> 14;
            if((_loc8_ = (_loc8_ = _loc11_ << 2) >> 16) != _loc5_)
            {
               _loc5_ = int(32767 - (_loc11_ >> 31));
            }
            _loc8_ = li32(_loc6_);
            si16(_loc5_,_loc7_ - 2);
            si16(_loc5_,_loc7_);
            var _loc4_:* = _loc11_ >> _loc9_;
            _loc4_ = int(_loc11_ - _loc4_);
            _loc11_ = int(_loc8_ + _loc4_);
            _loc6_ += 4;
            _loc7_ += 4;
         }
         while((_loc10_ += -1) != 0);
         
      }
      si32(_loc11_,_loc1_ + 36);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
