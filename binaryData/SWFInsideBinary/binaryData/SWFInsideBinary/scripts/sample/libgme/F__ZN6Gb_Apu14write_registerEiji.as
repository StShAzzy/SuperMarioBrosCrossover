package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str2139;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str9146;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZL12powerup_regs;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZN6Gb_Apu14write_registerEijiE8__func__;
   
   public function F__ZN6Gb_Apu14write_registerEiji() : void
   {
      var _loc6_:* = 0;
      var _loc17_:* = 0;
      var _loc18_:* = 0;
      var _loc20_:* = 0;
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc8_:* = 0;
      var _loc7_:* = 0;
      var _loc10_:* = 0;
      var _loc2_:* = 0;
      var _loc16_:* = NaN;
      var _loc19_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc3_:* = int(ESP);
      if((uint(_loc4_ = li32((_loc6_ = _loc3_) + 12))) >= 256)
      {
         _loc3_ -= 16;
         si32(L__2E_str9146,_loc3_ + 12);
         si32(202,_loc3_ + 8);
         si32(L__2E_str2139,_loc3_ + 4);
         si32(__ZZN6Gb_Apu14write_registerEijiE8__func__,_loc3_);
         ESP = _loc3_;
         F___assert();
         _loc3_ += 16;
      }
      if((uint(_loc19_ = int((_loc20_ = li32(_loc6_ + 8)) + -65296))) <= 47)
      {
         _loc18_ = li32(_loc6_ + 4);
         _loc17_ = li32(_loc6_);
         _loc3_ -= 16;
         si32(_loc18_,_loc3_ + 4);
         si32(_loc17_,_loc3_);
         var _loc15_:* = int(_loc17_ + _loc19_);
         ESP = _loc3_;
         F__ZN6Gb_Apu9run_untilEi();
         _loc3_ += 16;
         _loc13_ = li8(_loc15_ + 328);
         si8(_loc4_,_loc15_ + 328);
         if(uint(_loc20_) <= 65315)
         {
            _loc3_ -= 16;
            si32(_loc4_,_loc3_ + 12);
            si32(_loc17_,_loc3_);
            si32(_loc19_,_loc3_ + 8);
            si32(_loc15_ = int(_loc19_ / 5),_loc3_ + 4);
            ESP = _loc3_;
            F__ZN6Gb_Apu9write_oscEiii();
            _loc3_ += 16;
         }
         else
         {
            if(_loc20_ == 65316)
            {
               if(_loc13_ != _loc4_)
               {
                  _loc4_ = li32((_loc20_ = li32(_loc17_)) + 32);
                  si32(0,_loc20_ + 32);
                  _loc13_ = int(_loc17_ + 1192);
                  if(_loc4_ != 0)
                  {
                     if((_loc15_ = li32(_loc20_ + 44)) != 0)
                     {
                        if((_loc20_ = li32(_loc20_ + 16)) != 0)
                        {
                           _loc3_ -= 16;
                           si32(_loc20_,_loc3_ + 12);
                           var _loc11_:int;
                           si32(_loc11_ = 0 - _loc4_,_loc3_ + 8);
                           var _loc12_:*;
                           si32(_loc15_ = int((_loc12_ = int(li32(_loc20_) * _loc18_)) + li32(_loc20_ + 4)),_loc3_ + 4);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc3_ += 16;
                        }
                     }
                  }
                  _loc4_ = li32((_loc20_ = li32(_loc17_ + 4)) + 32);
                  si32(0,_loc20_ + 32);
                  if(_loc4_ != 0)
                  {
                     if((_loc15_ = li32(_loc20_ + 44)) != 0)
                     {
                        if((_loc20_ = li32(_loc20_ + 16)) != 0)
                        {
                           _loc3_ -= 16;
                           si32(_loc20_,_loc3_ + 12);
                           si32(_loc11_ = 0 - _loc4_,_loc3_ + 8);
                           si32(_loc15_ = int((_loc12_ = int(li32(_loc20_) * _loc18_)) + li32(_loc20_ + 4)),_loc3_ + 4);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc3_ += 16;
                        }
                     }
                  }
                  _loc4_ = li32((_loc20_ = li32(_loc17_ + 8)) + 32);
                  si32(0,_loc20_ + 32);
                  if(_loc4_ != 0)
                  {
                     if((_loc15_ = li32(_loc20_ + 44)) != 0)
                     {
                        if((_loc20_ = li32(_loc20_ + 16)) != 0)
                        {
                           _loc3_ -= 16;
                           si32(_loc20_,_loc3_ + 12);
                           si32(_loc12_ = int(0 - _loc4_),_loc3_ + 8);
                           si32(_loc15_ = int((_loc12_ = int(li32(_loc20_) * _loc18_)) + li32(_loc20_ + 4)),_loc3_ + 4);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc3_ += 16;
                        }
                     }
                  }
                  _loc4_ = li32((_loc20_ = li32(_loc17_ + 12)) + 32);
                  si32(0,_loc20_ + 32);
                  if(_loc4_ != 0)
                  {
                     if((_loc15_ = li32(_loc20_ + 44)) != 0)
                     {
                        if((_loc20_ = li32(_loc20_ + 16)) != 0)
                        {
                           _loc3_ -= 16;
                           si32(_loc20_,_loc3_ + 12);
                           si32(_loc11_ = 0 - _loc4_,_loc3_ + 8);
                           si32(_loc15_ = int((_loc12_ = int(li32(_loc20_) * _loc18_)) + li32(_loc20_ + 4)),_loc3_ + 4);
                           si32(_loc13_,_loc3_);
                           ESP = _loc3_;
                           F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                           _loc3_ += 16;
                        }
                     }
                  }
                  if((_loc4_ = li32(_loc17_ + 192)) != 0)
                  {
                     _loc3_ -= 16;
                     si32(_loc4_,_loc3_ + 12);
                     si32(30,_loc3_ + 8);
                     si32(_loc15_ = int((_loc12_ = int(li32(_loc4_) * _loc18_)) + li32(_loc4_ + 4)),_loc3_ + 4);
                     si32(_loc13_,_loc3_);
                     ESP = _loc3_;
                     F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                     _loc3_ += 16;
                  }
                  _loc16_ = lf64(_loc17_ + 32);
                  _loc15_ = li8(_loc17_ + 348);
                  _loc3_ -= 16;
                  si32(_loc12_ = int(_loc17_ + 376),_loc3_);
                  _loc4_ = _loc15_ & 7;
                  _loc19_ = (_loc15_ >>>= 4) & 7;
                  if(uint(_loc4_) >= uint(_loc19_))
                  {
                     _loc19_ = _loc4_;
                  }
                  var _loc14_:Number;
                  sf64(_loc14_ = (_loc14_ = _loc15_ = int(_loc19_ + 1)) * _loc16_,_loc3_ + 4);
                  ESP = _loc3_;
                  F__ZN11Blip_Synth_11volume_unitEd();
                  _loc3_ += 16;
                  _loc3_ -= 16;
                  sf64(_loc14_,_loc3_ + 4);
                  si32(_loc13_,_loc3_);
                  ESP = _loc3_;
                  F__ZN11Blip_Synth_11volume_unitEd();
                  _loc3_ += 16;
                  if((_loc17_ = li32(_loc17_ + 192)) != 0)
                  {
                     _loc3_ -= 16;
                     si32(_loc17_,_loc3_ + 12);
                     si32(-30,_loc3_ + 8);
                     si32(_loc15_ = int((_loc12_ = int(li32(_loc17_) * _loc18_)) + li32(_loc17_ + 4)),_loc3_ + 4);
                     si32(_loc13_,_loc3_);
                     ESP = _loc3_;
                     F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                     _loc3_ += 16;
                  }
               }
               §§goto(addr868);
            }
            if((uint(_loc15_ = int(_loc20_ + -65317))) <= 1)
            {
               _loc1_ = (_loc15_ = si8(li8(_loc17_ + 350))) >> 7;
               _loc12_ = li8(_loc17_ + 349);
               si32((_loc15_ = li32((_loc7_ = li32(_loc17_)) + 44)) & _loc1_,_loc7_ + 44);
               _loc10_ = li32(_loc7_ + 16);
               si32((_loc12_ = (_loc9_ = int(_loc8_ >>> 3)) & 2) | (_loc8_ = _loc12_ & _loc1_) & 1,_loc7_ + 20);
               si32(_loc15_ = li32(_loc15_ = int(_loc7_ + (((_loc12_ = (_loc9_ = int(_loc8_ >>> 3)) & 2) | (_loc8_ = _loc12_ & _loc1_) & 1) << 2))),_loc7_ + 16);
               _loc19_ = int(_loc17_ + 1192);
               if(_loc15_ != _loc10_)
               {
                  _loc2_ = li32(_loc7_ + 32);
                  si32(0,_loc7_ + 32);
                  if(_loc2_ != 0)
                  {
                     if(_loc10_ != 0)
                     {
                        _loc3_ -= 16;
                        si32(_loc10_,_loc3_ + 12);
                        si32(_loc11_ = 0 - _loc2_,_loc3_ + 8);
                        si32(_loc15_ = int((_loc12_ = int(li32(_loc10_) * _loc18_)) + li32(_loc10_ + 4)),_loc3_ + 4);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                     }
                  }
               }
               _loc2_ = li32(_loc17_ + 4);
               si32(_loc15_ = (_loc15_ = li32(_loc2_ + 44)) & _loc1_,_loc2_ + 44);
               _loc15_ = (_loc15_ = int(_loc8_ >>> 1)) & 1;
               _loc15_ = (_loc12_ = (_loc12_ = int(_loc8_ >>> 4)) & 2) | _loc15_;
               _loc7_ = li32(_loc2_ + 16);
               si32(_loc15_,_loc2_ + 20);
               _loc15_ <<= 2;
               si32(_loc15_ = li32(_loc15_ = int(_loc2_ + _loc15_)),_loc2_ + 16);
               if(_loc15_ != _loc7_)
               {
                  _loc10_ = li32(_loc2_ + 32);
                  si32(0,_loc2_ + 32);
                  if(_loc10_ != 0)
                  {
                     if(_loc7_ != 0)
                     {
                        _loc3_ -= 16;
                        si32(_loc7_,_loc3_ + 12);
                        si32(_loc11_ = 0 - _loc10_,_loc3_ + 8);
                        si32(_loc15_ = int((_loc12_ = int(li32(_loc7_) * _loc18_)) + li32(_loc7_ + 4)),_loc3_ + 4);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                     }
                  }
               }
               _loc2_ = li32(_loc17_ + 8);
               si32(_loc15_ = (_loc15_ = li32(_loc2_ + 44)) & _loc1_,_loc2_ + 44);
               _loc15_ = (_loc15_ = int(_loc8_ >>> 2)) & 1;
               _loc15_ = (_loc12_ = (_loc12_ = int(_loc8_ >>> 5)) & 2) | _loc15_;
               _loc7_ = li32(_loc2_ + 16);
               si32(_loc15_,_loc2_ + 20);
               _loc15_ <<= 2;
               si32(_loc15_ = li32(_loc15_ = int(_loc2_ + _loc15_)),_loc2_ + 16);
               if(_loc15_ != _loc7_)
               {
                  _loc10_ = li32(_loc2_ + 32);
                  si32(0,_loc2_ + 32);
                  if(_loc10_ != 0)
                  {
                     if(_loc7_ != 0)
                     {
                        _loc3_ -= 16;
                        si32(_loc7_,_loc3_ + 12);
                        si32(_loc11_ = 0 - _loc10_,_loc3_ + 8);
                        si32(_loc15_ = int((_loc12_ = int(li32(_loc7_) * _loc18_)) + li32(_loc7_ + 4)),_loc3_ + 4);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                     }
                  }
               }
               _loc2_ = li32(_loc17_ + 12);
               si32(_loc15_ = (_loc15_ = li32(_loc2_ + 44)) & _loc1_,_loc2_ + 44);
               _loc15_ = _loc9_ & 1;
               _loc15_ = (_loc12_ = (_loc12_ = int(_loc8_ >>> 6)) & 2) | _loc15_;
               _loc9_ = li32(_loc2_ + 16);
               si32(_loc15_,_loc2_ + 20);
               _loc15_ <<= 2;
               si32(_loc15_ = li32(_loc15_ = int(_loc2_ + _loc15_)),_loc2_ + 16);
               if(_loc15_ != _loc9_)
               {
                  _loc1_ = li32(_loc2_ + 32);
                  si32(0,_loc2_ + 32);
                  if(_loc1_ != 0)
                  {
                     if(_loc9_ != 0)
                     {
                        _loc3_ -= 16;
                        si32(_loc9_,_loc3_ + 12);
                        si32(_loc12_ = int(0 - _loc1_),_loc3_ + 8);
                        si32(_loc15_ = int((_loc12_ = int(li32(_loc9_) * _loc18_)) + li32(_loc9_ + 4)),_loc3_ + 4);
                        si32(_loc19_,_loc3_);
                        ESP = _loc3_;
                        F__ZNK10Blip_SynthILi8ELi1EE16offset_resampledEjiP11Blip_Buffer();
                        _loc3_ += 16;
                     }
                  }
               }
               _loc1_ = 0;
               _loc9_ = _loc19_ = 1;
               if(_loc13_ == _loc4_)
               {
                  _loc9_ = _loc1_;
               }
               if(_loc20_ != 65318)
               {
                  _loc19_ = _loc1_;
               }
               if((_loc15_ = _loc4_ & 128) == 0)
               {
                  if((_loc15_ = _loc19_ & _loc9_) != 0)
                  {
                     while(true)
                     {
                        if(_loc1_ == 22)
                        {
                           _loc1_ += 1;
                        }
                        else
                        {
                           _loc3_ -= 16;
                           si32(_loc18_,_loc3_ + 4);
                           si32(_loc17_,_loc3_);
                           si32(_loc15_ = int(_loc1_ + 65296),_loc3_ + 8);
                           si32(_loc15_ = li8(_loc15_ = int(__ZL12powerup_regs + _loc1_)),_loc3_ + 12);
                           ESP = _loc3_;
                           F__ZN6Gb_Apu14write_registerEiji();
                           _loc3_ += 16;
                           _loc1_ += 1;
                           if(_loc1_ == 32)
                           {
                              break;
                           }
                        }
                     }
                  }
               }
            }
            else if(uint(_loc20_) >= 65328)
            {
               _loc12_ = (_loc12_ = _loc20_ << 1) & 30;
               var _loc5_:int;
               si8(_loc5_ = _loc4_ >>> 4,int(int(_loc17_ + 236) + _loc12_));
               si8(_loc12_ = _loc4_ & 15,int(int(_loc17_ + 236) + (_loc12_ | 1)));
            }
         }
      }
      addr868:
      _loc3_ = _loc6_;
      ESP = _loc3_;
   }
}
