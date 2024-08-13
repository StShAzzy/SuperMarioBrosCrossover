package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_330;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3127;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4128;
   
   public function F__ZN12M3u_Playlist4loadEPKc() : void
   {
      var _loc4_:* = 0;
      var _loc7_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc3_:int = 0;
      var _loc15_:int = 0;
      var _loc14_:* = 0;
      var _loc11_:int = 0;
      var _loc10_:int = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:int = 0;
      var _loc2_:* = sample.libgme.ESP;
      while(true)
      {
         try
         {
            if(!_loc7_)
            {
               _loc4_ = _loc2_;
               _loc2_ -= 80;
               _loc3_ = _loc4_ - 72;
               si32(_loc3_,_loc4_ - 64);
               _loc15_ = sample.libgme.__ZTV15Std_File_Reader + 8;
               _loc14_ = li32(_loc4_ - 64);
               si32(_loc15_,_loc14_);
               _loc14_ = _loc3_ | 4;
               si32(_loc14_,_loc4_ - 60);
               _loc14_ = li32(_loc4_ - 60);
               si32(0,_loc14_);
               _loc2_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3127,_loc2_ + 4);
               _loc14_ = li32(_loc4_ + 4);
               si32(_loc14_,_loc2_);
               ESP = _loc2_;
               F_fopen();
               _loc2_ += 16;
               _loc13_ = sample.libgme.eax;
               _loc14_ = li32(_loc4_ - 60);
               si32(_loc13_,_loc14_);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_330,_loc4_ - 28);
               si32(sample.libgme.___gxx_personality_sj0,_loc4_ - 32);
               _loc14_ = _loc4_;
               si32(_loc14_,_loc4_ - 24);
               _loc14_ = _loc2_;
               si32(_loc14_,_loc4_ - 16);
               _loc12_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4128;
               if(_loc13_ != 0)
               {
                  _loc12_ = 0;
               }
               _loc11_ = _loc4_ - 56;
               _loc10_ = _loc11_ + 32;
               eax = setjmp(_loc10_,1,_loc2_);
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
            _loc14_ = sample.libgme.eax;
            if(_loc14_ == 0)
            {
               _loc2_ -= 16;
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Register();
               _loc2_ += 16;
               if(_loc13_ != 0)
               {
                  _loc9_ = li32(_loc4_);
                  _loc14_ = _loc11_ | 4;
                  si32(1,_loc14_);
                  _loc2_ -= 16;
                  si32(_loc3_,_loc2_ + 4);
                  si32(_loc9_,_loc2_);
                  ESP = _loc2_;
                  F__ZN12M3u_Playlist4loadER11Data_Reader();
                  _loc2_ += 16;
                  _loc12_ = sample.libgme.eax;
                  _loc14_ = li32(_loc4_ - 60);
                  _loc13_ = li32(_loc14_);
               }
               _loc14_ = li32(_loc4_ - 64);
               si32(_loc15_,_loc14_);
               if(_loc13_ != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc13_,_loc2_);
                  ESP = _loc2_;
                  F_fclose();
                  _loc2_ += 16;
                  _loc14_ = li32(_loc4_ - 60);
                  si32(0,_loc14_);
               }
               _loc2_ -= 16;
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__Unwind_SjLj_Unregister();
               _loc2_ += 16;
               eax = _loc12_;
               _loc2_ = _loc4_;
               ESP = _loc2_;
               return;
            }
            while(_loc14_ = _loc11_ | 4, (_loc14_ = li32(_loc14_)) == 0)
            {
               _loc8_ = li32(_loc4_ - 48);
               _loc1_ = li32(_loc4_ - 44);
               _loc14_ = li32(_loc4_ - 64);
               si32(_loc15_,_loc14_);
               _loc14_ = li32(_loc4_ - 60);
               if((_loc5_ = li32(_loc14_)) != 0)
               {
                  _loc2_ -= 16;
                  si32(_loc5_,_loc2_);
                  ESP = _loc2_;
                  F_fclose();
                  _loc2_ += 16;
                  _loc14_ = li32(_loc4_ - 60);
                  si32(0,_loc14_);
               }
               _loc14_ = sample.libgme.__ZTV11File_Reader + 8;
               _loc6_ = li32(_loc4_ - 64);
               si32(_loc14_,_loc6_);
               _loc14_ = _loc11_ | 4;
               si32(-1,_loc14_);
               _loc2_ -= 16;
               si32(_loc8_,_loc2_);
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
