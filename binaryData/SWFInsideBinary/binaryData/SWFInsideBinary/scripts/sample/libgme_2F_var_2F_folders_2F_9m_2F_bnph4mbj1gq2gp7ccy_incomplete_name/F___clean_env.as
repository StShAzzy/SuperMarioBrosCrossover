package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.Fmemmove;
   import sample.libgme._environ;
   
   public function F___clean_env() : void
   {
      var _loc3_:* = 0;
      var _loc10_:* = 0;
      var _loc1_:* = 0;
      var _loc5_:* = 0;
      var _loc8_:int = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc4_:* = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = _loc2_;
      _loc1_ = li32(_envVars);
      if(_loc1_ != 0)
      {
         _loc10_ = li32(_loc3_);
         if((_loc9_ = li32(_envVarsTotal)) >= 1)
         {
            _loc8_ = 0 - _loc9_;
            _loc7_ = int(_loc9_ * 20);
            _loc9_ += -1;
            while(true)
            {
               var _loc6_:* = int(_loc9_ * 20);
               if((_loc6_ = li8((_loc5_ = int(_loc1_ + _loc6_)) + 17)) != 0)
               {
                  if(_loc10_ == 0)
                  {
                     si32(_loc4_ = int((_loc5_ = li32(_envVarsTotal)) + -1),_envVarsTotal);
                     if(_loc4_ > _loc9_)
                     {
                        _loc2_ -= 16;
                        si32(int((_loc6_ = int(_loc8_ + _loc5_)) * 20),_loc2_ + 8);
                        si32(_loc6_ = int(_loc1_ + _loc7_),_loc2_ + 4);
                        si32(_loc6_ += -20,_loc2_);
                        ESP = _loc2_;
                        Fmemmove();
                        _loc2_ += 16;
                        _loc1_ = li32(_envVars);
                        _loc4_ = li32(_envVarsTotal);
                     }
                     _loc6_ = int(_loc4_ * 20);
                     _loc6_ = int(_loc1_ + _loc6_);
                     si32(0,_loc6_ + 16);
                     si32(0,_loc6_ + 12);
                     si32(0,_loc6_ + 8);
                     si32(0,_loc6_ + 4);
                     si32(0,_loc6_);
                  }
               }
               else if(_loc10_ != 0)
               {
                  _loc1_ = li32((_loc6_ = int(_loc1_ + ((_loc6_ = int(_loc9_ * 5)) << 2))) + 8);
                  if(_loc1_ != 0)
                  {
                     _loc2_ -= 16;
                     si32(_loc1_,_loc2_);
                     ESP = _loc2_;
                     F_idalloc();
                     _loc2_ += 16;
                  }
               }
               else
               {
                  si8(0,_loc5_ + 16);
               }
               if(_loc9_ == 0)
               {
                  break;
               }
               _loc8_ += 1;
               _loc9_ += -1;
               _loc7_ += -20;
               _loc1_ = li32(_envVars);
            }
         }
         if(_loc10_ != 0)
         {
            if((_loc10_ = li32(_envVars)) != 0)
            {
               _loc2_ -= 16;
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F_idalloc();
               _loc2_ += 16;
            }
            si32(0,_envVars);
         }
         else
         {
            si32(0,_envActive);
         }
         if((_loc7_ = li32(_origEnviron)) != 0)
         {
            _loc10_ = li32(_intEnviron);
            if((_loc6_ = li32(_environ)) == _loc10_)
            {
               si32(_loc7_,_environ);
            }
            if(_loc10_ != 0)
            {
               _loc2_ -= 16;
               si32(_loc10_,_loc2_);
               ESP = _loc2_;
               F_idalloc();
               _loc2_ += 16;
            }
            si32(0,_intEnviron);
            si32(0,_environSize);
         }
      }
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
