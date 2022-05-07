package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2456;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6461;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Sms_Apu14write_ggstereoEiiE8__func__;
   
   public function F__ZN7Sms_Apu14write_ggstereoEii() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:int = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      if(uint(_loc1_) >= 256)
      {
         _loc2_ -= 16;
         si32(L__2E_str6461,_loc2_ + 12);
         si32(269,_loc2_ + 8);
         si32(L__2E_str2456,_loc2_ + 4);
         si32(__ZZN7Sms_Apu14write_ggstereoEiiE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc11_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc3_);
      _loc2_ -= 16;
      si32(_loc11_,_loc2_ + 4);
      var _loc9_:* = _loc1_ & 1;
      var _loc8_:*;
      _loc9_ = (_loc8_ = (_loc8_ = int(_loc1_ >>> 3)) & 2) | _loc9_;
      si32(_loc10_,_loc2_);
      ESP = _loc2_;
      F__ZN7Sms_Apu9run_untilEi();
      _loc2_ += 16;
      _loc6_ = li32((_loc7_ = li32(_loc10_)) + 16);
      si32(_loc9_,_loc7_ + 20);
      _loc9_ <<= 2;
      si32(_loc9_ = li32(_loc9_ = int(_loc7_ + _loc9_)),_loc7_ + 16);
      _loc5_ = _loc10_ + 160;
      if(_loc9_ != _loc6_)
      {
         if((_loc9_ = li32(_loc7_ + 28)) != 0)
         {
            if(_loc6_ != 0)
            {
               si32(1,_loc6_ + 40);
               _loc2_ -= 16;
               si32(_loc6_,_loc2_ + 12);
               var _loc4_:int;
               si32(_loc4_ = 0 - li32(_loc7_ + 28),_loc2_ + 8);
               si32(_loc9_ = int((_loc8_ = int(li32(_loc6_) * _loc11_)) + li32(_loc6_ + 4)),_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            si32(0,_loc7_ + 28);
         }
      }
      _loc9_ = (_loc8_ = _loc1_ >> 1) & 1;
      _loc9_ = (_loc8_ = (_loc8_ >>>= 3) & 2) | _loc9_;
      _loc6_ = li32((_loc7_ = li32(_loc10_ + 4)) + 16);
      si32(_loc9_,_loc7_ + 20);
      _loc9_ <<= 2;
      si32(_loc9_ = li32(_loc9_ = int(_loc7_ + _loc9_)),_loc7_ + 16);
      if(_loc9_ != _loc6_)
      {
         if((_loc9_ = li32(_loc7_ + 28)) != 0)
         {
            if(_loc6_ != 0)
            {
               si32(1,_loc6_ + 40);
               _loc2_ -= 16;
               si32(_loc6_,_loc2_ + 12);
               si32(_loc4_ = 0 - li32(_loc7_ + 28),_loc2_ + 8);
               si32(_loc9_ = int((_loc8_ = int(li32(_loc6_) * _loc11_)) + li32(_loc6_ + 4)),_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            si32(0,_loc7_ + 28);
         }
      }
      _loc9_ = (_loc8_ = _loc1_ >> 2) & 1;
      _loc9_ = (_loc8_ = (_loc8_ >>>= 3) & 2) | _loc9_;
      _loc6_ = li32((_loc7_ = li32(_loc10_ + 8)) + 16);
      si32(_loc9_,_loc7_ + 20);
      _loc9_ <<= 2;
      si32(_loc9_ = li32(_loc9_ = int(_loc7_ + _loc9_)),_loc7_ + 16);
      if(_loc9_ != _loc6_)
      {
         if((_loc9_ = li32(_loc7_ + 28)) != 0)
         {
            if(_loc6_ != 0)
            {
               si32(1,_loc6_ + 40);
               _loc2_ -= 16;
               si32(_loc6_,_loc2_ + 12);
               si32(_loc4_ = 0 - li32(_loc7_ + 28),_loc2_ + 8);
               si32(_loc9_ = int((_loc8_ = int(li32(_loc6_) * _loc11_)) + li32(_loc6_ + 4)),_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            si32(0,_loc7_ + 28);
         }
      }
      _loc9_ = (_loc8_ = _loc1_ >> 3) & 1;
      _loc9_ = (_loc8_ = (_loc8_ >>>= 3) & 2) | _loc9_;
      _loc1_ = li32(_loc10_ + 12);
      _loc10_ = li32(_loc1_ + 16);
      si32(_loc9_,_loc1_ + 20);
      _loc9_ <<= 2;
      si32(_loc9_ = li32(_loc9_ = int(_loc1_ + _loc9_)),_loc1_ + 16);
      if(_loc9_ != _loc10_)
      {
         if((_loc9_ = li32(_loc1_ + 28)) != 0)
         {
            if(_loc10_ != 0)
            {
               si32(1,_loc10_ + 40);
               _loc2_ -= 16;
               si32(_loc10_,_loc2_ + 12);
               si32(_loc4_ = 0 - li32(_loc1_ + 28),_loc2_ + 8);
               si32(_loc9_ = int((_loc8_ = int(li32(_loc10_) * _loc11_)) + li32(_loc10_ + 4)),_loc2_ + 4);
               si32(_loc5_,_loc2_);
               ESP = _loc2_;
               F__ZNK10Blip_SynthILi12ELi1EE16offset_resampledEjiP11Blip_Buffer();
               _loc2_ += 16;
            }
            si32(0,_loc1_ + 28);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
