package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN8Gme_File4loadER11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc10_:*;
      _loc9_ = li32((_loc10_ = li32(_loc1_)) + 24);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc9_]();
      _loc2_ += 16;
      _loc8_ = li32((_loc10_ = li32(_loc1_)) + 12);
      _loc2_ -= 16;
      si32(_loc10_ = li32(_loc3_ + 4),_loc2_ + 4);
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc8_]();
      _loc2_ += 16;
      _loc7_ = eax;
      if((_loc10_ = li32(_loc1_ + 8)) == 0)
      {
         si32(_loc10_ = li32((_loc10_ = li32(_loc1_ + 4)) + 4),_loc1_ + 12);
         si32(_loc10_,_loc1_ + 8);
      }
      _loc6_ = li32(_loc1_);
      if(_loc7_ == 0)
      {
         var _loc5_:* = li32(_loc6_ + 28);
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
      }
      else
      {
         var _loc4_:* = li32(_loc6_ + 8);
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc4_]();
         _loc2_ += 16;
      }
      eax = _loc7_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
