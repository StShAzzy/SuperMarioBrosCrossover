package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Sap_Apu10write_dataEiji() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      si32(_loc8_ = li32(_loc3_),_loc2_);
      ESP = _loc2_;
      F__ZN7Sap_Apu9run_untilEi();
      _loc2_ += 16;
      _loc1_ = int((_loc7_ = li32(_loc3_ + 8)) >>> 1);
      _loc6_ = _loc1_ ^ 26880;
      _loc5_ = li32(_loc3_ + 12);
      if(uint(_loc6_) <= 3)
      {
         si8(_loc5_,int(int(_loc8_ + int(_loc6_ * 20)) + (_loc7_ & 1)));
      }
      else if(_loc7_ != 53769)
      {
         if(_loc7_ == 53768)
         {
            si32(_loc5_,_loc8_ + 100);
         }
      }
      else
      {
         si32(0,_loc8_ + 8);
         si32(0,_loc8_ + 28);
         si32(0,_loc8_ + 48);
         si32(0,_loc8_ + 68);
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
