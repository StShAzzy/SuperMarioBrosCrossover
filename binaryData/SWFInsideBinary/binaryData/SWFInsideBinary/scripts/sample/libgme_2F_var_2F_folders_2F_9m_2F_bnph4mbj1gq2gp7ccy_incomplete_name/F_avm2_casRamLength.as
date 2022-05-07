package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_avm2_casRamLength() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_avm2_haveWorkers_2E_4273);
      if(_loc1_ == -1)
      {
         _loc1_ = int(Boolean(workerClass));
         si32(_loc1_,_avm2_haveWorkers_2E_4273);
      }
      _loc5_ = li32(_loc3_ + 4);
      _loc4_ = li32(_loc3_);
      if(_loc1_ != 0)
      {
         try
         {
            _loc4_ = int(ram.atomicCompareAndSwapLength(_loc4_,_loc5_));
         }
         catch(e:*)
         {
            if(throwWhenOutOfMemory)
            {
               throw e;
            }
            _loc4_ = -1;
         }
      }
      else
      {
         _loc4_ = int(ram.length);
         if(_loc4_ == _loc4_)
         {
            try
            {
               ram.length = _loc5_;
            }
            catch(e:*)
            {
               if(throwWhenOutOfMemory)
               {
                  throw e;
               }
               _loc4_ = -1;
            }
         }
      }
      eax = _loc4_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
