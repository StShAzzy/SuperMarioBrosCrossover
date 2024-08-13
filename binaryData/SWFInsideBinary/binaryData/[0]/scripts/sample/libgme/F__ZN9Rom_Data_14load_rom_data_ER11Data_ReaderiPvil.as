package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN9Rom_Data_14load_rom_data_ER11Data_ReaderiPvil() : void
   {
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:int = 0;
      var _loc19_:* = 0;
      var _loc14_:int = 0;
      var _loc8_:int = 0;
      var _loc9_:int = 0;
      var _loc11_:* = 0;
      var _loc13_:int = 0;
      var _loc3_:* = ESP;
      _loc7_ = _loc3_;
      _loc4_ = li32(_loc7_);
      si32(0,_loc4_ + 12);
      si32(0,_loc4_ + 16);
      si32(0,_loc4_ + 20);
      _loc19_ = li32(_loc4_);
      si32(0,_loc4_);
      si32(0,_loc4_ + 4);
      if(_loc19_ != 0)
      {
         _loc3_ -= 16;
         si32(_loc19_,_loc3_);
         ESP = _loc3_;
         F_idalloc();
         _loc3_ += 16;
      }
      _loc18_ = li32(_loc7_ + 8);
      _loc17_ = li32(_loc7_ + 4);
      var _loc16_:*;
      var _loc15_:* = li32((_loc16_ = li32(_loc17_)) + 16);
      _loc3_ -= 16;
      si32(_loc17_,_loc3_);
      ESP = _loc3_;
      ptr2fun[_loc15_]();
      _loc3_ += 16;
      _loc14_ = eax;
      si32(_loc14_,_loc4_ + 8);
      _loc13_ = _gme_wrong_file_type;
      if(_loc14_ > _loc18_)
      {
         _loc12_ = li32(_loc7_ + 20);
         _loc1_ = _loc12_ - _loc18_;
         _loc16_ = _loc1_ + _loc12_;
         _loc8_ = _loc16_ + _loc14_;
         _loc3_ -= 16;
         si32(_loc8_,_loc3_ + 4);
         si32(li32(_loc4_),_loc3_);
         ESP = _loc3_;
         F_realloc();
         _loc3_ += 16;
         _loc9_ = eax;
         if(_loc9_ == 0)
         {
            _loc13_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6122;
            if(_loc8_ == 0)
            {
               addr201:
               si32(_loc9_,_loc4_);
               si32(_loc8_,_loc4_ + 4);
               _loc16_ = li32(_loc17_);
               var _loc10_:* = li32(_loc16_ + 12);
               _loc16_ = li32(_loc4_ + 8);
               _loc3_ -= 16;
               si32(_loc16_,_loc3_ + 8);
               _loc16_ = _loc9_ + _loc1_;
               si32(_loc16_,_loc3_ + 4);
               si32(_loc17_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc10_]();
               _loc3_ += 16;
               _loc13_ = eax;
               if(_loc13_ == 0)
               {
                  _loc16_ = li32(_loc4_ + 8);
                  si32(_loc16_ = _loc16_ - _loc18_,_loc4_ + 8);
                  _loc16_ = li32(_loc4_ + 4);
                  if((uint(_loc16_)) < uint(_loc1_))
                  {
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3119,_loc3_ + 12);
                     si32(51,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2118,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIhEixEjE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  var _loc2_:* = li32(_loc7_ + 16);
                  _loc16_ = li32(_loc7_ + 12);
                  var _loc5_:* = li32(_loc4_);
                  _loc3_ -= 16;
                  si32(_loc18_,_loc3_ + 8);
                  _loc5_ += _loc1_;
                  si32(_loc5_ += _loc1_,_loc3_ + 4);
                  si32(_loc16_,_loc3_);
                  ESP = _loc3_;
                  Fmemcpy();
                  _loc3_ += 16;
                  _loc16_ = li32(_loc4_);
                  _loc3_ -= 16;
                  si32(_loc12_,_loc3_ + 8);
                  var _loc6_:* = _loc2_ & 0xFF;
                  si32(_loc6_,_loc3_ + 4);
                  si32(_loc16_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc16_ = li32(_loc4_);
                  _loc5_ = li32(_loc4_ + 4);
                  _loc3_ -= 16;
                  si32(_loc12_,_loc3_ + 8);
                  si32(_loc6_,_loc3_ + 4);
                  _loc5_ -= _loc12_;
                  _loc16_ += _loc5_;
                  si32(_loc16_ += _loc5_,_loc3_);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
                  _loc13_ = 0;
               }
               §§goto(addr498);
            }
            _loc11_ = li32(_loc4_);
            si32(0,_loc4_);
            si32(0,_loc4_ + 4);
            if(_loc11_ != 0)
            {
               _loc3_ -= 16;
               si32(_loc11_,_loc3_);
               ESP = _loc3_;
               F_idalloc();
               _loc3_ += 16;
            }
            §§goto(addr498);
         }
         §§goto(addr201);
      }
      addr498:
      eax = _loc13_;
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
