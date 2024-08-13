package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str25443;
   
   public function F__ZN7Sap_Emu10run_clocksERii() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc11_:* = 0;
      var _loc6_:* = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_ + 280);
      _loc10_ = li32(_loc11_);
      _loc10_ = 0 - _loc10_;
      si32(_loc10_,_loc11_ + 4);
      _loc9_ = _loc1_ + 272;
      _loc8_ = li32(_loc3_ + 4);
      while(true)
      {
         _loc10_ = li32(_loc1_ + 280);
         _loc11_ = li32(_loc10_ + 4);
         _loc10_ = li32(_loc10_);
         _loc6_ = _loc10_ + _loc11_;
         _loc7_ = li32(_loc8_);
         if(_loc6_ >= _loc7_)
         {
            si32(_loc6_,_loc8_);
            _loc11_ = li32(_loc1_ + 892);
            _loc6_ = _loc11_ - _loc6_;
            _loc9_ = 0;
            if(_loc6_ >= _loc9_)
            {
               _loc9_ = _loc6_;
            }
            si32(_loc9_,_loc1_ + 892);
            _loc6_ = li32(_loc1_ + 984);
            _loc9_ = li32(_loc8_);
            if(_loc6_ < _loc9_)
            {
               _loc2_ -= 16;
               si32(_loc9_,_loc2_ + 4);
               _loc11_ = _loc1_ + 900;
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               F__ZN7Sap_Apu9run_untilEi();
               _loc2_ += 16;
               _loc6_ = li32(_loc1_ + 984);
            }
            _loc11_ = _loc6_ - _loc9_;
            si32(_loc11_,_loc1_ + 984);
            _loc11_ = li8(_loc1_ + 336);
            _loc6_ = 0;
            if(_loc11_ != 0)
            {
               _loc9_ = li32(_loc1_ + 1088);
               _loc8_ = li32(_loc8_);
               if(_loc9_ < _loc8_)
               {
                  _loc2_ -= 16;
                  si32(_loc8_,_loc2_ + 4);
                  _loc11_ = _loc1_ + 1004;
                  si32(_loc11_,_loc2_);
                  ESP = _loc2_;
                  F__ZN7Sap_Apu9run_untilEi();
                  _loc2_ += 16;
                  _loc9_ = li32(_loc1_ + 1088);
               }
               _loc11_ = _loc9_ - _loc8_;
               si32(_loc11_,_loc1_ + 1088);
               _loc6_ = 0;
            }
            break;
         }
         _loc2_ -= 16;
         si32(_loc7_,_loc2_ + 4);
         si32(_loc9_,_loc2_);
         ESP = _loc2_;
         F__ZN7Sap_Cpu3runEi();
         _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str25443;
         _loc2_ += 16;
         _loc11_ = sample.libgme.eax;
         if(_loc11_ != 0)
         {
            break;
         }
         _loc7_ = li16(_loc1_ + 272);
         _loc6_ = sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str25443;
         if(uint(_loc7_) > 65279)
         {
            break;
         }
         if(_loc7_ == 65279)
         {
            _loc7_ = li32(_loc8_);
            _loc6_ = li32(_loc1_ + 892);
            _loc5_ = li32(_loc1_ + 280);
            _loc4_ = li32(_loc5_);
            if(_loc6_ <= _loc7_)
            {
               _loc11_ = _loc6_ - _loc4_;
               si32(_loc11_,_loc5_ + 4);
               _loc11_ = (_loc10_ = li32(_loc1_ + 888)) * li32(_loc1_ + 332) + li32(_loc1_ + 892);
               si32(_loc11_,_loc1_ + 892);
               _loc6_ = li32(_loc1_ + 324);
               if(_loc6_ != 67)
               {
                  if(_loc6_ == 66)
                  {
                     _loc11_ = li32(_loc1_ + 316);
                     si16(_loc11_,_loc1_ + 272);
                     _loc6_ = li8(_loc1_ + 278);
                     if(_loc6_ == 254)
                     {
                        _loc6_ = 254;
                        if(li8(_loc1_ + 1875) == 254)
                        {
                           si8(-1,_loc1_ + 278);
                           _loc6_ = 255;
                        }
                     }
                     _loc10_ = _loc6_ | 0x0100;
                     _loc11_ = _loc1_ + 1364;
                     _loc10_ = _loc11_ + _loc10_;
                     si8(-2,_loc10_);
                     _loc10_ = _loc6_ + -1;
                     _loc10_ = (_loc10_ = _loc10_ & 0xFF) | 0x0100;
                     _loc10_ = _loc11_ + _loc10_;
                     si8(-2,_loc10_);
                     _loc10_ = _loc6_ + -2;
                     _loc10_ = (_loc10_ = _loc10_ & 0xFF) | 0x0100;
                     _loc11_ += _loc10_;
                     si8(-2,_loc11_);
                     _loc11_ = _loc6_ + -3;
                     si8(_loc11_,_loc1_ + 278);
                  }
               }
               else
               {
                  _loc11_ = li32(_loc1_ + 316);
                  si16(_loc11_ = _loc11_ + 6,_loc1_ + 272);
                  _loc6_ = li8(_loc1_ + 278);
                  if(_loc6_ == 254)
                  {
                     _loc6_ = 254;
                     if(li8(_loc1_ + 1875) == 254)
                     {
                        si8(-1,_loc1_ + 278);
                        _loc6_ = 255;
                     }
                  }
                  _loc10_ = _loc6_ | 0x0100;
                  _loc11_ = _loc1_ + 1364;
                  _loc10_ = _loc11_ + _loc10_;
                  si8(-2,_loc10_);
                  _loc10_ = _loc6_ + -1;
                  _loc10_ = (_loc10_ = _loc10_ & 0xFF) | 0x0100;
                  _loc10_ = _loc11_ + _loc10_;
                  si8(-2,_loc10_);
                  _loc10_ = _loc6_ + -2;
                  _loc10_ = (_loc10_ = _loc10_ & 0xFF) | 0x0100;
                  _loc11_ += _loc10_;
                  si8(-2,_loc11_);
                  _loc11_ = _loc6_ + -3;
                  si8(_loc11_,_loc1_ + 278);
               }
            }
            else
            {
               _loc11_ = _loc7_ - _loc4_;
               si32(_loc11_,_loc5_ + 4);
            }
         }
      }
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
