package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZNK12Nes_Envelope6volumeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_ + 12);
      _loc4_ = 0;
      if(_loc5_ != 0)
      {
         _loc4_ = li8(_loc1_);
         if((_loc5_ = _loc4_ & 0x10) != 0)
         {
            _loc4_ &= 15;
         }
         else
         {
            _loc4_ = li32(_loc1_ + 24);
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
