package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2328;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3329;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN12Nes_Fme7_Apu9run_untilEiE8__func__;
   
   public function F__ZN12Nes_Fme7_Apu9run_untilEi() : void
   {
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc22_:* = 0;
      var _loc20_:int = 0;
      var _loc21_:int = 0;
      var _loc14_:int = 0;
      var _loc15_:* = 0;
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc23_:* = 0;
      var _loc17_:* = 0;
      var _loc1_:int = 0;
      var _loc19_:int = 0;
      var _loc18_:* = 0;
      var _loc13_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc8_:* = 0;
      var _loc16_:int = 0;
      var _loc5_:*;
      _loc23_ = li32((_loc6_ = li32(_loc10_ = _loc5_ = int(ESP))) + 48);
      _loc22_ = li32(_loc10_ + 4);
      if(_loc23_ > _loc22_)
      {
         _loc5_ -= 16;
         si32(L__2E_str3329,_loc5_ + 12);
         si32(43,_loc5_ + 8);
         si32(L__2E_str2328,_loc5_ + 4);
         si32(__ZZN12Nes_Fme7_Apu9run_untilEiE8__func__,_loc5_);
         ESP = _loc5_;
         F___assert();
         _loc5_ += 16;
      }
      _loc21_ = _loc22_ + -1;
      _loc20_ = _loc6_ + 56;
      _loc18_ = _loc19_ = 0;
      do
      {
         _loc23_ = (_loc17_ = _loc19_ << 1) << 2;
         if((_loc15_ = li32((_loc23_ = int(_loc6_ - _loc23_)) + 24)) != 0)
         {
            _loc1_ = _loc6_ - _loc19_;
            si32(1,_loc15_ + 40);
            var _loc11_:* = (_loc11_ = int(li8(_loc6_ + 7) >>> _loc18_)) & 1;
            _loc11_ |= li8(_loc1_ + 8) & 16;
            _loc13_ = li8(_loc23_ = int(__ZN12Nes_Fme7_Apu9amp_tableE + (li8(_loc1_ + 8) & 15)));
            if(_loc11_ != 0)
            {
               _loc13_ = 0;
            }
            _loc23_ = li8(_loc14_ = _loc6_ - _loc17_);
            if((uint(_loc7_ = (_loc4_ = (_loc11_ = (_loc11_ = (_loc11_ = li8(_loc14_ + 1)) << 8) & 3840) | _loc23_) << 4)) <= 49)
            {
               _loc13_ = 0;
               if(_loc4_ == 0)
               {
                  _loc7_ = 16;
                  _loc13_ = 0;
               }
            }
            _loc23_ = li8(_loc1_ + 14);
            _loc4_ = 0;
            if(_loc23_ != _loc4_)
            {
               _loc4_ = _loc13_;
            }
            _loc23_ = (_loc23_ = int(0 - _loc17_)) << 2;
            _loc8_ = li32((_loc17_ = int(_loc6_ + _loc23_)) + 28);
            if(_loc4_ != _loc8_)
            {
               si32(_loc4_,_loc17_ + 28);
               _loc5_ -= 16;
               si32(_loc15_,_loc5_ + 12);
               var _loc9_:int;
               si32(_loc9_ = _loc4_ - _loc8_,_loc5_ + 8);
               si32(_loc23_ = int((_loc11_ = int(li32(_loc15_) * li32(_loc6_ + 48))) + li32(_loc15_ + 4)),_loc5_ + 4);
               si32(_loc20_,_loc5_);
               ESP = _loc5_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc5_ += 16;
            }
            _loc3_ = li32(_loc6_ + 48);
            _loc2_ = li16(_loc14_ + 18);
            if((_loc16_ = _loc2_ + _loc3_) < _loc22_)
            {
               if(_loc13_ != 0)
               {
                  _loc8_ = int(_loc3_ + _loc2_);
                  _loc4_ = int((_loc23_ = _loc4_ << 1) - _loc13_);
                  _loc16_ = (_loc23_ = int((_loc23_ = int(_loc7_ + _loc3_)) + _loc2_)) - _loc7_;
                  do
                  {
                     _loc3_ = _loc4_;
                     _loc23_ = li32(_loc15_ + 4);
                     _loc11_ = li32(_loc15_);
                     _loc5_ -= 16;
                     si32(_loc15_,_loc5_ + 12);
                     si32(_loc4_ = int(0 - _loc3_),_loc5_ + 8);
                     si32(_loc23_ = int((_loc11_ *= _loc8_) + _loc23_),_loc5_ + 4);
                     si32(_loc20_,_loc5_);
                     _loc8_ += _loc7_;
                     _loc16_ += _loc7_;
                     ESP = _loc5_;
                     F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
                     _loc5_ += 16;
                  }
                  while(_loc8_ < _loc22_);
                  
                  si32(_loc23_ = (_loc23_ = int(_loc13_ - _loc3_)) >> 1,_loc17_ + 28);
                  si8(_loc23_ = int(_loc3_ >>> 31),_loc1_ + 14);
               }
               else
               {
                  var _loc12_:*;
                  si8(_loc23_ = (_loc12_ = (_loc11_ = int((uint(_loc11_ = int((_loc11_ = int(_loc21_ + _loc7_)) - _loc16_))) / uint(_loc7_))) & 1) ^ li8(_loc1_ + 14),_loc1_ + 14);
                  _loc16_ = (_loc23_ = int(_loc11_ * _loc7_)) + _loc16_;
               }
            }
            si16(_loc23_ = int(_loc16_ - _loc22_),_loc14_ + 18);
         }
         _loc19_ += -1;
         _loc18_ += 1;
      }
      while(_loc19_ != -3);
      
      si32(_loc22_,_loc6_ + 48);
      ESP = _loc5_ = _loc10_;
   }
}
