package sample.libgme_2F_var_2F_folders_2F_9m_2F_bnph4mbj1gq2gp7ccy_vg60h0000gn_2F_T_2F__2F_ccY8M7iW_2E_lto_2E_bc_3A_4CB129AA_2D_159F_2D_42A5_2D_8B7B_2D_F551332DADE2
{
   import avm2.intrinsics.memory.*;
   import sample.libgme.*;
   
   public function F_chunk_alloc() : void
   {
      var _loc4_:* = 0;
      var _loc3_:* = 0;
      var _loc7_:int = 0;
      var _loc5_:* = 0;
      var _loc1_:int = 0;
      var _loc6_:* = 0;
      var _loc11_:* = 0;
      var _loc8_:* = 0;
      var _loc12_:* = 0;
      var _loc2_:* = int(ESP);
      _loc4_ = _loc2_;
      _loc2_ -= 64;
      _loc3_ = li32(_loc4_);
      var _loc13_:*;
      if((_loc13_ = li8(_opt_mmap_2E_b)) == 0)
      {
         _loc2_ -= 16;
         si32(_loc3_,_loc2_ + 4);
         si32(0,_loc2_);
         ESP = _loc2_;
         F_pages_map();
         _loc2_ += 16;
         if((_loc12_ = int(eax)) != 0)
         {
            if((_loc11_ = (_loc13_ = li32(_chunksize_mask)) & _loc12_) != 0)
            {
               _loc2_ -= 16;
               si32(int((_loc13_ = li32(_chunksize)) - _loc11_),_loc2_ + 4);
               si32(_loc13_ = int(_loc12_ + _loc3_),_loc2_);
               ESP = _loc2_;
               F_pages_map();
               _loc2_ += 16;
               if((_loc13_ = int(eax)) == 0)
               {
                  _loc2_ -= 16;
                  si32(_loc3_,_loc2_ + 4);
                  si32(_loc12_,_loc2_);
                  ESP = _loc2_;
                  F_munmap();
                  _loc2_ += 16;
                  if((_loc13_ = int(eax)) == -1)
                  {
                     ESP = _loc2_;
                     F___error();
                     _loc2_ -= 16;
                     si32(64,_loc2_ + 8);
                     si32(_loc13_ = int(_loc4_ - 64),_loc2_ + 4);
                     si32(li32(_loc13_ = int(eax)),_loc2_);
                     ESP = _loc2_;
                     F_strerror_r();
                     _loc2_ += 16;
                     var _loc9_:* = li32(__malloc_message);
                     _loc2_ -= 16;
                     si32(L__2E_str5796,_loc2_ + 12);
                     si32(_loc13_,_loc2_ + 8);
                     si32(L__2E_str39830,_loc2_ + 4);
                     si32(li32(___progname),_loc2_);
                     ESP = _loc2_;
                     ptr2fun[_loc9_]();
                     _loc2_ += 16;
                     if((_loc13_ = li8(_opt_abort_2E_b)) == 1)
                     {
                        ESP = _loc2_;
                        F_abort();
                     }
                  }
                  if((uint(_loc11_ = int((_loc13_ = li32(_chunksize)) + _loc3_))) > uint(_loc3_))
                  {
                     _loc2_ -= 16;
                     si32(_loc11_,_loc2_ + 4);
                     si32(0,_loc2_);
                     ESP = _loc2_;
                     F_pages_map();
                     _loc2_ += 16;
                     if((_loc12_ = int(eax)) != 0)
                     {
                        if((_loc11_ = (_loc13_ = li32(_chunksize_mask)) & _loc12_) != 0)
                        {
                           _loc2_ -= 16;
                           si32(int((_loc13_ = li32(_chunksize)) - _loc11_),_loc2_ + 4);
                           si32(_loc12_,_loc2_);
                           ESP = _loc2_;
                           F_munmap();
                           _loc2_ += 16;
                           if((_loc13_ = int(eax)) == -1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(64,_loc2_ + 8);
                              si32(_loc13_ = int(_loc4_ - 64),_loc2_ + 4);
                              si32(li32(_loc13_ = int(eax)),_loc2_);
                              ESP = _loc2_;
                              F_strerror_r();
                              _loc2_ += 16;
                              _loc9_ = li32(__malloc_message);
                              _loc2_ -= 16;
                              si32(L__2E_str5796,_loc2_ + 12);
                              si32(_loc13_,_loc2_ + 8);
                              si32(L__2E_str39830,_loc2_ + 4);
                              si32(li32(___progname),_loc2_);
                              ESP = _loc2_;
                              ptr2fun[_loc9_]();
                              _loc2_ += 16;
                              if((_loc13_ = li8(_opt_abort_2E_b)) == 1)
                              {
                                 ESP = _loc2_;
                                 F_abort();
                              }
                           }
                           _loc13_ = li32(_chunksize);
                           _loc2_ -= 16;
                           si32(_loc11_,_loc2_ + 4);
                           si32(_loc13_ = int((_loc12_ = int((_loc13_ -= _loc11_) + _loc12_)) + _loc3_),_loc2_);
                           ESP = _loc2_;
                           F_munmap();
                           _loc2_ += 16;
                           if((_loc13_ = int(eax)) == -1)
                           {
                              ESP = _loc2_;
                              F___error();
                              _loc2_ -= 16;
                              si32(64,_loc2_ + 8);
                              si32(_loc13_ = int(_loc4_ - 64),_loc2_ + 4);
                              si32(li32(_loc13_ = int(eax)),_loc2_);
                              ESP = _loc2_;
                              F_strerror_r();
                              _loc2_ += 16;
                              var _loc10_:* = li32(__malloc_message);
                              _loc2_ -= 16;
                              si32(L__2E_str5796,_loc2_ + 12);
                              si32(_loc13_,_loc2_ + 8);
                              si32(L__2E_str39830,_loc2_ + 4);
                              si32(li32(___progname),_loc2_);
                              ESP = _loc2_;
                              ptr2fun[_loc10_]();
                              _loc2_ += 16;
                              if((_loc13_ = li8(_opt_abort_2E_b)) == 1)
                              {
                                 ESP = _loc2_;
                                 F_abort();
                                 addr607:
                                 _loc13_ = li32(_chunksize);
                                 _loc2_ -= 16;
                                 si32(_loc13_,_loc2_ + 4);
                                 si32(_loc13_ = int(_loc12_ + _loc3_),_loc2_);
                                 ESP = _loc2_;
                                 F_munmap();
                                 _loc2_ += 16;
                                 if((_loc13_ = int(eax)) == -1)
                                 {
                                    ESP = _loc2_;
                                    F___error();
                                    _loc2_ -= 16;
                                    si32(64,_loc2_ + 8);
                                    si32(_loc13_ = int(_loc4_ - 64),_loc2_ + 4);
                                    si32(li32(_loc13_ = int(eax)),_loc2_);
                                    ESP = _loc2_;
                                    F_strerror_r();
                                    _loc2_ += 16;
                                    _loc10_ = li32(__malloc_message);
                                    _loc2_ -= 16;
                                    si32(L__2E_str5796,_loc2_ + 12);
                                    si32(_loc13_,_loc2_ + 8);
                                    si32(L__2E_str39830,_loc2_ + 4);
                                    si32(li32(___progname),_loc2_);
                                    ESP = _loc2_;
                                    ptr2fun[_loc10_]();
                                    _loc2_ += 16;
                                    if((_loc13_ = li8(_opt_abort_2E_b)) == 1)
                                    {
                                       ESP = _loc2_;
                                       F_abort();
                                       addr749:
                                       _loc13_ = int((_loc13_ = li32(_chunksize)) - _loc11_);
                                       _loc2_ -= 16;
                                       si32(_loc13_,_loc2_ + 4);
                                       si32(_loc12_,_loc2_);
                                       ESP = _loc2_;
                                       F_munmap();
                                       _loc2_ += 16;
                                       if((_loc13_ = int(eax)) == -1)
                                       {
                                          ESP = _loc2_;
                                          F___error();
                                          _loc2_ -= 16;
                                          si32(64,_loc2_ + 8);
                                          si32(_loc13_ = int(_loc4_ - 64),_loc2_ + 4);
                                          si32(li32(_loc13_ = int(eax)),_loc2_);
                                          ESP = _loc2_;
                                          F_strerror_r();
                                          _loc2_ += 16;
                                          _loc10_ = li32(__malloc_message);
                                          _loc2_ -= 16;
                                          si32(L__2E_str5796,_loc2_ + 12);
                                          si32(_loc13_,_loc2_ + 8);
                                          si32(L__2E_str39830,_loc2_ + 4);
                                          si32(li32(___progname),_loc2_);
                                          ESP = _loc2_;
                                          ptr2fun[_loc10_]();
                                          _loc2_ += 16;
                                          if((_loc13_ = li8(_opt_abort_2E_b)) == 1)
                                          {
                                             ESP = _loc2_;
                                             F_abort();
                                          }
                                       }
                                       _loc10_ = int(_loc12_ - _loc11_);
                                       _loc13_ = li32(_chunksize);
                                       _loc12_ = int(_loc10_ + _loc13_);
                                    }
                                 }
                              }
                           }
                           if(_loc12_ == 0)
                           {
                              addr909:
                              if((_loc13_ = li8(_opt_dss_2E_b)) == 0)
                              {
                                 _loc11_ = li32(_loc4_ + 4);
                                 _loc12_ = 0;
                                 _loc8_ = int(_dss_chunks_szad);
                                 if(li32(___isthreaded) != 0)
                                 {
                                    _loc2_ -= 16;
                                    si32(_dss_mtx,_loc2_);
                                    ESP = _loc2_;
                                    F__spinlock();
                                    _loc2_ += 16;
                                    _loc8_ = int(_dss_chunks_szad);
                                    _loc12_ = 0;
                                 }
                                 loop0:
                                 while(true)
                                 {
                                    _loc8_ = li32(_loc8_);
                                    _loc7_ = _dss_chunks_szad + 4;
                                    while(true)
                                    {
                                       _loc6_ = _loc12_;
                                       if(_loc8_ == _loc7_)
                                       {
                                          break;
                                       }
                                       _loc6_ = li32(_loc8_ + 20);
                                       _loc1_ = 1;
                                       _loc5_ = _loc1_;
                                       if(uint(_loc6_) <= uint(_loc3_))
                                       {
                                          _loc5_ = 0;
                                       }
                                       if(uint(_loc6_) >= uint(_loc3_))
                                       {
                                          _loc1_ = 0;
                                       }
                                       _loc13_ = _loc5_ & 1;
                                       _loc1_ = (_loc10_ = _loc1_ & 1) - _loc13_;
                                       if(_loc6_ == _loc3_)
                                       {
                                          _loc1_ = -1;
                                          if(li32(_loc8_ + 16) == 0)
                                          {
                                             _loc1_ = 0;
                                          }
                                       }
                                       if(_loc1_ <= -1)
                                       {
                                          continue loop0;
                                       }
                                       _loc6_ = _loc8_;
                                       if(_loc1_ < 1)
                                       {
                                          break;
                                       }
                                       _loc8_ = (_loc13_ = li32(_loc8_ + 4)) & -2;
                                    }
                                    if(_loc6_ != 0)
                                    {
                                       _loc12_ = li32(_loc6_ + 16);
                                       _loc2_ -= 16;
                                       si32(_loc6_,_loc2_);
                                       ESP = _loc2_;
                                       F_extent_tree_szad_remove();
                                       _loc2_ += 16;
                                       if((_loc8_ = li32(_loc6_ + 20)) == _loc3_)
                                       {
                                          _loc2_ -= 16;
                                          si32(_loc6_,_loc2_ + 4);
                                          si32(_dss_chunks_ad,_loc2_);
                                          ESP = _loc2_;
                                          F_extent_tree_ad_remove();
                                          _loc2_ += 16;
                                          if((_loc13_ = li32(___isthreaded)) != 0)
                                          {
                                             _loc2_ -= 16;
                                             si32(_base_mtx,_loc2_);
                                             ESP = _loc2_;
                                             F__spinlock();
                                             _loc2_ += 16;
                                          }
                                          si32(_loc13_ = li32(_base_nodes),_loc6_);
                                          si32(_loc6_,_base_nodes);
                                          if((_loc13_ = li32(___isthreaded)) != 0)
                                          {
                                             _loc2_ -= 16;
                                             si32(_base_mtx,_loc2_);
                                             ESP = _loc2_;
                                             F__spinunlock();
                                             _loc2_ += 16;
                                             addr1226:
                                             if((_loc13_ = li32(___isthreaded)) != 0)
                                             {
                                                _loc2_ -= 16;
                                                si32(_dss_mtx,_loc2_);
                                                ESP = _loc2_;
                                                F__spinunlock();
                                                _loc2_ += 16;
                                             }
                                          }
                                          if(_loc11_ != 0)
                                          {
                                             _loc2_ -= 16;
                                             si32(_loc3_,_loc2_ + 8);
                                             si32(0,_loc2_ + 4);
                                             si32(_loc12_,_loc2_);
                                             ESP = _loc2_;
                                             Fmemset();
                                             _loc2_ += 16;
                                          }
                                          if(_loc12_ == 0)
                                          {
                                             addr1324:
                                             if(_loc3_ >= 0)
                                             {
                                                if((_loc13_ = li32(___isthreaded)) != 0)
                                                {
                                                   _loc2_ -= 16;
                                                   si32(_dss_mtx,_loc2_);
                                                   ESP = _loc2_;
                                                   F__spinlock();
                                                   _loc2_ += 16;
                                                }
                                                if((_loc13_ = li32(_dss_prev)) != -1)
                                                {
                                                   while(true)
                                                   {
                                                      if((_loc12_ = int(ram.length)) == -1)
                                                      {
                                                         ESP = _loc2_;
                                                         F___error();
                                                         si32(12,int(eax));
                                                      }
                                                      si32(_loc12_,_dss_max);
                                                      _loc13_ = (_loc13_ = li32(_chunksize_mask)) & _loc12_;
                                                      _loc11_ = int(_loc3_ - _loc13_);
                                                      if(_loc13_ != 0)
                                                      {
                                                         _loc12_ = int(_loc11_ + _loc12_);
                                                         _loc11_ += _loc3_;
                                                      }
                                                      if(_loc11_ == 0)
                                                      {
                                                         _loc8_ = int(ram.length);
                                                      }
                                                      else
                                                      {
                                                         _loc8_ = int(sbrk((_loc13_ = int(_loc11_ + 4095)) & -4096,4096));
                                                      }
                                                      if(_loc8_ == -1)
                                                      {
                                                         ESP = _loc2_;
                                                         F___error();
                                                         si32(12,int(eax));
                                                      }
                                                      si32(_loc8_,_dss_prev);
                                                      _loc13_ = li32(_dss_max);
                                                      if(_loc8_ == _loc13_)
                                                      {
                                                         si32(_loc13_ = int(_loc8_ + _loc11_),_dss_max);
                                                         if((_loc13_ = li32(___isthreaded)) != 0)
                                                         {
                                                            _loc2_ -= 16;
                                                            si32(_dss_mtx,_loc2_);
                                                            ESP = _loc2_;
                                                            F__spinunlock();
                                                            _loc2_ += 16;
                                                         }
                                                         if(_loc12_ == 0)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr1548);
                                                      }
                                                      if(_loc8_ != -1)
                                                      {
                                                         continue;
                                                      }
                                                   }
                                                   §§goto(addr1545);
                                                }
                                                if((_loc13_ = li32(___isthreaded)) != 0)
                                                {
                                                   _loc2_ -= 16;
                                                   si32(_dss_mtx,_loc2_);
                                                   ESP = _loc2_;
                                                   F__spinunlock();
                                                   _loc2_ += 16;
                                                }
                                                §§goto(addr1545);
                                             }
                                             addr1545:
                                             _loc12_ = 0;
                                          }
                                          §§goto(addr1548);
                                       }
                                       else
                                       {
                                          si32(_loc13_ = int((_loc13_ = li32(_loc6_ + 16)) + _loc3_),_loc6_ + 16);
                                          si32(_loc13_ = int(_loc8_ - _loc3_),_loc6_ + 20);
                                          _loc2_ -= 16;
                                          si32(_loc6_,_loc2_);
                                          ESP = _loc2_;
                                          F_extent_tree_szad_insert();
                                          _loc2_ += 16;
                                       }
                                       §§goto(addr1226);
                                    }
                                    else if((_loc13_ = li32(___isthreaded)) != 0)
                                    {
                                       _loc2_ -= 16;
                                       si32(_dss_mtx,_loc2_);
                                       ESP = _loc2_;
                                       F__spinunlock();
                                       _loc2_ += 16;
                                    }
                                    §§goto(addr1324);
                                 }
                              }
                              §§goto(addr1545);
                           }
                           §§goto(addr1548);
                        }
                        §§goto(addr607);
                     }
                  }
                  §§goto(addr909);
               }
               §§goto(addr749);
            }
            addr1548:
            eax = _loc12_;
            _loc2_ = _loc4_;
            ESP = _loc2_;
            return;
         }
      }
      §§goto(addr909);
   }
}
