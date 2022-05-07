package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1415;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str26444;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str414;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZ24blargg_verify_byte_ordervE8__func__413;
   
   public function F__ZN7Sap_Emu12start_track_Ei() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:int = 0;
      var _loc5_:int = 0;
      var _loc6_:int = 0;
      var _loc13_:* = 0;
      var _loc15_:* = 0;
      var _loc7_:int = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 16;
      _loc3_ = li32(_loc4_);
      var _loc14_:*;
      _loc13_ = li32((_loc14_ = li32(_loc15_ = li32(_loc3_ + 252))) + 28);
      _loc2_ -= 16;
      si32(_loc15_,_loc2_);
      ESP = _loc2_;
      ptr2fun[_loc13_]();
      _loc2_ += 16;
      _loc2_ -= 16;
      si32(66048,_loc2_ + 8);
      si32(0,_loc2_ + 4);
      si32(_loc14_ = int(_loc3_ + 1108),_loc2_);
      ESP = _loc2_;
      Fmemset();
      _loc2_ += 16;
      _loc12_ = li32(_loc3_ + 884);
      _loc11_ = li32(_loc3_ + 304);
      _loc10_ = li32(_loc4_ + 4);
      while((_loc14_ = int(_loc12_ - _loc11_)) > 4)
      {
         _loc9_ = (_loc15_ = (_loc15_ = li8(_loc11_ + 3)) << 8) | li8(_loc11_ + 2);
         _loc8_ = (_loc15_ = (_loc15_ = li8(_loc11_ + 1)) << 8) | li8(_loc11_);
         if(uint(_loc9_) < uint(_loc8_))
         {
            si32(L__2E_str26444,_loc3_ + 16);
            break;
         }
         _loc1_ = _loc11_ + 4;
         if(int(_loc12_ - _loc1_) < (_loc6_ = (_loc5_ = _loc9_ - _loc8_) + 1))
         {
            si32(L__2E_str26444,_loc3_ + 16);
            break;
         }
         _loc2_ -= 16;
         si32(_loc6_,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(_loc14_ = int((_loc14_ = int(_loc3_ + _loc8_)) + 1364),_loc2_);
         _loc11_ = int((_loc7_ = _loc5_ + _loc11_) + 5);
         ESP = _loc2_;
         Fmemcpy();
         _loc2_ += 16;
         if((_loc14_ = int((_loc12_ = li32(_loc3_ + 884)) - _loc11_)) >= 2)
         {
            if((_loc14_ = li8(_loc11_)) == 255)
            {
               if((_loc14_ = li8(_loc7_ + 6)) == 255)
               {
                  _loc11_ = int(_loc7_ + 7);
               }
            }
         }
      }
      si32(_loc14_ = int(_loc3_ + 67160),_loc3_ + 980);
      si32(0,_loc3_ + 984);
      si32(0,_loc3_ + 988);
      si32(0,_loc3_ + 992);
      si32(0,_loc3_ + 996);
      si32(0,_loc3_ + 1000);
      si32(0,_loc3_ + 912);
      si32(0,_loc3_ + 908);
      si32(0,_loc3_ + 904);
      si32(0,_loc3_ + 900);
      si32(0,_loc3_ + 932);
      si32(0,_loc3_ + 928);
      si32(0,_loc3_ + 924);
      si32(0,_loc3_ + 920);
      si32(0,_loc3_ + 952);
      si32(0,_loc3_ + 948);
      si32(0,_loc3_ + 944);
      si32(0,_loc3_ + 940);
      si32(0,_loc3_ + 972);
      si32(0,_loc3_ + 968);
      si32(0,_loc3_ + 964);
      si32(0,_loc3_ + 960);
      si32(_loc14_,_loc3_ + 1084);
      si32(0,_loc3_ + 1088);
      si32(0,_loc3_ + 1092);
      si32(0,_loc3_ + 1096);
      si32(0,_loc3_ + 1100);
      si32(0,_loc3_ + 1104);
      si32(0,_loc3_ + 1016);
      si32(0,_loc3_ + 1012);
      si32(0,_loc3_ + 1008);
      si32(0,_loc3_ + 1004);
      si32(0,_loc3_ + 1036);
      si32(0,_loc3_ + 1032);
      si32(0,_loc3_ + 1028);
      si32(0,_loc3_ + 1024);
      si32(0,_loc3_ + 1056);
      si32(0,_loc3_ + 1052);
      si32(0,_loc3_ + 1048);
      si32(0,_loc3_ + 1044);
      si32(0,_loc3_ + 1076);
      si32(0,_loc3_ + 1072);
      si32(0,_loc3_ + 1068);
      si32(0,_loc3_ + 1064);
      si32(_loc14_ = int(_loc3_ + 284),_loc3_ + 280);
      si32(_loc14_ = int(_loc3_ + 1364),_loc3_ + 300);
      si8(4,_loc3_ + 277);
      si8(-1,_loc3_ + 278);
      si32(0,_loc3_ + 288);
      si32(0,_loc3_ + 284);
      si8(0,_loc3_ + 276);
      si32(0,_loc3_ + 272);
      si32(1073741824,_loc3_ + 292);
      si32(1073741824,_loc3_ + 296);
      si32(1,_loc4_ - 4);
      if((_loc14_ = li8(_loc4_ - 4)) == 0)
      {
         _loc2_ -= 16;
         si32(L__2E_str1415,_loc2_ + 12);
         si32(62,_loc2_ + 8);
         si32(L__2E_str414,_loc2_ + 4);
         si32(__ZZ24blargg_verify_byte_ordervE8__func__413,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      si32(0,_loc3_ + 896);
      _loc2_ -= 16;
      si32(_loc10_,_loc2_ + 4);
      si32(_loc3_,_loc2_);
      ESP = _loc2_;
      F__ZN7Sap_Emu9call_initEi();
      _loc2_ += 16;
      si32(-1,_loc3_ + 896);
      _loc15_ = li32(_loc3_ + 332);
      si32(_loc14_ = int((_loc14_ = li32(_loc3_ + 888)) * _loc15_),_loc3_ + 892);
      eax = 0;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
