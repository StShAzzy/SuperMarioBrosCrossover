package com.smbc.graphics
{
   import com.smbc.data.CharacterInfo;
   import com.smbc.managers.StatManager;
   
   public class NPC extends Scenery
   {
      
      public static const TYPE_TOAD:String = "toad";
      
      public static const TYPE_PRINCESS:String = "princess";
       
      
      public var type:String;
      
      public function NPC(param1:Scenery)
      {
         inheritedForceShortClassName = CharacterInfo.getCharClassName(StatManager.STAT_MNGR.curCharNum) + "Icon";
         super(currentLabel);
         if(param1.currentLabel == Scenery.FL_TOAD_BOT)
         {
            this.type = TYPE_TOAD;
         }
         else if(param1.currentLabel == Scenery.FL_PRINCESS_BOT)
         {
            this.type = TYPE_PRINCESS;
         }
         x = param1.x + TILE_SIZE / 2;
         y = param1.y + TILE_SIZE;
         gotoAndStop(this.type);
         stopAnim = true;
      }
   }
}
