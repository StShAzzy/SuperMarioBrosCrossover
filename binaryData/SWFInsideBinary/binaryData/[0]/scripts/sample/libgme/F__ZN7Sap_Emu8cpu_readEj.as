package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   
   public function F__ZN7Sap_Emu8cpu_readEj() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      var _loc4_:* = li32(_loc3_);
      _loc1_ = _loc4_ + _loc1_;
      _loc1_ = li8(_loc1_ + 1364);
      eax = _loc1_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
