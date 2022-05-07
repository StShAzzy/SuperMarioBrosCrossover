package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Nsf_Emu14cpu_write_miscEji() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc10_ = li32(_loc1_ + 2564);
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      if(_loc10_ != 0)
      {
         if(_loc8_ != 63488)
         {
            if(_loc8_ == 18432)
            {
               _loc2_ -= 16;
               var _loc7_:*;
               si32(int((_loc7_ = li32(_loc7_ + 132)) + li32((_loc7_ = li32(_loc1_ + 2328)) + 136)),_loc2_ + 4);
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F__ZN13Nes_Namco_Apu9run_untilEi();
               _loc2_ += 16;
               var _loc6_:*;
               _loc1_ = (_loc6_ = li32(_loc10_ + 100)) & 127;
               if((_loc6_ &= 128) != 0)
               {
                  si32(_loc6_ = (_loc6_ = int(_loc1_ + 1)) | 128,_loc10_ + 100);
               }
               _loc6_ = int(_loc10_ + _loc1_);
               si8(_loc9_,_loc6_ + 104);
            }
            else
            {
               addr142:
               if(uint(_loc8_) >= 49152)
               {
                  if((_loc10_ = li32(_loc1_ + 2572)) != 0)
                  {
                     if((_loc5_ = _loc8_ & 57344) != 57344)
                     {
                        if(_loc5_ == 49152)
                        {
                           si8(_loc9_,_loc10_ + 17);
                        }
                     }
                     else if((uint(_loc6_ = li8(_loc10_ + 17))) <= 13)
                     {
                        _loc2_ -= 16;
                        si32(int((_loc7_ = li32(_loc7_ + 136)) + li32((_loc7_ = li32(_loc1_ + 2328)) + 132)),_loc2_ + 4);
                        si32(_loc10_,_loc2_);
                        ESP = _loc2_;
                        F__ZN12Nes_Fme7_Apu9run_untilEi();
                        _loc2_ += 16;
                        si8(_loc9_,int(_loc10_ + li8(_loc10_ + 17)));
                     }
                     §§goto(addr328);
                  }
               }
               if((_loc5_ = li32(_loc1_ + 2568)) != 0)
               {
                  if((uint(_loc10_ = int(_loc8_ + -36864))) <= 12287)
                  {
                     if((uint(_loc8_ &= 4095)) <= 2)
                     {
                        _loc2_ -= 32;
                        si32(_loc9_,_loc2_ + 16);
                        si32(_loc8_,_loc2_ + 12);
                        si32(_loc7_ = int(_loc10_ >>> 12),_loc2_ + 8);
                        si32(_loc6_ = int(li32((_loc7_ = li32(_loc1_ + 2328)) + 132) + li32(_loc7_ + 136)),_loc2_ + 4);
                        si32(_loc5_,_loc2_);
                        ESP = _loc2_;
                        F__ZN12Nes_Vrc6_Apu9write_oscEiiii();
                        _loc2_ += 32;
                     }
                  }
               }
            }
         }
         else
         {
            si32(_loc9_,_loc10_ + 100);
         }
         addr328:
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr142);
   }
}
