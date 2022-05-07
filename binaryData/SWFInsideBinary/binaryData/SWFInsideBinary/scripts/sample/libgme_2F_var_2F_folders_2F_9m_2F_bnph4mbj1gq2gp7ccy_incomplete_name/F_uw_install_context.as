package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F_pthread_setspecific;
   import sample.libgme.longjmp;
   
   public function F_uw_install_context() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc6_ = li32(_loc1_);
      if((_loc5_ = li32(_use_fc_key)) <= -1)
      {
         ESP = _loc2_;
         F_fc_key_init_once();
         _loc5_ = li32(_use_fc_key);
      }
      if(_loc5_ != 0)
      {
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 4);
         si32(li32(_fc_key),_loc2_);
         ESP = _loc2_;
         F_pthread_setspecific();
         _loc2_ += 16;
      }
      else
      {
         si32(_loc6_,_fc_static);
      }
      var _loc4_:*;
      _loc5_ = int((_loc4_ = li32(_loc1_)) + 32);
      longjmp(_loc5_,1);
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
