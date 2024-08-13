package com.smbc.data
{
   import flash.geom.Rectangle;
   
   public class HitRectangle extends Rectangle
   {
      
      public static const TYPE_HIT:int = 0;
      
      public static const TYPE_HIT_SECONDARY:int = 1;
      
      public static const TYPE_ATTACK:int = 2;
       
      
      public var type:int;
      
      public function HitRectangle(param1:HRect)
      {
         super(param1.x,param1.y,param1.width,param1.height);
         this.setType(param1);
      }
      
      private function setType(param1:HRect) : void
      {
         if(param1 is ARect)
         {
            this.type = TYPE_ATTACK;
         }
         else if(param1 is SecondaryHRect)
         {
            this.type = TYPE_HIT_SECONDARY;
         }
         else
         {
            this.type = TYPE_HIT;
         }
      }
   }
}
