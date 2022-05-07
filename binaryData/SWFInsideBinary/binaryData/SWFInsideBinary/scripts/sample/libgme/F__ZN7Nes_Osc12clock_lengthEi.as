package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nes_Osc12clock_lengthEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      if((_loc6_ = li32(_loc1_ + 12)) != 0)
      {
         var _loc5_:*;
         var _loc4_:*;
         if((_loc5_ = (_loc4_ = li8(_loc1_)) & li32(_loc3_ + 4)) == 0)
         {
            si32(_loc5_ = int(_loc6_ + -1),_loc1_ + 12);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
