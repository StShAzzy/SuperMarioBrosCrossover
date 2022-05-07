package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN6Gb_Env14write_registerEii() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc8_ = li32(_loc3_ + 4);
      _loc7_ = li32(_loc3_);
      if(_loc8_ != 4)
      {
         if(_loc8_ != 2)
         {
            _loc6_ = 0;
            if(_loc8_ == 1)
            {
               var _loc5_:*;
               si32(_loc5_ = int(64 - ((_loc5_ = li8((_loc5_ = li32(_loc7_ + 24)) + 1)) & 63)),_loc7_ + 40);
               _loc6_ = 0;
            }
         }
         else
         {
            _loc6_ = 0;
            if(uint(_loc1_) <= 15)
            {
               si32(_loc6_ = 0,_loc7_ + 44);
            }
         }
      }
      else
      {
         _loc6_ = 0;
         if((_loc1_ & 128) != 0)
         {
            var _loc4_:*;
            si32(_loc4_ = (_loc4_ = li8((_loc5_ = li32(_loc7_ + 24)) + 2)) & 7,_loc7_ + 48);
            si32(_loc5_ = int((_loc5_ = li8(_loc5_ + 2)) >>> 4),_loc7_ + 36);
            si32(_loc6_ = 1,_loc7_ + 44);
            if((_loc5_ = li32(_loc7_ + 40)) == 0)
            {
               si32(64,_loc7_ + 40);
               _loc6_ = 1;
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
