package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK8Nsfe_Emu11track_info_EP12track_info_ti() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 8);
      si32(_loc1_,_loc2_ + 8);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = li32(_loc3_);
      _loc1_ += 15760;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZNK9Nsfe_Info11track_info_EP12track_info_ti();
      _loc2_ += 16;
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
