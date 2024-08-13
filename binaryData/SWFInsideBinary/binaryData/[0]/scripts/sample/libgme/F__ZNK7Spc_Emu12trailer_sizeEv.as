package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK7Spc_Emu12trailer_sizeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc1_ = li32(_loc1_ + 256);
      _loc4_ = _loc1_ + -66048;
      if(_loc4_ <= 0)
      {
         _loc4_ = 0;
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
