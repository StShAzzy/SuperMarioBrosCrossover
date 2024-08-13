package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer9bass_freqEi() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc9_ = li32(_loc3_);
      si32(_loc1_,_loc9_ + 52);
      if(_loc1_ <= 0)
      {
         si32(31,_loc9_ + 40);
         si32(_loc1_,_loc9_ + 96);
      }
      else
      {
         _loc6_ = (_loc7_ = _loc1_ << 16) / li32(_loc9_ + 44);
         _loc5_ = 13;
         do
         {
            _loc6_ >>= 1;
            _loc4_ = _loc5_;
            if(_loc6_ == 0)
            {
               break;
            }
            _loc5_ += -1;
            _loc4_ = 0;
         }
         while(_loc5_ != 0);
         
         si32(_loc4_,_loc9_ + 40);
         si32(_loc1_,_loc9_ + 96);
         if(_loc1_ >= 1)
         {
            _loc5_ = _loc7_ / li32(_loc9_ + 88);
            _loc4_ = 13;
            do
            {
               _loc5_ >>= 1;
               _loc6_ = _loc4_;
               if(_loc5_ == 0)
               {
                  break;
               }
               _loc4_ += -1;
               _loc6_ = 0;
            }
            while(_loc4_ != 0);
            
            si32(_loc6_,_loc9_ + 84);
            si32(_loc1_,_loc9_ + 140);
            _loc5_ = _loc9_ + 108;
            _loc6_ = 31;
            if(_loc1_ >= 1)
            {
               _loc1_ = _loc7_ / li32(_loc9_ + 132);
               _loc9_ = 13;
               do
               {
                  _loc1_ >>= 1;
                  _loc6_ = _loc9_;
                  if(_loc1_ == 0)
                  {
                     break;
                  }
                  _loc9_ += -1;
                  _loc6_ = 0;
               }
               while(_loc9_ != 0);
               
            }
         }
         else
         {
            addr136:
            _loc6_ = 31;
            si32(_loc6_,_loc9_ + 84);
            si32(_loc1_,_loc9_ + 140);
            _loc5_ = _loc9_ + 108;
         }
         si32(_loc6_,_loc5_ + 20);
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr136);
   }
}
