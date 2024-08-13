package com.smbc.graphics
{
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.SoundNames;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   
   public class RyuSimpleGraphics extends SimpleAnimatedObject
   {
      
      private static const FL_ENEMY_EXPLOSION_START:String = "enemyExplosionStart";
      
      private static const FL_ENEMY_EXPLOSION_END:String = "enemyExplosionEnd";
      
      public static const TYPE_ENEMY_EXPLOSION:String = "enemyExplosion";
       
      
      private var type:String;
      
      private var source:LevObj;
      
      public function RyuSimpleGraphics(param1:LevObj, param2:String)
      {
         super();
         this.source = param1;
         this.type = param2;
         switch(param2)
         {
            case TYPE_ENEMY_EXPLOSION:
               accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_FAST);
               gotoAndStop(FL_ENEMY_EXPLOSION_START);
               x = param1.nx;
               y = param1.hMidY;
               SND_MNGR.playSound(SoundNames.SFX_RYU_KILL_ENEMY);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_ENEMY_EXPLOSION && previousFrameLabelIs(FL_ENEMY_EXPLOSION_END))
         {
            destroy();
         }
      }
   }
}
