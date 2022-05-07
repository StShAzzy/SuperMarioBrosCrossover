package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4307;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7310;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str8311;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL12length_table;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN7Nes_Apu14write_registerEijiE8__func__;
   
   public function F__ZN7Nes_Apu14write_registerEiji() : void
   {
      var _loc3_:* = 0;
      var _loc25_:* = 0;
      var _loc26_:* = 0;
      var _loc12_:* = 0;
      var _loc28_:* = 0;
      var _loc27_:int = 0;
      var _loc21_:int = 0;
      var _loc23_:* = 0;
      var _loc22_:* = 0;
      var _loc17_:* = 0;
      var _loc14_:* = 0;
      var _loc16_:* = 0;
      var _loc11_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc4_:* = 0;
      var _loc5_:int = 0;
      var _loc2_:* = 0;
      var _loc13_:* = 0;
      var _loc20_:* = 0;
      var _loc19_:* = 0;
      var _loc18_:* = 0;
      var _loc15_:* = 0;
      var _loc8_:int = 0;
      var _loc7_:* = 0;
      var _loc1_:* = int(ESP);
      _loc3_ = _loc1_;
      if((uint(_loc12_ = li32(_loc3_ + 8))) <= 32)
      {
         _loc1_ -= 16;
         si32(L__2E_str7310,_loc1_ + 12);
         si32(285,_loc1_ + 8);
         si32(L__2E_str4307,_loc1_ + 4);
         si32(__ZZN7Nes_Apu14write_registerEijiE8__func__,_loc1_);
         ESP = _loc1_;
         F___assert();
         _loc1_ += 16;
      }
      if((uint(_loc28_ = li32(_loc3_ + 12))) >= 256)
      {
         _loc1_ -= 16;
         si32(L__2E_str8311,_loc1_ + 12);
         si32(286,_loc1_ + 8);
         si32(L__2E_str4307,_loc1_ + 4);
         si32(__ZZN7Nes_Apu14write_registerEijiE8__func__,_loc1_);
         ESP = _loc1_;
         F___assert();
         _loc1_ += 16;
      }
      if((uint(_loc27_ = _loc12_ + -16384)) <= 23)
      {
         _loc26_ = li32(_loc3_ + 4);
         _loc25_ = li32(_loc3_);
         _loc1_ -= 16;
         si32(_loc26_,_loc1_ + 4);
         si32(_loc25_,_loc1_);
         ESP = _loc1_;
         F__ZN7Nes_Apu10run_until_Ei();
         _loc1_ += 16;
         if(uint(_loc12_) <= 16403)
         {
            var _loc24_:*;
            _loc23_ = li32(_loc24_ = int(_loc25_ + (_loc27_ & -4)));
            _loc22_ = _loc12_ & 3;
            _loc24_ = int(_loc23_ + _loc22_);
            si8(_loc28_,_loc24_);
            si8(1,_loc24_ + 4);
            if((_loc21_ = _loc27_ >>> 2) == 4)
            {
               _loc1_ -= 16;
               si32(_loc28_,_loc1_ + 8);
               si32(_loc22_,_loc1_ + 4);
               si32(_loc24_ = int(_loc25_ + 1304),_loc1_);
               ESP = _loc1_;
               F__ZN7Nes_Dmc14write_registerEii();
               _loc1_ += 16;
            }
            else if(_loc22_ == 3)
            {
               var _loc9_:*;
               if((_loc24_ = (_loc9_ = li32(_loc25_ + 1972)) & 1 << _loc21_) != 0)
               {
                  si32(_loc24_ = li8(_loc24_ = int(__ZL12length_table + ((_loc24_ = int(_loc28_ >>> 3)) & 31))),_loc23_ + 12);
               }
               if(uint(_loc27_) <= 7)
               {
                  si32(7,_loc23_ + 32);
               }
            }
         }
         else if(_loc12_ != 16407)
         {
            if(_loc12_ == 16405)
            {
               if((_loc17_ = _loc28_ & 16) == 0)
               {
                  si32(0,li32(_loc25_ + 16) + 12);
               }
               if((_loc24_ = _loc28_ & 8) == 0)
               {
                  si32(0,li32(_loc25_ + 12) + 12);
               }
               if((_loc24_ = _loc28_ & 4) == 0)
               {
                  si32(0,li32(_loc25_ + 8) + 12);
               }
               if((_loc24_ = _loc28_ & 2) == 0)
               {
                  si32(0,li32(_loc25_ + 4) + 12);
               }
               if((_loc24_ = _loc28_ & 1) == 0)
               {
                  si32(0,li32(_loc25_) + 12);
               }
               _loc13_ = li8(_loc25_ + 1361);
               si8(_loc15_ = 0,_loc25_ + 1361);
               _loc20_ = li32(_loc25_ + 1972);
               si32(_loc28_,_loc25_ + 1972);
               if(_loc17_ != 0)
               {
                  if((_loc24_ = _loc20_ & 16) == 0)
                  {
                     _loc1_ -= 16;
                     si32(_loc24_ = int(_loc25_ + 1304),_loc1_);
                     ESP = _loc1_;
                     F__ZN7Nes_Dmc5startEv();
                     _loc1_ += 16;
                  }
                  if((_loc24_ = _loc13_ & 255) != 0)
                  {
                     _loc19_ = li8(_loc25_ + 1361);
                     _loc18_ = li32(_loc25_ + 1356);
                  }
                  §§goto(addr699);
               }
               else
               {
                  si32(_loc18_ = 1073741824,_loc25_ + 1356);
                  _loc19_ = 0;
               }
               if((_loc24_ = (_loc24_ = (_loc24_ = li8(_loc25_ + 1980)) | _loc19_) & 255) == 0)
               {
                  _loc14_ = li32(_loc25_ + 1956);
                  _loc15_ = _loc18_;
                  if(_loc14_ < _loc18_)
                  {
                     _loc15_ = _loc14_;
                  }
               }
               if((_loc24_ = li32(_loc25_ + 1952)) != _loc15_)
               {
                  si32(_loc15_,_loc25_ + 1952);
                  if((_loc16_ = li32(_loc25_ + 1984)) != 0)
                  {
                     _loc1_ -= 16;
                     si32(li32(_loc25_ + 1988),_loc1_);
                     ESP = _loc1_;
                     ptr2fun[_loc16_]();
                     _loc1_ += 16;
                  }
               }
            }
         }
         else
         {
            si32(_loc28_,_loc25_ + 1976);
            si8(_loc10_ = li8(_loc25_ + 1980) & ((_loc11_ = (_loc9_ = int(_loc28_ >>> 6)) & 1) ^ 1),_loc25_ + 1980);
            si32(_loc8_ = 1073741824,_loc25_ + 1956);
            si32(_loc6_ = (_loc24_ = li32(_loc25_ + 1964)) & 1,_loc25_ + 1964);
            si32(_loc7_ = 0,_loc25_ + 1968);
            if((_loc24_ = _loc28_ & 128) == 0)
            {
               si32(1,_loc25_ + 1968);
               si32(_loc5_ = (_loc4_ = li32(_loc25_ + 1960)) + _loc6_,_loc25_ + 1964);
               _loc8_ = 1073741824;
               if(_loc11_ == 0)
               {
                  si32(_loc8_ = (_loc24_ = int((_loc24_ = int(_loc26_ + int(_loc4_ * 3))) + _loc5_)) + 1,_loc25_ + 1956);
               }
            }
            if((_loc24_ = (_loc24_ = (_loc24_ = li8(_loc25_ + 1361)) | _loc10_) & 255) == 0)
            {
               _loc7_ = li32(_loc25_ + 1356);
               if(_loc8_ < _loc7_)
               {
                  _loc7_ = _loc8_;
               }
            }
            if((_loc24_ = li32(_loc25_ + 1952)) != _loc7_)
            {
               si32(_loc7_,_loc25_ + 1952);
               _loc2_ = li32(_loc25_ + 1984);
               if(_loc2_ != 0)
               {
                  _loc1_ -= 16;
                  si32(li32(_loc25_ + 1988),_loc1_);
                  ESP = _loc1_;
                  ptr2fun[_loc2_]();
                  _loc1_ += 16;
               }
            }
         }
      }
      addr699:
      _loc1_ = _loc3_;
      ESP = _loc1_;
   }
}
