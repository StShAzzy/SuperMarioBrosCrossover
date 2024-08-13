package com.smbc.graphics
{
   import com.smbc.main.SkinObj;
   
   public class FundingIcon extends SkinObj
   {
      
      public static const FL_FULL:String = "full";
      
      public static const FL_HALF:String = "half";
      
      public static const FL_EMPTY:String = "empty";
      
      public static const ROLL_OVER:String = "RollOver";
       
      
      private var type:String;
      
      public function FundingIcon(param1:String)
      {
         super();
         this.type = param1;
         stopAnim = true;
         this.mouseOut();
      }
      
      public function mouseIn() : void
      {
         gotoAndStop(this.type + ROLL_OVER);
      }
      
      public function mouseOut() : void
      {
         gotoAndStop(this.type);
      }
   }
}
