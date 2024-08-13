package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Sap_Emu10cpu_write_Eji() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc8_ = _loc1_ ^ 0xD200;
      _loc7_ = li32(_loc3_ + 8);
      _loc6_ = li32(_loc3_);
      if(uint(_loc8_) <= 9)
      {
         _loc2_ -= 16;
         var _loc5_:* = li32(_loc6_ + 280);
         si32((_loc5_ = li32(_loc5_)) + li32(_loc5_ + 4) & li32(_loc6_ + 896),_loc2_ + 4);
         _loc8_ = _loc6_ + 900;
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F__ZN7Sap_Apu9run_untilEi();
         _loc2_ += 16;
         _loc8_ = _loc1_ >>> 1;
         if((uint(_loc4_ = _loc8_ ^ 0x6900)) <= 3)
         {
            si8(_loc7_,_loc6_ + _loc4_ * 20 + (_loc1_ & 1) + 900);
         }
         else if(_loc1_ != 53769)
         {
            if(_loc1_ == 53768)
            {
               si32(_loc7_,_loc6_ + 1000);
            }
         }
         else
         {
            si32(0,_loc6_ + 908);
            si32(0,_loc6_ + 928);
            si32(0,_loc6_ + 948);
            si32(0,_loc6_ + 968);
         }
      }
      else
      {
         _loc8_ = _loc1_ ^ 0xD210;
         if((uint(_loc8_)) <= 9)
         {
            _loc8_ = li8(_loc6_ + 336);
            if(_loc8_ != 0)
            {
               _loc2_ -= 16;
               _loc5_ = li32(_loc6_ + 280);
               si32((_loc5_ = li32(_loc5_)) + li32(_loc5_ + 4) & li32(_loc6_ + 896),_loc2_ + 4);
               _loc8_ = _loc6_ + 1004;
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__ZN7Sap_Apu9run_untilEi();
               _loc2_ += 16;
               _loc1_ ^= 16;
               _loc8_ = _loc1_ >>> 1;
               if((uint(_loc4_ = _loc8_ ^ 0x6900)) <= 3)
               {
                  si8(_loc7_,_loc6_ + _loc4_ * 20 + (_loc1_ & 1) + 1004);
               }
               else if(_loc1_ != 53769)
               {
                  if(_loc1_ == 53768)
                  {
                     si32(_loc7_,_loc6_ + 1104);
                  }
               }
               else
               {
                  si32(0,_loc6_ + 1012);
                  si32(0,_loc6_ + 1032);
                  si32(0,_loc6_ + 1052);
                  si32(0,_loc6_ + 1072);
               }
            }
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
