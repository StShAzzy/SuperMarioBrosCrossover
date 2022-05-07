package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Kss_CpuC1Ev() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:int = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc12_:*;
      si32(_loc12_ = int(_loc1_ + 520),_loc1_ + 516);
      _loc11_ = _loc1_ + 255;
      _loc10_ = 0;
      do
      {
         _loc4_ = _loc10_ + 255;
         _loc9_ = 1;
         _loc7_ = 4;
         _loc8_ = _loc4_;
         if(_loc10_ != -255)
         {
            do
            {
               _loc9_ ^= _loc8_;
            }
            while((_loc8_ >>= 1) != 0);
            
            _loc7_ = (_loc12_ = _loc9_ << 2) & 4;
         }
         _loc12_ = int(_loc11_ + _loc10_);
         var _loc6_:* = int(_loc11_ + _loc10_);
         var _loc5_:* = _loc4_ & 168;
         si8(_loc5_ = _loc7_ | _loc5_,_loc6_);
         si8(_loc6_ = _loc5_ | 1,_loc12_ + 256);
      }
      while((_loc10_ += -1) != -256);
      
      si8(_loc12_ = (_loc12_ = li8(_loc1_)) | 64,_loc1_);
      si8(_loc12_ = (_loc12_ = li8(_loc1_ + 256)) | 64,_loc1_ + 256);
      ESP = _loc3_;
   }
}
