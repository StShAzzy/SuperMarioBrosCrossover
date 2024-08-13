package com.smbc.projectiles
{
   import com.customClasses.*;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.*;
   import com.smbc.data.Cheats;
   import com.smbc.enemies.*;
   import com.smbc.ground.*;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.main.*;
   import flash.utils.getTimer;
   
   public class Projectile extends AnimatedObject
   {
      
      public static const SOURCE_TYPE_PLAYER:String = "player";
      
      public static const SOURCE_TYPE_ENEMY:String = "enemy";
      
      public static const SOURCE_TYPE_NEUTRAL:String = "neutral";
       
      
      public const HIT_OBJS_DCT:CustomDictionary = new CustomDictionary(true);
      
      protected var C_HIT_DCT:CustomDictionary;
      
      protected var L_HIT_DCT:CustomDictionary;
      
      protected var alwaysAllowHits:Boolean;
      
      internal var newX:Number;
      
      internal var newY:Number;
      
      public var vertPwr:Number;
      
      public var sourceType:String;
      
      public var source:LevObj;
      
      public var needsAccurateGroundHits:Boolean;
      
      public var doesntHitBricks:Boolean;
      
      protected var _damageAmt:int;
      
      public function Projectile(param1:LevObj, param2:String)
      {
         this.C_HIT_DCT = new CustomDictionary(true);
         this.L_HIT_DCT = new CustomDictionary(true);
         super();
         this.source = param1;
         this.sourceType = param2;
         destroyOffScreen = true;
         if(param2 == SOURCE_TYPE_PLAYER)
         {
            hitTestTypesDct.addItem(HT_PROJECTILE_CHARACTER);
            addProperty(new StatusProperty(PR_PIERCE_AGG));
            addHitTestableItem(HT_ENEMY);
            addHitTestableItem(HT_BRICK);
         }
         else if(param2 == SOURCE_TYPE_ENEMY)
         {
            hitTestTypesDct.addItem(HT_PROJECTILE_ENEMY);
            addHitTestableItem(HT_CHARACTER);
            addProperty(new StatusProperty(PR_DAMAGES_PLAYER_AGG));
            addProperty(new StatusProperty(PR_STOP_PAS));
         }
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(!stopHit)
         {
            level.checkCollisions(this);
         }
         if(getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            this.C_HIT_DCT = new CustomDictionary(true);
            this.L_HIT_DCT = new CustomDictionary(true);
         }
      }
      
      override public function updateObj() : void
      {
         var _loc1_:Object = null;
         super.updateObj();
         if(getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            this.L_HIT_DCT.clear();
            if(clearHitsAfterTime)
            {
               for(_loc1_ in this.C_HIT_DCT)
               {
                  if(getTimer() - this.C_HIT_DCT[_loc1_] >= clearHitsAfterTime)
                  {
                     this.C_HIT_DCT.removeItem(_loc1_);
                  }
               }
            }
            for(_loc1_ in this.C_HIT_DCT)
            {
               this.L_HIT_DCT.addItem(_loc1_,this.C_HIT_DCT[_loc1_]);
            }
            this.C_HIT_DCT.clear();
         }
      }
      
      protected function setDir() : void
      {
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(this.needsAccurateGroundHits)
         {
            super.hitGround(param1,param2);
         }
         if(getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            param1.confirmedHitProj(this);
         }
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            param1.confirmedHitProj(this);
         }
      }
      
      override public function hit(param1:LevObj, param2:String) : void
      {
         if(this.hitIsAllowed(param1 as IAttackable))
         {
            super.hit(param1,param2);
         }
      }
      
      override protected function hitIsAllowed(param1:IAttackable) : Boolean
      {
         if(this.alwaysAllowHits)
         {
            return true;
         }
         if(this.L_HIT_DCT[param1])
         {
            if(!clearHitsAfterTime)
            {
               this.C_HIT_DCT.addItem(param1);
            }
            else
            {
               this.C_HIT_DCT.addItem(param1,this.L_HIT_DCT[param1]);
            }
            return false;
         }
         if(this.C_HIT_DCT[param1])
         {
            return false;
         }
         if(!clearHitsAfterTime)
         {
            this.C_HIT_DCT.addItem(param1);
         }
         else
         {
            this.C_HIT_DCT.addItem(param1,getTimer());
         }
         return true;
      }
      
      public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
         this.HIT_OBJS_DCT.addItem(param1);
         if(!param1.isSusceptibleToProperty(getProperty(PR_PIERCE_AGG)) && !Cheats.allWeaponsPierce)
         {
            this.attackObjNonPiercing(param1);
         }
         else
         {
            if(param2)
            {
               attackObjPiercing(param1);
            }
            if(!getProperty(PR_PASSTHROUGH_ALWAYS) && !(param1.health <= 0 && getProperty(PR_PASSTHROUGH_DEFEAT)))
            {
               destroy();
            }
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         if(!getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         level.PLAYER_PROJ_DCT.removeItem(this);
         level.PROJ_DCT.removeItem(this);
      }
      
      override public function checkStgPos() : void
      {
         if(nx > level.locStgLft - TILE_SIZE * 2 && nx < level.locStgRht + TILE_SIZE)
         {
            if(parent != level)
            {
               level.addChild(this);
            }
         }
         else if(parent == level && !updateOffScreen)
         {
            level.removeChild(this);
         }
         if(destroyOffScreen || dosTop || dosBot || dosLft || dosRht)
         {
            this.checkDosSides();
         }
      }
      
      override protected function checkDosSides() : void
      {
         if(dosTop && ny + height * 0.5 < locStgTop)
         {
            destroy();
         }
         else if(dosBot && ny - height * 0.5 > locStgBot)
         {
            destroy();
         }
         else if(dosLft && nx + width * 0.5 < locStgLft)
         {
            destroy();
         }
         else if(dosRht && nx - width * 0.5 > locStgRht)
         {
            destroy();
         }
         else if(destroyOffScreen)
         {
            if(ny + height * 0.5 < locStgTop || ny - height * 0.5 > locStgBot || nx + width * 0.5 < locStgLft || nx - width * 0.5 > locStgRht)
            {
               destroy();
            }
         }
      }
      
      public function get damageAmt() : int
      {
         return this._damageAmt;
      }
   }
}
