package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer15set_sample_rateEli() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:int = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc10_ = _loc1_ + 20;
      _loc9_ = 0;
      _loc8_ = li32(_loc3_ + 8);
      _loc7_ = li32(_loc3_ + 4);
      while(true)
      {
         if(_loc9_ >= 3)
         {
            var _loc4_:*;
            si32(_loc4_ = li32(_loc1_ + 44),_loc1_ + 8);
            si32(li32(_loc1_ + 56),_loc1_ + 12);
            _loc6_ = 0;
            break;
         }
         _loc2_ -= 16;
         si32(_loc8_,_loc2_ + 8);
         si32(_loc7_,_loc2_ + 4);
         si32(_loc10_,_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Buffer15set_sample_rateEli();
         _loc2_ += 16;
         if((_loc6_ = eax) != 0)
         {
            break;
         }
         _loc10_ += 44;
         _loc9_ += 1;
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
