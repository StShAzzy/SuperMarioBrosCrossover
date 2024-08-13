package com.smbc.enums
{
   import com.explodingRabbit.utils.Enum;
   
   public class PiranhaSpawnType extends Enum
   {
      
      public static const SomePipes:PiranhaSpawnType = new PiranhaSpawnType("Some Pipes");
      
      public static const AllPipes:PiranhaSpawnType = new PiranhaSpawnType("All Pipes");
      
      public static const GreenSomePipes:PiranhaSpawnType = new PiranhaSpawnType("Green Some Pipes");
      
      public static const GreenAllPipes:PiranhaSpawnType = new PiranhaSpawnType("Green All Pipes");
      
      public static const RedSomePipes:PiranhaSpawnType = new PiranhaSpawnType("Red Some Pipes");
      
      public static const RedAllPipes:PiranhaSpawnType = new PiranhaSpawnType("Red All Pipes");
      
      {
         initEnum(PiranhaSpawnType);
      }
      
      public function PiranhaSpawnType(param1:String = null)
      {
         super(param1);
      }
   }
}
