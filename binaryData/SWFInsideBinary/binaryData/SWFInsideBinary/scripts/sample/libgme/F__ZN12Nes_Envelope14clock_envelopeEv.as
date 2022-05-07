package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN12Nes_Envelope14clock_envelopeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li8(_loc1_ + 7);
      _loc4_ = (_loc5_ = li8(_loc1_)) & 15;
      if(_loc6_ != 0)
      {
         si8(0,_loc1_ + 7);
         si32(_loc4_,_loc1_ + 28);
         si32(15,_loc1_ + 24);
      }
      else
      {
         si32(_loc6_ = int((_loc6_ = li32(_loc1_ + 28)) + -1),_loc1_ + 28);
         if(_loc6_ <= -1)
         {
            si32(_loc4_,_loc1_ + 28);
            if((_loc6_ = (_loc5_ = li32(_loc1_ + 24)) | _loc5_ & 32) != 0)
            {
               si32(_loc6_ = (_loc6_ = int(_loc5_ + 15)) & 15,_loc1_ + 24);
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
