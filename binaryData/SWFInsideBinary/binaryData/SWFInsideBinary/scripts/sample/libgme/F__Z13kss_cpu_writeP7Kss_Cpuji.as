package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__Z13kss_cpu_writeP7Kss_Cpuji() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:int = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 516);
      _loc6_ = int((_loc6_ = (_loc7_ = li32(_loc3_ + 4)) & -8192) >>> 11);
      _loc8_ = li32((_loc8_ += _loc6_) + 36);
      _loc6_ = _loc7_ & 8191;
      _loc8_ += _loc6_;
      si8(_loc5_ = li32(_loc3_ + 8),_loc8_);
      _loc4_ = 0;
      if(_loc1_ != 0)
      {
         _loc4_ = _loc1_ + -272;
      }
      if((_loc8_ = (_loc8_ = li32(_loc4_ + 964)) & _loc7_) == 32768)
      {
         _loc4_ = 0;
         if(_loc1_ != 0)
         {
            _loc4_ = _loc1_ + -272;
         }
         _loc1_ = _loc5_ & 255;
         if(_loc7_ != 45056)
         {
            if(_loc7_ == 36864)
            {
               _loc2_ -= 16;
               si32(_loc1_,_loc2_ + 8);
               si32(0,_loc2_ + 4);
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F__ZN7Kss_Emu8set_bankEii();
               _loc2_ += 16;
            }
            else if((uint(_loc7_ = (_loc8_ = _loc7_ & 57343) ^ 38912)) <= 143)
            {
               si8(1,_loc4_ + 960);
               _loc2_ -= 16;
               si32(int((_loc6_ = li32(_loc6_ + 72)) + li32((_loc6_ = li32(_loc4_ + 788)) + 76)),_loc2_ + 4);
               si32(_loc8_ = int(_loc4_ + 68080),_loc2_);
               ESP = _loc2_;
               F__ZN7Scc_Apu9run_untilEi();
               _loc2_ += 16;
               si8(_loc5_,int(_loc8_ + _loc7_) + 84);
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc1_,_loc2_ + 8);
            si32(1,_loc2_ + 4);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F__ZN7Kss_Emu8set_bankEii();
            _loc2_ += 16;
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
