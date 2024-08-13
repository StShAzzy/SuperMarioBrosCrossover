package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.ground.*;
   import com.smbc.interfaces.IAttackable;
   
   public class MarioFireBall extends Projectile
   {
       
      
      private const FL_BLOW_UP:String = "blowUp";
      
      private const FL_DESTROY:String = "destroy";
      
      private const FL_END:String = "end";
      
      private const FL_START:String = "start";
      
      private const ST_NORMAL:String = "normal";
      
      private const ST_DESTROY:String = "destroy";
      
      private const BOUNCE_AMT:Number = 270;
      
      private const GRAVITY:int = 1350;
      
      private const VY_MAX_PSV:int = 300;
      
      private const X_SPEED:int = 475;
      
      private const X_OFFSET:int = 10;
      
      private const Y_OFFSET:int = 42;
      
      public function MarioFireBall(param1:MarioBase)
      {
         inheritedForceShortClassName = CharacterInfo.CHAR_ARR[param1.charNum][CharacterInfo.IND_CHAR_NAME_CLASS] + "FireBall";
         super(param1,SOURCE_TYPE_PLAYER);
         needsAccurateGroundHits = true;
         doesntHitBricks = true;
         mainAnimTmr = AnimationTimers.ANIM_MIN_FAST_TMR;
         _damageAmt = DamageValue.MARIO_FIRE_BALL;
         stopAnim = false;
         dosTop = false;
         xSpeed = this.X_SPEED;
         jumpPwr = 700;
         vyMaxPsv = this.VY_MAX_PSV;
         gravity = this.GRAVITY;
         setState(this.ST_NORMAL);
         this.setDir();
         SND_MNGR.playSound(SoundNames.SFX_MARIO_FIREBALL);
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_PLATFORM);
      }
      
      override protected function setDir() : void
      {
         if(player.scaleX > 0)
         {
            vx = xSpeed;
            x = player.nx + this.X_OFFSET;
         }
         else
         {
            vx = -xSpeed;
            scaleX = -1;
            x = player.nx - this.X_OFFSET;
         }
         vy = vyMaxPsv;
         y = player.ny - this.Y_OFFSET;
      }
      
      private function bounce(param1:Ground) : void
      {
         ny = param1.hTop - hHeight / 2;
         vy = -this.BOUNCE_AMT;
         setHitPoints();
      }
      
      private function blowUp() : void
      {
         gotoAndStop(this.FL_BLOW_UP);
         setState(this.ST_DESTROY);
         vy = 0;
         vx = 0;
         stopUpdate = true;
         stopHit = true;
         noAnimThisCycle = true;
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         if(!param1.visible)
         {
            return;
         }
         if(param2 == "bottom")
         {
            this.bounce(param1);
         }
         else
         {
            this.blowUp();
            SND_MNGR.playSound(SoundNames.SFX_GAME_HIT_CEILING);
         }
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         this.blowUp();
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         this.blowUp();
         SND_MNGR.playSound(SoundNames.SFX_GAME_HIT_CEILING);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         if(cState == this.ST_NORMAL && _loc1_ == this.FL_END)
         {
            gotoAndStop(this.FL_START);
         }
         else if(cState == this.ST_DESTROY && _loc1_ == this.FL_DESTROY)
         {
            destroy();
         }
      }
   }
}
