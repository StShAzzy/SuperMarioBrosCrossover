package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_uiThreadInitThreadProc() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = threadId;
      _loc5_ = _loc1_ + 8;
      _loc4_ = li32(_loc3_);
      si32(_loc5_,_loc4_);
      _loc2_ -= 16;
      si32(_loc4_,_loc2_);
      ESP = _loc2_;
      F_avm2_wake();
      _loc2_ += 16;
      si32(_loc1_,_loc3_ - 16);
      _loc4_ = (_loc5_ = _loc3_ - 16) | 4;
      si32(0,_loc4_);
      si8(0,_loc3_ - 8);
      _loc2_ -= 16;
      si32(_loc5_,_loc2_);
      ESP = _loc2_;
      F_callOnAuxStack();
      _loc2_ += 16;
      if((_loc5_ = eax) == 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
      }
      eax = 0;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
