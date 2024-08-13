package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN9Nsfe_File5load_ER11Data_Reader() : void
   {
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      si32(0,_loc2_ + 8);
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc6_ = li32(_loc3_);
      _loc1_ = _loc6_ + 252;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN9Nsfe_Info4loadER11Data_ReaderP7Nsf_Emu();
      _loc2_ += 16;
      _loc5_ = sample.libgme.eax;
      if(_loc5_ == 0)
      {
         si8(0,_loc6_ + 1440);
         _loc4_ = li32(_loc6_ + 1424);
         si8(_loc4_,_loc6_ + 258);
         if((_loc4_ & 0xFF) == 0)
         {
            _loc4_ = li32(_loc6_ + 1436);
            si8(_loc4_,_loc6_ + 258);
         }
         _loc1_ = _loc4_ & 0xFF;
         si32(_loc1_,_loc6_ + 12);
         si32(_loc1_,_loc6_ + 8);
         _loc5_ = 0;
      }
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
