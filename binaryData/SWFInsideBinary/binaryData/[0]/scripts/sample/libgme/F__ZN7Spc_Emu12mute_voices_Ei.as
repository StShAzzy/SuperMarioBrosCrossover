package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   
   public function F__ZN7Spc_Emu12mute_voices_Ei() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc6_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc7_ = _loc1_ & 1;
      _loc5_ = _loc6_ = 7;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      _loc4_ = li32(_loc3_);
      si16(_loc5_,_loc4_ + 2218);
      _loc7_ = _loc1_ & 2;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2250);
      _loc7_ = _loc1_ & 4;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2282);
      _loc7_ = _loc1_ & 8;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2314);
      _loc7_ = _loc1_ & 0x10;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2346);
      _loc7_ = _loc1_ & 0x20;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2378);
      _loc7_ = _loc1_ & 0x40;
      _loc5_ = _loc6_;
      if(_loc7_ != 0)
      {
         _loc5_ = 31;
      }
      si16(_loc5_,_loc4_ + 2410);
      _loc7_ = _loc1_ & 0x80;
      if(_loc7_ != 0)
      {
         _loc6_ = 31;
      }
      si16(_loc6_,_loc4_ + 2442);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
