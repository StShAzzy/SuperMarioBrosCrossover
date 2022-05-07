package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_workerTerm() : void
   {
      var _loc4_:* = 0;
      var _loc2_:* = 0;
      var _loc6_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = int(ESP);
      _loc2_ = li32(_loc4_ = _loc3_);
      _loc6_ = li32(_loc4_ + 4);
      _loc5_ = li32(_loc4_ + 8);
      for each(var _loc1_ in workerDomainClass.current.listWorkers())
      {
         if(Number(_loc1_.getSharedProperty("flascc.threadId")) == _loc2_)
         {
            if(_loc6_)
            {
               CModule.callI(_avm2_unlock,new <int>[_loc6_]);
            }
            if(_loc5_)
            {
               CModule.callI(_avm2_unlock,new <int>[_loc5_]);
            }
            _loc1_.terminate();
            while(_loc1_.state == "running" || _loc1_.state == "new")
            {
               yield();
            }
            break;
         }
      }
      _loc3_ = _loc4_;
      ESP = _loc3_;
   }
}
