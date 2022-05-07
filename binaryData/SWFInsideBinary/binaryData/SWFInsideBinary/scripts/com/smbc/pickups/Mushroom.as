package com.smbc.pickups
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.*;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PickupInfo;
   import com.smbc.enemies.*;
   import com.smbc.ground.*;
   import com.smbc.main.*;
   
   public class Mushroom extends Pickup
   {
      
      private static const FL_RED_START:String = "redStart";
      
      private static const FL_RED_END:String = "redEnd";
      
      private static const FL_POISON_START:String = "poisonStart";
      
      private static const FL_POISON_END:String = "poisonEnd";
      
      private static const FL_GREEN_START:String = "greenStart";
      
      private static const FL_GREEN_END:String = "greenEnd";
      
      public static const ST_RED:String = "redStart";
      
      public static const ST_POISON:String = "poisonStart";
      
      public static const ST_GREEN:String = "greenStart";
      
      private static const BOUNCE_GRAVITY:int = 1500;
      
      private static const FALL_GRAVITY:int = 5000;
       
      
      private const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOW_TMR;
      
      public var color:String;
      
      private const BOUNCE_AMT:int = 350;
      
      private const FALL_SPEED:int = 340;
      
      private var subType:String;
      
      private var storedUpgrades:CustomDictionary;
      
      private var viewedUpgrades:CustomDictionary;
      
      private var charNumUpgrades:int;
      
      private var tierOnDamage:int;
      
      public function Mushroom(param1:String)
      {
         var _loc2_:int = 0;
         this.subType = param1;
         if(param1 == ST_RED)
         {
            type = PickupInfo.MUSHROOM;
         }
         else if(param1 == ST_POISON)
         {
            type = PickupInfo.POISON_MUSHOOM;
         }
         else if(param1 == ST_GREEN)
         {
            type = PickupInfo.GREEN_MUSHROOM;
         }
         super(type);
         playsRegularSound = true;
         gotoAndStop(param1);
         _boomerangGrabbable = true;
         stopAnim = false;
         xSpeed = DEFAULT_X_SPEED;
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_BRICK);
         addHitTestableItem(HT_PLATFORM);
         if(param1 == ST_RED)
         {
            _loc2_ = STAT_MNGR.curCharNum;
            this.tierOnDamage = STAT_MNGR.storedTierVec[_loc2_];
            STAT_MNGR.storedTierVec[_loc2_] = null;
            this.storedUpgrades = STAT_MNGR.getStoredUpgrades();
            if(this.storedUpgrades)
            {
               this.viewedUpgrades = STAT_MNGR.storedViewedUpgradesVec[_loc2_].clone();
               STAT_MNGR.storedViewedUpgradesVec[_loc2_] = null;
            }
            this.charNumUpgrades = _loc2_;
         }
         else if(param1 == ST_POISON)
         {
            addProperty(new StatusProperty(PR_DAMAGES_PLAYER_AGG));
         }
      }
      
      override public function setStats() : void
      {
         super.setStats();
         gravity = FALL_GRAVITY;
         vyMaxPsv = this.FALL_SPEED;
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(vy < 0)
         {
            gravity = BOUNCE_GRAVITY;
         }
         touchedWall = false;
      }
      
      override protected function exitBrickEnd() : void
      {
         super.exitBrickEnd();
         vx = xSpeed;
         defyGrav = false;
      }
      
      override public function gBounceHit(param1:Ground) : void
      {
         vy = -this.BOUNCE_AMT;
         gravity = BOUNCE_GRAVITY;
         onGround = false;
         lastOnGround = false;
         updateLoc();
         setHitPoints();
         if(nx < param1.hMidX)
         {
            vx = -vx;
         }
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         if(!touchedWall)
         {
            if(param2 == "left")
            {
               if(vx < 0)
               {
                  vx = -vx;
               }
               nx = param1.hRht + hWidth / 2;
               wallOnLeft = true;
            }
            else if(param2 == "right")
            {
               if(vx > 0)
               {
                  vx = -vx;
               }
               wallOnRight = true;
               nx = param1.hLft - hWidth / 2;
            }
            super.groundOnSide(param1,param2);
         }
         touchedWall = true;
      }
      
      override public function groundBelow(param1:Ground) : void
      {
         if(onGround || lastOnGround)
         {
            gravity = FALL_GRAVITY;
         }
         super.groundBelow(param1);
      }
      
      public function transferStoredUpgrades() : void
      {
         if(!this.storedUpgrades)
         {
            return;
         }
         var _loc1_:CustomDictionary = this.storedUpgrades;
         STAT_MNGR.addStoredUpgrades(this.charNumUpgrades,_loc1_,this.tierOnDamage,this.viewedUpgrades);
      }
      
      private function getHalfRandomUpgrades() : CustomDictionary
      {
         var _loc3_:String = null;
         var _loc4_:CustomDictionary = null;
         var _loc5_:String = null;
         var _loc1_:int = Math.ceil(this.storedUpgrades.length / 2);
         var _loc2_:Vector.<String> = new Vector.<String>();
         for each(_loc3_ in this.storedUpgrades)
         {
            _loc2_.push(_loc3_);
         }
         _loc4_ = new CustomDictionary();
         while(_loc4_.length < _loc1_)
         {
            _loc5_ = _loc2_[int(Math.random() * _loc1_)];
            if(_loc4_[_loc5_] == undefined)
            {
               _loc4_.addItem(_loc5_,_loc5_);
            }
         }
         return _loc4_;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentFrameLabel;
         if(type == PickupInfo.MUSHROOM)
         {
            if(_loc1_ == FL_RED_END)
            {
               gotoAndStop(FL_RED_START);
            }
         }
         else if(type == PickupInfo.POISON_MUSHOOM)
         {
            if(_loc1_ == FL_POISON_END)
            {
               gotoAndStop(FL_POISON_START);
            }
         }
         else if(type == PickupInfo.GREEN_MUSHROOM)
         {
            if(_loc1_ == FL_GREEN_END)
            {
               gotoAndStop(FL_GREEN_START);
            }
         }
      }
   }
}
