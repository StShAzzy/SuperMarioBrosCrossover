package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN13Stereo_Buffer5clearEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 164);
      si32(0,_loc1_ + 168);
      si32(0,_loc1_ + 24);
      si32(0,_loc1_ + 36);
      si32(0,_loc1_ + 60);
      _loc5_ = li32(_loc1_ + 28);
      if(_loc5_ != 0)
      {
         _loc2_ -= 16;
         si32(0,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         var _loc4_:* = li32(_loc1_ + 32) << 2;
         si32(_loc4_ = _loc4_ + 72,_loc2_ + 8);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      si32(0,_loc1_ + 68);
      si32(0,_loc1_ + 80);
      si32(0,_loc1_ + 104);
      _loc5_ = li32(_loc1_ + 72);
      if(_loc5_ != 0)
      {
         _loc2_ -= 16;
         si32(0,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         _loc4_ = li32(_loc1_ + 76) << 2;
         si32(_loc4_ = _loc4_ + 72,_loc2_ + 8);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      si32(0,_loc1_ + 112);
      si32(0,_loc1_ + 124);
      si32(0,_loc1_ + 148);
      _loc5_ = li32(_loc1_ + 116);
      if(_loc5_ != 0)
      {
         _loc2_ -= 16;
         si32(0,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         _loc4_ = li32(_loc1_ + 120) << 2;
         si32(_loc4_ = _loc4_ + 72,_loc2_ + 8);
         ESP = _loc2_;
         Fmemset();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
