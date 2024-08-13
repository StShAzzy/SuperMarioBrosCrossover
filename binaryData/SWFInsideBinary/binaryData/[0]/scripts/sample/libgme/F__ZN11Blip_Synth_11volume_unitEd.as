package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7109;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Synth_11volume_unitEdE8__func__;
   
   public function F__ZN11Blip_Synth_11volume_unitEd() : void
   {
      var _loc3_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = NaN;
      var _loc8_:int = 0;
      var _loc7_:* = NaN;
      var _loc13_:* = 0;
      var _loc9_:int = 0;
      var _loc6_:int = 0;
      var _loc1_:* = sample.libgme.ESP;
      _loc3_ = _loc1_;
      _loc1_ -= 32;
      _loc2_ = li32(_loc3_);
      _loc7_ = lf64(_loc2_ + 16);
      _loc5_ = lf64(_loc3_ + 4);
      if(_loc7_ != _loc5_)
      {
         _loc13_ = li32(_loc2_ + 32);
         if(_loc13_ == 0)
         {
            var _loc12_:* = _loc3_ - 24;
            si32(-1071644672,_loc12_ | 4);
            si32(0,_loc3_ - 24);
            si32(0,_loc3_ - 16);
            si32(44100,_loc3_ - 12);
            si32(0,_loc3_ - 8);
            _loc1_ -= 16;
            si32(_loc12_,_loc1_ + 4);
            si32(_loc2_,_loc1_);
            ESP = _loc1_;
            F__ZN11Blip_Synth_9treble_eqERK9blip_eq_t();
            _loc1_ += 16;
            _loc13_ = li32(_loc2_ + 32);
         }
         sf64(_loc5_,_loc2_ + 16);
         _loc7_ = _loc13_;
         var _loc11_:Number = _loc5_ * 1073741824;
         if(!((_loc5_ = _loc11_ / _loc7_) <= 0 | _loc5_ != _loc5_ | false))
         {
            _loc9_ = 0;
            if(!(_loc5_ >= 2 | _loc5_ != _loc5_ | false))
            {
               do
               {
                  _loc5_ += _loc5_;
                  _loc9_ += 1;
               }
               while(_loc5_ < 2);
               
               if(_loc9_ != 0)
               {
                  _loc12_ = _loc13_ >> _loc9_;
                  si32(_loc12_,_loc2_ + 32);
                  if(_loc12_ <= 0)
                  {
                     _loc1_ -= 16;
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7109,_loc1_ + 12);
                     si32(367,_loc1_ + 8);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104,_loc1_ + 4);
                     si32(sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Synth_11volume_unitEdE8__func__,_loc1_);
                     ESP = _loc1_;
                     F___assert();
                     _loc1_ += 16;
                  }
                  _loc12_ = _loc9_ + -1;
                  _loc13_ = 32768 >>> _loc9_;
                  _loc12_ = 1 << _loc12_;
                  _loc8_ = _loc12_ + 32768;
                  _loc12_ = li32(_loc2_ + 28);
                  _loc12_ = _loc12_ << 5;
                  _loc6_ = 0 - _loc12_;
                  do
                  {
                     _loc12_ = _loc6_;
                     var _loc4_:* = _loc12_ << 1;
                     var _loc10_:* = li32(_loc2_ + 24);
                     _loc4_ = si16(li16(_loc10_ = _loc10_ - _loc4_));
                     _loc4_ = _loc8_ + _loc4_;
                     si16(_loc4_ = (_loc4_ = _loc4_ >> _loc9_) - _loc13_,_loc10_);
                     _loc6_ = _loc12_ + 1;
                  }
                  while(_loc12_ != 0);
                  
                  _loc1_ -= 16;
                  si32(_loc2_,_loc1_);
                  ESP = _loc1_;
                  F__ZN11Blip_Synth_14adjust_impulseEv();
                  _loc1_ += 16;
               }
            }
         }
         _loc1_ -= 16;
         _loc7_ = _loc5_ + 0.5;
         sf64(_loc7_,_loc1_);
         ESP = _loc1_;
         F_floor();
         _loc1_ += 16;
         _loc12_ = _loc7_ = sample.libgme.st0;
         si32(_loc12_,_loc2_ + 8);
      }
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
