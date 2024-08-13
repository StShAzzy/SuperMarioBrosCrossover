package com.smbc.graphics
{
   import com.smbc.characters.Link;
   import flash.display.MovieClip;
   
   public class LinkShield extends SubMc
   {
       
      
      private var link:Link;
      
      public function LinkShield(param1:Link, param2:MovieClip = null)
      {
         super(param1);
         this.link = param1;
         if(param2)
         {
            createMasterFromMc(param2);
         }
      }
      
      override public function convLab(param1:String) : String
      {
         return param1 + "_" + this.link.shieldLevel.toString();
      }
   }
}
