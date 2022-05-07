package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.si32;
   import sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2.L__2E_str4133;
   
   public function F__ZN14Effects_Buffer15set_sample_rateEli() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc9_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:int = 0;
      var _loc11_:int = 0;
      var _loc8_:int = 0;
      var _loc7_:int = 0;
      var _loc13_:int = 0;
      var _loc2_:* = int(ESP);
      _loc3_ = li32(_loc4_ = _loc2_);
      var _loc14_:*;
      if((_loc14_ = li32(_loc3_ + 460)) == 0)
      {
         _loc2_ -= 16;
         si32(8192,_loc2_ + 4);
         si32(li32(_loc3_ + 456),_loc2_);
         ESP = _loc2_;
         F_realloc();
         _loc13_ = L__2E_str4133;
         _loc2_ += 16;
         if((_loc12_ = eax) != 0)
         {
            si32(_loc12_,_loc3_ + 456);
            si32(4096,_loc3_ + 460);
            addr86:
            if((_loc14_ = li32(_loc3_ + 452)) == 0)
            {
               _loc2_ -= 16;
               si32(32768,_loc2_ + 4);
               si32(li32(_loc3_ + 448),_loc2_);
               ESP = _loc2_;
               F_realloc();
               _loc13_ = L__2E_str4133;
               _loc2_ += 16;
               if((_loc11_ = eax) != 0)
               {
                  si32(_loc11_,_loc3_ + 448);
                  si32(16384,_loc3_ + 452);
               }
               §§goto(addr313);
            }
            _loc10_ = li32(_loc4_ + 8);
            _loc9_ = li32(_loc4_ + 4);
            _loc8_ = _loc3_ + 20;
            _loc7_ = 0;
            while(true)
            {
               if((_loc14_ = li32(_loc3_ + 440)) <= _loc7_)
               {
                  var _loc1_:* = li32((_loc14_ = li32(_loc3_)) + 44);
                  _loc2_ -= 16;
                  si32(_loc14_ = int(_loc3_ + 368),_loc2_ + 4);
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc1_]();
                  _loc2_ += 16;
                  var _loc5_:* = li32((_loc14_ = li32(_loc3_)) + 28);
                  _loc2_ -= 16;
                  si32(_loc3_,_loc2_);
                  ESP = _loc2_;
                  ptr2fun[_loc5_]();
                  _loc2_ += 16;
                  var _loc6_:*;
                  si32(_loc6_ = li32(_loc3_ + 44),_loc3_ + 8);
                  si32(li32(_loc3_ + 56),_loc3_ + 12);
                  _loc13_ = 0;
                  break;
               }
               _loc2_ -= 16;
               si32(_loc10_,_loc2_ + 8);
               si32(_loc9_,_loc2_ + 4);
               si32(_loc8_,_loc2_);
               ESP = _loc2_;
               F__ZN11Blip_Buffer15set_sample_rateEli();
               _loc2_ += 16;
               if((_loc13_ = eax) != 0)
               {
                  break;
               }
               _loc8_ += 44;
               _loc7_ += 1;
            }
         }
         addr313:
         eax = _loc13_;
         _loc2_ = _loc4_;
         ESP = _loc2_;
         return;
      }
      §§goto(addr86);
   }
}
