package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Gbs_Emu8cpu_readEj() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = _loc1_ + -65296;
      _loc5_ = li32(_loc3_);
      if(uint(_loc6_) <= 47)
      {
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 8);
         var _loc4_:*;
         _loc6_ = li32(_loc5_ + 360) - (li32((_loc4_ = li32(_loc5_ + 292)) + 36) << 2);
         si32(_loc6_,_loc2_ + 4);
         _loc6_ = _loc5_ + 25072;
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZN6Gb_Apu13read_registerEij();
         _loc2_ += 16;
         eax = _loc6_ = sample.libgme.eax;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      _loc6_ = li32(_loc5_ + 292) + ((_loc4_ = _loc1_ & -8192) >>> 11);
      eax = _loc6_ = li8(_loc6_ = li32(_loc6_) + (_loc1_ & 0x1FFF));
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
