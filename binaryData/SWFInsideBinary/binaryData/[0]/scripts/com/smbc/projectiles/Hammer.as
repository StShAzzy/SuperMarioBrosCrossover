package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.data.AnimationTimers;
   import com.smbc.enemies.Bowser;
   import com.smbc.enemies.Enemy;
   
   public class Hammer extends Projectile
   {
      
      public static const TYPE_NORMAL:String = "normal";
      
      public static const TYPE_BOWSER:String = "bowser";
      
      public static const TYPE_BOWSER_FAKE:String = "bowserFake";
       
      
      protected var thrower:Enemy;
      
      protected var type:String;
      
      public function Hammer(param1:String, param2:Enemy)
      {
         this.type = param1;
         this.thrower = param2;
         super(param2,SOURCE_TYPE_ENEMY);
         stopAnim = false;
         mainAnimTmr = AnimationTimers.ANIM_MODERATE_TMR;
         destroyOffScreen = false;
         dosLft = true;
         dosRht = true;
         dosBot = true;
         xSpeed = 120;
         jumpPwr = 200;
         gravity = 500;
         vyMaxPsv = 500;
         addProperty(new StatusProperty(PR_PASSTHROUGH_DEFEAT));
         gotoAndStop(param1 + "Start");
         this.setDir();
      }
      
      override protected function setDir() : void
      {
         if(this.thrower.scaleX > 0)
         {
            vx = xSpeed;
            x = this.thrower.nx + this.thrower.hWidth * 0.75;
            y = this.thrower.ny - this.thrower.height * 1.2;
         }
         else
         {
            vx = -xSpeed;
            scaleX = -1;
            x = this.thrower.nx - this.thrower.hWidth * 0.75;
            y = this.thrower.ny - this.thrower.height * 1.2;
         }
         vy = -jumpPwr;
      }
      
      override public function checkFrame() : void
      {
         if(currentFrameLabel == this.type + "End")
         {
            gotoAndStop(this.type + "Start");
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.thrower is Bowser)
         {
            Bowser(this.thrower).HAMMER_DCT.removeItem(this);
         }
      }
   }
}
