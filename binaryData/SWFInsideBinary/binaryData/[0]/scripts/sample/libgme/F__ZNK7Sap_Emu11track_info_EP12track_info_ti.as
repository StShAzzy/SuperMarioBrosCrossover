package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK7Sap_Emu11track_info_EP12track_info_ti() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      si32(255,_loc2_ + 8);
      _loc1_ = li32(_loc3_);
      _loc5_ = _loc1_ + 593;
      si32(_loc5_,_loc2_ + 4);
      _loc5_ = li32(_loc3_ + 4);
      var _loc4_:int;
      si32(_loc4_ = _loc5_ + 272,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(255,_loc2_ + 8);
      _loc4_ = _loc1_ + 337;
      si32(_loc4_,_loc2_ + 4);
      _loc4_ = _loc5_ + 784;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(255,_loc2_ + 8);
      _loc1_ += 849;
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = _loc5_ + 1040;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN8Gme_File11copy_field_EPcPKci();
      _loc2_ += 16;
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
