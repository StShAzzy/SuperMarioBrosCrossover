package sample.libgme
{
   import avm2.intrinsics.memory.li32;
   import avm2.intrinsics.memory.li8;
   import avm2.intrinsics.memory.si32;
   import avm2.intrinsics.memory.si8;
   
   public function F__ZN6Gb_Apu9write_oscEiii() : void
   {
      var _loc3_:* = 0;
      var _loc7_:* = 0;
      var _loc5_:int = 0;
      var _loc10_:* = 0;
      var _loc9_:* = 0;
      var _loc8_:* = 0;
      var _loc6_:* = 0;
      var _loc1_:* = 0;
      var _loc2_:* = sample.libgme.ESP;
      _loc3_ = _loc2_;
      _loc1_ = li32(_loc3_ + 4);
      _loc10_ = _loc1_ * -5;
      _loc9_ = li32(_loc3_ + 8);
      _loc8_ = _loc10_ + _loc9_;
      _loc7_ = li32(_loc3_);
      _loc6_ = li32(_loc3_ + 12);
      if(_loc1_ <= 1)
      {
         if(_loc1_ != 0)
         {
            _loc5_ = _loc7_ + 112;
            if(_loc1_ != 1)
            {
            }
            §§goto(addr618);
         }
         else
         {
            _loc5_ = _loc7_ + 44;
         }
         if(_loc8_ != 4)
         {
            if(_loc8_ != 2)
            {
               if(_loc8_ == 1)
               {
                  _loc10_ = li32(_loc5_ + 24);
                  si32(_loc10_ = 64 - ((_loc10_ = li8(_loc10_ + 1)) & 0x3F),_loc5_ + 40);
               }
            }
            else if(uint(_loc6_) <= 15)
            {
               si32(0,_loc5_ + 44);
            }
         }
         else
         {
            _loc10_ = _loc6_ & 0x80;
            if(_loc10_ != 0)
            {
               _loc10_ = li32(_loc5_ + 24);
               si32(_loc9_ = (_loc9_ = li8(_loc10_ + 2)) & 7,_loc5_ + 48);
               _loc10_ = li8(_loc10_ + 2);
               si32(_loc10_ = _loc10_ >>> 4,_loc5_ + 36);
               si32(1,_loc5_ + 44);
               _loc10_ = li32(_loc5_ + 40);
               if(_loc10_ == 0)
               {
                  si32(64,_loc5_ + 40);
               }
               if(_loc1_ == 0)
               {
                  _loc1_ = li32(_loc7_ + 68);
                  _loc6_ = li8(_loc1_ + 3);
                  _loc10_ = li8(_loc1_ + 4);
                  si32(_loc10_ = (_loc10_ = (_loc10_ = _loc10_ << 8) & 0x0700) | _loc6_,_loc7_ + 104);
                  _loc8_ = li8(_loc7_ + 328);
                  if((_loc10_ = _loc8_ & 0x70) != 0)
                  {
                     _loc10_ = _loc8_ & 7;
                     if(_loc10_ != 0)
                     {
                        si32(1,_loc7_ + 100);
                        _loc10_ = li8(_loc1_);
                        if((_loc8_ = (_loc10_ = _loc10_ >>> 4) & 7) != 0)
                        {
                           si32(_loc8_,_loc7_ + 100);
                           si8(_loc6_,_loc1_ + 3);
                           _loc10_ = li8(_loc7_ + 105);
                           var _loc4_:*;
                           si8(_loc9_ = _loc10_ & 7 | (_loc4_ = li8((_loc10_ = li32(_loc7_ + 68)) + 4)) & 0xF8,_loc10_ + 4);
                           _loc6_ = li32(_loc7_ + 104);
                           _loc10_ = li32(_loc7_ + 68);
                           _loc1_ = _loc6_ >> ((_loc10_ = li8(_loc10_)) & 7);
                           _loc10_ &= 8;
                           if(_loc10_ &= 8 != 0)
                           {
                              _loc1_ = 0 - _loc1_;
                           }
                           _loc1_ += _loc6_;
                           si32(_loc1_,_loc7_ + 104);
                           if(_loc1_ <= -1)
                           {
                              si32(0,_loc7_ + 104);
                           }
                           else if(_loc1_ >= 2048)
                           {
                              si32(0,_loc7_ + 100);
                              si32(2048,_loc7_ + 104);
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      else if(_loc1_ != 2)
      {
         if(_loc1_ == 3)
         {
            if(_loc8_ != 4)
            {
               if(_loc8_ != 2)
               {
                  if(_loc8_ == 1)
                  {
                     _loc10_ = li32(_loc7_ + 292);
                     si32(_loc10_ = 64 - ((_loc10_ = li8(_loc10_ + 1)) & 0x3F),_loc7_ + 308);
                  }
               }
               else if(uint(_loc6_) <= 15)
               {
                  si32(0,_loc7_ + 312);
               }
            }
            else
            {
               _loc10_ = _loc6_ & 0x80;
               if(_loc10_ != 0)
               {
                  _loc10_ = li32(_loc7_ + 292);
                  si32(_loc9_ = (_loc9_ = li8(_loc10_ + 2)) & 7,_loc7_ + 316);
                  _loc10_ = li8(_loc10_ + 2);
                  si32(_loc10_ = _loc10_ >>> 4,_loc7_ + 304);
                  si32(1,_loc7_ + 312);
                  _loc10_ = li32(_loc7_ + 308);
                  if(_loc10_ == 0)
                  {
                     si32(64,_loc7_ + 308);
                  }
                  si32(32767,_loc7_ + 324);
               }
            }
         }
      }
      else if(_loc8_ <= 1)
      {
         if(_loc8_ != 0)
         {
            if(_loc8_ == 1)
            {
               _loc10_ = li32(_loc7_ + 204);
               si32(_loc10_ = 256 - li8(_loc10_ + 1),_loc7_ + 220);
            }
         }
         else
         {
            _loc10_ = _loc6_ & 0x80;
            if(_loc10_ == 0)
            {
               si32(0,_loc7_ + 224);
            }
         }
      }
      else if(_loc8_ != 2)
      {
         if(_loc8_ == 4)
         {
            _loc10_ = li32(_loc7_ + 204);
            if((_loc10_ = (_loc10_ = _loc6_ & li8(_loc10_)) & 0x80) != 0)
            {
               si32(0,_loc7_ + 232);
               si32(1,_loc7_ + 224);
               _loc10_ = li32(_loc7_ + 220);
               if(_loc10_ == 0)
               {
                  si32(256,_loc7_ + 220);
               }
            }
         }
      }
      else
      {
         _loc10_ = _loc6_ >>> 5;
         si32(_loc10_ = _loc10_ & 3,_loc7_ + 216);
      }
      addr618:
      _loc2_ = _loc3_;
      ESP = _loc2_;
   }
}
