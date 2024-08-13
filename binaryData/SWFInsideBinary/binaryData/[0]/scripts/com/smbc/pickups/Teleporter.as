package com.smbc.pickups
{
   import com.customClasses.*;
   import com.smbc.characters.*;
   import com.smbc.data.PickupInfo;
   import com.smbc.ground.*;
   
   public class Teleporter extends Pickup
   {
       
      
      protected var teleNum:int;
      
      protected var teleDest:Teleporter;
      
      protected var teleStart:Teleporter;
      
      protected var teleEndDist:Number;
      
      protected var checkPtVec:Vector.<Array>;
      
      protected var teleType:String;
      
      protected var numCheckPts:int;
      
      protected var active:Boolean;
      
      protected var oneCP:Boolean;
      
      private var hRectHeight:Number;
      
      private var hRectOriginalY:Number;
      
      public function Teleporter(param1:String, param2:int, param3:Number, param4:Number, param5:Number)
      {
         super(PickupInfo.TELEPORTER);
         this.teleType = param1;
         if(this.teleType == "startOne")
         {
            this.oneCP = true;
            this.teleType = "start";
         }
         if(this.teleType != "end")
         {
            hitDistOver = GLOB_STG_BOT / 2;
         }
         this.teleNum = param2;
         this.x = param3;
         this.y = param4;
         this.hRectHeight = param5;
         defyGrav = true;
         stopAnim = true;
         level.addToLevelNow(this);
      }
      
      private function updateHRect() : void
      {
         hRect.height = this.hRectHeight;
         hRect.y = this.hRectOriginalY - (this.hRectHeight - TILE_SIZE);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.hRectOriginalY = hRect.y;
         this.updateHRect();
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         super.gotoAndStop(param1,param2);
         if(!isNaN(this.hRectOriginalY))
         {
            this.updateHRect();
         }
      }
      
      public function getRelationships() : void
      {
         if(this.teleType == "start")
         {
            level.teleVec.forEach(function getFriends(param1:Teleporter, param2:int, param3:Vector.<Teleporter>):void
            {
               if(param1.teleType == "end" && param1.teleNum == teleNum)
               {
                  teleDest = param1;
               }
               else if(param1.teleType == "checkPoint" && param1.teleNum == teleNum)
               {
                  if(checkPtVec)
                  {
                     checkPtVec.push([param1.x,false]);
                  }
                  else
                  {
                     checkPtVec = new Vector.<Array>();
                     checkPtVec.push([param1.x,false]);
                  }
                  param1.teleStart = this;
               }
            },this);
            if(this.checkPtVec)
            {
               this.numCheckPts = this.checkPtVec.length;
               if(level.checkPtClonesVec)
               {
                  level.checkPtClonesVec.forEach(function updateClones(param1:Teleporter, param2:int, param3:Vector.<Teleporter>):void
                  {
                     var _loc4_:int = 0;
                     while(_loc4_ < numCheckPts)
                     {
                        if(param1.teleNum == teleNum && param1.x == checkPtVec[_loc4_][0])
                        {
                           param1.teleStart = this;
                        }
                        _loc4_++;
                     }
                  },this);
               }
            }
            else
            {
               this.active = true;
            }
            this.teleEndDist = this.teleDest.x - this.x;
         }
      }
      
      public function hitCheckPt(param1:Number) : void
      {
         var _loc2_:int = 0;
         while(_loc2_ < this.numCheckPts)
         {
            if(param1 == this.checkPtVec[_loc2_][0])
            {
               this.checkPtVec[_loc2_][1] = true;
            }
            _loc2_++;
         }
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         var _loc3_:int = 0;
         if(this.teleType == "checkPoint")
         {
            this.teleStart.hitCheckPt(this.x);
         }
         else if(this.teleType == "start")
         {
            if(this.active)
            {
               player.teleport(this.teleEndDist);
               level.resetTeleporters();
            }
            else
            {
               if(this.oneCP)
               {
                  _loc3_ = 0;
                  while(_loc3_ < this.numCheckPts)
                  {
                     if(this.checkPtVec[_loc3_][1])
                     {
                        this.active = true;
                     }
                     _loc3_++;
                  }
               }
               else
               {
                  this.active = true;
                  _loc3_ = 0;
                  while(_loc3_ < this.numCheckPts)
                  {
                     if(!this.checkPtVec[_loc3_][1])
                     {
                        this.active = false;
                     }
                     _loc3_++;
                  }
               }
               if(this.active)
               {
                  player.teleport(this.teleEndDist);
                  this.active = false;
                  level.resetTeleporters();
               }
            }
         }
      }
      
      override public function touchPlayer(param1:Character) : void
      {
      }
      
      public function resetCheckPoints() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this.numCheckPts)
         {
            this.checkPtVec[_loc1_][1] = false;
            _loc1_++;
         }
      }
   }
}
