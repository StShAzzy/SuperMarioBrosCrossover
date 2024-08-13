package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN14Effects_Buffer9bass_freqEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc7_:int = 0;
      var _loc12_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc9_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = li32(_loc1_ + 440);
      if(_loc12_ >= 1)
      {
         _loc11_ = li32(_loc3_ + 4);
         _loc10_ = _loc11_ << 16;
         _loc9_ = 0;
         if(_loc11_ <= 0)
         {
            if(_loc12_ <= 1)
            {
               _loc12_ = 1;
            }
            _loc1_ += 52;
            while(true)
            {
               si32(_loc11_,_loc1_);
               si32(31,_loc1_ - 12);
               _loc1_ += 44;
               _loc12_ += -1;
               if(_loc12_ += -1 != 0)
               {
                  continue;
               }
            }
         }
         else
         {
            do
            {
               var _loc4_:* = _loc9_ * 11;
               _loc4_ = _loc4_ << 2;
               _loc7_ = _loc1_ + _loc4_;
               si32(_loc11_,_loc7_ + 52);
               _loc4_ = li32(_loc7_ + 44);
               _loc5_ = _loc10_ / _loc4_;
               _loc9_ += 1;
               _loc6_ = 13;
               do
               {
                  _loc5_ >>= 1;
                  _loc8_ = _loc6_;
                  if(_loc5_ == 0)
                  {
                     break;
                  }
                  _loc6_ += -1;
                  _loc8_ = 0;
               }
               while(_loc6_ != 0);
               
               si32(_loc8_,_loc7_ + 40);
            }
            while(_loc9_ < _loc12_);
            
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
