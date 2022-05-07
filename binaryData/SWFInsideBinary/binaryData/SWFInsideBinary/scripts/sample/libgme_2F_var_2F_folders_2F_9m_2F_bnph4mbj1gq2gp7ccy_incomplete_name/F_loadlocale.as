package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___detect_path_locale;
   import sample.libgme.F___error;
   import sample.libgme.___collate_load_tables;
   import sample.libgme.___messages_load_locale;
   import sample.libgme.___monetary_load_locale;
   import sample.libgme.___numeric_load_locale;
   import sample.libgme.___time_load_locale;
   import sample.libgme.___wrap_setrunelocale;
   import sample.libgme.eax;
   import sample.libgme.ptr2fun;
   
   public function F_loadlocale() : void
   {
      var _loc3_:* = 0;
      var _loc4_:* = 0;
      var _loc12_:* = 0;
      var _loc7_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc10_:* = 0;
      var _loc11_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_);
      _loc12_ = _loc1_ << 5;
      if((_loc9_ = li8(_loc11_ = _new_categories + _loc12_)) == 46)
      {
         if((_loc7_ = li8((_loc8_ = int(_new_categories + _loc12_)) + 1)) != 0)
         {
            _loc9_ = 46;
            if(_loc7_ == 46)
            {
               _loc9_ = _loc10_;
               if(li8(_loc8_ + 2) != 0)
               {
                  §§goto(addr76);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr113);
      }
      addr76:
      _loc7_ = int(_current_categories + _loc12_);
      _loc8_ = int(_loc11_ + 1);
      while((_loc9_ &= 255) != 0)
      {
         if(_loc9_ == 47)
         {
            if(_loc8_ != 1)
            {
               addr113:
               ESP = _loc2_;
               F___error();
               var _loc6_:* = int(eax);
               si32(22,_loc6_);
               _loc9_ = 0;
               §§goto(addr400);
            }
            break;
         }
         _loc9_ = li8(_loc8_);
         _loc8_ += 1;
      }
      ESP = _loc2_;
      F___error();
      _loc8_ = li32(_loc6_ = int(eax));
      ESP = _loc2_;
      F___error();
      var _loc5_:int = eax;
      ESP = _loc2_;
      F___detect_path_locale();
      si32(_loc6_ = int(eax),_loc5_);
      ESP = _loc2_;
      F___error();
      _loc6_ = li32(_loc6_ = int(eax));
      _loc9_ = 0;
      if(_loc6_ == 0)
      {
         ESP = _loc2_;
         F___error();
         si32(_loc8_,int(eax));
         if(_loc1_ <= 3)
         {
            if(_loc1_ != 1)
            {
               _loc8_ = int(___wrap_setrunelocale);
               if(_loc1_ != 2)
               {
                  if(_loc1_ != 3)
                  {
                     addr259:
                     ESP = _loc2_;
                     F___error();
                     _loc6_ = int(eax);
                     si32(22,_loc6_);
                     _loc9_ = 0;
                     §§goto(addr400);
                  }
                  else
                  {
                     _loc8_ = int(___monetary_load_locale);
                  }
                  §§goto(addr400);
               }
            }
            else
            {
               _loc8_ = int(___collate_load_tables);
            }
         }
         else if(_loc1_ != 4)
         {
            if(_loc1_ != 5)
            {
               if(_loc1_ != 6)
               {
                  §§goto(addr259);
               }
               else
               {
                  _loc8_ = int(___messages_load_locale);
               }
               §§goto(addr400);
            }
            else
            {
               _loc8_ = int(___time_load_locale);
            }
         }
         else
         {
            _loc8_ = int(___numeric_load_locale);
         }
         _loc1_ = int(_current_categories + _loc12_);
         _loc10_ = _loc11_;
         loop1:
         do
         {
            _loc4_ = li8(_loc10_);
            _loc6_ = li8(_loc1_);
            if(_loc4_ != _loc6_)
            {
               _loc2_ -= 16;
               si32(_loc11_,_loc2_);
               ESP = _loc2_;
               ptr2fun[_loc8_]();
               _loc9_ = 0;
               _loc2_ += 16;
               if((_loc6_ = int(eax)) != -1)
               {
                  si8(_loc6_ = li8(_loc11_),_loc7_);
                  _loc9_ = _loc7_;
                  if(_loc6_ != 0)
                  {
                     _loc11_ = (_loc6_ = int(_current_categories + _loc12_)) + 1;
                     _loc12_ = int((_loc6_ = int(_new_categories + _loc12_)) + 1);
                     while(true)
                     {
                        si8(_loc6_ = li8(_loc12_),_loc11_);
                        _loc11_ += 1;
                        _loc12_ += 1;
                        _loc9_ = _loc7_;
                        if(_loc6_ == 0)
                        {
                           break loop1;
                        }
                     }
                  }
                  break;
               }
               break;
            }
            _loc1_ += 1;
            _loc10_ += 1;
            _loc9_ = _loc7_;
         }
         while(_loc4_ != 0);
         
      }
      addr400:
      eax = _loc9_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
