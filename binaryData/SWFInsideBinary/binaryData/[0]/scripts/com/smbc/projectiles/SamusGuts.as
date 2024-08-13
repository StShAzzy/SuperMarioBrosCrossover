package com.smbc.projectiles
{
   import com.smbc.characters.Samus;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.LevObj;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol197")]
   public class SamusGuts extends Projectile
   {
       
      
      private const Y_OFFSET_TOP:int = 48;
      
      private const Y_OFFSET_MID:int = 30;
      
      private const Y_OFFSET_BOT:int = 12;
      
      private const X_OFFSET:int = 10;
      
      private const GRAVITY_TOP:int = 500;
      
      private const GRAVITY_MID:int = 350;
      
      private const GRAVITY_BOT:int = 150;
      
      private const X_SPEED_SAMUS:int = 150;
      
      private const X_SPEED_ENEMY:int = 300;
      
      private const Y_SPEED_TOP:int = 200;
      
      private const Y_SPEED_MID:int = 200;
      
      private const Y_SPEED_BOT:int = 100;
      
      private const MAX_X_DIST:int = 100;
      
      private var endX:int;
      
      private var typeStr:String;
      
      private var dir:String;
      
      private var btwTxt:String = "";
      
      public function SamusGuts(param1:LevObj, param2:int)
      {
         super(null,SOURCE_TYPE_NEUTRAL);
         this.typeStr = param2.toString();
         defyGrav = false;
         stopAnim = false;
         mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         if(param2 == 1)
         {
            this.dir = "top-rht";
         }
         else if(param2 == 2)
         {
            this.dir = "mid-rht";
         }
         else if(param2 == 3)
         {
            this.dir = "bot-rht";
         }
         else if(param2 == 4)
         {
            this.dir = "top-lft";
         }
         else if(param2 == 5)
         {
            this.dir = "mid-lft";
         }
         else if(param2 == 6)
         {
            this.dir = "bot-lft";
         }
         if(!(param1 is Samus))
         {
            this.btwTxt = "Enemy";
         }
         gotoAndStop("start" + this.btwTxt + "_" + this.typeStr);
         if(this.dir.indexOf("top") != -1)
         {
            if(param1 is Samus)
            {
               y = param1.ny - this.Y_OFFSET_TOP;
            }
            else
            {
               y = param1.hMidY - 12;
            }
            gravity = this.GRAVITY_TOP;
            vy = -this.Y_SPEED_TOP;
         }
         else if(this.dir.indexOf("mid") != -1)
         {
            if(param1 is Samus)
            {
               y = param1.ny - this.Y_OFFSET_MID;
            }
            else
            {
               y = param1.hMidY + 12;
            }
            gravity = this.GRAVITY_MID;
            vy = -this.Y_SPEED_MID;
         }
         else if(this.dir.indexOf("bot") != -1)
         {
            y = param1.ny - this.Y_OFFSET_BOT;
            gravity = this.GRAVITY_BOT;
            vy = -this.Y_SPEED_BOT;
         }
         if(this.dir.indexOf("rht") != -1)
         {
            x = param1.nx + this.X_OFFSET;
            vx = this.X_SPEED_SAMUS;
            this.endX = x + this.MAX_X_DIST;
         }
         else if(this.dir.indexOf("lft") != -1)
         {
            x = param1.nx - this.X_OFFSET;
            vx = -this.X_SPEED_SAMUS;
            this.endX = x - this.MAX_X_DIST;
         }
         if(!(param1 is Samus))
         {
            vx *= 2;
         }
      }
      
      override protected function updateStats() : void
      {
         if(this.dir.indexOf("rht") != -1)
         {
            if(nx > this.endX)
            {
               destroy();
            }
         }
         else if(nx < this.endX)
         {
            destroy();
         }
         super.updateStats();
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:int = currentFrame;
         if(_loc1_ == getLabNum("end" + this.btwTxt + "_" + this.typeStr) + 1)
         {
            gotoAndStop("start" + this.btwTxt + "_" + this.typeStr);
         }
         super.checkFrame();
      }
   }
}
