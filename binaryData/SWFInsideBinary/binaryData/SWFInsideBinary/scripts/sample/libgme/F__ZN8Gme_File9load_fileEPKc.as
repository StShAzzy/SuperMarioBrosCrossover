package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L_LSDA_284;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3127;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4128;
   
   public function F__ZN8Gme_File9load_fileEPKc() : void
   {
      var _loc9_:* = 0;
      var _loc14_:int = 0;
      var _loc5_:* = 0;
      var _loc18_:int = 0;
      var _loc11_:* = 0;
      var _loc3_:* = 0;
      var _loc6_:* = 0;
      var _loc8_:* = 0;
      var _loc21_:* = 0;
      var _loc20_:int = 0;
      var _loc19_:int = 0;
      var _loc16_:int = 0;
      var _loc15_:int = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc13_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc2_:int = 0;
      var _loc22_:* = 0;
      var _loc17_:int = 0;
      var _loc4_:* = int(ESP);
      while(true)
      {
         try
         {
            if(!_loc14_)
            {
               _loc9_ = _loc4_;
               _loc4_ -= 80;
               _loc21_ = li32((_loc22_ = li32(_loc5_ = li32(_loc9_))) + 24);
               _loc4_ -= 16;
               si32(_loc5_,_loc4_);
               ESP = _loc4_;
               ptr2fun[_loc21_]();
               _loc4_ += 16;
               si32(_loc20_ = _loc9_ - 72,_loc9_ - 64);
               _loc19_ = __ZTV15Std_File_Reader + 8;
               _loc22_ = li32(_loc9_ - 64);
               si32(_loc19_,_loc22_);
               si32(_loc22_ = _loc20_ | 4,_loc9_ - 60);
               _loc22_ = li32(_loc9_ - 60);
               si32(0,_loc22_);
               _loc4_ -= 16;
               si32(L__2E_str3127,_loc4_ + 4);
               si32(_loc22_ = li32(_loc9_ + 4),_loc4_);
               ESP = _loc4_;
               F_fopen();
               _loc4_ += 16;
               _loc18_ = eax;
               _loc22_ = li32(_loc9_ - 60);
               si32(_loc18_,_loc22_);
               si32(L_LSDA_284,_loc9_ - 28);
               si32(___gxx_personality_sj0,_loc9_ - 32);
               si32(_loc22_ = _loc9_,_loc9_ - 24);
               si32(_loc22_ = _loc4_,_loc9_ - 16);
               _loc17_ = L__2E_str4128;
               if(_loc18_ != 0)
               {
                  _loc17_ = 0;
               }
               _loc15_ = (_loc16_ = _loc9_ - 56) + 32;
               eax = setjmp(_loc15_,1,_loc4_);
            }
            else
            {
               switch(int(_loc14_) - 1)
               {
                  case 0:
                  default:
                     throw "bad longjmp";
               }
            }
            if((_loc22_ = int(eax)) == 0)
            {
               _loc4_ -= 16;
               si32(_loc16_,_loc4_);
               ESP = _loc4_;
               F__Unwind_SjLj_Register();
               _loc4_ += 16;
               if(_loc18_ != 0)
               {
                  _loc1_ = li32((_loc22_ = li32(_loc5_)) + 12);
                  _loc10_ = _loc16_ | 4;
                  si32(1,_loc10_);
                  _loc4_ -= 16;
                  si32(_loc20_,_loc4_ + 4);
                  si32(_loc5_,_loc4_);
                  ESP = _loc4_;
                  ptr2fun[_loc1_]();
                  _loc4_ += 16;
                  _loc17_ = eax;
                  if((_loc22_ = li32(_loc5_ + 8)) == 0)
                  {
                     si32(_loc22_ = li32((_loc22_ = li32(_loc5_ + 4)) + 4),_loc5_ + 12);
                     si32(_loc22_,_loc5_ + 8);
                  }
                  _loc11_ = li32(_loc5_);
                  if(_loc17_ == 0)
                  {
                     _loc12_ = li32(_loc11_ + 28);
                     si32(2,_loc10_);
                     _loc17_ = 0;
                     _loc4_ -= 16;
                     si32(_loc5_,_loc4_);
                     ESP = _loc4_;
                     ptr2fun[_loc12_]();
                     _loc4_ += 16;
                  }
                  else
                  {
                     _loc13_ = li32(_loc11_ + 8);
                     si32(3,_loc10_);
                     _loc4_ -= 16;
                     si32(_loc5_,_loc4_);
                     ESP = _loc4_;
                     ptr2fun[_loc13_]();
                     _loc4_ += 16;
                  }
               }
               _loc22_ = li32(_loc9_ - 64);
               si32(_loc19_,_loc22_);
               _loc3_ = li32(_loc22_ = li32(_loc9_ - 60));
               if(_loc3_ != 0)
               {
                  _loc4_ -= 16;
                  si32(_loc3_,_loc4_);
                  ESP = _loc4_;
                  F_fclose();
                  _loc4_ += 16;
                  _loc22_ = li32(_loc9_ - 60);
                  si32(0,_loc22_);
               }
               _loc4_ -= 16;
               si32(_loc16_,_loc4_);
               ESP = _loc4_;
               F__Unwind_SjLj_Unregister();
               _loc4_ += 16;
               eax = _loc17_;
               ESP = _loc4_ = _loc9_;
               return;
            }
            while((uint(_loc22_ = li32(_loc22_ = _loc16_ | 4))) < 3)
            {
               _loc6_ = li32(_loc9_ - 48);
               _loc7_ = li32(_loc9_ - 44);
               _loc22_ = li32(_loc9_ - 64);
               si32(_loc19_,_loc22_);
               if((_loc8_ = li32(_loc22_ = li32(_loc9_ - 60))) != 0)
               {
                  _loc4_ -= 16;
                  si32(_loc8_,_loc4_);
                  ESP = _loc4_;
                  F_fclose();
                  _loc4_ += 16;
                  _loc22_ = li32(_loc9_ - 60);
                  si32(0,_loc22_);
               }
               _loc2_ = __ZTV11File_Reader + 8;
               _loc22_ = li32(_loc9_ - 64);
               si32(_loc2_,_loc22_);
               _loc22_ = _loc16_ | 4;
               si32(-1,_loc22_);
               _loc4_ -= 16;
               si32(_loc6_,_loc4_);
               ESP = _loc4_;
               F__Unwind_SjLj_Resume();
               _loc4_ += 16;
            }
            while(true)
            {
            }
         }
         catch(l:LongJmp)
         {
            if(l.esp >= _loc9_)
            {
               throw l;
            }
            continue;
         }
      }
   }
}
