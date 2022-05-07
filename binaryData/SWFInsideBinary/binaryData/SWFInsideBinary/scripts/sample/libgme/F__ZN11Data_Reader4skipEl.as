package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN11Data_Reader4skipEl() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 512;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = li32(_loc3_);
      do
      {
         _loc4_ = 0;
         if(_loc1_ == 0)
         {
            break;
         }
         var _loc7_:*;
         _loc6_ = li32((_loc7_ = li32(_loc8_)) + 12);
         _loc2_ -= 16;
         si32(_loc7_ = int(_loc3_ - 512),_loc2_ + 4);
         si32(_loc8_,_loc2_);
         _loc5_ = _loc1_;
         if(_loc1_ >= 512)
         {
            _loc5_ = 512;
         }
         si32(_loc5_,_loc2_ + 8);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc1_ -= _loc5_;
         _loc2_ += 16;
      }
      while((_loc4_ = eax) == 0);
      
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
