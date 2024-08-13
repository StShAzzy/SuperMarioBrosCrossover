package sample.libgme
{
   import avm2.intrinsics.memory.*;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.*;
   
   public function F__ZN11Classic_Emu12mute_voices_Ei() : void
   {
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc15_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:* = 0;
      var _loc10_:* = 0;
      var _loc16_:int = 0;
      var _loc7_:* = 0;
      var _loc2_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = ESP;
      _loc6_ = _loc3_;
      _loc3_ -= 16;
      _loc4_ = li32(_loc6_);
      if((_loc18_ = li32(_loc4_ + 168)) != 0)
      {
         _loc17_ = li32(_loc6_ + 4);
         _loc16_ = _loc18_ + -1;
         do
         {
            _loc15_ = _loc16_;
            var _loc14_:* = 1 << _loc15_;
            if((_loc14_ = _loc14_ & _loc17_) != 0)
            {
               _loc14_ = li32(_loc4_);
               var _loc13_:* = li32(_loc14_ + 68);
               _loc3_ -= 32;
               si32(0,_loc3_ + 16);
               si32(0,_loc3_ + 12);
               si32(0,_loc3_ + 8);
               si32(_loc15_,_loc3_ + 4);
               si32(_loc4_,_loc3_);
               ESP = _loc3_;
               ptr2fun[_loc13_]();
               _loc3_ += 32;
               continue;
            }
            _loc12_ = li32(_loc4_ + 268);
            _loc11_ = li32(_loc4_ + 252);
            _loc1_ = li32((_loc14_ = li32(_loc11_)) + 12);
            _loc7_ = 0;
            if(_loc12_ != 0)
            {
               _loc14_ = _loc12_ + (_loc15_ << 2);
               _loc7_ = li32(_loc14_);
            }
            _loc3_ -= 16;
            si32(_loc7_,_loc3_ + 12);
            si32(_loc15_,_loc3_ + 8);
            si32(_loc11_,_loc3_ + 4);
            var _loc8_:int = _loc6_ - 16;
            si32(_loc8_,_loc3_);
            ESP = _loc3_;
            ptr2fun[_loc1_]();
            _loc3_ += 16;
            _loc14_ = _loc8_ | 4;
            _loc9_ = li32(_loc14_);
            _loc10_ = li32(_loc6_ - 16);
            if(_loc10_ != 0)
            {
               if(_loc9_ != 0)
               {
                  _loc2_ = li32(_loc6_ - 8);
                  if(_loc2_ == 0)
                  {
                     addr264:
                     _loc3_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str5121,_loc3_ + 12);
                     si32(70,_loc3_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4120,_loc3_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Classic_Emu12mute_voices_EiE8__func__,_loc3_);
                     ESP = _loc3_;
                     F___assert();
                     _loc3_ += 16;
                  }
                  addr299:
                  _loc14_ = li32(_loc4_);
                  var _loc5_:* = li32(_loc14_ + 68);
                  _loc3_ -= 32;
                  si32(_loc2_,_loc3_ + 16);
                  si32(_loc9_,_loc3_ + 12);
                  si32(_loc10_,_loc3_ + 8);
                  si32(_loc15_,_loc3_ + 4);
                  si32(_loc4_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc5_]();
                  _loc3_ += 32;
                  continue;
               }
            }
            else if(_loc9_ == 0)
            {
               _loc2_ = 0;
               _loc9_ = _loc2_;
               if(li32(_loc6_ - 8) != 0)
               {
                  §§goto(addr264);
               }
               §§goto(addr299);
            }
            §§goto(addr264);
         }
         while(_loc16_ = _loc15_ + -1, _loc15_ != 0);
         
      }
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
