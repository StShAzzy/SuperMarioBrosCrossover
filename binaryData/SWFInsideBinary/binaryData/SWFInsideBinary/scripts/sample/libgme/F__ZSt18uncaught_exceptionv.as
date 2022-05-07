package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1235;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL10eh_globals;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL4init;
   
   public function F__ZSt18uncaught_exceptionv() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc4_)
            {
               _loc3_ = _loc2_;
               _loc2_ -= 64;
               _loc1_ = li8(__ZL4init + 4);
               si32(L_LSDA_1235,_loc3_ - 28);
               si32(___gxx_personality_sj0,_loc3_ - 32);
               si32(_loc7_ = _loc3_,_loc3_ - 24);
               si32(_loc7_ = _loc2_,_loc3_ - 16);
               _loc5_ = (_loc6_ = int(_loc3_ - 56)) + 32;
               eax = setjmp(_loc5_,1,_loc2_);
            }
            else
            {
               switch(int(_loc4_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc7_ = int(eax)) == 0)
            {
               _loc2_ -= 16;
               si32(_loc6_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               _loc7_ = _loc1_ & 255;
               _loc1_ = int(__ZL10eh_globals);
               if(_loc7_ != 0)
               {
                  _loc7_ = li32(__ZL4init);
                  _loc2_ -= 16;
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F_pthread_getspecific();
                  _loc2_ += 16;
                  _loc1_ = int(eax);
                  if(_loc1_ == 0)
                  {
                     _loc2_ -= 16;
                     si32(8,_loc2_);
                     ESP = _loc2_;
                     F_malloc();
                     _loc2_ += 16;
                     _loc1_ = int(eax);
                     if(_loc1_ != 0)
                     {
                        _loc7_ = li32(__ZL4init);
                        _loc2_ -= 16;
                        si32(_loc1_,_loc2_ + 4);
                        si32(_loc7_,_loc2_);
                        ESP = _loc2_;
                        F_pthread_setspecific();
                        _loc2_ += 16;
                        if((_loc7_ = int(eax)) == 0)
                        {
                           si32(0,_loc1_);
                           si32(0,_loc1_ + 4);
                        }
                        §§goto(addr262);
                     }
                     _loc7_ = _loc6_ | 4;
                     si32(1,_loc7_);
                     ESP = _loc2_;
                     F__ZSt9terminatev();
                     addr231:
                     _loc7_ = li32(_loc3_ - 48);
                     _loc6_ = li32(_loc3_ - 44);
                     _loc2_ -= 16;
                     si32(_loc7_,_loc2_);
                     ESP = _loc2_;
                     F___cxa_call_unexpected();
                     _loc2_ += 16;
                  }
               }
               addr262:
               _loc7_ = li32(_loc1_ + 4);
               _loc2_ -= 16;
               si32(_loc6_,_loc2_);
               _loc6_ = 1;
               if(_loc7_ == 0)
               {
                  _loc6_ = 0;
               }
               _loc7_ = _loc6_ & 1;
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               eax = _loc7_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
            if((_loc7_ = li32(_loc7_ = _loc6_ | 4)) != 0)
            {
               while(true)
               {
               }
            }
            §§goto(addr231);
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc3_)
            {
               throw l;
            }
         }
         ESP = _loc2_ = int(l.esp);
         eax = l.retval;
         _loc4_ = l.sjid;
      }
   }
}
