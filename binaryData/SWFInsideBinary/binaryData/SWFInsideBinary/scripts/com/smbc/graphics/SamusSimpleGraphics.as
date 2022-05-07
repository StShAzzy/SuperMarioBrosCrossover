package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.projectiles.SamusGuts;
   import com.smbc.projectiles.SamusShot;
   import com.smbc.utils.GameLoopTimer;
   
   public class SamusSimpleGraphics extends SimpleAnimatedObject
   {
      
      public static const TYPE_MISSILE_EXPLOSION:String = "missileExplosion";
      
      public static const TYPE_ENEMY_EXPLOSION:String = "enemyExplosion";
      
      private static const FL_MISSILE_EXPLOSION_START:String = "missileExplosionStart";
      
      private static const FL_MISSILE_EXPLOSION_END:String = "missileExplosionEnd";
      
      private static const FL_ENEMY_EXPLOSION_START:String = "enemyExplosionStart";
      
      private static const FL_ENEMY_EXPLOSION_END:String = "enemyExplosionEnd";
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
       
      
      private var type:String;
      
      private var source:LevObj;
      
      private var attacker:LevObj;
      
      public function SamusSimpleGraphics(param1:LevObj, param2:String, param3:LevObj = null)
      {
         super();
         this.source = param1;
         this.type = param2;
         this.attacker = param3;
         switch(param2)
         {
            case TYPE_MISSILE_EXPLOSION:
               accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_FAST);
               gotoAndStop(FL_MISSILE_EXPLOSION_START);
               x = param1.nx;
               y = param1.ny;
               break;
            case TYPE_ENEMY_EXPLOSION:
               accurateAnimTmr = new GameLoopTimer(55);
               gotoAndStop(FL_ENEMY_EXPLOSION_START);
               x = param1.hMidX;
               y = param1.hMidY;
               if(this.showGuts())
               {
                  level.addToLevel(new SamusGuts(param1,1));
                  level.addToLevel(new SamusGuts(param1,2));
                  level.addToLevel(new SamusGuts(param1,4));
                  level.addToLevel(new SamusGuts(param1,5));
               }
               param1.destroy();
         }
      }
      
      private function showGuts() : Boolean
      {
         var _loc1_:String = null;
         if(this.attacker is SamusShot)
         {
            _loc1_ = SamusShot(this.attacker).shotType;
            if(_loc1_ == SamusShot.SHOT_TYPE_NORMAL || _loc1_ == SamusShot.SHOT_TYPE_WAVE)
            {
               return false;
            }
         }
         return true;
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_MISSILE_EXPLOSION && currentFrame == convFrameToInt(FL_MISSILE_EXPLOSION_END) + 1)
         {
            destroy();
         }
         else if(this.type == TYPE_ENEMY_EXPLOSION && currentFrame == convFrameToInt(FL_ENEMY_EXPLOSION_END) + 1)
         {
            destroy();
         }
      }
   }
}
