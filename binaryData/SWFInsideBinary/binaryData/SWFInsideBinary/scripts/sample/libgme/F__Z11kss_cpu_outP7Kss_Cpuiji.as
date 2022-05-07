package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__Z11kss_cpu_outP7Kss_Cpuiji() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = 0;
      if((_loc9_ = li32(_loc3_)) != 0)
      {
         _loc1_ = int(_loc9_ + -272);
      }
      _loc7_ = (_loc8_ = li32(_loc3_ + 12)) & 255;
      var _loc6_:* = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      if((_loc5_ = _loc6_ & 255) <= 159)
      {
         if(_loc5_ != 6)
         {
            if((uint(_loc6_ = int(_loc5_ + -126))) < 2)
            {
               _loc1_ = li32(_loc1_ + 68872);
               if(_loc1_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc7_,_loc2_ + 8);
                  si32(_loc9_,_loc2_ + 4);
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F__ZN7Sms_Apu10write_dataEii();
                  _loc2_ += 16;
               }
            }
         }
         else if((_loc8_ = li32(_loc1_ + 68872)) != 0)
         {
            if((_loc6_ = (_loc6_ = li8(_loc1_ + 943)) & 4) != 0)
            {
               _loc2_ -= 16;
               si32(_loc7_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__ZN7Sms_Apu14write_ggstereoEii();
               _loc2_ += 16;
            }
         }
      }
      else if(_loc5_ != 254)
      {
         if(_loc5_ != 161)
         {
            if(_loc5_ == 160)
            {
               si32(_loc6_ = _loc8_ & 15,_loc1_ + 984);
            }
         }
         else
         {
            _loc2_ -= 16;
            si32(_loc9_,_loc2_ + 4);
            var _loc4_:int;
            si32(_loc4_ = _loc1_ + 66784,_loc2_);
            ESP = _loc2_;
            F__ZN6Ay_Apu9run_untilEi();
            _loc2_ += 16;
            _loc2_ -= 16;
            si32(_loc7_,_loc2_ + 8);
            si32(li32(_loc1_ + 984),_loc2_ + 4);
            si32(_loc4_,_loc2_);
            ESP = _loc2_;
            F__ZN6Ay_Apu11write_data_Eii();
            _loc2_ += 16;
         }
      }
      else
      {
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 8);
         si32(0,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZN7Kss_Emu8set_bankEii();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
