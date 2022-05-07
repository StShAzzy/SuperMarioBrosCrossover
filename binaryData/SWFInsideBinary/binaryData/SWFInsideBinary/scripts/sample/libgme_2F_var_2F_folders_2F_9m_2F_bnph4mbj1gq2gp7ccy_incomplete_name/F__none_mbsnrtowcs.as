package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import sample.libgme.ESP;
   import sample.libgme.eax;
   
   public function F__none_mbsnrtowcs() : void
   {
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc1_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc5_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = li32(_loc1_);
      _loc9_ = li32(_loc3_ + 8);
      if((_loc8_ = li32(_loc3_)) != 0)
      {
         _loc6_ = int(0 - li32(_loc3_ + 12));
         _loc5_ = 0 - _loc9_;
         _loc9_ = 0;
         while(_loc6_ != _loc9_)
         {
            if(_loc5_ == _loc9_)
            {
               break;
            }
            var _loc4_:*;
            si32(_loc4_ = li8(_loc4_ = int(_loc10_ - _loc9_)),int(_loc8_ - (_loc9_ << 2)));
            if(_loc4_ == 0)
            {
               si32(0,_loc1_);
               _loc6_ = int(0 - _loc9_);
               §§goto(addr168);
            }
            _loc9_ += -1;
         }
         var _loc7_:*;
         si32(_loc7_ = int(_loc10_ - _loc9_),_loc1_);
         _loc6_ = int(0 - _loc9_);
      }
      else
      {
         _loc6_ = _loc8_ = 0;
         if(_loc9_ != 0)
         {
            do
            {
               if((_loc7_ = li8(_loc7_ = int(_loc10_ - _loc8_))) == 0)
               {
                  _loc6_ = _loc9_;
                  if(_loc10_ != _loc8_)
                  {
                     _loc6_ = int(0 - _loc8_);
                     break;
                  }
               }
               _loc8_ += -1;
               _loc6_ = _loc9_;
            }
            while(int(_loc9_ + _loc8_) != 0);
            
         }
      }
      addr168:
      eax = _loc6_;
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
