package com.smbc.graphics
{
   import com.smbc.characters.Bill;
   import flash.display.MovieClip;
   
   public class BillLegs extends SubMc
   {
       
      
      private var bill:Bill;
      
      public const TORSO_DWN_FRM:String = "walk-2";
      
      public function BillLegs(param1:Bill, param2:MovieClip = null)
      {
         super(param1);
         if(param2)
         {
            createMasterFromMc(param2);
         }
         hasPState2 = true;
         this.bill = param1;
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         if(_loc1_ == convLab("walkEnd"))
         {
            setPlayFrame("walk-1");
         }
         if(_loc1_ == convLab(this.TORSO_DWN_FRM))
         {
            this.bill.torso.y = this.bill.torsoDwnY;
         }
         else if(!this.bill.torsoDown)
         {
            this.bill.torso.y = this.bill.torsoDefY;
         }
      }
   }
}
