package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public final class EnemySpeed extends Enum
   {
      
      public static const Normal:EnemySpeed = new EnemySpeed();
      
      public static const Fast:EnemySpeed = new EnemySpeed();
      
      {
         initEnum(EnemySpeed);
      }
      
      public function EnemySpeed()
      {
         super();
      }
   }
}
