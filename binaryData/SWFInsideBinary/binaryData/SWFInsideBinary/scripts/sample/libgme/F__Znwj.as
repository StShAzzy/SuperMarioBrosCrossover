package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_1187;
   
   public function F__Znwj() : void
   {
      var _loc3_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc9_:int = 0;
      var _loc8_:int = 0;
      var _loc6_:int = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:int = 0;
      var _loc2_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc5_)
            {
               _loc3_ = _loc2_;
               _loc2_ -= 64;
               _loc1_ = 1;
               if((_loc12_ = li32(_loc3_)) != 0)
               {
                  _loc1_ = _loc12_;
               }
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
               ESP = _loc2_;
               F_malloc();
               _loc2_ += 16;
               _loc11_ = eax;
               si32(L_LSDA_1187,_loc3_ - 28);
               si32(___gxx_personality_sj0,_loc3_ - 32);
               si32(_loc10_ = _loc3_,_loc3_ - 24);
               si32(_loc10_ = _loc2_,_loc3_ - 16);
               _loc8_ = (_loc9_ = _loc3_ - 56) + 32;
               eax = setjmp(_loc8_,1,_loc2_);
            }
            else
            {
               switch(int(_loc5_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc10_ = int(eax)) == 0)
            {
               _loc2_ -= 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               while(_loc11_ == 0)
               {
                  if((_loc7_ = li32(___new_handler)) == 0)
                  {
                     _loc2_ -= 16;
                     si32(4,_loc2_);
                     ESP = _loc2_;
                     F___cxa_allocate_exception();
                     _loc10_ = int(__ZTVSt9bad_alloc + 8);
                     _loc2_ += 16;
                     _loc6_ = eax;
                     si32(_loc10_,_loc6_);
                     _loc10_ = _loc9_ | 4;
                     si32(1,_loc10_);
                     _loc2_ -= 16;
                     si32(__ZNSt9bad_allocD1Ev,_loc2_ + 8);
                     si32(__ZTISt9bad_alloc,_loc2_ + 4);
                     si32(_loc6_,_loc2_);
                     ESP = _loc2_;
                     F___cxa_throw();
                     _loc2_ += 16;
                  }
                  _loc10_ = _loc9_ | 4;
                  si32(2,_loc10_);
                  ESP = _loc2_;
                  ptr2fun[_loc7_]();
                  _loc2_ -= 16;
                  si32(_loc1_,_loc2_);
                  ESP = _loc2_;
                  F_malloc();
                  _loc2_ += 16;
                  _loc11_ = eax;
               }
               _loc2_ -= 16;
               si32(_loc9_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               eax = _loc11_;
               _loc2_ = _loc3_;
               ESP = _loc2_;
               return;
            }
            while((uint(_loc10_ = li32(_loc10_ = _loc9_ | 4))) < 2)
            {
               while(true)
               {
                  _loc4_ = li32(_loc3_ - 48);
                  if((_loc10_ = li32(_loc3_ - 44)) >= 0)
                  {
                     break;
                  }
                  _loc10_ = _loc9_ | 4;
                  si32(-1,_loc10_);
                  _loc2_ -= 16;
                  si32(_loc4_,_loc2_);
                  ESP = _loc2_;
                  F___cxa_call_unexpected();
                  _loc2_ += 16;
               }
               _loc10_ = _loc9_ | 4;
               si32(-1,_loc10_);
               _loc2_ -= 16;
               si32(_loc4_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Resume();
               _loc2_ += 16;
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
            continue;
         }
      }
   }
}
