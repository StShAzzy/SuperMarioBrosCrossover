package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN8Gme_FileD1Ev() : void
   {
      var _loc4_:* = 0;
      var _loc9_:int = 0;
      var _loc16_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc17_:int = 0;
      var _loc15_:int = 0;
      var _loc14_:int = 0;
      var _loc13_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = ESP;
      while(true)
      {
         try
         {
            if(!_loc9_)
            {
               _loc4_ = _loc2_;
               _loc2_ -= 64;
               _loc3_ = li32(_loc4_);
               si32(_loc3_,_loc4_ - 60);
               _loc17_ = __ZTV8Gme_File + 8;
               _loc3_ = li32(_loc4_ - 60);
               si32(_loc17_,_loc3_);
               _loc3_ = li32(_loc4_ - 60);
               _loc16_ = li32(_loc3_ + 24);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_288,_loc4_ - 28);
               si32(___gxx_personality_sj0,_loc4_ - 32);
               _loc3_ = _loc4_;
               si32(_loc3_,_loc4_ - 24);
               _loc3_ = _loc2_;
               si32(_loc3_,_loc4_ - 16);
               _loc15_ = _loc4_ - 56;
               _loc14_ = _loc15_ + 32;
               eax = setjmp(_loc14_,1,_loc2_);
            }
            else
            {
               switch(_loc9_ - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            _loc3_ = eax;
            if(_loc3_ == 0)
            {
               _loc2_ -= 16;
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               if(_loc16_ != 0)
               {
                  _loc3_ = li32(_loc4_ - 60);
                  _loc13_ = li32(_loc3_ + 20);
                  _loc3_ = _loc15_ | 4;
                  si32(1,_loc3_);
                  _loc2_ -= 16;
                  si32(_loc13_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc16_]();
                  _loc2_ += 16;
               }
               _loc3_ = li32(_loc4_ - 60);
               _loc12_ = li32(_loc3_ + 132);
               if(_loc12_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc3_ = li32(_loc4_ - 60);
               _loc11_ = li32(_loc3_ + 36);
               if(_loc11_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc3_ = li32(_loc4_ - 60);
               _loc10_ = li32(_loc3_ + 28);
               if(_loc10_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc10_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc2_ -= 16;
               si32(_loc15_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            while(true)
            {
               _loc3_ = _loc15_ | 4;
               _loc3_ = li32(_loc3_);
               if(_loc3_ != 0)
               {
                  break;
               }
               _loc1_ = li32(_loc4_ - 48);
               _loc5_ = li32(_loc4_ - 44);
               _loc3_ = li32(_loc4_ - 60);
               _loc6_ = li32(_loc3_ + 132);
               if(_loc6_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc6_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc3_ = li32(_loc4_ - 60);
               _loc7_ = li32(_loc3_ + 36);
               if(_loc7_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc7_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc3_ = li32(_loc4_ - 60);
               _loc8_ = li32(_loc3_ + 28);
               if(_loc8_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_);
                  ESP = _loc2_;
                  F_idalloc();
                  _loc2_ += 16;
               }
               _loc3_ = _loc15_ | 4;
               si32(-1,_loc3_);
               _loc2_ -= 16;
               si32(_loc1_,_loc2_);
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
            if(l.esp >= _loc4_)
            {
               throw l;
            }
         }
         ESP = _loc2_ = int(l.esp);
         eax = l.retval;
         _loc9_ = int(l.sjid);
      }
   }
}
