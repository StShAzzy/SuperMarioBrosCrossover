package com.smbc.data
{
   import com.smbc.characters.Character;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Sophia;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.enemies.Enemy;
   import com.smbc.enemies.KoopaGreen;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.ground.Platform;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.level.Level;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import com.smbc.managers.StatManager;
   import com.smbc.pickups.Mushroom;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.Star;
   import com.smbc.projectiles.FireBar;
   import com.smbc.projectiles.MarioFireBall;
   import com.smbc.projectiles.Projectile;
   
   public class HitTester
   {
      
      public static const SIDE_TOP:String = "top";
      
      public static const SIDE_BOTTOM:String = "bottom";
      
      public static const SIDE_LEFT:String = "left";
      
      public static const SIDE_RIGHT:String = "right";
      
      public static const MAX_DIST_DEF:int = 125;
      
      private static const CORNER_ROUNDING_AMOUNT:Number = 9;
       
      
      private var cHit:Boolean;
      
      private var maxDist:int;
      
      private const STOMP_PADDING:int = 15;
      
      private const level:Level = GlobVars.level;
      
      private var attackedEnemy:Boolean;
      
      public function HitTester()
      {
         super();
      }
      
      public function hTest(param1:LevObj, param2:LevObj) : void
      {
         this.cHit = false;
         if(param1 is Ground)
         {
            this.groundHitTest(param2 as AnimatedObject,param1 as Ground);
         }
         else if(param2 is Ground)
         {
            this.groundHitTest(param1 as AnimatedObject,param2 as Ground);
         }
         else if(param1 is Character)
         {
            if(param2 is FireBar)
            {
               this.FireBarHitTest(param1 as Character,param2 as FireBar);
            }
            else
            {
               this.animObjHitTest(param1 as AnimatedObject,param2 as AnimatedObject);
            }
         }
         else if(param2 is Character)
         {
            if(param1 is FireBar)
            {
               this.FireBarHitTest(param2 as Character,param1 as FireBar);
            }
            else
            {
               this.animObjHitTest(param2 as AnimatedObject,param1 as AnimatedObject);
            }
         }
         else
         {
            this.animObjHitTest(param1 as AnimatedObject,param2 as AnimatedObject);
         }
         if(param1 is AnimatedObject && (param1 as AnimatedObject).hRect2 && !(param2 is Ground))
         {
            this.multipleHRectHitTest(param1 as AnimatedObject,param2 as AnimatedObject);
         }
         else if(param2 is AnimatedObject && (param2 as AnimatedObject).hRect2 && !(param1 is Ground))
         {
            this.multipleHRectHitTest(param2 as AnimatedObject,param1 as AnimatedObject);
         }
      }
      
      private function FireBarHitTest(param1:Character, param2:FireBar) : void
      {
         if(param2.bmd2.hitTest(param2.bRect.topLeft,255,param1.hRect.getBounds(this.level),null,255))
         {
            param1.hit(param2,"neutral");
         }
      }
      
      private function multipleHRectHitTest(param1:AnimatedObject, param2:AnimatedObject) : void
      {
         if(param1.hRect2)
         {
            if(param2 is Character)
            {
               if(Character(param2).checkAtkRect && !this.attackedEnemy && param1 is IAttackable && Character(param2).ahTop <= param1.hRect2.hBot && Character(param2).ahBot >= param1.hRect2.hTop && Character(param2).ahLft <= param1.hRect2.hRht && Character(param2).ahRht >= param1.hRect2.hLft)
               {
                  (param2 as Character).landAttack(param1 as IAttackable);
               }
               if(param1 is KoopaGreen)
               {
                  return;
               }
            }
            if(param1.hRect2.hTop <= param2.hBot && param1.hRect2.hBot >= param2.hTop && param1.hRect2.hLft <= param2.hRht && param1.hRect2.hRht >= param2.hLft)
            {
               if(param1 is Enemy && (param1 as Enemy).stompable)
               {
                  this.checkLastHitPoints(param1,true,param2,true,true);
               }
               else
               {
                  param1.hit(param2,"neutral");
                  param2.hit(param1,"neutral");
               }
            }
         }
         if(param2.hRect2)
         {
            if(param1 is Character)
            {
               if(Character(param1).checkAtkRect && !this.attackedEnemy && param2 is IAttackable && Character(param1).ahTop <= param2.hRect2.hBot && Character(param1).ahBot >= param2.hRect2.hTop && Character(param1).ahLft <= param2.hRect2.hRht && Character(param1).ahRht >= param2.hRect2.hLft)
               {
                  (param1 as Character).landAttack(param2 as IAttackable);
               }
               if(param2 is KoopaGreen)
               {
                  return;
               }
            }
            if(param2.hRect2.hTop <= param1.hBot && param2.hRect2.hBot >= param1.hTop && param2.hRect2.hLft <= param1.hRht && param2.hRect2.hRht >= param1.hLft)
            {
               if(param2 is Enemy && (param2 as Enemy).stompable)
               {
                  this.checkLastHitPoints(param2,true,param1,true,true);
               }
               else
               {
                  param2.hit(param1,"neutral");
                  param1.hit(param2,"neutral");
               }
            }
         }
      }
      
      private function animObjHitTest(param1:AnimatedObject, param2:AnimatedObject) : void
      {
         this.attackedEnemy = false;
         if(param1.hTop <= param2.hBot && param1.hBot >= param2.hTop && param1.hLft <= param2.hRht && param1.hRht >= param2.hLft)
         {
            if(param1 is Character && param2 is Enemy && Enemy(param2).stunned)
            {
               this.checkLastHitPoints(param1,true,param2,false);
            }
            else
            {
               this.checkLastHitPoints(param1,true,param2,true);
            }
         }
         if(param1 is Character && Character(param1).checkAtkRect && param2 is IAttackable && Character(param1).ahTop <= param2.hBot && Character(param1).ahBot >= param2.hTop && Character(param1).ahLft <= param2.hRht && Character(param1).ahRht >= param2.hLft)
         {
            (param1 as Character).landAttack(param2 as IAttackable);
            this.attackedEnemy = true;
         }
      }
      
      private function checkNextTile(param1:KoopaGreen, param2:Ground) : void
      {
         var _loc3_:int = 0;
         if(!param2.visible)
         {
            return;
         }
         if(param1.hBot >= param2.hTop && param1.hBot <= param2.hBot)
         {
            _loc3_ = 2;
            if(param1.vx > 0 && param1.nx + _loc3_ >= param2.hLft && param1.nx + _loc3_ <= param2.hRht)
            {
               param1.groundInFront = true;
            }
            else if(param1.vx < 0 && param1.nx - _loc3_ >= param2.hLft && param1.nx - _loc3_ <= param2.hRht)
            {
               param1.groundInFront = true;
            }
         }
      }
      
      private function groundHitTest(param1:AnimatedObject, param2:Ground) : void
      {
         var _loc3_:Character = null;
         var _loc4_:Sophia = null;
         var _loc5_:Platform = null;
         if(param1 is Character)
         {
            _loc3_ = param1 as Character;
            if(_loc3_.checkAtkRect && param2 is Brick && !param2.disabled && _loc3_.ahTop <= param2.hBot && _loc3_.ahBot >= param2.hTop && _loc3_.ahLft <= param2.hRht && _loc3_.ahRht >= param2.hLft)
            {
               _loc3_.landAttack(param2 as IAttackable);
            }
         }
         if(param1.hTop <= param2.hBot && param1.hBot >= param2.hTop && param1.hLft <= param2.hRht && param1.hRht >= param2.hLft)
         {
            if(!(param1 is Projectile) || (param1 as Projectile).needsAccurateGroundHits)
            {
               if(!(param2 is Platform))
               {
                  this.checkLastHitPoints(param1,true,param2,false);
               }
               else
               {
                  if(param1 is Sophia)
                  {
                     _loc4_ = param1 as Sophia;
                     _loc5_ = param2 as Platform;
                  }
                  this.checkLastHitPoints(param1,true,param2,true);
               }
            }
            else
            {
               param1.hit(param2,"neutral");
               param2.hit(param1,"neutral");
            }
         }
         if(param1 is KoopaGreen && KoopaGreen(param1).red && param1.cState == "walk" && param1.vy == 0)
         {
            this.checkNextTile(param1 as KoopaGreen,param2);
         }
      }
      
      private function checkLastHitPoints(param1:LevObj, param2:Boolean, param3:LevObj, param4:Boolean, param5:Boolean = false) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:AnimatedObject = null;
         var _loc16_:Character = null;
         if(param5)
         {
            _loc6_ = (_loc15_ = param1 as AnimatedObject).hRect2.lhTop;
            _loc7_ = _loc15_.hRect2.lhBot;
            _loc8_ = _loc15_.hRect2.lhLft;
            _loc9_ = _loc15_.hRect2.lhRht;
         }
         else if(param2)
         {
            _loc6_ = param1.lhTop;
            _loc7_ = param1.lhBot;
            _loc8_ = param1.lhLft;
            _loc9_ = param1.lhRht;
         }
         else
         {
            _loc6_ = param1.hTop;
            _loc7_ = param1.hBot;
            _loc8_ = param1.hLft;
            _loc9_ = param1.hRht;
         }
         if(param4)
         {
            _loc10_ = param3.lhTop;
            _loc11_ = param3.lhBot;
            _loc12_ = param3.lhLft;
            _loc13_ = param3.lhRht;
         }
         else
         {
            _loc10_ = param3.hTop;
            _loc11_ = param3.hBot;
            _loc12_ = param3.hLft;
            _loc13_ = param3.hRht;
         }
         if(_loc7_ <= _loc10_)
         {
            if(_loc9_ <= _loc12_)
            {
               if(param1 is Character)
               {
                  if(param3 is Ground)
                  {
                     if(!Character(param1).fallBtwn)
                     {
                        this.calcAxis(param1,param3,true,true);
                     }
                     else
                     {
                        param1.hit(param3,"right");
                        param3.hit(param1,"left");
                     }
                  }
                  else if(param3 is Enemy)
                  {
                     param1.hit(param3,"bottom");
                     param3.hit(param1,"top");
                  }
                  else
                  {
                     this.calcAxis(param1,param3,true,true);
                  }
               }
               else if(param1 is AnimatedObject && !(param1 is Projectile) && (!(param1 is KoopaGreen) || param1 is KoopaGreen && KoopaGreen(param1).cState != KoopaGreen(param1).ST_FLY) && param3 is Ground && !(AnimatedObject(param1).onGround || AnimatedObject(param1).lastOnGround))
               {
                  if(param1 is Mushroom && param3.x == 544 && GameSettings.mapPack == MapPack.Smb && StatManager.STAT_MNGR.curFullLevStr == "1-2b")
                  {
                     param1.hit(param3,"right");
                     param3.hit(param1,"left");
                  }
               }
               else
               {
                  this.calcAxis(param1,param3,true,true);
               }
               this.cHit = true;
            }
            else if(_loc8_ >= _loc13_)
            {
               if(param1 is Character)
               {
                  if(param3 is Ground)
                  {
                     if(!Character(param1).fallBtwn)
                     {
                        this.calcAxis(param1,param3,true,false);
                     }
                     else
                     {
                        param1.hit(param3,"left");
                        param3.hit(param1,"right");
                     }
                  }
                  else if(param3 is Enemy)
                  {
                     param1.hit(param3,"bottom");
                     param3.hit(param1,"top");
                  }
                  else
                  {
                     this.calcAxis(param1,param3,true,false);
                  }
               }
               else if(!(param1 is AnimatedObject && !(param1 is Projectile) && (!(param1 is KoopaGreen) || param1 is KoopaGreen && KoopaGreen(param1).cState != KoopaGreen(param1).ST_FLY) && param3 is Ground && !(AnimatedObject(param1).onGround || AnimatedObject(param1).lastOnGround)))
               {
                  this.calcAxis(param1,param3,true,false);
               }
               this.cHit = true;
            }
            else
            {
               param1.hit(param3,"bottom");
               param3.hit(param1,"top");
               this.cHit = true;
            }
         }
         else if(_loc6_ >= _loc11_ && (!(param1 is Character) || param1 is Character && !(param3 is Ground) || param1 is MarioBase || param1 is Character && param3 is Ground && (param1 as Character).lState != Character.ST_CROUCH && (param1 as Character).lState != Samus.ST_BALL && (param1 as Character).lState != MegaManBase.ST_SLIDE))
         {
            if(param1 is Character && param3 is Ground)
            {
               if(_loc9_ <= _loc12_)
               {
                  if(this.level.getGroundAt(param3.x - GlobVars.TILE_SIZE,param3.y) == null)
                  {
                     param1.hit(param3,"right");
                     param3.hit(param1,"left");
                  }
                  else
                  {
                     this.calcAxis(param1,param3,false,true);
                  }
                  this.cHit = true;
               }
               else if(_loc8_ >= _loc13_)
               {
                  if(this.level.getGroundAt(param3.x + GlobVars.TILE_SIZE,param3.y) == null)
                  {
                     param1.hit(param3,"left");
                     param3.hit(param1,"right");
                  }
                  else
                  {
                     this.calcAxis(param1,param3,false,false);
                  }
                  this.cHit = true;
               }
               else
               {
                  _loc16_ = param1 as Character;
                  if(param1.hRht - param3.hLft < CORNER_ROUNDING_AMOUNT && this.level.getGroundAt(param3.x - GlobVars.TILE_SIZE,param3.y) == null && (!(_loc16_ is Sophia) || this.level.getGroundAt(param3.x - GlobVars.TILE_SIZE * 2,param3.y) == null))
                  {
                     param1.hit(param3,"right");
                     param3.hit(param3,"left");
                  }
                  else if(param3.hRht - param1.hLft < CORNER_ROUNDING_AMOUNT && this.level.getGroundAt(param3.x + GlobVars.TILE_SIZE,param3.y) == null && (!(_loc16_ is Sophia) || this.level.getGroundAt(param3.x + GlobVars.TILE_SIZE * 2,param3.y) == null))
                  {
                     param1.hit(param3,"left");
                     param3.hit(param3,"right");
                  }
                  else
                  {
                     param1.hit(param3,"top");
                     param3.hit(param1,"bottom");
                  }
                  this.cHit = true;
               }
            }
            else if(_loc9_ <= _loc12_)
            {
               this.calcAxis(param1,param3,false,true);
               this.cHit = true;
            }
            else if(_loc8_ >= _loc13_)
            {
               this.calcAxis(param1,param3,false,false);
               this.cHit = true;
            }
            else
            {
               param1.hit(param3,"top");
               param3.hit(param1,"bottom");
               this.cHit = true;
            }
         }
         else if(_loc9_ <= _loc12_)
         {
            if(param1 is Character && param3 is Enemy)
            {
               _loc14_ = (param1 as Character).hBot - (param3 as Enemy).hTop;
               if(!(param1 as Character).onGround && _loc14_ >= 0 && _loc14_ <= this.STOMP_PADDING)
               {
                  param1.hit(param3,"bottom");
                  param3.hit(param1,"top");
               }
            }
            else
            {
               param1.hit(param3,"right");
               param3.hit(param1,"left");
            }
            this.cHit = true;
         }
         else if(_loc8_ >= _loc13_)
         {
            if(param1 is Character && param3 is Enemy)
            {
               _loc14_ = (param1 as Character).hBot - (param3 as Enemy).hTop;
               if(!(param1 as Character).onGround && _loc14_ >= 0 && _loc14_ <= this.STOMP_PADDING)
               {
                  param1.hit(param3,"bottom");
                  param3.hit(param1,"top");
               }
            }
            else
            {
               param1.hit(param3,"left");
               param3.hit(param1,"right");
            }
            this.cHit = true;
         }
         else if(param3 is Ground && param3.visible)
         {
            param1.stuckInWall = true;
            if(param1 is Character)
            {
               if(param3 is Platform && (param1 as Character).hTop <= 0)
               {
                  param1.stuckInWall = false;
                  param1.hit(param3,"bottom");
                  param3.hit(param1,"top");
               }
            }
            else if(param1 is Enemy || param1 is Pickup && (param1 is Mushroom || param1 is Star))
            {
               if(param1.hRht >= param3.hLft && param1.hLft <= param3.hLft)
               {
                  param1.yPenAmt = param1.hRht - param3.hLft;
                  param1.shiftHit(param3,"right",param1.yPenAmt);
               }
               else if(param1.hLft <= param3.hRht && param1.hRht >= param3.hRht)
               {
                  param1.yPenAmt = param3.hRht - param1.hLft;
                  param1.shiftHit(param3,"left",param1.yPenAmt);
               }
            }
            else if(param1 is Projectile)
            {
               param1.hit(param3,"neutral");
               param3.hit(param1,"neutral");
            }
         }
         else if(param1 is Enemy && param3 is Enemy)
         {
            if(param1.hRht >= param3.hLft && param1.hLft <= param3.hLft)
            {
               param1.yPenAmt = param1.hRht - param3.hLft;
               param3.yPenAmt = param1.yPenAmt;
               param1.shiftHit(param3,"right",param1.yPenAmt);
               param3.shiftHit(param1,"left",param3.yPenAmt);
            }
            else if(param1.hLft <= param3.hRht && param1.hRht >= param3.hRht)
            {
               param1.yPenAmt = param3.hRht - param1.hLft;
               param3.yPenAmt = param1.yPenAmt;
               param1.shiftHit(param3,"left",param1.yPenAmt);
               param3.shiftHit(param1,"right",param3.yPenAmt);
            }
         }
         if(!(param1 is MarioFireBall && param3 is Ground))
         {
            if(!param1.hitDct[param3])
            {
               param1.hit(param3,"neutral");
            }
            if(!param3.hitDct[param1])
            {
               param3.hit(param1,"neutral");
            }
         }
      }
      
      private function calcAxis(param1:LevObj, param2:LevObj, param3:Boolean, param4:Boolean) : void
      {
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(param3)
         {
            _loc5_ = "bottom";
            _loc6_ = "top";
            param2.xPenAmt = param1.hBot - param2.hTop;
         }
         else
         {
            _loc5_ = "top";
            _loc6_ = "bottom";
            param2.xPenAmt = param2.hBot - param1.hTop;
         }
         if(param4)
         {
            _loc7_ = "right";
            _loc8_ = "left";
            param2.yPenAmt = param1.hRht - param2.hLft;
         }
         else
         {
            _loc7_ = "left";
            _loc8_ = "right";
            param2.yPenAmt = param2.hRht - param1.hLft;
         }
         if(param2 is Ground)
         {
            if(!(param1.vx == 0 && param1.vy == 0))
            {
               if(param1.vx == 0)
               {
                  param1.hit(param2,_loc7_);
                  param2.hit(param1,_loc8_);
               }
               else if(param1 is MarioFireBall && param1.vy <= 0)
               {
                  param1.hit(param2,_loc5_);
               }
               else if(param1.vy == 0)
               {
                  param1.hit(param2,_loc5_);
                  param2.hit(param1,_loc6_);
               }
               else if(this.level.gHitArr.indexOf(param2) == -1)
               {
                  this.level.gHitArr.push(param2);
               }
               else if(param2.xPenAmt <= param2.yPenAmt)
               {
                  param1.hit(param2,_loc5_);
                  param2.hit(param1,_loc6_);
               }
               else
               {
                  param1.hit(param2,_loc7_);
                  param2.hit(param1,_loc8_);
               }
            }
         }
         else if(param2.xPenAmt <= param2.yPenAmt)
         {
            param1.hit(param2,_loc5_);
            param2.hit(param1,_loc6_);
         }
         else
         {
            param1.hit(param2,_loc7_);
            param2.hit(param1,_loc8_);
         }
      }
      
      private function getDistance(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = param1 - param3;
         var _loc6_:Number = param2 - param4;
         return Math.sqrt(_loc5_ * _loc5_ + _loc6_ * _loc6_);
      }
   }
}
