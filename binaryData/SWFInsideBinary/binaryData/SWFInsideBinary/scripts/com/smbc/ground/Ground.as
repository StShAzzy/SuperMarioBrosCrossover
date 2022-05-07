package com.smbc.ground
{
   import com.smbc.characters.Character;
   import com.smbc.enemies.Enemy;
   import com.smbc.level.Level;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.LevObj;
   import com.smbc.pickups.Pickup;
   import com.smbc.projectiles.Projectile;
   import flash.events.Event;
   
   public class Ground extends LevObj
   {
      
      protected static const GROUND_X_MIN:int = 0;
      
      protected static var GROUND_Y_MAX:int;
      
      public static const HT_TOP:String = "top";
      
      public static const HT_BOTTOM:String = "bottom";
      
      public static const HT_LEFT:String = "left";
      
      public static const HT_RIGHT:String = "right";
      
      public static const HT_NEUTRAL:String = "neutral";
       
      
      var ao:AnimatedObject;
      
      public var baseName:String;
      
      public var xPenType:String;
      
      public var yPenType:String;
      
      public var penAmt:Number;
      
      private var calcCol:Boolean;
      
      public var marker:String;
      
      public var disabled:Boolean;
      
      protected var _animated:Boolean;
      
      public var afterGround:Boolean;
      
      public var rowKey:Number;
      
      public var colKey:Number;
      
      public var colKey2:Number;
      
      public var offGrid:Boolean;
      
      public function Ground(param1:String)
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         super();
         if(param1 != null)
         {
            _loc2_ = param1.indexOf(Level.PROP_SEP);
            if(_loc2_ != -1)
            {
               param1 = param1.substring(0,_loc2_);
            }
            _loc3_ = 6;
            if(param1.indexOf("ground") == -1)
            {
               _loc3_ = 0;
            }
            _loc5_ = _loc4_ = param1.length;
            _loc6_ = _loc3_;
            while(_loc6_ < _loc4_)
            {
               if((_loc7_ = param1.charAt(_loc6_)).toLowerCase() != _loc7_ && _loc7_.toUpperCase() == _loc7_)
               {
                  if(_loc6_ != _loc3_)
                  {
                     _loc5_ = _loc6_;
                     break;
                  }
               }
               _loc6_++;
            }
            this.baseName = param1.substring(0,_loc5_);
            gotoAndStop(param1);
            hitTestTypesDct.addItem(HT_GROUND_NON_BRICK);
            addHitTestableItem(HT_CHARACTER);
            addHitTestableItem(HT_ENEMY);
            addHitTestableItem(HT_PROJECTILE_CHARACTER);
            addHitTestableItem(HT_PICKUP);
         }
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.setColPoints();
         GROUND_Y_MAX = Level.GLOB_STG_BOT - TILE_SIZE;
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         level.GROUND_STG_DCT.addItem(this);
         super.addedToStageHandler(param1);
      }
      
      override protected function removedLsr(param1:Event) : void
      {
         level.GROUND_STG_DCT.removeItem(this);
         super.removedLsr(param1);
      }
      
      public function setColPoints() : void
      {
         hTop = this.y;
         hBot = this.y + TILE_SIZE;
         hLft = this.x;
         hRht = this.x + TILE_SIZE;
         hMidX = this.x + TILE_SIZE / 2;
         hMidY = this.y + TILE_SIZE / 2;
      }
      
      public function pen(param1:Number, param2:String) : void
      {
         if(param2 == "groundAbove" || param2 == "groundBelow")
         {
            yPenAmt = param1;
            this.yPenType = param2;
         }
         else if(param2 == "groundOnLeft" || param2 == "groundOnRight")
         {
            xPenAmt = param1;
            this.xPenType = param2;
         }
      }
      
      override public function hit(param1:LevObj, param2:String) : void
      {
         if(param1 is Projectile)
         {
            this.hitProj(param1 as Projectile);
         }
         else if(param2 == "attack")
         {
            this.hitAttack();
         }
         else if(param1 is Character)
         {
            this.hitCharacter(param1 as Character,param2);
         }
         else if(this is Brick && param2 == "top" && (param1 is Enemy || param1 is Pickup))
         {
            this.standingOnGround(param1 as AnimatedObject);
         }
      }
      
      function standingOnGround(param1:AnimatedObject) : void
      {
      }
      
      public function hitAttack() : void
      {
      }
      
      public function hitProj(param1:Projectile) : void
      {
      }
      
      public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      public function updateGround() : void
      {
         dt = level.dt;
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level)
         {
            level.GROUND_DCT.removeItem(this);
            level.GROUND_STG_DCT.removeItem(this);
         }
      }
      
      override public function checkStgPos() : void
      {
         if(x >= level.locStgLft - TILE_SIZE * 3 && x <= level.locStgRht + TILE_SIZE * 2)
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
      }
      
      public function get animated() : Boolean
      {
         return this._animated;
      }
   }
}
