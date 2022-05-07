package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str10178;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str11179;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6173;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9177;
   
   public function F__ZN7Gbs_Emu5load_ER11Data_Reader() : void
   {
      var _loc4_:* = 0;
      var _loc15_:* = 0;
      var _loc10_:* = 0;
      var _loc8_:Number = NaN;
      var _loc9_:* = 0;
      var _loc3_:int = 0;
      var _loc7_:* = 0;
      var _loc13_:int = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 32;
      si32(16392,_loc2_ + 20);
      _loc3_ = 0;
      si32(_loc3_,_loc2_ + 16);
      si32(112,_loc2_ + 8);
      var _loc16_:*;
      si32(_loc16_ = li32(_loc4_ + 4),_loc2_ + 4);
      si32(_loc16_ = int((_loc15_ = li32(_loc4_)) + 372),_loc2_ + 12);
      si32(_loc16_ = int(_loc15_ + 336),_loc2_);
      ESP = _loc2_;
      F__ZN9Rom_Data_14load_rom_data_ER11Data_ReaderiPvil();
      _loc2_ += 32;
      if((_loc13_ = eax) == 0)
      {
         si32(_loc16_ = li8(_loc15_ + 376),_loc15_ + 12);
         si32(_loc16_,_loc15_ + 8);
         while(true)
         {
            _loc16_ = li8(_loc16_ = int(L__2E_str6173 - _loc3_));
            var _loc12_:* = li8((_loc12_ = int(_loc15_ - _loc3_)) + 372);
            _loc13_ = _gme_wrong_file_type;
            if(_loc12_ == _loc16_)
            {
               _loc3_ += -1;
               if(_loc3_ != -3)
               {
                  continue;
               }
               if((_loc16_ = li8(_loc15_ + 375)) != 1)
               {
                  si32(L__2E_str9177,_loc15_ + 16);
               }
               if((_loc16_ = (_loc16_ = li8(_loc15_ + 387)) & 120) != 0)
               {
                  si32(L__2E_str10178,_loc15_ + 16);
               }
               _loc10_ = li8(_loc15_ + 379);
               _loc16_ = (_loc16_ = li8(_loc15_ + 381)) | _loc10_;
               _loc12_ = li8(_loc15_ + 383);
               if((_loc16_ = (_loc16_ = (_loc16_ |= _loc12_) << 24) >> 24) >= 0)
               {
                  if((uint(_loc16_ = _loc10_ << 8)) <= 1023)
                  {
                     addr223:
                     si32(L__2E_str11179,_loc15_ + 16);
                  }
                  si32(4,_loc15_ + 168);
                  var _loc11_:*;
                  sf64(_loc8_ = (_loc11_ = lf64(_loc15_ + 184)) * 0.000625,_loc15_ + 25104);
                  _loc16_ = li8(_loc15_ + 25420);
                  _loc2_ -= 16;
                  si32(_loc12_ = int(_loc15_ + 25448),_loc2_);
                  _loc9_ = _loc16_ & 7;
                  _loc7_ = (_loc16_ >>>= 4) & 7;
                  if(uint(_loc9_) >= uint(_loc7_))
                  {
                     _loc7_ = _loc9_;
                  }
                  var _loc14_:Number;
                  sf64(_loc14_ = (_loc11_ = Number(_loc16_ = int(_loc7_ + 1))) * _loc8_,_loc2_ + 4);
                  ESP = _loc2_;
                  F__ZN11Blip_Synth_11volume_unitEd();
                  _loc2_ += 16;
                  _loc2_ -= 16;
                  sf64(_loc14_,_loc2_ + 4);
                  si32(_loc16_ = int(_loc15_ + 26264),_loc2_);
                  ESP = _loc2_;
                  F__ZN11Blip_Synth_11volume_unitEd();
                  _loc2_ += 16;
                  si32(4194304,_loc15_ + 260);
                  var _loc6_:* = li32((_loc16_ = li32(_loc12_ = li32(_loc15_ + 252))) + 20);
                  _loc2_ -= 16;
                  si32(4194304,_loc2_ + 4);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc6_]();
                  _loc2_ += 16;
                  var _loc1_:* = li32((_loc12_ = li32(_loc16_ = li32(_loc15_ + 252))) + 8);
                  _loc12_ = li32(_loc15_ + 168);
                  _loc2_ -= 16;
                  si32(_loc12_,_loc2_ + 4);
                  si32(_loc16_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc1_]();
                  _loc2_ += 16;
                  if((_loc13_ = eax) == 0)
                  {
                     var _loc5_:* = li32((_loc16_ = li32(_loc15_)) + 44);
                     _loc2_ -= 16;
                     si32(_loc16_ = int(_loc15_ + 144),_loc2_ + 4);
                     si32(_loc15_,_loc2_);
                     ESP = _loc2_;
                     ptr2fun[_loc5_]();
                     _loc2_ += 16;
                     si32(_loc16_ = li32((_loc16_ = li32(_loc15_ + 252)) + 4),_loc15_ + 264);
                     _loc13_ = 0;
                     break;
                  }
                  break;
               }
               §§goto(addr223);
            }
            break;
         }
      }
      eax = _loc13_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
