package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_thread_run() : void
   {
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc14_:* = 0;
      var _loc17_:int = 0;
      var _loc15_:int = 0;
      var _loc8_:int = 0;
      var _loc12_:int = 0;
      var _loc10_:int = 0;
      var _loc18_:int = 0;
      var _loc16_:* = 0;
      var _loc1_:int = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc5_:int = 0;
      var _loc3_:* = int(ESP);
      var _loc4_:*;
      tcbp = _loc4_ = li32((_loc4_ = li32(_loc6_ = _loc3_)) + 4);
      _loc18_ = _sLock_2E_3947;
      if((_loc17_ = tcbp) != -1)
      {
         _loc18_ = _loc17_ + 16;
      }
      if((_loc16_ = li32(_sLock_2E_3947)) == -1)
      {
         si32(_loc16_ = int((_loc4_ = int(realThreadId)) + 1),_sLock_2E_3947);
      }
      if(_loc16_ != 0)
      {
         if(_loc18_ != _sLock_2E_3947)
         {
            si32(_loc16_,_loc18_);
            si32(0,_sLock_2E_3947);
         }
      }
      _loc15_ = (_loc4_ = int(realThreadId)) + 1;
      if((_loc4_ = (_loc4_ = li32(_loc18_)) & 2147483647) != _loc15_)
      {
         _loc3_ -= 16;
         si32(_loc15_,_loc3_ + 4);
         si32(_loc18_,_loc3_);
         ESP = _loc3_;
         F_avm2_lock_id();
         _loc3_ += 16;
      }
      _loc14_ = li32(_loc6_ + 8);
      _loc13_ = li32(_loc6_ + 4);
      if((_loc12_ = tcbp) == -1)
      {
         li32(_sCounter_2E_3962);
         _loc1_ = _sCounter_2E_3962;
      }
      else
      {
         _loc1_ = _loc12_ + 20;
         if((_loc4_ = li32(_sCounter_2E_3962)) != 0)
         {
            if(_loc1_ != _sCounter_2E_3962)
            {
               si32(_loc4_ = li32(_sCounter_2E_3962),_loc1_);
               si32(0,_sCounter_2E_3962);
            }
         }
      }
      si32(_loc4_ = int((_loc4_ = li32(_loc1_)) + 1),_loc1_);
      _loc3_ -= 16;
      si32(_loc14_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc13_]();
      _loc3_ += 16;
      _loc7_ = _sLock_2E_3947;
      if((_loc8_ = tcbp) != -1)
      {
         _loc7_ = _loc8_ + 16;
      }
      if((_loc9_ = li32(_sLock_2E_3947)) == -1)
      {
         si32(_loc9_ = int((_loc4_ = int(realThreadId)) + 1),_sLock_2E_3947);
      }
      if(_loc9_ != 0)
      {
         if(_loc7_ != _sLock_2E_3947)
         {
            si32(_loc9_,_loc7_);
            si32(0,_sLock_2E_3947);
         }
      }
      if((_loc10_ = tcbp) == -1)
      {
         li32(_sCounter_2E_3962);
         _loc5_ = _sCounter_2E_3962;
      }
      else
      {
         _loc5_ = _loc10_ + 20;
         if((_loc4_ = li32(_sCounter_2E_3962)) != 0)
         {
            if(_loc5_ != _sCounter_2E_3962)
            {
               si32(_loc4_ = li32(_sCounter_2E_3962),_loc5_);
               si32(0,_sCounter_2E_3962);
            }
         }
      }
      si32(_loc4_ = int((_loc4_ = li32(_loc5_)) + -1),_loc5_);
      if(_loc4_ == 0)
      {
         _loc3_ -= 16;
         si32(_loc7_,_loc3_);
         ESP = _loc3_;
         F_avm2_unlock();
         _loc3_ += 16;
      }
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
