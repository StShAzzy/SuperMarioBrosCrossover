package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str104;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2106;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN11Blip_Buffer14remove_silenceElE8__func__;
   
   public function F__ZN11Blip_Buffer12read_samplesEPsli() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc13_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc14_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      _loc13_ = int((_loc14_ = li32(_loc3_ + 4)) >>> 16);
      if(_loc13_ <= (_loc11_ = li32(_loc4_ + 8)))
      {
         _loc11_ = _loc13_;
      }
      if(_loc11_ != 0)
      {
         _loc9_ = li32(_loc4_ + 4);
         _loc8_ = li32(_loc3_ + 16);
         _loc7_ = li32(_loc3_ + 8);
         _loc13_ = li32(_loc3_ + 20);
         if(li32(_loc4_ + 12) == 0)
         {
            _loc12_ ^= -1;
            var _loc10_:*;
            _loc14_ = (_loc10_ = int(_loc14_ >>> 16)) ^ -1;
            if(_loc12_ <= _loc14_)
            {
               _loc12_ = _loc14_;
            }
            _loc14_ = _loc12_ ^ -1;
            while(true)
            {
               _loc12_ = _loc8_ >> 14;
               if((_loc10_ = (_loc10_ = _loc8_ << 2) >> 16) != _loc12_)
               {
                  _loc12_ = int(32767 - (_loc8_ >> 31));
               }
               si16(_loc12_,_loc9_);
               _loc10_ = _loc8_ >> _loc13_;
               _loc10_ = int(_loc8_ - _loc10_);
               var _loc1_:* = li32(_loc7_);
               _loc8_ = int(_loc1_ + _loc10_);
               _loc7_ += 4;
               _loc9_ += 2;
               if((_loc14_ += -1) != 0)
               {
                  continue;
               }
            }
         }
         else
         {
            _loc12_ ^= -1;
            _loc14_ = (_loc10_ = int(_loc14_ >>> 16)) ^ -1;
            if(_loc12_ <= _loc14_)
            {
               _loc12_ = _loc14_;
            }
            _loc12_ ^= -1;
            do
            {
               _loc14_ = _loc8_ >> 14;
               if((_loc10_ = (_loc10_ = _loc8_ << 2) >> 16) != _loc14_)
               {
                  _loc14_ = int(32767 - (_loc8_ >> 31));
               }
               si16(_loc14_,_loc9_);
               _loc10_ = _loc8_ >> _loc13_;
               _loc10_ = int(_loc8_ - _loc10_);
               _loc1_ = li32(_loc7_);
               _loc8_ = int(_loc1_ + _loc10_);
               _loc7_ += 4;
               _loc9_ += 4;
            }
            while((_loc12_ += -1) != 0);
            
         }
         si32(_loc8_,_loc3_ + 16);
         if(_loc11_ != 0)
         {
            if((_loc10_ = int((_loc13_ = li32(_loc3_ + 4)) >>> 16)) < _loc11_)
            {
               _loc2_ -= 16;
               si32(L__2E_str2106,_loc2_ + 12);
               si32(152,_loc2_ + 8);
               si32(L__2E_str104,_loc2_ + 4);
               si32(__ZZN11Blip_Buffer14remove_silenceElE8__func__,_loc2_);
               ESP = _loc2_;
               F___assert();
               _loc2_ += 16;
            }
            _loc10_ = _loc11_ << 16;
            var _loc5_:int;
            si32(_loc5_ = _loc13_ - _loc10_,_loc3_ + 4);
            _loc10_ = _loc11_ << 2;
            var _loc6_:*;
            _loc1_ = int((_loc6_ = li32(_loc3_ + 8)) + _loc10_);
            _loc2_ -= 16;
            si32(_loc1_,_loc2_ + 4);
            si32(_loc6_,_loc2_);
            _loc1_ = _loc5_ & -65536;
            _loc1_ >>>= 14;
            _loc1_ += 72;
            si32(_loc1_,_loc2_ + 8);
            ESP = _loc2_;
            Fmemmove();
            _loc2_ += 16;
            _loc6_ = li32(_loc3_ + 8);
            _loc2_ -= 16;
            si32(_loc10_,_loc2_ + 8);
            si32(0,_loc2_ + 4);
            si32(_loc10_ = int(_loc6_ + _loc1_),_loc2_);
            ESP = _loc2_;
            Fmemset();
            _loc2_ += 16;
         }
      }
      eax = _loc11_;
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
