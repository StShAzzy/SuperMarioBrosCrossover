package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN9Music_Emu8set_fadeEll() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li32(_loc1_ + 192);
      _loc6_ = li32(_loc3_ + 8);
      si32(_loc6_ = int((_loc6_ = int(_loc7_ * _loc6_)) / 2048000),_loc1_ + 216);
      _loc6_ = int((_loc4_ = (_loc5_ = li32(_loc3_ + 4)) / 1000) * _loc7_);
      _loc7_ = int((_loc7_ = int((_loc5_ = int((_loc4_ *= -1000) + _loc5_)) * _loc7_)) / 1000);
      si32(_loc7_ = (_loc7_ = int(_loc6_ + _loc7_)) << 1,_loc1_ + 212);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
