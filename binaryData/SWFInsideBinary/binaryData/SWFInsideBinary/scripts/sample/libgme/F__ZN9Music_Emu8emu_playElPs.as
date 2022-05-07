package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Music_Emu8emu_playElPs() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 204);
      _loc7_ = li32(_loc3_ + 4);
      si32(_loc8_ += _loc7_,_loc1_ + 204);
      _loc8_ = li32(_loc1_ + 196);
      _loc6_ = li32(_loc3_ + 8);
      if(_loc8_ >= 0)
      {
         if((_loc8_ = li8(_loc1_ + 208)) == 0)
         {
            var _loc5_:* = li32((_loc8_ = li32(_loc1_)) + 60);
            _loc2_ -= 16;
            si32(_loc6_,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc5_]();
            _loc2_ += 16;
            if((_loc4_ = eax) != 0)
            {
               si8(1,_loc1_ + 208);
               si32(_loc4_,_loc1_ + 16);
            }
         }
         else
         {
            addr127:
            _loc2_ -= 16;
            si32(0,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            si32(_loc8_ = _loc7_ << 1,_loc2_ + 8);
            ESP = _loc2_;
            Fmemset();
            _loc2_ += 16;
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr127);
   }
}
