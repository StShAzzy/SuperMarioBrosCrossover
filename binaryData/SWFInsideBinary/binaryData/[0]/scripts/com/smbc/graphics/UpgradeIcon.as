package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Character;
   import com.smbc.data.GameSettings;
   import com.smbc.data.PickupInfo;
   import com.smbc.level.Level;
   import com.smbc.main.SkinObj;
   import com.smbc.managers.StatManager;
   import flash.geom.Point;
   
   public class UpgradeIcon extends SkinObj
   {
      
      protected static const UPGRADE_STR:String = PickupInfo.UPGRADE_STR;
      
      private static const FL_FIRE_FLOWER:String = "fireFlower";
      
      private static const FL_LIFE:String = "life";
      
      private static const FL_MUSHROOM:String = "mushroom";
      
      private static const FL_STAR:String = "star";
      
      private static var classicLocation:Point;
      
      private static var nonClassicLocation:Point;
       
      
      protected var type:String;
      
      protected var mainFrameLabel:String;
      
      public function UpgradeIcon(param1:String, param2:String = null)
      {
         inheritedForceShortClassName = param2;
         super();
         this.type = param1;
         this.mainFrameLabel = param1.substr(UPGRADE_STR.length);
         gotoAndStop(this.mainFrameLabel);
      }
      
      public function update() : void
      {
         var _loc3_:StatManager = null;
         var _loc4_:CustomDictionary = null;
         var _loc1_:Level = Level.levelInstance;
         if(!_loc1_)
         {
            visible = false;
            return;
         }
         var _loc2_:Character = _loc1_.player;
         if(this.type == PickupInfo.MUSHROOM)
         {
            this.setPosition();
            _loc3_ = StatManager.STAT_MNGR;
            _loc4_ = _loc3_.getObtainedUpgradesDct(_loc3_.curCharNum);
            if(_loc4_[PickupInfo.MUSHROOM])
            {
               visible = true;
               if(GameSettings.classicMode && Boolean(_loc4_[PickupInfo.FIRE_FLOWER]))
               {
                  gotoAndStop(FL_FIRE_FLOWER);
               }
               else
               {
                  gotoAndStop(FL_MUSHROOM);
               }
            }
            else
            {
               visible = false;
            }
         }
      }
      
      private function setPosition() : void
      {
         if(nonClassicLocation == null)
         {
            nonClassicLocation = new Point(x,y);
            classicLocation = TopScreenText.UPG_ICONS_START_PNT;
         }
         if(GameSettings.classicMode)
         {
            x = classicLocation.x;
            y = classicLocation.y;
         }
         else
         {
            x = nonClassicLocation.x;
            y = nonClassicLocation.y;
         }
      }
      
      public function destroy() : void
      {
         if(parent)
         {
            parent.removeChild(this);
         }
      }
   }
}
