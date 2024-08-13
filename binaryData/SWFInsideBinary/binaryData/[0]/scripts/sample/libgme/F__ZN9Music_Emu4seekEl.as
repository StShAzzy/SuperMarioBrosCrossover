package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN9Music_Emu4seekEl() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:int = 0;
      var _loc10_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = _loc1_ / 1000;
      _loc9_ = li32(_loc3_);
      _loc7_ = (_loc8_ = li32(_loc9_ + 192)) * _loc10_;
      _loc10_ *= -1000;
      _loc1_ = _loc10_ *= -1000 + _loc1_;
      _loc8_ = _loc1_ * _loc8_;
      _loc8_ = _loc8_ / 1000;
      _loc7_ += _loc8_;
      _loc6_ = _loc7_ += _loc8_ << 1;
      _loc5_ = li32(_loc9_ + 200);
      if(_loc5_ > _loc6_)
      {
         _loc2_ -= 16;
         si32(li32(_loc9_ + 196),_loc2_ + 4);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F__ZN9Music_Emu11start_trackEi();
         _loc2_ += 16;
         _loc4_ = sample.libgme.eax;
         if(_loc4_ == 0)
         {
            _loc5_ = li32(_loc9_ + 200);
            addr127:
            _loc2_ -= 16;
            si32(_loc9_,_loc2_);
            _loc7_ = _loc6_ - _loc5_;
            si32(_loc7_,_loc2_ + 4);
            ESP = _loc2_;
            F__ZN9Music_Emu4skipEl();
            _loc2_ += 16;
            _loc4_ = 0;
         }
         eax = _loc4_;
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr127);
   }
}
