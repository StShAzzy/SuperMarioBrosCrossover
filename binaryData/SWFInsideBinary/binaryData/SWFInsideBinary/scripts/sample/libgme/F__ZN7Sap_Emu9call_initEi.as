package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Sap_Emu9call_initEi() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc8_ = li32(_loc1_ + 324);
      _loc7_ = li32(_loc3_ + 4);
      if(_loc8_ != 67)
      {
         if(_loc8_ == 66)
         {
            si8(_loc7_,_loc1_ + 274);
            var _loc6_:*;
            si16(_loc6_ = li32(_loc1_ + 312),_loc1_ + 272);
            if((_loc7_ = li8(_loc1_ + 278)) == 254)
            {
               _loc7_ = 254;
               if(li8(_loc1_ + 1875) == 254)
               {
                  si8(-1,_loc1_ + 278);
                  _loc7_ = 255;
               }
            }
            var _loc5_:* = _loc7_ | 256;
            _loc5_ = int((_loc6_ = int(_loc1_ + 1364)) + _loc5_);
            si8(-2,_loc5_);
            _loc5_ = (_loc5_ = (_loc5_ = int(_loc7_ + -1)) & 255) | 256;
            _loc5_ = int(_loc6_ + _loc5_);
            si8(-2,_loc5_);
            _loc5_ = (_loc5_ = (_loc5_ = int(_loc7_ + -2)) & 255) | 256;
            _loc6_ += _loc5_;
            si8(-2,_loc6_);
            si8(_loc6_ = int(_loc7_ + -3),_loc1_ + 278);
            _loc2_ -= 16;
            si32(2134080,_loc2_ + 4);
            si32(_loc6_ = int(_loc1_ + 272),_loc2_);
            ESP = _loc2_;
            F__ZN7Sap_Cpu3runEi();
            _loc2_ += 16;
         }
      }
      else
      {
         si8(112,_loc1_ + 274);
         si8(_loc6_ = li32(_loc1_ + 320),_loc1_ + 275);
         si8(_loc6_ >>>= 8,_loc1_ + 276);
         si16(_loc6_ = int((_loc6_ = li32(_loc1_ + 316)) + 3),_loc1_ + 272);
         if((_loc4_ = li8(_loc1_ + 278)) == 254)
         {
            _loc4_ = 254;
            if(li8(_loc1_ + 1875) == 254)
            {
               si8(-1,_loc1_ + 278);
               _loc4_ = 255;
            }
         }
         _loc6_ = _loc4_ | 256;
         _loc6_ = int((_loc8_ = int(_loc1_ + 1364)) + _loc6_);
         si8(-2,_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ = int(_loc4_ + -1)) & 255) | 256;
         _loc6_ = int(_loc8_ + _loc6_);
         si8(-2,_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ = int(_loc4_ + -2)) & 255) | 256;
         _loc6_ = int(_loc8_ + _loc6_);
         si8(-2,_loc6_);
         si8(_loc6_ = int(_loc4_ + -3),_loc1_ + 278);
         _loc2_ -= 16;
         si32(2134080,_loc2_ + 4);
         si32(_loc4_ = int(_loc1_ + 272),_loc2_);
         ESP = _loc2_;
         F__ZN7Sap_Cpu3runEi();
         _loc2_ += 16;
         si8(0,_loc1_ + 274);
         si8(_loc7_,_loc1_ + 275);
         si16(_loc6_ = int((_loc6_ = li32(_loc1_ + 316)) + 3),_loc1_ + 272);
         if((_loc7_ = li8(_loc1_ + 278)) == 254)
         {
            _loc7_ = 254;
            if(li8(_loc1_ + 1875) == 254)
            {
               si8(-1,_loc1_ + 278);
               _loc7_ = 255;
            }
         }
         _loc6_ = _loc7_ | 256;
         _loc6_ = int(_loc8_ + _loc6_);
         si8(-2,_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ = int(_loc7_ + -1)) & 255) | 256;
         _loc6_ = int(_loc8_ + _loc6_);
         si8(-2,_loc6_);
         _loc6_ = (_loc6_ = (_loc6_ = int(_loc7_ + -2)) & 255) | 256;
         _loc6_ = int(_loc8_ + _loc6_);
         si8(-2,_loc6_);
         si8(_loc6_ = int(_loc7_ + -3),_loc1_ + 278);
         _loc2_ -= 16;
         si32(2134080,_loc2_ + 4);
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F__ZN7Sap_Cpu3runEi();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
