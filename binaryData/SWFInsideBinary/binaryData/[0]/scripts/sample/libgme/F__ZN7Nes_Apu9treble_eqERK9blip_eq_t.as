package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZN7Nes_Apu9treble_eqERK9blip_eq_t() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      _loc5_ = li32(_loc3_);
      var _loc4_:int;
      si32(_loc4_ = _loc5_ + 1992,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      _loc4_ = _loc5_ + 744;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      _loc4_ = _loc5_ + 152;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(_loc1_,_loc2_ + 4);
      _loc1_ = _loc5_ + 1376;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
      _loc2_ += 16;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
