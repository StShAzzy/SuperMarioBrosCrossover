package com.smbc.ground
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.MathUtils;
   import com.smbc.level.Level;
   import flash.utils.Dictionary;
   
   public class SimpleGround extends Ground
   {
      
      public static const BN_BLOCK:String = "groundBlock";
      
      public static const BN_NORMAL:String = "groundNormal";
      
      public static const BN_PIPE:String = "groundPipe";
      
      public static const BN_CORAL:String = "groundCoral";
      
      private static const BN_WIDE:String = "groundWide";
      
      private static const BN_MUSHROOM:String = "groundMushroom";
      
      private static const BN_GROUND_RAIL:String = "groundRail";
      
      private static const BN_EXCEPTION_DCT_BLOCK:Dictionary = new Dictionary();
      
      private static const BN_EXCEPTION_DCT_NORMAL:Dictionary = new Dictionary();
      
      private static const NONTHEME_DCT:CustomDictionary = new CustomDictionary();
      
      public static const lftStr:String = "Lft";
      
      public static const rhtStr:String = "Rht";
      
      public static const midStr:String = "Mid";
      
      public static const topStr:String = "Top";
      
      public static const botStr:String = "Bot";
      
      public static const sinStr:String = "Sin";
      
      public static const corStr:String = "Cor";
      
      public static const dualStr:String = "Dual";
      
      public static const PIPE_SIDE_BOTTOM:String = "groundPipeEndLeftBottom";
      
      private static const HORIZONTAL_ONLY:CustomDictionary = new CustomDictionary();
      
      private static const VERTICAL_ONLY:CustomDictionary = new CustomDictionary();
      
      {
         BN_EXCEPTION_DCT_NORMAL["box"] = "box";
         BN_EXCEPTION_DCT_BLOCK[BN_NORMAL] = BN_NORMAL;
         HORIZONTAL_ONLY.addItem(BN_MUSHROOM);
         HORIZONTAL_ONLY.addItem(BN_GROUND_RAIL);
         VERTICAL_ONLY.addItem(BN_CORAL);
         NONTHEME_DCT.addItem("groundUnbreakableBrick");
         NONTHEME_DCT.addItem("groundPipeUnderwaterTop");
         NONTHEME_DCT.addItem("groundPipeUnderwaterBottom");
         NONTHEME_DCT.addItem("groundBillBlasterMiddle");
         NONTHEME_DCT.addItem("groundBillBlasterBottom");
         NONTHEME_DCT.addItem("groundPipeIntBottom");
         NONTHEME_DCT.addItem("groundPipeIntTop");
         NONTHEME_DCT.addItem("groundPipeIntRightBottom");
         NONTHEME_DCT.addItem("groundPipeIntRightTop");
         NONTHEME_DCT.addItem("groundPipeMidRightSide");
         NONTHEME_DCT.addItem("groundPipeMidLeftSide");
         NONTHEME_DCT.addItem("groundPipeEndRightTop");
         NONTHEME_DCT.addItem("groundPipeEndRightBottom");
         NONTHEME_DCT.addItem("groundPipeEndLeftTop");
         NONTHEME_DCT.addItem("groundPipeEndLeftBottom");
         NONTHEME_DCT.addItem("groundPipeMidLeft");
         NONTHEME_DCT.addItem("groundPipeMidRight");
         NONTHEME_DCT.addItem("groundPipeTopRight");
         NONTHEME_DCT.addItem("groundPipeTopLeft");
         NONTHEME_DCT.addItem("groundPipeBottomLeft");
         NONTHEME_DCT.addItem("groundPipeBottomRight");
         NONTHEME_DCT.addItem("groundBillBlasterMiddle");
         NONTHEME_DCT.addItem("groundBillBlasterBottom");
      }
      
      private var bnExceptionDct:Dictionary;
      
      public function SimpleGround(param1:String)
      {
         param1 = Level.RemoveProperties(param1);
         if(!NONTHEME_DCT[param1])
         {
            inheritedForceShortClassName = "GroundTheme";
         }
         else
         {
            inheritedForceShortClassName = "Ground";
         }
         super(param1);
         if(baseName != BN_NORMAL && baseName != BN_BLOCK && HORIZONTAL_ONLY[baseName] == undefined && param1 != "groundWideNormal")
         {
            cloneFromMaster([param1]);
         }
         else if(baseName == BN_NORMAL)
         {
            this.bnExceptionDct = BN_EXCEPTION_DCT_NORMAL;
         }
         else if(baseName == BN_BLOCK)
         {
            this.bnExceptionDct = BN_EXCEPTION_DCT_BLOCK;
         }
      }
      
      public function checkNearbyGround() : void
      {
         var _loc9_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc1_:Ground = level.getGroundAt(x - TILE_SIZE,y - TILE_SIZE);
         var _loc2_:Ground = level.getGroundAt(x,y - TILE_SIZE);
         var _loc3_:Ground = level.getGroundAt(x + TILE_SIZE,y - TILE_SIZE);
         var _loc4_:Ground = level.getGroundAt(x - TILE_SIZE,y);
         var _loc5_:Ground = level.getGroundAt(x + TILE_SIZE,y);
         var _loc6_:Ground = level.getGroundAt(x - TILE_SIZE,y + TILE_SIZE);
         var _loc7_:Ground = level.getGroundAt(x,y + TILE_SIZE);
         var _loc8_:Ground = level.getGroundAt(x + TILE_SIZE,y + TILE_SIZE);
         if(_loc2_)
         {
            if((_loc9_ = _loc2_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc2_ = null;
            }
         }
         if(_loc1_)
         {
            if((_loc9_ = _loc1_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc1_ = null;
            }
         }
         if(_loc3_)
         {
            if((_loc9_ = _loc3_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc3_ = null;
            }
         }
         if(_loc4_)
         {
            if((_loc9_ = _loc4_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc4_ = null;
            }
         }
         if(_loc5_)
         {
            if((_loc9_ = _loc5_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc5_ = null;
            }
         }
         if(_loc6_)
         {
            if((_loc9_ = _loc6_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc6_ = null;
            }
         }
         if(_loc8_)
         {
            if((_loc9_ = _loc8_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc8_ = null;
            }
         }
         if(_loc7_)
         {
            if((_loc9_ = _loc7_.baseName) != baseName && !this.baseNameException(_loc9_,this.bnExceptionDct))
            {
               _loc7_ = null;
            }
         }
         if(x == GROUND_X_MIN)
         {
            _loc4_ = new Ground(null);
            _loc1_ = new Ground(null);
            _loc6_ = new Ground(null);
         }
         if(x + TILE_SIZE == level.mapWidth)
         {
            _loc5_ = new Ground(null);
            _loc3_ = new Ground(null);
            _loc8_ = new Ground(null);
         }
         if(y == GROUND_Y_MAX)
         {
            _loc7_ = new Ground(null);
            _loc6_ = new Ground(null);
            _loc8_ = new Ground(null);
         }
         if(HORIZONTAL_ONLY.containsKey(baseName))
         {
            _loc2_ = null;
            _loc1_ = null;
            _loc3_ = null;
            _loc7_ = null;
            _loc6_ = null;
            _loc8_ = null;
         }
         if(VERTICAL_ONLY.containsKey(baseName))
         {
            _loc4_ = null;
            _loc1_ = null;
            _loc6_ = null;
            _loc5_ = null;
            _loc3_ = null;
            _loc8_ = null;
         }
         var _loc10_:String = baseName;
         if(currentLabel == "groundWideNormal")
         {
            this.getWideGround(_loc4_,_loc5_);
         }
         if(baseName == BN_NORMAL || baseName == BN_BLOCK || VERTICAL_ONLY[baseName] != undefined || HORIZONTAL_ONLY[baseName] != undefined)
         {
            if(_loc2_)
            {
               if(_loc7_)
               {
                  _loc10_ += midStr;
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        _loc10_ += midStr;
                        if(!_loc1_ && !_loc3_ && !_loc6_ && !_loc8_)
                        {
                           _loc10_ += corStr;
                        }
                        else if(!_loc1_ && !_loc3_ && _loc6_ && _loc8_)
                        {
                           _loc10_ += corStr + dualStr + topStr;
                        }
                        else if(!_loc1_ && _loc3_ && !_loc6_ && _loc8_)
                        {
                           _loc10_ += corStr + dualStr + lftStr;
                        }
                        else if(_loc1_ && !_loc3_ && _loc6_ && !_loc8_)
                        {
                           _loc10_ += corStr + dualStr + rhtStr;
                        }
                        else if(_loc1_ && _loc3_ && !_loc6_ && !_loc8_)
                        {
                           _loc10_ += corStr + dualStr + botStr;
                        }
                        else if(!_loc1_ && _loc3_ && _loc6_ && _loc8_)
                        {
                           _loc10_ += corStr + topStr + lftStr;
                        }
                        else if(_loc1_ && !_loc3_ && _loc6_ && _loc8_)
                        {
                           _loc10_ += corStr + topStr + rhtStr;
                        }
                        else if(_loc1_ && _loc3_ && !_loc6_ && _loc8_)
                        {
                           _loc10_ += corStr + botStr + lftStr;
                        }
                        else if(_loc1_ && _loc3_ && _loc6_ && !_loc8_)
                        {
                           _loc10_ += corStr + botStr + rhtStr;
                        }
                     }
                     else
                     {
                        _loc10_ += rhtStr;
                        if(!_loc1_ && !_loc6_)
                        {
                           _loc10_ += corStr + dualStr;
                        }
                        else if(!_loc1_ && _loc6_)
                        {
                           _loc10_ += corStr + topStr;
                        }
                        else if(_loc1_ && !_loc6_)
                        {
                           _loc10_ += corStr + botStr;
                        }
                     }
                  }
                  else if(_loc5_)
                  {
                     _loc10_ += lftStr;
                     if(!_loc3_ && !_loc8_)
                     {
                        _loc10_ += corStr + dualStr;
                     }
                     else if(!_loc3_ && _loc8_)
                     {
                        _loc10_ += corStr + topStr;
                     }
                     else if(_loc3_ && !_loc8_)
                     {
                        _loc10_ += corStr + botStr;
                     }
                  }
                  else
                  {
                     _loc10_ += sinStr;
                  }
               }
               else
               {
                  _loc10_ += botStr;
                  if(_loc4_)
                  {
                     if(_loc5_)
                     {
                        _loc10_ += midStr;
                        if(!_loc1_ && !_loc3_)
                        {
                           _loc10_ += corStr + dualStr;
                        }
                        else if(_loc1_ && !_loc3_)
                        {
                           _loc10_ += corStr + rhtStr;
                        }
                        else if(!_loc1_ && _loc3_)
                        {
                           _loc10_ += corStr + lftStr;
                        }
                     }
                     else
                     {
                        _loc10_ += rhtStr;
                        if(!_loc1_)
                        {
                           _loc10_ += corStr;
                        }
                     }
                  }
                  else if(_loc5_)
                  {
                     _loc10_ += lftStr;
                     if(!_loc3_)
                     {
                        _loc10_ += corStr;
                     }
                  }
                  else
                  {
                     _loc10_ += sinStr;
                  }
               }
            }
            else if(_loc7_)
            {
               _loc10_ += topStr;
               if(_loc4_)
               {
                  if(_loc5_)
                  {
                     _loc10_ += midStr;
                     if(!_loc6_ && !_loc8_)
                     {
                        _loc10_ += corStr + dualStr;
                     }
                     else if(_loc6_ && !_loc8_)
                     {
                        _loc10_ += corStr + rhtStr;
                     }
                     else if(!_loc6_ && _loc8_)
                     {
                        _loc10_ += corStr + lftStr;
                     }
                  }
                  else
                  {
                     _loc10_ += rhtStr;
                     if(!_loc6_)
                     {
                        _loc10_ += corStr;
                     }
                  }
               }
               else if(_loc5_)
               {
                  _loc10_ += lftStr;
                  if(!_loc8_)
                  {
                     _loc10_ += corStr;
                  }
               }
               else
               {
                  _loc10_ += sinStr;
               }
            }
            else
            {
               _loc10_ += sinStr;
               if(_loc4_)
               {
                  if(_loc5_)
                  {
                     _loc10_ += midStr;
                  }
                  else
                  {
                     _loc10_ += rhtStr;
                  }
               }
               else if(_loc5_)
               {
                  _loc10_ += lftStr;
               }
               else
               {
                  _loc10_ += sinStr;
               }
            }
            if(_loc10_ == "groundNormalMidMidCorDualTop" && _loc2_.currentLabel == "boxGray")
            {
               _loc10_ = "groundNormalTopMid";
            }
            gotoAndStop(_loc10_);
         }
      }
      
      private function getWideGround(param1:Ground, param2:Ground) : void
      {
         var _loc8_:String = null;
         var _loc3_:Function = MathUtils.isEven;
         var _loc4_:Boolean = _loc3_(x / TILE_SIZE);
         var _loc5_:Boolean = _loc3_(y / TILE_SIZE);
         var _loc6_:String = "Lft";
         var _loc7_:String = "Rht";
         if(_loc4_)
         {
            if(_loc5_)
            {
               _loc8_ = _loc7_;
            }
            else
            {
               _loc8_ = _loc6_;
            }
         }
         else if(_loc5_)
         {
            _loc8_ = _loc6_;
         }
         else
         {
            _loc8_ = _loc7_;
         }
         if(_loc8_ == _loc6_ && !param2 || _loc8_ == _loc7_ && !param1)
         {
            _loc8_ = "Sin";
         }
         gotoAndStop("groundWide" + _loc8_);
      }
      
      private function baseNameException(param1:String, param2:Dictionary) : Boolean
      {
         var _loc3_:String = null;
         if(!param2)
         {
            return false;
         }
         for each(_loc3_ in param2)
         {
            if(_loc3_ == param1)
            {
               return true;
            }
         }
         return false;
      }
   }
}
