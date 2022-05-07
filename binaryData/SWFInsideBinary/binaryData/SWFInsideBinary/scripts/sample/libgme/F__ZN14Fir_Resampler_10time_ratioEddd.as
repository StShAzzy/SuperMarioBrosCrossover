package sample.libgme
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si16;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str1135;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str134;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.__ZZNK13blargg_vectorIsEixEjE8__func__;
   
   public function F__ZN14Fir_Resampler_10time_ratioEddd() : void
   {
      var _loc14_:* = 0;
      var _loc22_:* = 0;
      var _loc16_:* = NaN;
      var _loc18_:* = NaN;
      var _loc4_:Number = NaN;
      var _loc5_:Number = NaN;
      var _loc11_:Number = NaN;
      var _loc25_:int = 0;
      var _loc21_:* = 0;
      var _loc23_:* = 0;
      var _loc7_:Number = NaN;
      var _loc17_:* = NaN;
      var _loc9_:Number = NaN;
      var _loc31_:int = 0;
      var _loc20_:* = NaN;
      var _loc3_:* = NaN;
      var _loc32_:* = 0;
      var _loc19_:* = NaN;
      var _loc15_:* = NaN;
      var _loc2_:* = NaN;
      var _loc29_:int = 0;
      var _loc26_:int = 0;
      var _loc28_:* = 0;
      var _loc10_:Number = NaN;
      var _loc8_:Number = NaN;
      var _loc13_:*;
      _loc16_ = lf64((_loc14_ = _loc13_ = int(ESP)) + 4);
      _loc22_ = li32(_loc14_);
      sf64(_loc16_,_loc22_ + 40);
      si32(_loc32_ = -1,_loc22_ + 12);
      _loc15_ = 2;
      _loc31_ = 1;
      _loc18_ = lf64(_loc14_ + 20);
      _loc17_ = lf64(_loc14_ + 12);
      _loc20_ = 0;
      _loc19_ = 0;
      do
      {
         var _loc1_:* = Number((_loc20_ += _loc16_) + 0.5);
         _loc13_ -= 16;
         sf64(_loc1_,_loc13_);
         ESP = _loc13_;
         F_floor();
         _loc13_ += 16;
         _loc2_ = Number(st0);
         _loc3_ = Number(_loc20_ - _loc2_);
         if(!(_loc3_ >= 0 | _loc3_ != _loc3_ | false))
         {
            _loc3_ = Number(-_loc3_);
         }
         if(!(_loc3_ >= _loc15_ | _loc3_ != _loc3_ | _loc15_ != _loc15_))
         {
            si32(_loc31_,_loc22_ + 12);
            _loc19_ = Number(_loc2_ / _loc31_);
            _loc32_ = _loc31_;
            _loc15_ = _loc3_;
         }
      }
      while((_loc31_ += 1) != 33);
      
      si32(0,_loc22_ + 28);
      _loc13_ -= 16;
      sf64(_loc19_,_loc13_);
      ESP = _loc13_;
      F_floor();
      _loc13_ += 16;
      var _loc30_:*;
      si32(_loc30_ = (_loc30_ = int(Number(st0))) << 1,_loc22_ + 32);
      sf64(_loc19_,_loc22_ + 40);
      _loc13_ -= 16;
      si32(1072693248,_loc13_ + 12);
      si32(0,_loc13_ + 8);
      sf64(_loc19_,_loc13_);
      ESP = _loc13_;
      F_fmod();
      _loc2_ = 1;
      _loc13_ += 16;
      _loc16_ = Number(st0);
      if(_loc19_ >= _loc2_)
      {
         _loc2_ = Number(1 / _loc19_);
      }
      si32(0,_loc22_ + 36);
      if(_loc32_ >= 1)
      {
         _loc4_ = _loc18_ * 32767 * _loc2_ * 0.001953125;
         _loc18_ = Number(_loc17_ * _loc17_);
         _loc15_ = Number(-(_loc19_ = Number(_loc2_ * 0.01227184630308513)));
         _loc31_ = 0;
         _loc29_ = 0;
         _loc3_ = 0;
         do
         {
            _loc28_ = li32(_loc22_ + 20);
            _loc7_ = Math.pow(_loc17_,256);
            if(_loc28_ != 0)
            {
               var _loc27_:*;
               var _loc6_:Number;
               _loc5_ = 512 / (Number(_loc27_ = (_loc27_ = int(_loc6_ = (_loc6_ = (_loc6_ = _loc28_) * _loc2_) + 1)) & -2));
               _loc11_ = _loc7_ * _loc17_;
               _loc26_ = li32(_loc22_ + 48) + int(_loc28_ * _loc31_);
               _loc10_ = ((Number(_loc30_ = int((_loc30_ = (_loc30_ = int(_loc28_ + (int(_loc28_ >>> 31)))) >> 1) + -1))) + _loc3_) * _loc15_;
               do
               {
                  si16(0,_loc26_);
                  if(!((_loc8_ = _loc10_ * _loc5_) >= 0 | _loc9_ != _loc9_ | false))
                  {
                     _loc8_ = -_loc9_;
                  }
                  if(!(_loc8_ >= 3.141592653589793 | _loc8_ != _loc8_ | false))
                  {
                     _loc1_ = Number(Math.cos(_loc10_) * _loc17_);
                     var _loc12_:Number;
                     _loc1_ = Number((_loc6_ = _loc4_ * (Number(_loc6_ - (_loc12_ = Math.cos(Number(_loc10_ * 256))) * _loc7_) + Number(_loc11_ * Math.cos(Number(_loc10_ * 255))))) / (Number(Number((_loc6_ = 1 - _loc1_) - _loc1_) + _loc18_)) - _loc4_);
                     si16(_loc30_ = int(Number((_loc6_ = (_loc6_ = Math.cos(_loc9_)) * _loc1_) + _loc1_)),_loc26_);
                  }
                  _loc10_ += _loc19_;
                  _loc26_ += 2;
               }
               while((_loc28_ += -1) != 0);
               
            }
            _loc27_ = li32(_loc22_ + 36);
            si32(_loc25_ = (_loc30_ = li32(_loc22_ + 32)) + _loc27_,_loc22_ + 36);
            _loc3_ += _loc16_;
            if(!(_loc3_ < 0.9999999 | _loc3_ != _loc3_ | false))
            {
               si32(_loc30_ = (_loc27_ = li32(_loc22_ + 28)) | 1 << _loc29_,_loc22_ + 28);
               si32(_loc30_ = int(_loc25_ + 1),_loc22_ + 36);
               _loc3_ += -1;
            }
            _loc29_ += 1;
            _loc31_ += 2;
         }
         while((_loc30_ = li32(_loc22_ + 12)) > _loc29_);
         
      }
      si32(0,_loc22_ + 16);
      if((_loc21_ = li32(_loc22_ + 4)) != 0)
      {
         _loc23_ = li32(_loc22_ + 24);
         if(uint(_loc21_) < uint(_loc23_))
         {
            _loc13_ -= 16;
            si32(L__2E_str1135,_loc13_ + 12);
            si32(51,_loc13_ + 8);
            si32(L__2E_str134,_loc13_ + 4);
            si32(__ZZNK13blargg_vectorIsEixEjE8__func__,_loc13_);
            ESP = _loc13_;
            F___assert();
            _loc13_ += 16;
         }
         _loc30_ = _loc23_ << 1;
         var _loc24_:int;
         si32(_loc24_ = (_loc27_ = li32(_loc22_)) + _loc30_,_loc22_ + 8);
         _loc13_ -= 16;
         si32(_loc30_,_loc13_ + 8);
         si32(0,_loc13_ + 4);
         si32(_loc27_,_loc13_);
         ESP = _loc13_;
         Fmemset();
         _loc13_ += 16;
      }
      _loc1_ = lf64(_loc22_ + 40);
      st0 = _loc1_;
      ESP = _loc13_ = _loc14_;
   }
}
