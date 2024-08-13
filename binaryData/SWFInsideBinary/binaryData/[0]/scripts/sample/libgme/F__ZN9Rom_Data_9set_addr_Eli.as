package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN9Rom_Data_9set_addr_Eli() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:int = 0;
      var _loc6_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc4_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = _loc1_ + -8;
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = _loc10_ - _loc9_;
      _loc7_ = li32(_loc3_);
      si32(_loc8_,_loc7_ + 12);
      _loc1_ += _loc9_;
      _loc10_ = li32(_loc7_ + 8);
      _loc10_ = _loc1_ + _loc10_;
      _loc9_ = (_loc10_ = _loc10_ + -1) % _loc9_;
      _loc6_ = _loc10_ - _loc9_;
      _loc5_ = 0;
      if(_loc6_ >= 1)
      {
         _loc5_ = _loc6_ + -1;
         _loc4_ = 0;
         if(_loc5_ != 0)
         {
            do
            {
               _loc4_ += 1;
            }
            while(_loc9_ = _loc5_ >>> _loc4_, _loc9_ != 0);
            
         }
         _loc9_ = 1 << _loc4_;
         si32(_loc9_ = _loc9_ + -1,_loc7_ + 16);
         _loc5_ = _loc6_;
      }
      si32(_loc5_,_loc7_ + 20);
      _loc9_ = _loc5_ - _loc8_;
      _loc6_ = _loc9_ + 8;
      _loc9_ = li32(_loc7_);
      _loc2_ -= 16;
      si32(_loc6_,_loc2_ + 4);
      si32(_loc9_,_loc2_);
      ESP = _loc2_;
      F_realloc();
      _loc2_ += 16;
      _loc8_ = sample.libgme.eax;
      if(_loc8_ == 0)
      {
         if(_loc6_ == 0)
         {
            addr185:
            si32(_loc8_,_loc7_);
            si32(_loc6_,_loc7_ + 4);
         }
         _loc2_ = _loc3_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr185);
   }
}
