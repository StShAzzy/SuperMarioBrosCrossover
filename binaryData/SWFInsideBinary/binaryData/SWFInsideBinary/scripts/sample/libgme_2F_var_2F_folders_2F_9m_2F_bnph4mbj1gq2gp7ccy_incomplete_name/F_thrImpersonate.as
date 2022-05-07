package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_thrImpersonate() : void
   {
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:* = int(ESP);
      _loc1_ = li32(_loc6_ = _loc2_);
      _loc11_ = li32(_loc6_ + 4);
      _loc9_ = li32(_loc6_ + 8);
      _loc8_ = li32(_loc6_ + 12);
      _loc7_ = li32(_loc6_ + 16);
      var _loc5_:int = threadId;
      var _loc10_:int = tcbp;
      var _loc4_:int = _avm2_self_unlock;
      var _loc3_:* = _loc7_;
      try
      {
         threadId = _loc1_;
         tcbp = _loc11_;
         if(_loc3_)
         {
            CModule.write32(_loc3_,1);
         }
         CModule.callI(_avm2_self_lock,new Vector.<int>(0));
         _loc1_ = int(CModule.callI(_loc9_,new <int>[_loc8_]));
         if(_loc3_)
         {
            CModule.write32(_loc3_,0);
         }
      }
      catch(e:*)
      {
         if(!_loc3_)
         {
            throw e;
         }
      }
      finally
      {
         try
         {
            CModule.callI(_loc4_,new Vector.<int>(0));
         }
         catch(e:*)
         {
         }
         threadId = _loc5_;
         tcbp = _loc10_;
      }
      eax = _loc1_;
      _loc2_ = _loc6_;
      ESP = _loc2_;
   }
}
