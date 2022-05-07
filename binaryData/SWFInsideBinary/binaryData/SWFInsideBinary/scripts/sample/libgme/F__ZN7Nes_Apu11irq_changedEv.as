package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nes_Apu11irq_changedEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li8(_loc1_ + 1361);
      var _loc7_:*;
      _loc8_ = (_loc8_ = (_loc7_ = li8(_loc1_ + 1980)) | _loc8_) & 255;
      _loc6_ = 0;
      if(_loc8_ == 0)
      {
         _loc6_ = li32(_loc1_ + 1356);
         if((_loc5_ = li32(_loc1_ + 1956)) < _loc6_)
         {
            _loc6_ = _loc5_;
         }
      }
      if((_loc8_ = li32(_loc1_ + 1952)) != _loc6_)
      {
         si32(_loc6_,_loc1_ + 1952);
         if((_loc4_ = li32(_loc1_ + 1984)) != 0)
         {
            _loc2_ -= 16;
            si32(li32(_loc1_ + 1988),_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc4_]();
            _loc2_ += 16;
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
