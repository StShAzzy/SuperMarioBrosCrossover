package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.enemies.Enemy;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   
   public class StarBurst extends SimpleAnimatedObject
   {
      
      public static const ENEMY_OFS:int = 12;
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
      
      public static const TYPE_FIREBALL:int = 0;
      
      public static const TYPE_SHELL_WALL:int = 1;
      
      public static const TYPE_SHELL_ENEMY:int = 2;
      
      public static const TYPE_SHELL_KICK:int = 3;
      
      public static const TYPE_STAR:int = 4;
      
      public static const TYPE_BELOW:int = 5;
       
      
      public function StarBurst(param1:Enemy, param2:int, param3:LevObj = null)
      {
         super();
         stopAnim = false;
         accurateAnimTmr = new CustomTimer(AnimationTimers.DEL_FAST);
         gotoAndStop(FL_START);
         this.calcPosition(param1,param2,param3);
      }
      
      private function calcPosition(param1:Enemy, param2:int, param3:LevObj = null) : void
      {
         var _loc4_:Number = NaN;
         if(param2 == TYPE_BELOW || param2 == TYPE_STAR)
         {
            param2 = TYPE_SHELL_KICK;
         }
         switch(param2)
         {
            case TYPE_FIREBALL:
               if(param3.nx < param1.nx)
               {
                  x = param1.nx + ENEMY_OFS;
               }
               else
               {
                  x = param1.nx - ENEMY_OFS;
               }
               y = param1.y;
               break;
            case TYPE_SHELL_WALL:
               _loc4_ = ENEMY_OFS;
               x = param1.nx + ENEMY_OFS * param1.scaleX;
               y = param1.y;
               break;
            case TYPE_SHELL_ENEMY:
               _loc4_ = ENEMY_OFS;
               x = param1.nx + ENEMY_OFS * param1.scaleX;
               y = param1.y;
               break;
            case TYPE_SHELL_KICK:
               x = param1.nx;
               y = param1.ny;
         }
      }
      
      override public function checkFrame() : void
      {
         if(currentLabel == FL_END)
         {
            destroy();
         }
      }
   }
}
