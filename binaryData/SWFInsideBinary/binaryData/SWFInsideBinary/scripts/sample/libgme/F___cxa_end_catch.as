package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL10eh_globals;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL4init;
   
   public function F___cxa_end_catch() : void
   {
      var _loc3_:* = 0;
      var _loc1_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = __ZL10eh_globals;
      var _loc10_:*;
      if((_loc10_ = li8(__ZL4init + 4)) != 0)
      {
         _loc2_ -= 16;
         si32(li32(__ZL4init),_loc2_);
         ESP = _loc2_;
         F_pthread_getspecific();
         _loc2_ += 16;
         _loc1_ = eax;
      }
      if((_loc9_ = li32(_loc1_)) != 0)
      {
         var _loc8_:*;
         if((_loc10_ = (_loc8_ = (_loc8_ = li32(_loc9_ + 48)) ^ 1126902528) | (_loc10_ = li32(_loc9_ + 52)) ^ 1196315971) != 0)
         {
            si32(0,_loc1_);
            if((_loc7_ = li32(_loc9_ + 56)) != 0)
            {
               _loc2_ -= 16;
               si32(1,_loc2_);
               si32(_loc10_ = int(_loc9_ + 48),_loc2_ + 4);
               ESP = _loc2_;
               ptr2fun[_loc7_]();
               _loc2_ += 16;
            }
         }
         else
         {
            if((_loc6_ = li32(_loc9_ + 20)) <= -1)
            {
               if((_loc5_ = _loc6_ + 1) == 0)
               {
                  si32(_loc10_ = li32(_loc9_ + 16),_loc1_);
                  _loc5_ = 0;
               }
            }
            else
            {
               if((_loc5_ = _loc6_ + -1) == 0)
               {
                  si32(_loc10_ = li32(_loc9_ + 16),_loc1_);
                  if((_loc4_ = li32(_loc9_ + 56)) != 0)
                  {
                     _loc2_ -= 16;
                     si32(1,_loc2_);
                     si32(_loc10_ = int(_loc9_ + 48),_loc2_ + 4);
                     ESP = _loc2_;
                     ptr2fun[_loc4_]();
                     _loc2_ += 16;
                  }
                  §§goto(addr247);
               }
               else if(_loc5_ <= -1)
               {
                  ESP = _loc2_;
                  F__ZSt9terminatev();
               }
               §§goto(addr247);
            }
            si32(_loc5_,_loc9_ + 20);
         }
      }
      addr247:
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
