package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN8Gme_File9load_mem_EPKhl() : void
   {
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc15_:* = 0;
      var _loc5_:int = 0;
      var _loc13_:int = 0;
      var _loc12_:int = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc14_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = ESP;
      while(true)
      {
         try
         {
            if(!_loc7_)
            {
               _loc4_ = _loc2_;
               _loc2_ -= 80;
               _loc3_ = li32(_loc4_);
               _loc15_ = li32(_loc3_ + 132);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_286,_loc4_ - 28);
               si32(___gxx_personality_sj0,_loc4_ - 32);
               _loc14_ = _loc4_;
               si32(_loc14_,_loc4_ - 24);
               _loc14_ = _loc2_;
               si32(_loc14_,_loc4_ - 16);
               _loc13_ = _loc4_ - 56;
               _loc12_ = _loc13_ + 32;
               eax = setjmp(_loc12_,1,_loc2_);
            }
            else
            {
               switch(_loc7_ - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            _loc14_ = eax;
            if(_loc14_ == 0)
            {
               _loc11_ = li32(_loc4_ + 4);
               _loc2_ -= 16;
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               if(_loc15_ == _loc11_)
               {
                  _loc2_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11199,_loc2_ + 12);
                  si32(55,_loc2_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10198,_loc2_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN8Gme_File9load_mem_EPKhlE8__func__,_loc2_);
                  ESP = _loc2_;
                  F___assert();
                  _loc2_ += 16;
               }
               _loc14_ = li32(_loc4_ + 8);
               _loc10_ = _loc4_ - 80;
               si32(_loc10_,_loc4_ - 60);
               _loc9_ = __ZTV15Mem_File_Reader + 8;
               _loc8_ = li32(_loc4_ - 60);
               si32(_loc9_,_loc8_);
               _loc9_ = _loc10_ | 4;
               si32(_loc11_,_loc9_);
               si32(_loc14_,_loc4_ - 72);
               si32(0,_loc4_ - 68);
               _loc14_ = li32(_loc3_);
               _loc1_ = li32(_loc14_ + 12);
               _loc14_ = _loc13_ | 4;
               si32(1,_loc14_);
               _loc2_ -= 16;
               si32(_loc10_,_loc2_ + 4);
               si32(_loc3_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc1_]();
               _loc2_ += 16;
               _loc5_ = eax;
               _loc2_ -= 16;
               si32(_loc13_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               eax = _loc5_;
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            while(_loc14_ = _loc13_ | 4, (_loc14_ = li32(_loc14_)) == 0)
            {
               _loc14_ = li32(_loc4_ - 48);
               _loc6_ = li32(_loc4_ - 44);
               _loc9_ = __ZTV11File_Reader + 8;
               _loc8_ = li32(_loc4_ - 60);
               si32(_loc9_,_loc8_);
               _loc9_ = _loc13_ | 4;
               si32(-1,_loc9_);
               _loc2_ -= 16;
               si32(_loc14_,_loc2_);
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
         _loc7_ = int(l.sjid);
      }
   }
}
