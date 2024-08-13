package com.smbc.pickups
{
   import com.chewtinfoil.utils.StringUtils;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.PaletteTypes;
   import com.smbc.utils.GameLoopTimer;
   
   public class SamusPickup extends Pickup
   {
       
      
      public function SamusPickup(param1:String = null, param2:Number = NaN, param3:Number = NaN)
      {
         super(param1);
         if(!isNaN(param2))
         {
            this.x = param2;
         }
         if(!isNaN(param3))
         {
            this.y = param3;
         }
         if(mainFrameLabel)
         {
            flashTmr = new GameLoopTimer(AnimationTimers.DEL_MIN_FAST);
            paletteObjectName = StringUtils.capitalize(mainFrameLabel);
            paletteObjectName = "Samus" + paletteObjectName;
            palOrderArr = [PaletteTypes.FLASH_GENERAL];
         }
      }
   }
}
