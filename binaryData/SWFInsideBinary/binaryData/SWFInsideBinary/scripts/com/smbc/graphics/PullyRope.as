package com.smbc.graphics
{
   public class PullyRope extends Scenery
   {
       
      
      public function PullyRope(param1:String)
      {
         super(param1);
         if(param1.indexOf("Pink") != -1)
         {
            gotoAndStop("pink");
         }
         else if(param1.indexOf("Gray") != -1)
         {
            gotoAndStop("gray");
         }
      }
   }
}
