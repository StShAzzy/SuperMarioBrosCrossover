package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer5clearEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 432);
      si32(0,_loc1_ + 436);
      var _loc8_:*;
      if((_loc8_ = li32(_loc1_ + 460)) != 0)
      {
         _loc2_ -= 16;
         si32(8192,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(li32(_loc1_ + 456),_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      if((_loc8_ = li32(_loc1_ + 452)) != 0)
      {
         _loc2_ -= 16;
         si32(32768,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(li32(_loc1_ + 448),_loc2_);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc7_ = li32(_loc1_ + 440);
      _loc6_ = 0;
      if(_loc7_ >= 1)
      {
         do
         {
            _loc8_ = (_loc8_ = int(_loc6_ * 11)) << 2;
            _loc5_ = _loc1_ + _loc8_;
            si32(0,_loc5_ + 24);
            si32(0,_loc5_ + 36);
            si32(0,_loc5_ + 60);
            if((_loc4_ = li32(_loc5_ + 28)) != 0)
            {
               _loc2_ -= 16;
               si32(0,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               si32(_loc8_ = int((_loc8_ = li32(_loc5_ + 32) << 2) + 72),_loc2_ + 8);
               ESP = _loc2_;
               Fmemset();
               _loc2_ += 16;
               _loc7_ = li32(_loc1_ + 440);
            }
            _loc6_ += 1;
         }
         while(_loc7_ > _loc6_);
         
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
