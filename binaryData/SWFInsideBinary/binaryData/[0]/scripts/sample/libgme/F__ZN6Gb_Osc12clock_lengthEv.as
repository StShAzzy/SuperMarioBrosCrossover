package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Osc12clock_lengthEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc5_:* = li32(_loc1_ + 24);
      if((_loc5_ = (_loc5_ = li8(_loc5_ + 4)) & 0x40) != 0)
      {
         _loc4_ = li32(_loc1_ + 40);
         if(_loc4_ != 0)
         {
            _loc5_ = _loc4_ + -1;
            si32(_loc5_,_loc1_ + 40);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
