package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__GB18030_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc5_:* = 0;
      var _loc4_:* = 0;
      var _loc1_:* = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc6_ = -1;
      }
      else
      {
         _loc5_ = li32(_loc3_);
         _loc6_ = 1;
         if(_loc5_ != 0)
         {
            if((_loc6_ = li32(_loc3_ + 4)) >= 0)
            {
               if((_loc6_ & 2130706432) != 0)
               {
                  if(uint(int((_loc4_ = int(_loc6_ >>> 24) | 128) + -129)) <= 125)
                  {
                     si8(_loc4_,_loc5_);
                     if(uint(int(((_loc4_ = int(_loc6_ >>> 16)) & 255) + -48)) <= 9)
                     {
                        si8(_loc4_,_loc5_ + 1);
                        if(uint(int(((_loc4_ = int(_loc6_ >>> 8)) & 255) + -129)) <= 125)
                        {
                           si8(_loc4_,_loc5_ + 2);
                           if(uint(int((_loc6_ & 255) + -48)) <= 9)
                           {
                              si8(_loc6_,_loc5_ + 3);
                              _loc6_ = 4;
                           }
                           §§goto(addr230);
                        }
                     }
                  }
               }
               else if((_loc6_ & 16711680) == 0)
               {
                  if((_loc6_ & 65280) != 0)
                  {
                     if(uint(int(((_loc4_ = int(_loc6_ >>> 8)) & 255) + -129)) <= 125)
                     {
                        si8(_loc4_,_loc5_);
                        if((uint(_loc4_ = _loc6_ & 255)) >= 64)
                        {
                           if((_loc4_ | 128) != 255)
                           {
                              si8(_loc6_,_loc5_ + 1);
                              _loc6_ = 2;
                           }
                           §§goto(addr230);
                        }
                     }
                  }
                  else
                  {
                     if(_loc6_ <= 127)
                     {
                        si8(_loc6_,_loc5_);
                        _loc6_ = 1;
                     }
                     §§goto(addr230);
                  }
               }
            }
            ESP = _loc2_;
            F___error();
            _loc1_ = int(eax);
            si32(86,_loc1_);
            _loc6_ = -1;
         }
      }
      addr230:
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
