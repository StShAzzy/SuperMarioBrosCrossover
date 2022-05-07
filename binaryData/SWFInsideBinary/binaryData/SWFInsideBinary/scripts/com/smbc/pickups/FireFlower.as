package com.smbc.pickups
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.GameSettings;
   import com.smbc.data.PickupInfo;
   import com.smbc.events.CustomEvents;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.managers.EventManager;
   import flash.events.Event;
   
   public class FireFlower extends Pickup
   {
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      private static const SLOWER_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_MIN_FAST_TMR;
      
      private static var fireFlowersDct:CustomDictionary = new CustomDictionary(true);
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_MAP_SKIN,changeMapSkinHandler,false,0,true);
      }
      
      private const CT_NORMAL:String = "normal";
      
      private const CT_UNDER_GROUND:String = "underGround";
      
      private const FL_END:String = "end";
      
      private const FL_START:String = "start";
      
      private var colorType:String;
      
      public function FireFlower()
      {
         super(PickupInfo.MARIO_FIRE_FLOWER);
         playsRegularSound = true;
         _boomerangGrabbable = true;
         var _loc1_:int = level.bgmType;
         stopAnim = false;
         mainAnimTmr = getAnimTmr();
         fireFlowersDct.addItem(this);
      }
      
      private static function getAnimTmr() : CustomTimer
      {
         if(GameSettings.mapSkin != BmdInfo.SKIN_NUM_SMW)
         {
            return MAIN_ANIM_TMR;
         }
         return SLOWER_ANIM_TMR;
      }
      
      protected static function changeMapSkinHandler(param1:Event) : void
      {
         var _loc3_:FireFlower = null;
         var _loc2_:CustomTimer = getAnimTmr();
         for each(_loc3_ in fireFlowersDct)
         {
            _loc3_.ACTIVE_ANIM_TMRS_DCT.removeItem(_loc3_.mainAnimTmr);
            _loc3_.mainAnimTmr = _loc2_;
            _loc3_.ACTIVE_ANIM_TMRS_DCT.addItem(_loc3_.mainAnimTmr);
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         fireFlowersDct.removeItem(this);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentFrameLabel;
         if(_loc1_ == this.FL_END)
         {
            gotoAndStop(this.FL_START);
         }
      }
   }
}
