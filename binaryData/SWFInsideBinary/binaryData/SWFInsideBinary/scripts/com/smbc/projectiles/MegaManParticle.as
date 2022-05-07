package com.smbc.projectiles
{
   import com.smbc.characters.Bass;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   
   public class MegaManParticle extends Projectile
   {
      
      public static const PARTICLE_COLOR_SEP_TMR_DEL:int = 200;
      
      public static const PARTICLE_WHITE_SEP_TMR_DEL:int = 0;
      
      public static const MEGA_MAN_COLOR_PARTICLE_SKIN_NUM:Array = [0,1,10,13,14,15,16,17,18];
      
      public static const MEGA_MAN_WHITE_PARTICLE_SKIN_NUM:Array = [2,3,4,5,6,7,8,9,11,12,19,20];
      
      public static const BASS_COLOR_PARTICLE_SKIN_NUM:Array = [3,4,7,8];
      
      public static const BASS_WHITE_PARTICLE_SKIN_NUM:Array = [0,1,2,5,6,9,10,11,12,13,14];
      
      private static const FL_COLOR_START:String = "colorStart";
      
      private static const FL_COLOR_END:String = "colorEnd";
      
      private static const FL_WHITE_START:String = "whiteStart";
      
      private static const FL_WHITE_END:String = "whiteEnd";
       
      
      private var inner:Boolean;
      
      private var dir:String;
      
      private const DIAGONAL_SPEED_MOD:Number = 0.7071067811865476;
      
      private const INNER_SPEED_COLOR:int = 90;
      
      private const OUTER_SPEED_COLOR:int = 240;
      
      private const INNER_SPEED_WHITE:int = 80;
      
      private const OUTER_SPEED_WHITE:int = 180;
      
      private const START_POS_OFFSET:int = 10;
      
      public function MegaManParticle(param1:Boolean, param2:String, param3:MegaManBase)
      {
         var _loc5_:Boolean = false;
         inheritedForceShortClassName = CharacterInfo.CHAR_ARR[param3.charNum][CharacterInfo.IND_CHAR_NAME_CLASS] + "Particle";
         super(param3,SOURCE_TYPE_NEUTRAL);
         var _loc4_:int = player.skinNum;
         if(player is MegaMan && MEGA_MAN_COLOR_PARTICLE_SKIN_NUM.indexOf(_loc4_) != -1 || player is Bass && BASS_COLOR_PARTICLE_SKIN_NUM.indexOf(_loc4_) != -1)
         {
            _loc5_ = true;
         }
         else
         {
            _loc5_ = false;
         }
         if(_loc5_)
         {
            gotoAndStop(FL_COLOR_START);
         }
         else
         {
            gotoAndStop(FL_WHITE_START);
         }
         stopAnim = false;
         mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         destroyOffScreen = true;
         this.inner = param1;
         this.dir = param2;
         defyGrav = true;
         if(this.inner)
         {
            if(_loc5_)
            {
               speed = this.INNER_SPEED_COLOR;
            }
            else
            {
               speed = this.INNER_SPEED_WHITE;
            }
         }
         else if(_loc5_)
         {
            speed = this.OUTER_SPEED_COLOR;
         }
         else
         {
            speed = this.OUTER_SPEED_WHITE;
         }
         x = player.hMidX;
         y = player.hMidY;
         if(this.dir.indexOf("up") != -1)
         {
            y -= this.START_POS_OFFSET;
         }
         else if(this.dir.indexOf("dwn") != -1)
         {
            y += this.START_POS_OFFSET;
         }
         if(this.dir.indexOf("lft") != -1)
         {
            x -= this.START_POS_OFFSET;
         }
         else if(this.dir.indexOf("rht") != -1)
         {
            x += this.START_POS_OFFSET;
         }
      }
      
      public function separate() : void
      {
         if(this.dir.indexOf("up") != -1)
         {
            vy = -speed;
            if(this.dir.indexOf("up-rht") != -1)
            {
               vy = -speed * this.DIAGONAL_SPEED_MOD;
               vx = speed * this.DIAGONAL_SPEED_MOD;
            }
            else if(this.dir.indexOf("up-lft") != -1)
            {
               vy = -speed * this.DIAGONAL_SPEED_MOD;
               vx = -speed * this.DIAGONAL_SPEED_MOD;
            }
         }
         else if(this.dir.indexOf("dwn") != -1)
         {
            vy = speed;
            if(this.dir.indexOf("dwn-rht") != -1)
            {
               vy = speed * this.DIAGONAL_SPEED_MOD;
               vx = speed * this.DIAGONAL_SPEED_MOD;
            }
            else if(this.dir.indexOf("dwn-lft") != -1)
            {
               vy = speed * this.DIAGONAL_SPEED_MOD;
               vx = -speed * this.DIAGONAL_SPEED_MOD;
            }
         }
         else if(this.dir.indexOf("lft") != -1)
         {
            vx = -speed;
         }
         else
         {
            vx = speed;
         }
      }
      
      override public function checkFrame() : void
      {
         super.checkFrame();
         var _loc1_:String = currentLabel;
         if(_loc1_ == FL_COLOR_END)
         {
            gotoAndStop(FL_COLOR_START);
         }
         if(_loc1_ == FL_WHITE_END)
         {
            gotoAndStop(FL_WHITE_START);
         }
      }
   }
}
