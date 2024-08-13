package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN11Classic_Emu5play_ElPs() : void
   {
      var _loc5_:* = 0;
      var _loc16_:* = 0;
      var _loc17_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc15_:* = 0;
      var _loc8_:int = 0;
      var _loc3_:* = ESP;
      _loc5_ = _loc3_;
      _loc3_ -= 16;
      _loc4_ = li32(_loc5_ + 8);
      _loc17_ = li32(_loc5_ + 4);
      _loc16_ = li32(_loc5_);
      _loc15_ = _loc17_;
      while(true)
      {
         _loc11_ = _loc15_;
         _loc8_ = 0;
         if(_loc11_ == 0)
         {
            break;
         }
         var _loc14_:* = li32(_loc16_ + 252);
         var _loc13_:*;
         var _loc12_:* = li32((_loc13_ = li32(_loc14_)) + 36);
         _loc3_ -= 16;
         si32(_loc11_,_loc3_ + 8);
         _loc13_ = _loc17_ - _loc11_;
         si32(_loc13_ = _loc4_ + (_loc13_ << 1),_loc3_ + 4);
         si32(_loc14_,_loc3_);
         ESP = _loc3_;
         ptr2fun[_loc12_]();
         _loc3_ += 16;
         _loc14_ = eax;
         _loc15_ = _loc11_ - _loc14_;
         if(_loc11_ != _loc14_)
         {
            _loc1_ = li32((_loc10_ = li32(_loc16_ + 252)) + 4);
            if(li32(_loc16_ + 264) != _loc1_)
            {
               si32(_loc1_,_loc16_ + 264);
               _loc14_ = li32(_loc16_ + 192);
               if(_loc14_ == 0)
               {
                  _loc3_ -= 16;
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4271,_loc3_ + 12);
                  si32(110,_loc3_ + 8);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268,_loc3_ + 4);
                  si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu11mute_voicesEiE8__func__,_loc3_);
                  ESP = _loc3_;
                  F___assert();
                  _loc3_ += 16;
               }
               _loc14_ = li32(_loc16_ + 172);
               si32(_loc14_,_loc16_ + 172);
               _loc13_ = li32(_loc16_);
               var _loc6_:* = li32(_loc13_ + 48);
               _loc3_ -= 16;
               si32(_loc14_,_loc3_ + 4);
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc6_]();
               _loc3_ += 16;
               _loc10_ = li32(_loc16_ + 252);
            }
            _loc14_ = li32(_loc10_ + 12);
            _loc13_ = li32(_loc16_ + 260);
            si32(_loc13_ = (_loc13_ = _loc13_ * _loc14_) / 1000,_loc5_ - 4);
            _loc13_ = li32(_loc16_);
            var _loc7_:* = li32(_loc13_ + 76);
            _loc3_ -= 16;
            si32(_loc14_,_loc3_ + 8);
            _loc14_ = _loc5_ - 4;
            si32(_loc14_,_loc3_ + 4);
            si32(_loc16_,_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc7_]();
            _loc3_ += 16;
            _loc8_ = eax;
            if(_loc8_ != 0)
            {
               break;
            }
            _loc9_ = li32(_loc5_ - 4);
            if(_loc9_ == 0)
            {
               _loc3_ -= 16;
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7123,_loc3_ + 12);
               si32(114,_loc3_ + 8);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4120,_loc3_ + 4);
               si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Classic_Emu5play_ElPsE8__func__,_loc3_);
               ESP = _loc3_;
               F___assert();
               _loc3_ += 16;
            }
            _loc13_ = li32(_loc16_ + 252);
            var _loc2_:* = li32((_loc14_ = li32(_loc13_)) + 32);
            _loc3_ -= 16;
            si32(_loc9_,_loc3_ + 4);
            si32(_loc13_,_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc2_]();
            _loc3_ += 16;
         }
      }
      eax = _loc8_;
      _loc3_ = _loc5_;
      ESP = _loc3_;
   }
}
