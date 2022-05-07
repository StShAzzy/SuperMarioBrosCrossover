package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   import sample.libgme.ESP;
   import sample.libgme.F___udivdi3;
   import sample.libgme.F___umoddi3;
   import sample.libgme.__malloc_message;
   import sample.libgme.eax;
   import sample.libgme.edx;
   import sample.libgme.ptr2fun;
   
   public function F_malloc_print_stats() : void
   {
      var _loc4_:* = 0;
      var _loc13_:* = 0;
      var _loc3_:* = 0;
      var _loc8_:* = 0;
      var _loc10_:* = 0;
      var _loc12_:* = 0;
      var _loc11_:* = 0;
      var _loc14_:* = 0;
      var _loc9_:* = 0;
      var _loc7_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 32;
      _loc3_ = li8(_opt_print_stats_2E_b);
      if(_loc3_ == 1)
      {
         _loc3_ = li32(__malloc_message);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str2793,_loc2_ + 4);
         si32(L__2E_str1792,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc3_]();
         _loc2_ += 16;
         _loc3_ = li32(__malloc_message);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(L__2E_str4795,_loc2_ + 4);
         si32(L__2E_str3794,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc3_]();
         _loc2_ += 16;
         _loc14_ = li32(__malloc_message);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         _loc13_ = int(L__2E_str6797);
         if(li8(_opt_abort_2E_b) == 0)
         {
            _loc13_ = int(L__2E_str7798);
         }
         si32(_loc13_,_loc2_ + 4);
         si32(L__2E_str8799,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc14_]();
         _loc2_ += 16;
         _loc13_ = li32(__malloc_message);
         _loc3_ = li8(_opt_dss_2E_b);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str2793,_loc2_ + 4);
         _loc14_ = int(L__2E_str10801);
         if(_loc3_ == 0)
         {
            _loc14_ = int(L__2E_str9800);
         }
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc13_]();
         _loc2_ += 16;
         _loc13_ = li32(__malloc_message);
         _loc3_ = li8(_opt_junk_2E_b);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str2793,_loc2_ + 4);
         _loc14_ = int(L__2E_str11802);
         if(_loc3_ == 0)
         {
            _loc14_ = int(L__2E_str12803);
         }
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc13_]();
         _loc2_ += 16;
         _loc13_ = li32(__malloc_message);
         _loc3_ = li8(_opt_mmap_2E_b);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str2793,_loc2_ + 4);
         _loc14_ = int(L__2E_str14805);
         if(_loc3_ == 0)
         {
            _loc14_ = int(L__2E_str13804);
         }
         si32(_loc14_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc13_]();
         _loc2_ += 16;
         _loc12_ = int(L__2E_str21812);
         _loc3_ = li8(_opt_zero_2E_b);
         if(_loc3_ == 0)
         {
            _loc12_ = int(L__2E_str22813);
         }
         _loc13_ = li32(__malloc_message);
         _loc14_ = li8(_opt_utrace_2E_b);
         _loc11_ = li8(_opt_sysv_2E_b);
         _loc3_ = li8(_opt_xmalloc_2E_b);
         _loc2_ -= 16;
         si32(_loc12_,_loc2_ + 12);
         _loc12_ = int(L__2E_str19810);
         if(_loc3_ == 0)
         {
            _loc12_ = int(L__2E_str20811);
         }
         si32(_loc12_,_loc2_ + 8);
         _loc12_ = int(L__2E_str17808);
         if(_loc11_ == 0)
         {
            _loc12_ = int(L__2E_str18809);
         }
         si32(_loc12_,_loc2_ + 4);
         _loc11_ = int(L__2E_str15806);
         if(_loc14_ == 0)
         {
            _loc11_ = int(L__2E_str16807);
         }
         si32(_loc11_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc13_]();
         _loc2_ += 16;
         _loc10_ = li32(_ncpus);
         _loc9_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc8_ = int((_loc13_ = int(_loc4_ - 21)) + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc1_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc7_;
            _loc12_ = _loc1_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(L__2E_str23814,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc9_]();
         _loc2_ += 16;
         _loc10_ = li32(_narenas);
         _loc9_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc8_ = int(_loc13_ + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc1_ = int(eax);
            _loc7_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc1_;
            _loc12_ = _loc7_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(L__2E_str24815,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc9_]();
         _loc2_ += 16;
         _loc3_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(52,_loc4_ - 2);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         var _loc5_:*;
         si32(_loc5_ = int(_loc13_ + 19),_loc2_ + 4);
         si32(L__2E_str25816,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc3_]();
         _loc2_ += 16;
         var _loc6_:* = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(54,_loc4_ - 2);
         si8(49,_loc4_ - 3);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(int(_loc13_ + 18),_loc2_ + 4);
         si32(L__2E_str26817,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         _loc6_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(52,_loc4_ - 2);
         si8(54,_loc4_ - 3);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(int(_loc13_ + 18),_loc2_ + 4);
         si32(L__2E_str27818,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         _loc6_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(50,_loc4_ - 2);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str29820,_loc2_ + 8);
         si32(_loc5_,_loc2_ + 4);
         si32(L__2E_str28819,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         _loc6_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(56,_loc4_ - 2);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str30821,_loc2_ + 4);
         si32(_loc5_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc6_]();
         _loc2_ += 16;
         _loc5_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         si8(54,_loc4_ - 2);
         si8(49,_loc4_ - 3);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str29820,_loc2_ + 8);
         si32(int(_loc13_ + 18),_loc2_ + 4);
         si32(L__2E_str31822,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc5_]();
         _loc2_ += 16;
         _loc10_ = li32(_qspace_max);
         _loc1_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc8_ = int(_loc13_ + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc9_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc7_;
            _loc12_ = _loc9_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str30821,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         _loc11_ = li32(_cspace_min);
         _loc1_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc12_ = int(_loc13_ + 20);
         _loc14_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc11_,_loc2_);
            si32(_loc14_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc9_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc14_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc12_ - 1);
            _loc10_ = _loc8_ = 1;
            if(uint(_loc11_) <= 9)
            {
               _loc10_ = 0;
            }
            if(_loc14_ == 0)
            {
               _loc8_ = 0;
            }
            if(_loc14_ != 0)
            {
               _loc10_ = _loc8_;
            }
            _loc12_ += -1;
            _loc11_ = _loc7_;
            _loc14_ = _loc9_;
         }
         while(_loc10_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str29820,_loc2_ + 8);
         si32(_loc12_,_loc2_ + 4);
         si32(L__2E_str32823,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         _loc10_ = li32(_cspace_max);
         _loc1_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc8_ = int(_loc13_ + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc9_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc7_;
            _loc12_ = _loc9_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str30821,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         _loc10_ = li32(_sspace_min);
         _loc1_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc8_ = int(_loc13_ + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc9_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc7_;
            _loc12_ = _loc9_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str29820,_loc2_ + 8);
         si32(_loc8_,_loc2_ + 4);
         si32(L__2E_str33824,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         _loc1_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc10_ = 3840;
         if(li8(_sspace_max_2E_b) == 0)
         {
            _loc10_ = 0;
         }
         _loc8_ = int(_loc13_ + 20);
         _loc12_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc10_,_loc2_);
            si32(_loc12_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc7_ = int(eax);
            _loc9_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc12_,_loc2_ + 4);
            si32(_loc10_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc8_ - 1);
            _loc14_ = _loc11_ = 1;
            if(uint(_loc10_) <= 9)
            {
               _loc14_ = 0;
            }
            if(_loc12_ == 0)
            {
               _loc11_ = 0;
            }
            if(_loc12_ != 0)
            {
               _loc14_ = _loc11_;
            }
            _loc8_ += -1;
            _loc10_ = _loc7_;
            _loc12_ = _loc9_;
         }
         while(_loc14_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str30821,_loc2_ + 4);
         si32(_loc8_,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc1_]();
         _loc2_ += 16;
         _loc7_ = li32(_opt_dirty_max);
         _loc12_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc9_ = int(_loc13_ + 20);
         _loc1_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc7_,_loc2_);
            si32(_loc1_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc11_ = int(eax);
            _loc14_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc1_,_loc2_ + 4);
            si32(_loc7_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc9_ - 1);
            _loc10_ = _loc8_ = 1;
            if(uint(_loc7_) <= 9)
            {
               _loc10_ = 0;
            }
            if(_loc1_ == 0)
            {
               _loc8_ = 0;
            }
            if(_loc1_ != 0)
            {
               _loc10_ = _loc8_;
            }
            _loc9_ += -1;
            _loc7_ = _loc11_;
            _loc1_ = _loc14_;
         }
         while(_loc10_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str5796,_loc2_ + 8);
         si32(_loc9_,_loc2_ + 4);
         si32(L__2E_str34825,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc12_]();
         _loc2_ += 16;
         _loc1_ = li32(_chunksize);
         _loc14_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc7_ = int(_loc13_ + 20);
         _loc8_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc1_,_loc2_);
            si32(_loc8_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc11_ = int(eax);
            _loc12_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc8_,_loc2_ + 4);
            si32(_loc1_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc7_ - 1);
            _loc9_ = _loc10_ = 1;
            if(uint(_loc1_) <= 9)
            {
               _loc9_ = 0;
            }
            if(_loc8_ == 0)
            {
               _loc10_ = 0;
            }
            if(_loc8_ != 0)
            {
               _loc9_ = _loc10_;
            }
            _loc7_ += -1;
            _loc1_ = _loc11_;
            _loc8_ = _loc12_;
         }
         while(_loc9_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(_loc7_,_loc2_ + 4);
         si32(L__2E_str35826,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc14_]();
         _loc2_ += 16;
         _loc11_ = li32(_opt_chunk_2pow);
         _loc14_ = li32(__malloc_message);
         si8(0,_loc4_ - 1);
         _loc1_ = int(_loc13_ + 20);
         _loc7_ = 0;
         do
         {
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc11_,_loc2_);
            si32(_loc7_,_loc2_ + 4);
            ESP = _loc2_;
            F___udivdi3();
            _loc2_ += 16;
            _loc13_ = int(eax);
            _loc12_ = int(edx);
            _loc2_ -= 16;
            si32(0,_loc2_ + 12);
            si32(10,_loc2_ + 8);
            si32(_loc7_,_loc2_ + 4);
            si32(_loc11_,_loc2_);
            ESP = _loc2_;
            F___umoddi3();
            _loc2_ += 16;
            _loc3_ = int(eax);
            _loc3_ = int(L__2E_str876 + _loc3_);
            _loc3_ = li8(_loc3_);
            si8(_loc3_,_loc1_ - 1);
            _loc10_ = _loc8_ = 1;
            if(uint(_loc11_) <= 9)
            {
               _loc10_ = 0;
            }
            if(_loc7_ == 0)
            {
               _loc8_ = 0;
            }
            if(_loc7_ != 0)
            {
               _loc10_ = _loc8_;
            }
            _loc1_ += -1;
            _loc11_ = _loc13_;
            _loc7_ = _loc12_;
         }
         while(_loc10_ != 0);
         
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str37828,_loc2_ + 8);
         si32(_loc1_,_loc2_ + 4);
         si32(L__2E_str36827,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc14_]();
         _loc2_ += 16;
         _loc3_ = li32(__malloc_message);
         _loc2_ -= 16;
         si32(L__2E_str2793,_loc2_ + 12);
         si32(L__2E_str2793,_loc2_ + 8);
         si32(L__2E_str2793,_loc2_ + 4);
         si32(L__2E_str38829,_loc2_);
         ESP = _loc2_;
         ptr2fun[_loc3_]();
         _loc2_ += 16;
      }
      _loc2_ = _loc4_;
      ESP = _loc2_;
   }
}
