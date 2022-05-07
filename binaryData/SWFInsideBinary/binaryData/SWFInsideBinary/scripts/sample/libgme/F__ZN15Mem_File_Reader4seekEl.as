package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN15Mem_File_Reader4seekEl() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_ + 8);
      _loc5_ = __ZN11Data_Reader9eof_errorE;
      _loc4_ = li32(_loc3_ + 4);
      if(_loc6_ >= _loc4_)
      {
         si32(_loc4_,_loc1_ + 12);
         _loc5_ = 0;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
