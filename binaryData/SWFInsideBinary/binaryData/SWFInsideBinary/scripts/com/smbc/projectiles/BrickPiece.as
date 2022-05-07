package com.smbc.projectiles
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.DamageValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.ground.Brick;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   
   public class BrickPiece extends Projectile
   {
       
      
      private var bx:Number;
      
      private var by:Number;
      
      private var corner:String;
      
      private var ySpeedTop:Number;
      
      private var ySpeedBot:Number;
      
      public function BrickPiece(param1:Brick, param2:String, param3:String, param4:Number, param5:Number, param6:Boolean = false)
      {
         var _loc8_:StatusProperty = null;
         var _loc7_:String = SOURCE_TYPE_NEUTRAL;
         if(param6)
         {
            _loc7_ = SOURCE_TYPE_PLAYER;
         }
         super(param1,_loc7_);
         this.bx = param4;
         this.by = param5;
         this.corner = param3;
         gotoAndStop(param2);
         destroyOffScreen = true;
         xSpeed = 100;
         this.ySpeedTop = 600;
         this.ySpeedBot = 300;
         vyMaxPsv = 700;
         gravity = 1600;
         stopAnim = true;
         if(!param6)
         {
            stopHit = true;
         }
         else
         {
            _damageAmt = DamageValue.MEGA_MAN_SUPER_ARM_DEBRIS;
            for each(_loc8_ in MegaManBase.DEFAULT_PROPS_DCT)
            {
               addProperty(_loc8_);
            }
         }
         this.setDir();
      }
      
      override protected function setDir() : void
      {
         switch(this.corner)
         {
            case "top-left":
               x = this.bx + TILE_SIZE / 4;
               y = this.by + TILE_SIZE / 4;
               vx = -xSpeed;
               vy = -this.ySpeedTop;
               break;
            case "top-right":
               x = this.bx + TILE_SIZE * 0.75;
               y = this.by + TILE_SIZE / 4;
               vx = xSpeed;
               vy = -this.ySpeedTop;
               break;
            case "bottom-left":
               x = this.bx + TILE_SIZE / 4;
               y = this.by + TILE_SIZE * 0.75;
               vx = -xSpeed;
               vy = -this.ySpeedBot;
               break;
            case "bottom-right":
               x = this.bx + TILE_SIZE * 0.75;
               y = this.by + TILE_SIZE * 0.75;
               vx = xSpeed;
               vy = -this.ySpeedBot;
         }
      }
      
      override protected function attackObjNonPiercing(param1:IAttackable) : void
      {
         super.attackObjNonPiercing(param1);
         SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_DEFLECT);
      }
      
      override protected function attackObjPiercing(param1:IAttackable) : void
      {
         if(param1 is Enemy)
         {
            SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_HIT_ENEMY);
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:int = 0;
         if(param1 == mainAnimTmr)
         {
            _loc2_ = currentFrame;
            if(_loc2_ == 1)
            {
               gotoAndStop(2);
            }
            else
            {
               gotoAndStop(1);
            }
            return true;
         }
         return false;
      }
   }
}
