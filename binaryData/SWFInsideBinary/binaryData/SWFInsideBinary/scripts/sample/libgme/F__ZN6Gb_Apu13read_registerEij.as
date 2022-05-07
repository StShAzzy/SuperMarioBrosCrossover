package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6143;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu13read_registerEijE8__func__;
   
   public function F__ZN6Gb_Apu13read_registerEij() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc2_ -= 16;
      _loc1_ = li32(_loc3_ + 4);
      si32(_loc1_,_loc2_ + 4);
      si32(_loc7_ = li32(_loc3_),_loc2_);
      ESP = _loc2_;
      F__ZN6Gb_Apu9run_untilEi();
      _loc2_ += 16;
      if((uint(_loc5_ = int((_loc6_ = li32(_loc3_ + 8)) + -65296))) >= 48)
      {
         _loc2_ -= 16;
         si32(L__2E_str6143,_loc2_ + 12);
         si32(291,_loc2_ + 8);
         si32(L__2E_str2139,_loc2_ + 4);
         si32(__ZZN6Gb_Apu13read_registerEijE8__func__,_loc2_);
         ESP = _loc2_;
         F___assert();
         _loc2_ += 16;
      }
      _loc1_ = int(_loc7_ + _loc5_);
      _loc5_ = li8(_loc1_ + 328);
      if(_loc6_ == 65318)
      {
         _loc5_ = (_loc6_ = _loc5_ & 128) | 112;
         if(li32((_loc4_ = li32(_loc7_)) + 44) != 0)
         {
            if(li32(_loc4_ + 40) == 0)
            {
               if((li8(li32(_loc4_ + 24) + 4) & 64) == 0)
               {
               }
               §§goto(addr158);
            }
            _loc5_ = _loc6_ | 113;
         }
         addr158:
         _loc1_ = li32((_loc6_ = li32(_loc7_ + 4)) + 44);
         if(_loc1_ != 0)
         {
            if(li32(_loc6_ + 40) == 0)
            {
               if((li8(li32(_loc6_ + 24) + 4) & 64) != 0)
               {
               }
               §§goto(addr185);
            }
            _loc5_ |= 2;
         }
         addr185:
         _loc1_ = li32((_loc6_ = li32(_loc7_ + 8)) + 44);
         if(_loc1_ != 0)
         {
            if(li32(_loc6_ + 40) == 0)
            {
               if((li8(li32(_loc6_ + 24) + 4) & 64) != 0)
               {
               }
               §§goto(addr226);
            }
            _loc5_ |= 4;
         }
         addr226:
         _loc1_ = li32((_loc7_ = li32(_loc7_ + 12)) + 44);
         if(_loc1_ != 0)
         {
            if(li32(_loc7_ + 40) == 0)
            {
               if((li8(li32(_loc7_ + 24) + 4) & 64) != 0)
               {
               }
               §§goto(addr173);
            }
            _loc5_ |= 8;
         }
         §§goto(addr173);
      }
      addr173:
      eax = _loc5_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
