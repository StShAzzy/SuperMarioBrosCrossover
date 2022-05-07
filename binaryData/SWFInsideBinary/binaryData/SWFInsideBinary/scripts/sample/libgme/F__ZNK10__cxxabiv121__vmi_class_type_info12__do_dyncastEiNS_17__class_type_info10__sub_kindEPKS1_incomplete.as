package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   
   public function F__ZNK10__cxxabiv121__vmi_class_type_info12__do_dyncastEiNS_17__class_type_info10__sub_kindEPKS1_PKvS4_S6_RNS1_16__dyncast_resultE() : void
   {
      var _loc7_:* = 0;
      var _loc39_:* = 0;
      var _loc13_:* = 0;
      var _loc32_:* = 0;
      var _loc28_:* = 0;
      var _loc34_:* = 0;
      var _loc36_:* = 0;
      var _loc38_:* = 0;
      var _loc16_:* = 0;
      var _loc30_:* = 0;
      var _loc19_:* = 0;
      var _loc8_:* = 0;
      var _loc4_:* = 0;
      var _loc29_:* = 0;
      var _loc33_:* = 0;
      var _loc35_:* = 0;
      var _loc20_:* = 0;
      var _loc31_:* = 0;
      var _loc11_:int = 0;
      var _loc40_:* = 0;
      var _loc22_:int = 0;
      var _loc15_:* = 0;
      var _loc14_:* = 0;
      var _loc12_:int = 0;
      var _loc6_:* = 0;
      var _loc2_:int = 0;
      var _loc5_:* = 0;
      var _loc25_:* = 0;
      var _loc9_:* = 0;
      var _loc1_:* = 0;
      var _loc26_:* = 0;
      var _loc24_:* = 0;
      var _loc37_:* = 0;
      var _loc21_:* = 0;
      var _loc3_:* = int(ESP);
      _loc7_ = _loc3_;
      _loc3_ -= 32;
      _loc40_ = (_loc40_ = li8((_loc16_ = li32(_loc7_ + 28)) + 16)) & 16;
      _loc39_ = li32(_loc7_);
      if(_loc40_ != 0)
      {
         si32(_loc40_ = li32(_loc39_ + 8),_loc16_ + 16);
      }
      _loc38_ = li32(_loc7_ + 24);
      _loc36_ = li32(_loc7_ + 20);
      _loc34_ = li32(_loc7_ + 16);
      _loc32_ = li32(_loc7_ + 8);
      _loc30_ = li32(_loc39_ + 4);
      if(_loc34_ == _loc38_)
      {
         if(_loc30_ != li32(_loc36_ + 4))
         {
            addr150:
            _loc28_ = li32(_loc7_ + 12);
            _loc13_ = li32(_loc7_ + 4);
            _loc40_ = li32(_loc28_ + 4);
            if(_loc30_ != _loc40_)
            {
               _loc24_ = li32(_loc39_ + 12);
               _loc26_ = 0;
               loop0:
               while(true)
               {
                  _loc21_ = _loc26_;
                  if(_loc13_ == -2)
                  {
                     while(true)
                     {
                        if(_loc24_ != 0)
                        {
                           _loc33_ = li32(_loc16_ + 16);
                           si32(0,_loc7_ - 24);
                           si32(0,(_loc40_ = int(_loc7_ - 24)) | 4);
                           si32(0,_loc7_ - 16);
                           si32(0,_loc7_ - 12);
                           si32(_loc33_,_loc7_ - 8);
                           _loc31_ = (_loc35_ = li32((_loc40_ = int(_loc39_ + (_loc24_ << 3))) + 12)) & 1;
                           _loc37_ = _loc35_ >> 8;
                           if(_loc31_ != 0)
                           {
                              _loc37_ = li32(_loc40_ = int((_loc40_ = li32(_loc34_)) + _loc37_));
                           }
                           _loc14_ = _loc31_ | _loc32_;
                           _loc12_ = _loc34_ + _loc37_;
                           if((_loc40_ = _loc35_ & 2) != 0)
                           {
                              _loc24_ += -1;
                           }
                           else
                           {
                              _loc24_ += -1;
                              if((_loc40_ = _loc33_ & 3) == 0)
                              {
                                 continue;
                              }
                              _loc14_ &= -3;
                           }
                           addr342:
                           _loc40_ = _loc24_ << 3;
                           var _loc17_:*;
                           var _loc10_:* = li32((_loc40_ = li32(_loc17_ = li32((_loc40_ = int(_loc39_ + _loc40_)) + 16))) + 28);
                           _loc3_ -= 32;
                           si32(_loc11_ = _loc7_ - 24,_loc3_ + 28);
                           si32(_loc38_,_loc3_ + 24);
                           si32(_loc36_,_loc3_ + 20);
                           si32(_loc12_,_loc3_ + 16);
                           si32(_loc28_,_loc3_ + 12);
                           si32(_loc14_,_loc3_ + 8);
                           si32(_loc13_,_loc3_ + 4);
                           si32(_loc17_,_loc3_);
                           ESP = _loc3_;
                           ptr2fun[_loc10_]();
                           _loc3_ += 32;
                           _loc26_ = int(eax);
                           _loc17_ = li32(_loc16_ + 8);
                           si32(_loc8_ = (_loc40_ = li32(_loc7_ - 16)) | _loc17_,_loc16_ + 8);
                           if((_loc40_ = (_loc9_ = li32(_loc7_ - 12)) | 4) == 6)
                           {
                              si32(_loc40_ = li32(_loc7_ - 24),_loc16_);
                              si32(_loc40_ = li32(_loc40_ = _loc11_ | 4),_loc16_ + 4);
                              si32(_loc9_,_loc16_ + 12);
                              _loc21_ = _loc26_;
                           }
                           else
                           {
                              _loc5_ = li32(_loc16_);
                              if((_loc40_ = _loc21_ & 255) == 0)
                              {
                                 if(_loc5_ == 0)
                                 {
                                    si32(_loc40_ = li32(_loc7_ - 24),_loc16_);
                                    si32(_loc17_ = li32(_loc17_ = _loc11_ | 4),_loc16_ + 4);
                                    if(_loc40_ != 0)
                                    {
                                       if(_loc8_ != 0)
                                       {
                                          _loc21_ = _loc26_;
                                          if(((_loc40_ = li8(_loc39_ + 8)) & 1) != 0)
                                          {
                                          }
                                          §§goto(addr1120);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    addr572:
                                    _loc4_ = li32(_loc7_ - 24);
                                    if(_loc5_ == _loc4_)
                                    {
                                       si32(_loc40_ = (_loc17_ = li32(_loc17_ = _loc11_ | 4)) | li32(_loc16_ + 4),_loc16_ + 4);
                                       _loc26_ = _loc21_;
                                    }
                                    else
                                    {
                                       _loc2_ = 1;
                                       _loc6_ = 0;
                                       if(_loc4_ == 0)
                                       {
                                          addr613:
                                          if((_loc40_ = _loc26_ & _loc2_) == 0)
                                          {
                                             _loc26_ = _loc21_;
                                             if(((_loc40_ = _loc6_ & _loc21_) & 1) != 0)
                                             {
                                             }
                                             addr988:
                                             _loc40_ = li32(_loc16_ + 8);
                                             _loc21_ = _loc26_;
                                             if(_loc40_ != 4)
                                             {
                                                continue loop0;
                                             }
                                             §§goto(addr1120);
                                          }
                                       }
                                       addr633:
                                       _loc1_ = li32(_loc16_ + 12);
                                       if(_loc8_ >= 4)
                                       {
                                          if((_loc40_ = _loc8_ & 1) != 0)
                                          {
                                             if((_loc40_ = (_loc40_ = li8(_loc16_ + 16)) & 2) != 0)
                                             {
                                                addr663:
                                                if(_loc1_ < 1)
                                                {
                                                   if(_loc9_ >= 4)
                                                   {
                                                      _loc1_ = 1;
                                                      if((_loc9_ & 1) != 0)
                                                      {
                                                         _loc1_ = 1;
                                                         if(((_loc40_ = li8(_loc39_ + 8)) & 2) != 0)
                                                         {
                                                         }
                                                         addr792:
                                                         if(_loc9_ <= 0)
                                                         {
                                                            if(_loc1_ >= 4)
                                                            {
                                                               _loc9_ = 1;
                                                               if((_loc1_ & 1) != 0)
                                                               {
                                                                  _loc9_ = 1;
                                                                  if(((_loc40_ = li8(_loc39_ + 8)) & 2) != 0)
                                                                  {
                                                                  }
                                                                  addr905:
                                                                  if((_loc40_ = _loc1_ ^ _loc9_) >= 4)
                                                                  {
                                                                     _loc26_ = _loc21_;
                                                                     if(_loc9_ >= 4)
                                                                     {
                                                                        si32(_loc40_ = li32(_loc7_ - 24),_loc16_);
                                                                        si32(_loc40_ = li32(_loc40_ = _loc11_ | 4),_loc16_ + 4);
                                                                        _loc26_ = 0;
                                                                        _loc1_ = _loc9_;
                                                                     }
                                                                     si32(_loc1_,_loc16_ + 12);
                                                                     _loc40_ = _loc1_ & 3;
                                                                     _loc21_ = 0;
                                                                     if(_loc40_ != 1)
                                                                     {
                                                                        §§goto(addr1120);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr988);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     si32(0,_loc16_);
                                                                     if((_loc40_ = _loc1_ & _loc9_) >= 4)
                                                                     {
                                                                        si32(2,_loc16_ + 12);
                                                                        _loc21_ = 1;
                                                                        §§goto(addr1120);
                                                                     }
                                                                     else
                                                                     {
                                                                        si32(_loc26_ = 1,_loc16_ + 12);
                                                                        §§goto(addr988);
                                                                     }
                                                                  }
                                                                  §§goto(addr988);
                                                               }
                                                               §§goto(addr905);
                                                            }
                                                            _loc29_ = li32(_loc7_ - 24);
                                                            if(_loc13_ >= 0)
                                                            {
                                                               _loc9_ = 6;
                                                               if(int(_loc29_ + _loc13_) != _loc38_)
                                                               {
                                                                  _loc9_ = 1;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               _loc9_ = 1;
                                                               if(_loc13_ != -2)
                                                               {
                                                                  var _loc27_:* = li32((_loc40_ = li32(_loc28_)) + 32);
                                                                  _loc3_ -= 32;
                                                                  si32(_loc38_,_loc3_ + 16);
                                                                  si32(_loc36_,_loc3_ + 12);
                                                                  si32(_loc29_,_loc3_ + 8);
                                                                  si32(_loc13_,_loc3_ + 4);
                                                                  si32(_loc28_,_loc3_);
                                                                  ESP = _loc3_;
                                                                  ptr2fun[_loc27_]();
                                                                  _loc3_ += 32;
                                                                  _loc9_ = int(eax);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr905);
                                                   }
                                                   if(_loc13_ >= 0)
                                                   {
                                                      _loc1_ = 6;
                                                      if(int(_loc5_ + _loc13_) != _loc38_)
                                                      {
                                                         _loc1_ = 1;
                                                      }
                                                   }
                                                   else
                                                   {
                                                      _loc1_ = 1;
                                                      if(_loc13_ != -2)
                                                      {
                                                         var _loc23_:* = li32((_loc40_ = li32(_loc28_)) + 32);
                                                         _loc3_ -= 32;
                                                         si32(_loc38_,_loc3_ + 16);
                                                         si32(_loc36_,_loc3_ + 12);
                                                         si32(_loc5_,_loc3_ + 8);
                                                         si32(_loc13_,_loc3_ + 4);
                                                         si32(_loc28_,_loc3_);
                                                         ESP = _loc3_;
                                                         ptr2fun[_loc23_]();
                                                         _loc3_ += 32;
                                                         _loc1_ = int(eax);
                                                      }
                                                   }
                                                }
                                                §§goto(addr792);
                                             }
                                             else
                                             {
                                                addr668:
                                                _loc25_ = 1;
                                                if(_loc1_ != 0)
                                                {
                                                   _loc25_ = _loc1_;
                                                }
                                                _loc1_ = _loc25_;
                                                if(_loc9_ == 0)
                                                {
                                                   _loc9_ = 1;
                                                   _loc1_ = _loc25_;
                                                }
                                             }
                                             §§goto(addr905);
                                          }
                                          §§goto(addr668);
                                       }
                                       §§goto(addr663);
                                    }
                                 }
                                 §§goto(addr988);
                              }
                              else if(_loc5_ == 0)
                              {
                                 _loc6_ = 1;
                                 _loc2_ = 0;
                                 if((_loc40_ = li32(_loc7_ - 24)) == _loc2_)
                                 {
                                    _loc6_ = _loc2_;
                                 }
                                 _loc5_ = _loc2_;
                                 §§goto(addr613);
                              }
                              else
                              {
                                 §§goto(addr572);
                              }
                              §§goto(addr572);
                           }
                        }
                     }
                  }
                  else if(_loc24_ != 0)
                  {
                     si32(0,_loc7_ - 24);
                     var _loc18_:int;
                     si32(0,(_loc18_ = _loc7_ - 24) | 4);
                     si32(0,_loc7_ - 16);
                     si32(0,_loc7_ - 12);
                     si32(li32(_loc16_ + 16),_loc7_ - 8);
                     _loc20_ = (_loc19_ = li32((_loc40_ = int(_loc39_ + (_loc24_ << 1 << 2))) + 12)) & 1;
                     _loc15_ = _loc19_ >> 8;
                     if(_loc20_ != 0)
                     {
                        _loc15_ = li32(_loc40_ = int((_loc40_ = li32(_loc34_)) + _loc15_));
                     }
                     _loc24_ += -1;
                     _loc14_ = _loc20_ | _loc32_;
                     _loc12_ = _loc34_ + _loc15_;
                     if((_loc40_ = _loc19_ & 2) == 0)
                     {
                        §§goto(addr330);
                     }
                     §§goto(addr342);
                  }
               }
            }
            else
            {
               si32(_loc34_,_loc16_);
               si32(_loc32_,_loc16_ + 4);
               if(_loc13_ >= 0)
               {
                  _loc22_ = 6;
                  if(int(_loc34_ + _loc13_) != _loc38_)
                  {
                     _loc22_ = 1;
                  }
                  si32(_loc22_,_loc16_ + 12);
                  _loc21_ = 0;
               }
               else
               {
                  _loc21_ = 0;
                  if(_loc13_ == -2)
                  {
                     si32(1,_loc16_ + 12);
                     _loc21_ = 0;
                  }
               }
            }
         }
         else
         {
            si32(_loc32_,_loc16_ + 8);
            _loc21_ = 0;
         }
         addr1120:
         eax = _loc40_ = _loc21_ & 255;
         _loc3_ = _loc7_;
         ESP = _loc3_;
         return;
      }
      §§goto(addr150);
   }
}
