package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.sxi8;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F_d_unqualified_name() : void
   {
      var _loc3_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc10_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      var _loc9_:*;
      if((uint(_loc9_ = (_loc9_ = int((_loc10_ = li8(_loc11_ = li32(_loc1_ + 12))) + -48)) & 255)) <= 9)
      {
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_d_source_name();
         _loc2_ += 16;
         _loc10_ = int(eax);
      }
      else if((uint(_loc9_ = (_loc9_ = int(_loc10_ + -97)) & 255)) <= 25)
      {
         _loc2_ -= 16;
         si32(_loc1_,_loc2_);
         ESP = _loc2_;
         F_d_operator_name();
         _loc10_ = 0;
         _loc2_ += 16;
         if((_loc8_ = int(eax)) != 0)
         {
            _loc10_ = _loc8_;
            if(li32(_loc8_) == 40)
            {
               var _loc7_:*;
               si32(_loc9_ = int((_loc9_ = int(li32(_loc1_ + 48) + li32((_loc7_ = li32(_loc8_ + 4)) + 8))) + 7),_loc1_ + 48);
               _loc10_ = _loc8_;
            }
         }
      }
      else if((uint(_loc9_ = (_loc9_ = int(_loc10_ + -67)) & 255)) <= 1)
      {
         if((_loc8_ = li32(_loc1_ + 44)) != 0)
         {
            if((_loc10_ = li32(_loc8_)) != 21)
            {
               if(_loc10_ == 0)
               {
                  si32(_loc9_ = int((_loc9_ = li32(_loc8_ + 8)) + li32(_loc1_ + 48)),_loc1_ + 48);
               }
            }
            else
            {
               si32(_loc9_ = int((_loc9_ = li32(_loc8_ + 8)) + li32(_loc1_ + 48)),_loc1_ + 48);
            }
         }
         _loc6_ = si8(li8(_loc11_));
         si32(_loc9_ = int(_loc11_ + 1),_loc1_ + 12);
         if(_loc6_ != 68)
         {
            _loc10_ = 0;
            if(_loc6_ == 67)
            {
               _loc6_ = si8(li8(_loc11_ + 1));
               si32(_loc9_ = int(_loc11_ + 2),_loc1_ + 12);
               _loc11_ = 1;
               if(_loc6_ != 49)
               {
                  if(_loc6_ != 51)
                  {
                     _loc10_ = 0;
                     if(_loc6_ == 50)
                     {
                        _loc11_ = 2;
                     }
                     §§goto(addr666);
                  }
                  else
                  {
                     _loc11_ = 3;
                  }
               }
               _loc5_ = li32(_loc1_ + 20);
               _loc9_ = li32(_loc1_ + 24);
               _loc10_ = 0;
               if(_loc5_ < _loc9_)
               {
                  _loc6_ = li32(_loc1_ + 16);
                  si32(_loc9_ = int(_loc5_ + 1),_loc1_ + 20);
                  _loc5_ *= 12;
                  _loc1_ = int(_loc6_ + _loc5_);
                  _loc10_ = 0;
                  if(_loc1_ != 0)
                  {
                     if(_loc8_ != 0)
                     {
                        _loc9_ = int(_loc6_ + _loc5_);
                        si32(6,_loc9_);
                        si32(_loc11_,_loc9_ + 4);
                        si32(_loc8_,_loc9_ + 8);
                        _loc10_ = _loc1_;
                     }
                  }
               }
            }
         }
         else
         {
            _loc6_ = si8(li8(_loc11_ + 1));
            si32(_loc9_ = int(_loc11_ + 2),_loc1_ + 12);
            _loc11_ = 1;
            if(_loc6_ != 48)
            {
               if(_loc6_ != 50)
               {
                  _loc10_ = 0;
                  if(_loc6_ == 49)
                  {
                     _loc11_ = 2;
                  }
                  §§goto(addr666);
               }
               else
               {
                  _loc11_ = 3;
               }
            }
            _loc5_ = li32(_loc1_ + 20);
            _loc9_ = li32(_loc1_ + 24);
            _loc10_ = 0;
            if(_loc5_ < _loc9_)
            {
               _loc6_ = li32(_loc1_ + 16);
               si32(_loc9_ = int(_loc5_ + 1),_loc1_ + 20);
               _loc1_ = int(_loc5_ * 12);
               _loc5_ = int(_loc6_ + _loc1_);
               _loc10_ = 0;
               if(_loc5_ != 0)
               {
                  if(_loc8_ != 0)
                  {
                     _loc9_ = int(_loc6_ + _loc1_);
                     si32(7,_loc9_);
                     si32(_loc11_,_loc9_ + 4);
                     si32(_loc8_,_loc9_ + 8);
                     _loc10_ = _loc5_;
                  }
               }
            }
         }
      }
      else
      {
         _loc10_ = 0;
         if((_loc10_ & 255) == 76)
         {
            si32(_loc9_ = int(_loc11_ + 1),_loc1_ + 12);
            _loc2_ -= 16;
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F_d_source_name();
            _loc10_ = 0;
            _loc2_ += 16;
            if((_loc11_ = int(eax)) != 0)
            {
               _loc10_ = _loc11_;
               if(li8(_loc4_ = li32(_loc1_ + 12)) == 95)
               {
                  si32(_loc5_ = int(_loc4_ + 1),_loc1_ + 12);
                  _loc8_ = li8(_loc4_ + 1);
                  _loc6_ = _loc10_ = 0;
                  if(_loc8_ == 110)
                  {
                     si32(_loc5_ = int(_loc4_ + 2),_loc1_ + 12);
                     _loc8_ = li8(_loc4_ + 2);
                     _loc6_ = 1;
                  }
                  _loc9_ = (_loc9_ = int(_loc8_ + -48)) & 255;
                  _loc4_ = _loc10_;
                  if(uint(_loc9_) <= 9)
                  {
                     _loc5_ += 1;
                     _loc4_ = 0;
                     do
                     {
                        si32(_loc5_,_loc1_ + 12);
                        _loc9_ = int(_loc4_ * 10);
                        _loc7_ = (_loc7_ = _loc8_ << 24) >> 24;
                        _loc4_ = int((_loc9_ += _loc7_) + -48);
                        _loc9_ = int(_loc5_ + 1);
                        _loc7_ = (_loc7_ = int((_loc8_ = li8(_loc5_)) + -48)) & 255;
                        _loc5_ = _loc9_;
                     }
                     while(uint(_loc7_) < 10);
                     
                  }
                  if(_loc6_ != _loc10_)
                  {
                     _loc4_ = int(0 - _loc4_);
                  }
                  if(_loc4_ >= _loc10_)
                  {
                     _loc10_ = _loc11_;
                  }
               }
            }
         }
      }
      addr666:
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
