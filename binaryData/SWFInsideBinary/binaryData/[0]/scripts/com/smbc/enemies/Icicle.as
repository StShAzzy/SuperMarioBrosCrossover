package com.smbc.enemies
{
   import com.smbc.data.HealthValue;
   import com.smbc.data.ScoreValue;
   import com.smbc.events.CustomEvents;
   import com.smbc.ground.Brick;
   import com.smbc.ground.Ground;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import flash.events.Event;
   
   public class Icicle extends Enemy
   {
      
      private static const GRAVITY:int = 400;
      
      private static const DETECTION_ZONE_OFFSET:Number = -GlobVars.TILE_SIZE * 3;
       
      
      private var defaultGravity:Number;
      
      private var fallStartX:Number;
      
      private var brickAttachedTo:Brick;
      
      public function Icicle(param1:String)
      {
         super();
         removeAllHitTestableItems();
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
      }
      
      override protected function overwriteInitialStats() : void
      {
         super.overwriteInitialStats();
         _health = HealthValue.ICICLE;
         scoreAttack = ScoreValue.GOOMBA_ATTACK;
         scoreBelow = ScoreValue.GOOMBA_BELOW;
         scoreStar = ScoreValue.GOOMBA_STAR;
         scoreStomp = ScoreValue.GOOMBA_STOMP;
      }
      
      override public function setStats() : void
      {
         super.setStats();
         this.defaultGravity = gravity;
         gravity = GRAVITY;
         defyGrav = true;
         this.fallStartX = nx + DETECTION_ZONE_OFFSET;
         var _loc1_:Ground = level.getGroundAt(Math.round(x - com.smbc.§main:LevObj§.TILE_SIZE / 2),y - com.smbc.§main:LevObj§.TILE_SIZE * 2);
         if(_loc1_ is Brick)
         {
            this.brickAttachedTo = _loc1_ as Brick;
            this.brickAttachedTo.addEventListener(CustomEvents.BRICK_BREAK,this.brickBreakHandler,false,0,true);
            this.brickAttachedTo.addEventListener(CustomEvents.BRICK_BOUNCE,this.brickBounceHandler,false,0,true);
         }
      }
      
      protected function brickBreakHandler(param1:Event) : void
      {
         defyGrav = false;
      }
      
      protected function brickBounceHandler(param1:Event) : void
      {
         defyGrav = false;
      }
      
      override protected function activateBouncyPit() : void
      {
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(defyGrav && this.brickAttachedTo != null)
         {
            this.brickAttachedTo.addEventListener(CustomEvents.BRICK_BREAK,this.brickBreakHandler,false,0,true);
            this.brickAttachedTo.addEventListener(CustomEvents.BRICK_BOUNCE,this.brickBounceHandler,false,0,true);
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.brickAttachedTo != null)
         {
            this.brickAttachedTo.removeEventListener(CustomEvents.BRICK_BREAK,this.brickBreakHandler);
            this.brickAttachedTo.removeEventListener(CustomEvents.BRICK_BOUNCE,this.brickBounceHandler);
         }
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(player.nx > this.fallStartX)
         {
            if(this.brickAttachedTo != null)
            {
               this.brickAttachedTo.removeEventListener(CustomEvents.BRICK_BREAK,this.brickBreakHandler);
               this.brickAttachedTo.removeEventListener(CustomEvents.BRICK_BOUNCE,this.brickBounceHandler);
            }
            defyGrav = false;
         }
      }
      
      override public function die(param1:LevObj = null) : void
      {
         gravity = this.defaultGravity;
         super.die(param1);
      }
   }
}
