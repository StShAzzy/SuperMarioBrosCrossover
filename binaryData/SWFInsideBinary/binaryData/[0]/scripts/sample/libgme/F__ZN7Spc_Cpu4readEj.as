package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Spc_Cpu4readEj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc1_ = li32(_loc1_ + 20);
      _loc2_ -= 16;
      var _loc4_:* = li32(_loc3_ + 4);
      si32(_loc4_,_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN8Snes_Spc4readEj();
      _loc2_ += 16;
      _loc1_ = sample.libgme.eax;
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
