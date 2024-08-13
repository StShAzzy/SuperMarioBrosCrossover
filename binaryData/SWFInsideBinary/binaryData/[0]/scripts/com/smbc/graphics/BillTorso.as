package com.smbc.graphics
{
   import com.smbc.characters.Bill;
   import flash.display.MovieClip;
   
   public class BillTorso extends SubMc
   {
       
      
      public const Y_OV_RI_1:String = "walk-3";
      
      public const Y_OV_RI_2:String = "walk-6";
      
      public function BillTorso(param1:Bill, param2:MovieClip = null)
      {
         super(param1);
         if(param2)
         {
            createMasterFromMc(param2);
         }
      }
      
      override public function setStopFrame(param1:String) : void
      {
         gotoAndStop(param1);
         stopAnim = true;
      }
      
      override public function setPlayFrame(param1:String) : void
      {
         gotoAndStop(param1);
         stopAnim = false;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         if(_loc1_ == "walkEnd")
         {
            this.setPlayFrame("walk-1");
         }
      }
   }
}
