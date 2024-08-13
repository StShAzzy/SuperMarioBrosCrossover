package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Music_Emu6unloadEv() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      si32(0,_loc1_ + 168);
      si32(-1,_loc1_ + 196);
      si32(0,_loc1_ + 200);
      si32(0,_loc1_ + 204);
      si8(1,_loc1_ + 208);
      si8(1,_loc1_ + 209);
      si32(1073741824,_loc1_ + 212);
      si32(1,_loc1_ + 216);
      si32(0,_loc1_ + 228);
      si32(0,_loc1_ + 232);
      si32(0,_loc1_ + 236);
      si32(0,_loc1_ + 16);
      si32(0,_loc1_ + 44);
      _loc8_ = li32(_loc1_ + 28);
      si32(0,_loc1_ + 28);
      si32(0,_loc1_ + 32);
      if(_loc8_ != 0)
      {
         _loc2_ -= 16;
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         F_idalloc();
         _loc2_ += 16;
      }
      _loc7_ = li32(_loc1_ + 36);
      si32(0,_loc1_ + 36);
      si32(0,_loc1_ + 40);
      if(_loc7_ != 0)
      {
         _loc2_ -= 16;
         si32(_loc7_,_loc2_);
         ESP = _loc2_;
         F_idalloc();
         _loc2_ += 16;
      }
      var _loc6_:* = li32(_loc1_);
      var _loc5_:* = li32(_loc6_ + 32);
      _loc2_ -= 16;
      si32(_loc1_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc5_]();
      _loc2_ += 16;
      si32(0,_loc1_ + 8);
      si32(0,_loc1_ + 12);
      _loc4_ = li32(_loc1_ + 132);
      si32(0,_loc1_ + 132);
      si32(0,_loc1_ + 136);
      if(_loc4_ != 0)
      {
         _loc2_ -= 16;
         si32(_loc4_,_loc2_);
         ESP = _loc2_;
         F_idalloc();
         _loc2_ += 16;
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
