package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Env14clock_envelopeEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 48);
      if(_loc6_ != 0)
      {
         var _loc5_:* = _loc6_ + -1;
         si32(_loc5_,_loc1_ + 48);
         if(_loc5_ == 0)
         {
            var _loc4_:* = li32(_loc1_ + 24);
            si32(_loc5_ = (_loc5_ = li8(_loc4_ + 2)) & 7,_loc1_ + 48);
            _loc5_ = li32(_loc1_ + 36) + ((_loc4_ = (_loc4_ = li8(_loc4_ + 2)) >>> 2) & 2);
            if((uint(_loc6_ = _loc5_ + -1)) <= 14)
            {
               si32(_loc6_,_loc1_ + 36);
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
