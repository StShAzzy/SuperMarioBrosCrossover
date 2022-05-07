package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Nsfe_Emu16disable_playlistEb() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      si8(_loc1_,_loc6_ + 16948);
      si8(_loc5_ = li32(_loc6_ + 16932),_loc6_ + 15766);
      var _loc4_:*;
      if((_loc4_ = _loc5_ & 255) != 0)
      {
         if(_loc1_ != 0)
         {
            addr51:
            si8(_loc5_ = li32(_loc6_ + 16944),_loc6_ + 15766);
         }
         si32(_loc4_ = _loc5_ & 255,_loc6_ + 12);
         si32(_loc4_,_loc6_ + 8);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr51);
   }
}
