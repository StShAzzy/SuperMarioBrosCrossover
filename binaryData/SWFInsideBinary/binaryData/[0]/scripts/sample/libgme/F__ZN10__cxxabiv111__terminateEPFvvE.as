package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN10__cxxabiv111__terminateEPFvvE() : void
   {
      var _loc3_:* = 0;
      var _loc4_:int = 0;
      var _loc6_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:int = ESP;
      while(true)
      {
         try
         {
            if(!_loc4_)
            {
               _loc3_ = _loc2_;
               _loc2_ -= 64;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1178,_loc3_ - 28);
               si32(___gxx_personality_sj0,_loc3_ - 32);
               _loc1_ = _loc3_;
               si32(_loc1_,_loc3_ - 24);
               _loc1_ = _loc2_;
               si32(_loc1_,_loc3_ - 16);
               _loc8_ = _loc3_ - 56;
               _loc7_ = _loc8_ + 32;
               eax = setjmp(_loc7_,1,_loc2_);
            }
            else
            {
               switch(_loc4_ - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            _loc1_ = eax;
            if(_loc1_ == 0)
            {
               _loc6_ = li32(_loc3_);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               _loc1_ = _loc8_ | 4;
               si32(1,_loc1_);
               ESP = _loc2_;
               ptr2fun[_loc6_]();
               ESP = _loc2_;
               F_abort();
               while(true)
               {
                  _loc1_ = li32(_loc3_ - 48);
                  _loc5_ = li32(_loc3_ - 44);
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_begin_catch();
                  _loc2_ += 16;
                  ESP = _loc2_;
                  F_abort();
               }
            }
            while(true)
            {
               _loc1_ = _loc8_ | 4;
               _loc1_ = li32(_loc1_);
               if(_loc1_ != 0)
               {
                  break;
               }
               _loc1_ = li32(_loc3_ - 48);
               _loc5_ = li32(_loc3_ - 44);
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F___cxa_begin_catch();
               _loc2_ += 16;
               ESP = _loc2_;
               F_abort();
            }
            while(true)
            {
            }
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
         _loc4_ = int(l.sjid);
      }
   }
}
