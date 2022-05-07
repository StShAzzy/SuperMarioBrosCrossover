package com.smbc.graphics
{
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.SoundNames;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   
   public class BillSimpleGraphics extends SimpleAnimatedObject
   {
      
      public static const TYPE_ENEMY_EXPLOSION:String = "enemyExplosion";
      
      private static const FL_ENEMY_EXPLOSION_END:String = "enemyExplosionEnd";
      
      private static const FL_ENEMY_EXPLOSION_START:String = "enemyExplosionStart";
       
      
      private var type:String;
      
      private var source:LevObj;
      
      public function BillSimpleGraphics(param1:LevObj, param2:String)
      {
         super();
         this.type = param2;
         this.source = param1;
         switch(param2)
         {
            case TYPE_ENEMY_EXPLOSION:
               accurateAnimTmr = new GameLoopTimer(AnimationTimers.DEL_SLOWEST);
               x = param1.hMidX;
               y = param1.hMidY;
               param1.destroy();
               SND_MNGR.playSound(SoundNames.SFX_BILL_ENEMY_EXPLODE);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_ENEMY_EXPLOSION && currentFrame == convFrameToInt(FL_ENEMY_EXPLOSION_END) + 1)
         {
            destroy();
         }
      }
   }
}
