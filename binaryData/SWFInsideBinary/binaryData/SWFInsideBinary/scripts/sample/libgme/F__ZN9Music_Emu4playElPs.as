package sample.libgme
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi16;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1268;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str3270;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str6273;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str7274;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN9Music_Emu4playElPsE8__func__;
   
   public function F__ZN9Music_Emu4playElPs() : void
   {
      var _loc7_:* = 0;
      var _loc16_:* = 0;
      var _loc36_:* = 0;
      var _loc37_:* = 0;
      var _loc34_:* = 0;
      var _loc22_:int = 0;
      var _loc24_:* = 0;
      var _loc19_:int = 0;
      var _loc15_:int = 0;
      var _loc12_:int = 0;
      var _loc11_:* = 0;
      var _loc27_:* = 0;
      var _loc26_:* = 0;
      var _loc17_:int = 0;
      var _loc20_:* = 0;
      var _loc38_:* = 0;
      var _loc23_:* = 0;
      var _loc32_:* = 0;
      var _loc30_:int = 0;
      var _loc28_:* = 0;
      var _loc18_:* = 0;
      var _loc10_:int = 0;
      var _loc9_:* = 0;
      var _loc8_:int = 0;
      var _loc5_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:int = 0;
      var _loc25_:* = 0;
      var _loc2_:* = 0;
      var _loc4_:* = 0;
      var _loc29_:* = 0;
      var _loc31_:* = 0;
      var _loc33_:int = 0;
      var _loc35_:int = 0;
      var _loc3_:* = int(ESP);
      _loc38_ = li8((_loc16_ = li32(_loc7_ = _loc3_)) + 209);
      _loc37_ = li32(_loc7_ + 8);
      _loc36_ = li32(_loc7_ + 4);
      if(_loc38_ != 0)
      {
         _loc3_ -= 16;
         si32(0,_loc3_ + 4);
         si32(_loc37_,_loc3_);
         si32(_loc38_ = _loc36_ << 1,_loc3_ + 8);
         ESP = _loc3_;
         Fmemset();
         _loc3_ += 16;
         _loc35_ = _loc16_ + 200;
      }
      else
      {
         if((_loc38_ = li32(_loc16_ + 196)) <= -1)
         {
            _loc3_ -= 16;
            si32(L__2E_str3270,_loc3_ + 12);
            si32(337,_loc3_ + 8);
            si32(L__2E_str1268,_loc3_ + 4);
            si32(__ZZN9Music_Emu4playElPsE8__func__,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         if((_loc38_ = _loc36_ & 1) != 0)
         {
            _loc3_ -= 16;
            si32(L__2E_str6273,_loc3_ + 12);
            si32(338,_loc3_ + 8);
            si32(L__2E_str1268,_loc3_ + 4);
            si32(__ZZN9Music_Emu4playElPsE8__func__,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc34_ = li32(_loc16_ + 200);
         if((_loc32_ = li32(_loc16_ + 204)) < _loc34_)
         {
            _loc3_ -= 16;
            si32(L__2E_str7274,_loc3_ + 12);
            si32(340,_loc3_ + 8);
            si32(L__2E_str1268,_loc3_ + 4);
            si32(__ZZN9Music_Emu4playElPsE8__func__,_loc3_);
            ESP = _loc3_;
            F___assert();
            _loc3_ += 16;
         }
         _loc35_ = _loc16_ + 200;
         if((_loc38_ = li32(_loc16_ + 232)) == 0)
         {
            _loc30_ = _loc16_ + 236;
            _loc28_ = 0;
         }
         else
         {
            var _loc13_:*;
            _loc22_ = (_loc13_ = int((int(int(_loc34_ + _loc36_) - (_loc38_ = li32(_loc16_ + 228)))) * li32(_loc16_ + 220))) + _loc38_;
            _loc30_ = _loc16_ + 236;
            while(_loc32_ < _loc22_)
            {
               if((_loc38_ = (_loc38_ = li8(_loc16_ + 208)) | li32(_loc16_ + 236)) != 0)
               {
                  break;
               }
               _loc3_ -= 16;
               si32(_loc16_,_loc3_);
               ESP = _loc3_;
               F__ZN9Music_Emu8fill_bufEv();
               _loc3_ += 16;
               _loc32_ = li32(_loc16_ + 204);
            }
            _loc28_ = li32(_loc16_ + 232);
            _loc3_ -= 16;
            si32(0,_loc3_ + 4);
            si32(_loc37_,_loc3_);
            if(_loc28_ >= _loc36_)
            {
               _loc28_ = _loc36_;
            }
            si32(_loc38_ = _loc28_ << 1,_loc3_ + 8);
            ESP = _loc3_;
            Fmemset();
            _loc3_ += 16;
            si32(_loc38_ = int((_loc38_ = li32(_loc16_ + 232)) - _loc28_),_loc16_ + 232);
            _loc13_ = li32(_loc16_ + 228);
            _loc38_ = int((_loc38_ = li32(_loc16_ + 204)) - _loc13_);
            _loc13_ = int((_loc13_ = li32(_loc16_ + 192)) * 12);
            if(_loc38_ > _loc13_)
            {
               si8(1,_loc16_ + 208);
               si8(1,_loc16_ + 209);
               si32(0,_loc16_ + 232);
               si32(0,_loc16_ + 236);
            }
         }
         if((_loc24_ = li32(_loc30_)) != 0)
         {
            _loc26_ = li32(_loc16_ + 240);
            _loc3_ -= 16;
            si32(int(_loc37_ + (_loc28_ << 1)),_loc3_);
            _loc17_ = _loc36_ - _loc28_;
            _loc18_ = _loc24_;
            if(_loc24_ >= _loc17_)
            {
               _loc18_ = _loc17_;
            }
            si32(_loc38_ = _loc18_ << 1,_loc3_ + 8);
            _loc38_ = (_loc38_ = int(2048 - _loc24_)) << 1;
            si32(_loc38_ = int(_loc26_ + _loc38_),_loc3_ + 4);
            ESP = _loc3_;
            Fmemcpy();
            _loc3_ += 16;
            si32(_loc38_ = int((_loc38_ = li32(_loc30_)) - _loc18_),_loc30_);
            _loc28_ = int(_loc18_ + _loc28_);
         }
         if(_loc28_ != _loc36_)
         {
            _loc19_ = _loc36_ - _loc28_;
            si32(_loc38_ = int((_loc38_ = li32(_loc16_ + 204)) + _loc19_),_loc16_ + 204);
            _loc20_ = _loc28_ << 1;
            _loc15_ = _loc37_ + _loc20_;
            if((_loc38_ = li32(_loc16_ + 196)) >= 0)
            {
               if((_loc38_ = li8(_loc16_ + 208)) == 0)
               {
                  var _loc14_:* = li32((_loc38_ = li32(_loc16_)) + 60);
                  _loc3_ -= 16;
                  si32(_loc15_,_loc3_ + 8);
                  si32(_loc19_,_loc3_ + 4);
                  si32(_loc16_,_loc3_);
                  ESP = _loc3_;
                  ptr2fun[_loc14_]();
                  _loc3_ += 16;
                  if((_loc12_ = eax) != 0)
                  {
                     si8(1,_loc16_ + 208);
                     si32(_loc12_,_loc16_ + 16);
                  }
               }
               else
               {
                  addr690:
                  _loc3_ -= 16;
                  si32(0,_loc3_ + 4);
                  si32(_loc15_,_loc3_);
                  si32(_loc38_ = _loc19_ << 1,_loc3_ + 8);
                  ESP = _loc3_;
                  Fmemset();
                  _loc3_ += 16;
               }
               _loc13_ = li8(_loc16_ + 209);
               _loc38_ = (_loc38_ = (_loc38_ = li8(_loc16_ + 208)) | _loc13_) & 255;
               _loc10_ = 1;
               if(_loc38_ == 0)
               {
                  _loc10_ = 0;
               }
               si8(_loc38_ = _loc10_ & 1,_loc16_ + 209);
               if((_loc38_ = li8(_loc16_ + 224)) != 0)
               {
                  if((_loc13_ = li32(_loc16_ + 200)) > li32(_loc16_ + 212))
                  {
                  }
                  §§goto(addr905);
               }
               _loc11_ = li16(_loc15_);
               si16(16,_loc15_);
               _loc8_ = (_loc38_ = _loc36_ << 1) - _loc20_;
               _loc9_ = int((_loc38_ += _loc37_) + -2);
               do
               {
                  _loc38_ = int(_loc9_ + -2);
                  _loc8_ += -2;
                  _loc13_ = int((_loc13_ = si16(li16(_loc9_))) + 8);
                  _loc9_ = _loc38_;
               }
               while(uint(_loc13_) < 17);
               
               si16(_loc11_,_loc15_);
               if(_loc8_ <= 0)
               {
                  _loc5_ = li32(_loc16_ + 228);
                  _loc6_ = li32(_loc16_ + 204);
               }
               else
               {
                  si32(_loc5_ = int((_loc6_ = li32(_loc16_ + 204)) + (int((_loc38_ = _loc8_ >> 1) - _loc19_))),_loc16_ + 228);
               }
               if((_loc38_ = int(_loc6_ - _loc5_)) >= 2048)
               {
                  _loc3_ -= 16;
                  si32(_loc16_,_loc3_);
                  ESP = _loc3_;
                  F__ZN9Music_Emu8fill_bufEv();
                  _loc3_ += 16;
               }
               §§goto(addr905);
            }
            §§goto(addr690);
         }
         addr905:
         _loc2_ = li32(_loc16_ + 212);
         if((_loc4_ = li32(_loc16_ + 200)) > _loc2_)
         {
            if(_loc36_ >= 1)
            {
               _loc1_ = 0;
               _loc25_ = _loc36_;
               while(true)
               {
                  _loc23_ = li32(_loc16_ + 216);
                  _loc29_ = _loc25_;
                  if(_loc25_ <= 512)
                  {
                     _loc29_ = 512;
                  }
                  _loc38_ = int(_loc4_ - _loc2_);
                  _loc13_ = int((_loc13_ = (_loc38_ = int(_loc1_ + _loc38_)) >> 31) >>> 23);
                  var _loc21_:*;
                  _loc13_ = int((_loc38_ = int((_loc21_ = (_loc38_ += _loc13_) >> 9) / _loc23_)) * _loc23_);
                  _loc13_ = (_loc21_ = int((_loc13_ = (_loc13_ = int(_loc21_ - _loc13_)) << 14) / _loc23_)) >> 1;
                  if((_loc27_ = (_loc13_ = int((_loc21_ = int(16384 - _loc21_)) + _loc13_)) >> _loc38_) <= 63)
                  {
                     si8(1,_loc16_ + 208);
                     si8(1,_loc16_ + 209);
                  }
                  _loc33_ = (_loc38_ = int(_loc25_ - _loc29_)) + 512;
                  _loc31_ = _loc37_;
                  if(_loc25_ != 0)
                  {
                     do
                     {
                        si16(_loc38_ = int((_loc38_ = int((_loc38_ = si16(li16(_loc31_))) * _loc27_)) >>> 14),_loc31_);
                        _loc31_ += 2;
                     }
                     while((_loc33_ += -1) != 0);
                     
                  }
                  _loc1_ += 512;
                  if(_loc1_ >= _loc36_)
                  {
                     break;
                  }
                  _loc37_ += 1024;
                  _loc25_ += -512;
                  _loc2_ = li32(_loc16_ + 212);
                  _loc4_ = li32(_loc16_ + 200);
               }
            }
         }
         §§goto(addr1104);
      }
      addr1104:
      si32(_loc38_ = int((_loc38_ = li32(_loc35_)) + _loc36_),_loc35_);
      eax = 0;
      _loc3_ = _loc7_;
      ESP = _loc3_;
   }
}
