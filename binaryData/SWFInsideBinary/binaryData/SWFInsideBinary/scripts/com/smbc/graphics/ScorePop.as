package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.smbc.data.ScoreValue;
   import com.smbc.graphics.fontChars.FontCharScore;
   import com.smbc.level.Level;
   import com.smbc.level.LevelForeground;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   
   public class ScorePop extends Sprite
   {
       
      
      private var tfc:TextFieldContainer;
      
      private var endY:Number;
      
      private const RISE_SPEED:int = 125;
      
      private const RISE_SPEED_SLOW:int = 58;
      
      private const RISE_DIST:int = 80;
      
      private const RISE_DIST_SLOW:int = 42;
      
      private const FONT_SIZE:uint = 16;
      
      private var levelForeground:LevelForeground;
      
      private var vy:Number = 0;
      
      private var level:Level;
      
      public function ScorePop(param1:int, param2:Number, param3:Number, param4:Boolean = false)
      {
         var _loc5_:CustomMovieClip = null;
         super();
         if(param1 != ScoreValue.EARN_NEW_LIFE_NUM_VAL)
         {
            this.tfc = new TextFieldContainer(FontCharScore.FONT_NUM);
            this.tfc.text = param1.toString();
            this.tfc.x -= this.tfc.width / 2;
            this.tfc.y -= this.tfc.height / 2;
            addChild(this.tfc);
         }
         else
         {
            _loc5_ = new CustomMovieClip(null,null,"OneUp");
            _loc5_.x -= _loc5_.width / 2;
            _loc5_.y -= _loc5_.height / 2;
            addChild(_loc5_);
         }
         this.level = Level.levelInstance;
         x = param2 + this.level.x;
         y = param3;
         if(!param4)
         {
            this.vy = -this.RISE_SPEED;
            this.endY = y - this.RISE_DIST;
         }
         else
         {
            this.vy = -this.RISE_SPEED_SLOW;
            this.endY = y - this.RISE_DIST_SLOW;
         }
         this.levelForeground = this.level.foreground;
         this.levelForeground.addScorePop(this);
      }
      
      public function update() : void
      {
         y += this.vy * this.level.dt;
         if(y < this.endY)
         {
            this.destroy();
         }
      }
      
      public function destroy() : void
      {
         this.levelForeground.removeScorePop(this);
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
