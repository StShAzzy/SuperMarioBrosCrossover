package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11220;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str12221;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str17226;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str18227;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str19228;
   
   public function F__ZN7Kss_Emu5load_ER11Data_Reader() : void
   {
      var _loc6_:* = 0;
      var _loc18_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc11_:* = 0;
      var _loc4_:int = 0;
      var _loc13_:int = 0;
      var _loc16_:* = 0;
      var _loc7_:int = 0;
      var _loc15_:int = 0;
      var _loc3_:* = int(ESP);
      _loc6_ = _loc3_;
      _loc4_ = 0;
      _loc18_ = li32(_loc6_);
      si32(_loc4_,_loc18_ + 956);
      si32(_loc4_,_loc18_ + 952);
      si32(_loc4_,_loc18_ + 948);
      si32(_loc4_,_loc18_ + 944);
      si32(_loc4_,_loc18_ + 940);
      si32(_loc4_,_loc18_ + 936);
      si32(_loc4_,_loc18_ + 932);
      si32(_loc4_,_loc18_ + 928);
      _loc3_ -= 32;
      si32(8200,_loc3_ + 20);
      si32(_loc4_,_loc3_ + 16);
      var _loc17_:*;
      si32(_loc17_ = int(_loc18_ + 928),_loc3_ + 12);
      si32(_loc16_ = 16,_loc3_ + 8);
      si32(_loc17_ = li32(_loc6_ + 4),_loc3_ + 4);
      si32(_loc17_ = int(_loc18_ + 904),_loc3_);
      ESP = _loc3_;
      F__ZN9Rom_Data_14load_rom_data_ER11Data_ReaderiPvil();
      _loc3_ += 32;
      if((_loc15_ = eax) == 0)
      {
         loop0:
         do
         {
            _loc17_ = li8(_loc17_ = int(L__2E_str11220 - _loc4_));
            var _loc14_:*;
            if((_loc14_ = li8((_loc14_ = int(_loc18_ - _loc4_)) + 928)) == _loc17_)
            {
               continue;
            }
            _loc13_ = 0;
            while(true)
            {
               _loc17_ = li8(_loc17_ = int(L__2E_str12221 - _loc13_));
               _loc14_ = li8((_loc14_ = int(_loc18_ - _loc13_)) + 928);
               _loc15_ = _gme_wrong_file_type;
               if(_loc14_ != _loc17_)
               {
                  break;
               }
               if((_loc13_ += -1) == -4)
               {
                  break loop0;
               }
            }
         }
         while((_loc4_ += -1) != -4);
         
         if((_loc17_ = li8(_loc18_ + 931)) == 67)
         {
            if((_loc17_ = li8(_loc18_ + 942)) != 0)
            {
               si8(0,_loc18_ + 942);
               si32(L__2E_str17226,_loc18_ + 16);
            }
            if((_loc17_ = (_loc12_ = li8(_loc18_ + 943)) & 240) != 0)
            {
               si8(_loc17_ = _loc12_ & 15,_loc18_ + 943);
               si32(L__2E_str17226,_loc18_ + 16);
            }
         }
         else
         {
            if((uint(_loc11_ = li8(_loc18_ + 942))) <= uint(_loc16_))
            {
               _loc16_ = _loc11_;
            }
            _loc17_ = li32(_loc18_ + 904);
            _loc3_ -= 16;
            si32(_loc16_,_loc3_ + 8);
            si32(_loc17_ += 8200,_loc3_ + 4);
            si32(_loc17_ = int(_loc18_ + 944),_loc3_);
            ESP = _loc3_;
            Fmemcpy();
            _loc3_ += 16;
            if(uint(_loc11_) >= 17)
            {
               si32(L__2E_str17226,_loc18_ + 16);
            }
         }
         _loc1_ = li8(_loc18_ + 943);
         if((_loc17_ = _loc1_ & 9) != 0)
         {
            si32(L__2E_str18227,_loc18_ + 16);
         }
         _loc17_ = _loc1_ & 4;
         _loc7_ = 49152;
         if(_loc17_ != 0)
         {
            _loc7_ = 0;
         }
         si32(_loc7_,_loc18_ + 964);
         if((_loc17_ = _loc1_ & 2) != 0)
         {
            if((_loc17_ = li32(_loc18_ + 68872)) == 0)
            {
               _loc3_ -= 16;
               si32(1600,_loc3_);
               ESP = _loc3_;
               F__Znwj();
               _loc3_ += 16;
               var _loc9_:int = eax;
               _loc3_ -= 16;
               si32(_loc9_,_loc3_);
               ESP = _loc3_;
               F__ZN7Sms_ApuC2Ev();
               _loc3_ += 16;
               si32(_loc9_,int(_loc18_ + 68872));
               _loc15_ = L__2E_str19228;
               if(_loc9_ != 0)
               {
               }
               §§goto(addr612);
            }
         }
         si32(8,_loc18_ + 168);
         si32(3579545,_loc18_ + 260);
         var _loc10_:* = li32((_loc17_ = li32(_loc14_ = li32(_loc18_ + 252))) + 20);
         _loc3_ -= 16;
         si32(3579545,_loc3_ + 4);
         si32(_loc14_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc10_]();
         _loc3_ += 16;
         var _loc2_:* = li32((_loc14_ = li32(_loc17_ = li32(_loc18_ + 252))) + 8);
         _loc14_ = li32(_loc18_ + 168);
         _loc3_ -= 16;
         si32(_loc14_,_loc3_ + 4);
         si32(_loc17_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc2_]();
         _loc3_ += 16;
         if((_loc15_ = eax) == 0)
         {
            var _loc5_:* = li32((_loc17_ = li32(_loc18_)) + 44);
            _loc3_ -= 16;
            si32(_loc17_ = int(_loc18_ + 144),_loc3_ + 4);
            si32(_loc18_,_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc5_]();
            _loc3_ += 16;
            si32(_loc17_ = li32((_loc17_ = li32(_loc18_ + 252)) + 4),_loc18_ + 264);
            _loc15_ = 0;
         }
      }
      addr612:
      eax = _loc15_;
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
