package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_arena_bin_run_size_calc() : void
   {
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc20_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:int = 0;
      var _loc9_:int = 0;
      var _loc18_:* = 0;
      var _loc17_:* = 0;
      var _loc15_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:* = 0;
      var _loc13_:* = 0;
      var _loc1_:int = 0;
      var _loc12_:* = 0;
      var _loc2_:* = 0;
      var _loc5_:* = 0;
      var _loc19_:* = 0;
      var _loc16_:* = 0;
      var _loc3_:* = int(ESP);
      _loc20_ = li32((_loc4_ = li32(_loc8_ = _loc3_)) + 20);
      _loc18_ = (_loc17_ = int((uint(_loc18_ = int((_loc19_ = li32(_loc8_ + 4)) + -16))) / uint(_loc20_))) ^ -1;
      _loc18_ = int(_loc20_ * _loc18_);
      _loc16_ = int(_loc19_ + _loc18_);
      do
      {
         _loc18_ = _loc17_ & 31;
         _loc15_ = 1;
         if(_loc18_ == 0)
         {
            _loc15_ = 0;
         }
         var _loc14_:* = _loc15_ & 1;
         _loc18_ = int(_loc17_ >>> 5);
         _loc18_ = int((_loc18_ = (_loc15_ = int(_loc14_ + _loc18_)) << 2) + 12);
         _loc16_ += _loc20_;
         _loc17_ += -1;
      }
      while(uint(_loc18_) > uint(_loc16_));
      
      _loc17_ += 1;
      if((uint(_loc18_ = int(_loc20_ * 488))) >= 6145)
      {
         _loc13_ = li32(_arena_maxclass);
         _loc1_ = _loc19_ * 61;
         _loc9_ = 16 - _loc20_;
         _loc10_ = _loc20_ << 12;
         _loc11_ = 65536 - _loc10_;
         _loc12_ = _loc19_;
         _loc2_ = _loc17_;
         _loc5_ = _loc15_;
         _loc6_ = _loc16_;
         while(true)
         {
            _loc19_ = _loc12_;
            _loc17_ = _loc2_;
            _loc15_ = _loc5_;
            _loc16_ = _loc6_;
            _loc2_ = int((uint(_loc18_ = int(_loc19_ + 4080))) / uint(_loc20_));
            _loc18_ = int(uint(_loc18_) % uint(_loc20_));
            _loc6_ = int(_loc9_ + _loc18_);
            _loc18_ <<= 12;
            _loc7_ = _loc11_ + _loc18_;
            _loc12_ = int(_loc19_ + 4096);
            do
            {
               _loc18_ = _loc2_ & 31;
               _loc5_ = 1;
               if(_loc18_ == 0)
               {
                  _loc5_ = 0;
               }
               _loc14_ = _loc5_ & 1;
               _loc18_ = int(_loc2_ >>> 5);
               _loc18_ = int((_loc18_ = (_loc5_ = int(_loc14_ + _loc18_)) << 2) + 12);
               _loc6_ += _loc20_;
               _loc7_ += _loc10_;
               _loc2_ += -1;
            }
            while(uint(_loc18_) > uint(_loc6_));
            
            if(uint(_loc12_) > uint(_loc13_))
            {
               break;
            }
            if(uint(_loc12_) > 49152)
            {
               break;
            }
            _loc2_ += 1;
            _loc1_ += 249856;
            if(uint(_loc7_) <= uint(_loc1_))
            {
               break;
            }
         }
      }
      else
      {
         _loc7_ = (uint(_loc18_ = int(_loc19_ + 4080))) / uint(_loc20_);
         _loc6_ = int((_loc18_ = int((_loc18_ = int(uint(_loc18_) % uint(_loc20_))) + 16)) - _loc20_);
         do
         {
            _loc18_ = _loc7_ & 31;
            _loc13_ = 1;
            if(_loc18_ == 0)
            {
               _loc13_ = 0;
            }
            _loc18_ = _loc13_ & 1;
            _loc14_ = int(_loc7_ >>> 5);
            _loc18_ = int((_loc18_ = (_loc18_ += _loc14_) << 2) + 12);
            _loc6_ += _loc20_;
            _loc7_ += -1;
         }
         while(uint(_loc18_) > uint(_loc6_));
         
      }
      si32(_loc19_,_loc4_ + 24);
      si32(_loc17_,_loc4_ + 28);
      si32(_loc15_,_loc4_ + 32);
      si32(_loc16_,_loc4_ + 36);
      eax = _loc19_;
      _loc3_ = _loc8_;
      ESP = _loc3_;
   }
}
