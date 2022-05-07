package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___error;
   import sample.libgme.eax;
   
   public function F__UTF8_wcrtomb() : void
   {
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc7_:int = 0;
      var _loc6_:int = 0;
      var _loc8_:* = 0;
      var _loc5_:* = 0;
      var _loc10_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 8);
      _loc1_ = li32(_loc1_ + 4);
      if(_loc1_ != 0)
      {
         ESP = _loc2_;
         F___error();
         si32(22,int(eax));
         _loc10_ = -1;
      }
      else
      {
         _loc9_ = li32(_loc3_);
         _loc10_ = 1;
         if(_loc9_ != 0)
         {
            if((uint(_loc8_ = li32(_loc3_ + 4))) <= 127)
            {
               si8(_loc8_,_loc9_);
               _loc10_ = 1;
            }
            else
            {
               _loc10_ = 2;
               _loc7_ = 192;
               if(uint(_loc8_) >= 2048)
               {
                  _loc10_ = 3;
                  _loc7_ = 224;
                  if(uint(_loc8_) >= 65536)
                  {
                     _loc10_ = 4;
                     _loc7_ = 240;
                     if(uint(_loc8_) >= 2097152)
                     {
                        _loc10_ = 5;
                        _loc7_ = 248;
                        if(uint(_loc8_) >= 67108864)
                        {
                           _loc10_ = 6;
                           _loc7_ = 252;
                           if(_loc8_ <= -1)
                           {
                              ESP = _loc2_;
                              F___error();
                              si32(86,int(eax));
                              _loc10_ = -1;
                           }
                           §§goto(addr187);
                        }
                     }
                  }
               }
               _loc6_ = 1 - _loc10_;
               _loc5_ = _loc8_;
               do
               {
                  _loc1_ = int(_loc9_ - _loc6_);
                  var _loc4_:*;
                  si8(_loc4_ = (_loc4_ = _loc8_ & 63) | 128,_loc1_);
                  _loc6_ += 1;
                  _loc5_ = _loc8_ = _loc5_ >> 6;
               }
               while(_loc6_ != 0);
               
               si8(_loc8_ | _loc7_,_loc9_);
            }
         }
      }
      addr187:
      eax = _loc10_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
