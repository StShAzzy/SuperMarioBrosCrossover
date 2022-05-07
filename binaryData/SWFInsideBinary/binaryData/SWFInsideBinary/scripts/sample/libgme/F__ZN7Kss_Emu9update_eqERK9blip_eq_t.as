package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Kss_Emu9update_eqERK9blip_eq_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc4_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      var _loc5_:int;
      si32(_loc5_ = (_loc6_ = li32(_loc3_)) + 67264,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      si32(_loc5_ = _loc6_ + 68312,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      if((_loc4_ = li32(_loc6_ + 68872)) != 0)
      {
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 4);
         si32(_loc6_ = int(_loc4_ + 160),_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
         _loc2_ += 16;
         _loc2_ -= 16;
         si32(_loc1_,_loc2_ + 4);
         si32(_loc6_ = int(_loc4_ + 1032),_loc2_);
         ESP = _loc2_;
         F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
