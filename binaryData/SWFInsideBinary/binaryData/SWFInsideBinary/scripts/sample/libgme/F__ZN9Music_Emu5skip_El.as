package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4271;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu11mute_voicesEiE8__func__;
   
   public function F__ZN9Music_Emu5skip_El() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc12_:int = 0;
      var _loc5_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32((_loc4_ = _loc2_) + 4);
      _loc13_ = li32(_loc4_);
      if(_loc3_ <= 30000)
      {
         _loc12_ = _loc13_ + 208;
         addr297:
         do
         {
            _loc7_ = 0;
            if(_loc3_ == 0)
            {
               break;
            }
            _loc7_ = 0;
            if(li8(_loc12_) != 0)
            {
               break;
            }
            var _loc11_:*;
            _loc1_ = li32((_loc11_ = li32(_loc13_)) + 60);
            _loc2_ -= 16;
            si32(li32(_loc13_ + 240),_loc2_ + 8);
            si32(_loc13_,_loc2_);
            _loc5_ = _loc3_;
            if(_loc3_ >= 2048)
            {
               _loc5_ = 2048;
            }
            si32(_loc5_,_loc2_ + 4);
            ESP = _loc2_;
            ptr2fun[_loc1_]();
            _loc3_ -= _loc5_;
            _loc2_ += 16;
         }
         while((_loc7_ = eax) == 0);
         
      }
      else
      {
         if((_loc11_ = li32(_loc13_ + 192)) == 0)
         {
            _loc2_ -= 16;
            si32(L__2E_str4271,_loc2_ + 12);
            si32(110,_loc2_ + 8);
            si32(L__2E_str1268,_loc2_ + 4);
            si32(__ZZN9Music_Emu11mute_voicesEiE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         _loc10_ = li32(_loc13_ + 172);
         si32(-1,_loc13_ + 172);
         var _loc9_:* = li32((_loc11_ = li32(_loc13_)) + 48);
         _loc2_ -= 16;
         si32(-1,_loc2_ + 4);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc9_]();
         _loc2_ += 16;
         _loc12_ = _loc13_ + 208;
         while(_loc3_ >= 15001)
         {
            if((_loc11_ = li8(_loc12_)) != 0)
            {
               break;
            }
            var _loc8_:* = li32((_loc11_ = li32(_loc13_)) + 60);
            _loc2_ -= 16;
            si32(li32(_loc13_ + 240),_loc2_ + 8);
            si32(2048,_loc2_ + 4);
            si32(_loc13_,_loc2_);
            ESP = _loc2_;
            ptr2fun[_loc8_]();
            _loc2_ += 16;
            if((_loc7_ = eax) != 0)
            {
               eax = _loc7_;
               _loc2_ = _loc4_;
               ESP = _loc2_;
            }
            else
            {
               addr377:
            }
            continue;
            return;
            _loc3_ += -2048;
         }
         if((_loc11_ = li32(_loc13_ + 192)) == 0)
         {
            _loc2_ -= 16;
            si32(L__2E_str4271,_loc2_ + 12);
            si32(110,_loc2_ + 8);
            si32(L__2E_str1268,_loc2_ + 4);
            si32(__ZZN9Music_Emu11mute_voicesEiE8__func__,_loc2_);
            ESP = _loc2_;
            F___assert();
            _loc2_ += 16;
         }
         si32(_loc10_,_loc13_ + 172);
         var _loc6_:* = li32((_loc11_ = li32(_loc13_)) + 48);
         _loc2_ -= 16;
         si32(_loc10_,_loc2_ + 4);
         si32(_loc13_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         §§goto(addr297);
      }
      §§goto(addr377);
   }
}
