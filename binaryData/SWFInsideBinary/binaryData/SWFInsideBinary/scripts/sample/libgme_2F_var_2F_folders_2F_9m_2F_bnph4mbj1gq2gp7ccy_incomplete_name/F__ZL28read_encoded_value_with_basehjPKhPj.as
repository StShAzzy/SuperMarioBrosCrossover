package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li16;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi16;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.F_abort;
   import sample.libgme.eax;
   
   public function F__ZL28read_encoded_value_with_basehjPKhPj() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc12_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc9_:* = 0;
      var _loc5_:* = 0;
      var _loc7_:* = 0;
      var _loc8_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 12);
      _loc12_ = li32(_loc3_ + 8);
      if((_loc11_ = li32(_loc3_)) == 80)
      {
         var _loc10_:*;
         _loc9_ = int((_loc10_ = (_loc10_ = int(_loc12_ + 3)) & -4) + 4);
         _loc8_ = li32(_loc10_);
      }
      else
      {
         _loc7_ = li32(_loc3_ + 4);
         _loc6_ = _loc11_ & 15;
         _loc8_ = 0;
         if(_loc6_ <= 3)
         {
            if(_loc6_ <= 1)
            {
               if(_loc6_ != 0)
               {
                  _loc9_ = _loc12_;
                  _loc5_ = _loc8_;
                  if(_loc6_ != 1)
                  {
                     addr291:
                     ESP = _loc2_;
                     F_abort();
                  }
                  else
                  {
                     do
                     {
                        var _loc4_:*;
                        _loc5_ = (_loc4_ = (_loc4_ = (_loc10_ = si8(li8(_loc9_))) & 127) << _loc8_) | _loc5_;
                        _loc8_ += 7;
                        _loc9_ += 1;
                     }
                     while(_loc10_ < 0);
                     
                  }
               }
               else
               {
                  _loc9_ = int(_loc12_ + 4);
                  _loc5_ = li32(_loc12_);
               }
            }
            else if(_loc6_ != 2)
            {
               if(_loc6_ != 3)
               {
                  §§goto(addr291);
               }
               else
               {
                  _loc9_ = int(_loc12_ + 4);
                  _loc5_ = li32(_loc12_);
               }
            }
            else
            {
               _loc9_ = int(_loc12_ + 2);
               _loc5_ = li16(_loc12_);
            }
         }
         else if(_loc6_ <= 9)
         {
            if(_loc6_ != 4)
            {
               _loc9_ = _loc12_;
               _loc5_ = _loc8_;
               if(_loc6_ != 9)
               {
                  §§goto(addr291);
               }
               else
               {
                  do
                  {
                     _loc5_ = (_loc4_ = (_loc4_ = (_loc10_ = si8(li8(_loc9_))) & 127) << _loc8_) | _loc5_;
                     _loc8_ += 7;
                     _loc9_ += 1;
                     _loc6_ = _loc10_ & 255;
                  }
                  while(_loc10_ < 0);
                  
                  if(uint(_loc8_) <= 31)
                  {
                     if((_loc10_ = _loc6_ & 64) != 0)
                     {
                        _loc5_ |= -1 << _loc8_;
                        addr304:
                        if((_loc10_ = _loc11_ & 112) == 16)
                        {
                           _loc7_ = _loc12_;
                        }
                        _loc8_ = int(_loc7_ + _loc5_);
                        if((_loc10_ = (_loc10_ = _loc11_ << 24) >> 24) <= -1)
                        {
                           _loc8_ = li32(_loc8_);
                        }
                     }
                     §§goto(addr336);
                  }
               }
            }
            else
            {
               _loc9_ = int(_loc12_ + 8);
               _loc5_ = li32(_loc12_);
            }
         }
         else if(_loc6_ != 10)
         {
            if(_loc6_ != 11)
            {
               if(_loc6_ != 12)
               {
                  §§goto(addr291);
               }
               else
               {
                  _loc9_ = int(_loc12_ + 8);
                  _loc5_ = li32(_loc12_);
               }
            }
            else
            {
               _loc9_ = int(_loc12_ + 4);
               _loc5_ = li32(_loc12_);
            }
         }
         else
         {
            _loc9_ = int(_loc12_ + 2);
            _loc5_ = si16(li16(_loc12_));
         }
         _loc8_ = 0;
         if(_loc5_ != 0)
         {
            §§goto(addr304);
         }
      }
      addr336:
      si32(_loc8_,_loc1_);
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
