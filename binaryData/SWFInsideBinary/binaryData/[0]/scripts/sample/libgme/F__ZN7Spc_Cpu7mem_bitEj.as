package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Spc_Cpu7mem_bitEj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc5_ = li32(_loc1_);
      _loc4_ = li32(_loc3_ + 4);
      _loc4_ = _loc5_ + _loc4_;
      _loc5_ = li8(_loc4_);
      _loc4_ = li8(_loc4_ + 1);
      _loc1_ = li32(_loc1_ + 20);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      _loc1_ = _loc4_ << 8;
      _loc1_ &= 7936;
      _loc5_ = _loc1_ | _loc5_;
      si32(_loc5_,_loc2_ + 4);
      _loc5_ = _loc4_ >>> 5;
      ESP = _loc2_;
      F__ZN8Snes_Spc4readEj();
      _loc2_ += 16;
      _loc4_ = sample.libgme.eax;
      eax = _loc5_ = (_loc5_ = (_loc5_ = _loc4_ >>> _loc5_) << 8) & 0x0100;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
