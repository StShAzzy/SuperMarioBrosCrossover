package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatFxKnockBack;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.characters.Link;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class LinkProjectile extends Projectile
   {
      
      public static const TYPE_ARROW:String = "arrow";
      
      public static const TYPE_BOMB:String = "bomb";
      
      public static const TYPE_SHOOTING_SWORD:String = "shootingSword";
      
      private static const FL_ARROW:String = "arrow";
      
      private static const FL_BOMB:String = "bomb";
      
      private static const FL_BOMB_EXPLOSION_END:String = "bombExplosionEnd";
      
      private static const FL_BOMB_EXPLOSION_START:String = "bombExplosionStart";
      
      private static const FL_SHOOTING_SWORD_END:String = "shootingSwordEnd";
      
      private static const FL_SHOOTING_SWORD_START:String = "shootingSwordStart";
      
      private static const BOMB_TMR_DEL:int = 1000;
      
      private static const BOMB_X_OFS:int = 26;
       
      
      private var bombTmr:GameLoopTimer;
      
      private const SPEED:int = 500;
      
      private const X_OFFSET:int = 21;
      
      private const Y_OFFSET:int = 13;
      
      private const X_OFS_UP:Number = 3;
      
      private const X_OFS_DOWN:Number = 1;
      
      private const Y_OFS_UP:int = 40;
      
      private const Y_OFS_DOWN:int = 6;
      
      private var hitSomething:Boolean;
      
      private var knockBackFx:StatFxKnockBack;
      
      public var type:String;
      
      private var link:Link;
      
      public var bombExploded:Boolean;
      
      public function LinkProjectile(param1:Link, param2:String)
      {
         var _loc3_:StatusProperty = null;
         this.type = param2;
         this.link = param1;
         super(param1,SOURCE_TYPE_PLAYER);
         for each(_loc3_ in Link.DEFAULT_PROPS_DCT)
         {
            addProperty(_loc3_);
         }
         this.knockBackFx = new StatFxKnockBack(null,null);
         switch(param2)
         {
            case TYPE_ARROW:
               stopAnim = true;
               defyGrav = true;
               _damageAmt = DamageValue.LINK_ARROW;
               gotoAndStop(FL_ARROW);
               this.setDir();
               this.knockBackFx.setDirFromSpeed(vx,vy);
               SND_MNGR.playSound(SoundNames.SFX_LINK_SHOOT_ARROW);
               break;
            case TYPE_BOMB:
               _damageAmt = DamageValue.LINK_BOMB;
               gotoAndStop(FL_BOMB);
               needsAccurateGroundHits = true;
               stopAnim = true;
               mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
               doesntHitBricks = true;
               alwaysAllowHits = true;
               x = param1.nx + BOMB_X_OFS * param1.scaleX;
               y = param1.ny;
               gravity = 1000;
               removeAllHitTestableItems();
               addAllGroundToHitTestables();
               addProperty(new StatusProperty(PR_PIERCE_AGG,10));
               break;
            case TYPE_SHOOTING_SWORD:
               _damageAmt = DamageValue.LINK_SHOOTING_SWORD;
               defyGrav = true;
               this.setDir();
               this.knockBackFx.setDirFromSpeed(vx,vy);
               mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
               param1.canShootSword = false;
               SND_MNGR.playSound(SoundNames.SFX_LINK_SHOOT_SWORD);
         }
         destroyOffScreen = true;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(this.type == TYPE_BOMB)
         {
            if(stuckInWall)
            {
               nx = this.link.nx;
               x = nx;
            }
            this.bombTmr = new GameLoopTimer(BOMB_TMR_DEL,1);
            this.bombTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.bombTmrHandler,false,0,true);
            this.bombTmr.start();
            SND_MNGR.playSound(SoundNames.SFX_LINK_SET_BOMB);
         }
      }
      
      protected function bombTmrHandler(param1:Event) : void
      {
         gotoAndStop(FL_BOMB_EXPLOSION_START);
         this.bombExploded = true;
         stopAnim = false;
         needsAccurateGroundHits = false;
         doesntHitBricks = false;
         alwaysAllowHits = false;
         defyGrav = true;
         vy = 0;
         addProperty(new StatusProperty(PR_PASSTHROUGH_ALWAYS));
         L_HIT_DCT.clear();
         C_HIT_DCT.clear();
         hitTestTypesDct.addItem(HT_PROJECTILE_ENEMY);
         addHitTestableItem(HT_ENEMY);
         addHitTestableItem(HT_CHARACTER);
         SND_MNGR.playSound(SoundNames.SFX_LINK_BOMB_EXPLODE);
      }
      
      override protected function setDir() : void
      {
         var _loc1_:String = null;
         if(player.onGround && this.type == TYPE_SHOOTING_SWORD)
         {
            _loc1_ = player.currentFrameLabel;
            if(_loc1_ == Link.FL_ATTACK_UP_START)
            {
               vy = -this.SPEED;
               rotation = -90;
               y = player.ny - this.Y_OFS_UP;
               if(player.scaleX > 0)
               {
                  x = player.nx - this.X_OFS_UP;
               }
               else
               {
                  x = player.nx + this.X_OFS_UP;
               }
            }
            else if(_loc1_ == Link.FL_ATTACK_DOWN_START)
            {
               vy = this.SPEED;
               rotation = 90;
               y = player.ny + this.Y_OFS_DOWN;
               if(player.scaleX > 0)
               {
                  x = player.nx + this.X_OFS_DOWN;
               }
               else
               {
                  x = player.nx - this.X_OFS_DOWN;
               }
            }
            else
            {
               y = player.ny - this.Y_OFFSET;
               if(player.scaleX > 0)
               {
                  vx = this.SPEED;
                  x = player.nx + this.X_OFFSET;
               }
               else
               {
                  vx = -this.SPEED;
                  scaleX = -1;
                  x = player.nx - this.X_OFFSET;
               }
            }
         }
         else if(!player.upBtn && !player.dwnBtn)
         {
            y = player.ny - this.Y_OFFSET;
            if(player.scaleX > 0)
            {
               vx = this.SPEED;
               x = player.nx + this.X_OFFSET;
            }
            else
            {
               vx = -this.SPEED;
               scaleX = -1;
               x = player.nx - this.X_OFFSET;
            }
         }
         else if(player.upBtn)
         {
            vy = -this.SPEED;
            rotation = -90;
            y = player.ny - this.Y_OFS_UP;
            if(player.scaleX > 0)
            {
               x = player.nx - this.X_OFS_UP;
            }
            else
            {
               x = player.nx + this.X_OFS_UP;
            }
         }
         else
         {
            vy = this.SPEED;
            rotation = 90;
            y = player.ny + this.Y_OFS_DOWN;
            if(player.scaleX > 0)
            {
               x = player.nx + this.X_OFS_DOWN;
            }
            else
            {
               x = player.nx - this.X_OFS_DOWN;
            }
         }
      }
      
      override public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
         if(this.type == TYPE_SHOOTING_SWORD)
         {
            this.shootingSwordexplode();
         }
         super.confirmedHit(param1,param2);
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         super.attackObjPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_LINK_HIT_ENEMY);
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_LINK_HIT_ENEMY_ARMOR);
         }
      }
      
      private function shootingSwordexplode() : void
      {
         level.addToLevel(new LinkSimpleGraphics(this,LinkSimpleGraphics.TYPE_SWORD_EXPLOSION,"up-rht"));
         level.addToLevel(new LinkSimpleGraphics(this,LinkSimpleGraphics.TYPE_SWORD_EXPLOSION,"dwn-rht"));
         level.addToLevel(new LinkSimpleGraphics(this,LinkSimpleGraphics.TYPE_SWORD_EXPLOSION,"dwn-lft"));
         level.addToLevel(new LinkSimpleGraphics(this,LinkSimpleGraphics.TYPE_SWORD_EXPLOSION,"up-lft"));
         this.hitSomething = true;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.bombTmr)
         {
            this.bombTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.bombTmrHandler);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_SHOOTING_SWORD && currentFrame == convFrameToInt(FL_SHOOTING_SWORD_END) + 1)
         {
            gotoAndStop(FL_SHOOTING_SWORD_START);
         }
         else if(this.type == TYPE_BOMB && currentFrame == convFrameToInt(FL_BOMB_EXPLOSION_END) + 1)
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.type == TYPE_SHOOTING_SWORD && !this.hitSomething)
         {
            (source as Link).canShootSword = true;
         }
      }
   }
}
