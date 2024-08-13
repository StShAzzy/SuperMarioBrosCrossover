package com.smbc.projectiles
{
   import com.smbc.characters.Link;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.SoundNames;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   
   public final class LinkSimpleGraphics extends SimpleAnimatedObject
   {
      
      public static const TYPE_ENEMY_EXPLOSION:String = "enemyExplosion";
      
      public static const TYPE_SWORD_EXPLOSION:String = "swordExplosion";
      
      private static const FL_ENEMY_EXPLOSION_END:String = "enemyExplosionEnd";
      
      private static const FL_ENEMY_EXPLOSION_START:String = "enemyExplosionStart";
      
      private static const FL_SWORD_EXPLOSION_END:String = "swordExplosionEnd";
      
      private static const FL_SWORD_EXPLOSION_START:String = "swordExplosionStart";
      
      private static const ENEMY_EXP_TMR_DEL:int = 85;
      
      private static const ENEMY_EXP_FLASH_TMR_DEL:int = 30;
       
      
      private const SPEED:int = 115;
      
      private const START_POS_OFFSET:int = 10;
      
      private const MAX_Y_DIST:int = 40;
      
      private var swordExpEndY:Number;
      
      private var swordExpDirUp:Boolean;
      
      private var type:String;
      
      private var source:LevObj;
      
      private var link:Link;
      
      public function LinkSimpleGraphics(param1:LevObj, param2:String, param3:String = null)
      {
         super();
         this.type = param2;
         this.source = param1;
         switch(param2)
         {
            case TYPE_ENEMY_EXPLOSION:
               stopAnim = false;
               accurateAnimTmr = new GameLoopTimer(ENEMY_EXP_TMR_DEL);
               flashTmr = new GameLoopTimer(ENEMY_EXP_FLASH_TMR_DEL);
               paletteObjectName = "LinkEnemyExplosion";
               palOrderArr = [PaletteTypes.FLASH_GENERAL];
               gotoAndStop(FL_ENEMY_EXPLOSION_START);
               x = param1.hMidX;
               y = param1.hMidY;
               SND_MNGR.playSound(SoundNames.SFX_LINK_KILL_ENEMY);
               param1.destroy();
               break;
            case TYPE_SWORD_EXPLOSION:
               stopAnim = false;
               stopUpdate = false;
               mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
               gotoAndStop(FL_SWORD_EXPLOSION_START);
               x = param1.nx;
               y = param1.ny;
               this.setUpSwordExplosionPosition(param3);
         }
      }
      
      private function setUpSwordExplosionPosition(param1:String) : void
      {
         if(param1.indexOf("up") != -1)
         {
            y -= this.START_POS_OFFSET;
            vy = -this.SPEED;
            this.swordExpEndY = y - this.MAX_Y_DIST;
            this.swordExpDirUp = true;
         }
         else if(param1.indexOf("dwn") != -1)
         {
            y += this.START_POS_OFFSET;
            vy = this.SPEED;
            scaleY = -scaleY;
            this.swordExpEndY = y + this.MAX_Y_DIST;
         }
         if(param1.indexOf("lft") != -1)
         {
            x -= this.START_POS_OFFSET;
            vx = -this.SPEED;
            scaleX = -scaleX;
         }
         else if(param1.indexOf("rht") != -1)
         {
            x += this.START_POS_OFFSET;
            vx = this.SPEED;
         }
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         if(this.type == TYPE_SWORD_EXPLOSION)
         {
            if(this.swordExpDirUp)
            {
               if(y <= this.swordExpEndY)
               {
                  destroy();
               }
            }
            else if(y >= this.swordExpEndY)
            {
               destroy();
            }
            x += vx * dt;
            y += vy * dt;
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_SWORD_EXPLOSION && currentFrame == convFrameToInt(FL_SWORD_EXPLOSION_END) + 1)
         {
            gotoAndStop(FL_SWORD_EXPLOSION_START);
         }
         else if(this.type == TYPE_ENEMY_EXPLOSION && currentFrame == convFrameToInt(FL_ENEMY_EXPLOSION_END) + 1)
         {
            destroy();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.type == TYPE_SWORD_EXPLOSION)
         {
            Link(LinkProjectile(this.source).source).canShootSword = true;
         }
      }
   }
}
