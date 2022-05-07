package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   
   public function F__ZNK7Spc_Emu7trailerEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if((_loc5_ = li32(_loc1_ + 256)) >= 66048)
      {
         _loc5_ = 66048;
      }
      var _loc4_:*;
      eax = _loc4_ = int((_loc4_ = li32(_loc1_ + 252)) + _loc5_);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
