package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN7Sap_Emu9cpu_writeEji() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc6_ = li32(_loc3_);
      _loc5_ = _loc6_ + _loc1_;
      _loc4_ = li32(_loc3_ + 8);
      si8(_loc4_,_loc5_ + 1364);
      _loc5_ = _loc1_ & -256;
      if(_loc5_ == 53760)
      {
         _loc2_ -= 16;
         si32(_loc4_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc6_,_loc2_);
         ESP = _loc2_;
         F__ZN7Sap_Emu10cpu_write_Eji();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
