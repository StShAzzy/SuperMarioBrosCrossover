package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.lf64;
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.sf64;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.F_malloc;
   import sample.libgme.eax;
   
   public function F_build_arg_table() : void
   {
      var _loc3_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:* = 0;
      var _loc5_:* = 0;
      var _loc9_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc11_ = li32(_loc1_ + 40);
      _loc10_ = li32(_loc3_ + 8);
      _loc9_ = li32(_loc3_ + 4);
      if(_loc11_ <= 7)
      {
         _loc11_ = li32(_loc10_);
         addr85:
         si32(0,_loc11_);
         var _loc8_:*;
         if((_loc8_ = li32(_loc1_ + 40)) >= 1)
         {
            _loc11_ = 1;
            do
            {
               var _loc7_:* = _loc11_ << 2;
               if((_loc5_ = li32(_loc8_ = int((_loc8_ = li32(_loc1_)) + _loc7_))) <= 12)
               {
                  if(_loc5_ <= 5)
                  {
                     if(_loc5_ <= 2)
                     {
                        if(_loc5_ != 0)
                        {
                           if(_loc5_ != 1)
                           {
                              if(_loc5_ == 2)
                              {
                                 si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                                 _loc9_ += 4;
                              }
                           }
                           else
                           {
                              si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                              _loc9_ += 4;
                           }
                        }
                        else
                        {
                           si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else if(_loc5_ != 3)
                     {
                        if(_loc5_ != 4)
                        {
                           if(_loc5_ == 5)
                           {
                              si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                              _loc9_ += 4;
                           }
                        }
                        else
                        {
                           si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 4;
                     }
                  }
                  else if(_loc5_ <= 8)
                  {
                     if(_loc5_ != 6)
                     {
                        if(_loc5_ != 7)
                        {
                           if(_loc5_ == 8)
                           {
                              var _loc4_:* = int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3));
                              si32(_loc8_ = li32(_loc9_ + 4),_loc4_ + 4);
                              si32(li32(_loc9_),_loc4_);
                              _loc9_ += 8;
                           }
                        }
                        else
                        {
                           si32(_loc7_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 4;
                     }
                  }
                  else if(_loc5_ <= 10)
                  {
                     if(_loc5_ != 9)
                     {
                        if(_loc5_ == 10)
                        {
                           si32(_loc7_ = li32(_loc9_),int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        _loc4_ = int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3));
                        si32(_loc8_ = li32(_loc9_ + 4),_loc4_ + 4);
                        si32(li32(_loc9_),_loc4_);
                        _loc9_ += 8;
                     }
                  }
                  else if(_loc5_ != 11)
                  {
                     if(_loc5_ == 12)
                     {
                        si32(_loc7_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 4;
                     }
                  }
                  else
                  {
                     si32(_loc7_ = li32(_loc9_),int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3)));
                     _loc9_ += 4;
                  }
               }
               else if(_loc5_ <= 18)
               {
                  if(_loc5_ <= 15)
                  {
                     if(_loc5_ != 13)
                     {
                        if(_loc5_ != 14)
                        {
                           if(_loc5_ == 15)
                           {
                              si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                              _loc9_ += 4;
                           }
                        }
                        else
                        {
                           si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 4;
                     }
                  }
                  else if(_loc5_ != 16)
                  {
                     if(_loc5_ != 17)
                     {
                        if(_loc5_ == 18)
                        {
                           si32(_loc7_ = li32(_loc9_),int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        _loc8_ = int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3));
                        si32(_loc4_ = li32(_loc9_ + 4),_loc8_ + 4);
                        si32(li32(_loc9_),_loc8_);
                        _loc9_ += 8;
                     }
                  }
                  else
                  {
                     _loc8_ = int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3));
                     si32(_loc4_ = li32(_loc9_ + 4),_loc8_ + 4);
                     si32(li32(_loc9_),_loc8_);
                     _loc9_ += 8;
                  }
               }
               else if(_loc5_ <= 21)
               {
                  if(_loc5_ != 19)
                  {
                     if(_loc5_ != 20)
                     {
                        if(_loc5_ == 21)
                        {
                           si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                           _loc9_ += 4;
                        }
                     }
                     else
                     {
                        si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 4;
                     }
                  }
                  else
                  {
                     si32(_loc7_ = li32(_loc9_),int((_loc7_ = li32(_loc10_)) + (_loc11_ << 3)));
                     _loc9_ += 4;
                  }
               }
               else if(_loc5_ <= 23)
               {
                  if(_loc5_ != 22)
                  {
                     if(_loc5_ == 23)
                     {
                        var _loc6_:*;
                        sf64(_loc6_ = lf64(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                        _loc9_ += 8;
                     }
                  }
                  else
                  {
                     sf64(_loc6_ = lf64(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                     _loc9_ += 8;
                  }
               }
               else if(_loc5_ != 24)
               {
                  if(_loc5_ == 25)
                  {
                     si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                     _loc9_ += 4;
                  }
               }
               else
               {
                  si32(_loc8_ = li32(_loc9_),int((_loc8_ = li32(_loc10_)) + (_loc11_ << 3)));
                  _loc9_ += 4;
               }
               _loc11_ += 1;
            }
            while((_loc8_ = li32(_loc1_ + 40)) >= _loc11_);
            
         }
      }
      else
      {
         _loc2_ -= 16;
         si32(_loc8_ = int((_loc8_ = _loc11_ << 3) + 8),_loc2_);
         ESP = _loc2_;
         F_malloc();
         _loc2_ += 16;
         si32(_loc11_ = int(eax),_loc10_);
         if(_loc11_ != 0)
         {
            §§goto(addr85);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
