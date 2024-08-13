package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN8Nsfe_Emu5load_ER11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc7_ = li8(_loc1_ + 16952);
      _loc6_ = li32(_loc3_ + 4);
      if(_loc7_ != 0)
      {
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 4);
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F__ZN7Nsf_Emu5load_ER11Data_Reader();
         _loc2_ += 16;
         _loc5_ = sample.libgme.eax;
      }
      else
      {
         si8(1,_loc1_ + 16952);
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 8);
         si32(_loc6_,_loc2_ + 4);
         _loc7_ = _loc1_ + 15760;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F__ZN9Nsfe_Info4loadER11Data_ReaderP7Nsf_Emu();
         _loc2_ += 16;
         _loc5_ = sample.libgme.eax;
         si8(0,_loc1_ + 16952);
         si8(0,_loc1_ + 16948);
         _loc4_ = li32(_loc1_ + 16932);
         si8(_loc4_,_loc1_ + 15766);
         _loc7_ = _loc4_ & 0xFF;
         if(_loc7_ == 0)
         {
            _loc4_ = li32(_loc1_ + 16944);
            si8(_loc4_,_loc1_ + 15766);
         }
         _loc7_ = _loc4_ & 0xFF;
         si32(_loc7_,_loc1_ + 12);
         si32(_loc7_,_loc1_ + 8);
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
