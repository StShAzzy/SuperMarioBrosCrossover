package com.smbc.ground
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import flash.events.Event;
   
   public class ItemBlock extends Brick
   {
      
      public static var masterItemBlock:ItemBlock;
      
      private static const ITEM_BLOCK_DCT:CustomDictionary = new CustomDictionary(true);
      
      public static const DEFAULT_NAME:String = "itemBlock";
      
      private static const FL_END:String = "end";
      
      private static const FL_START:String = "start";
      
      protected static const FL_HIT_MOVING:String = Brick.FL_HIT_MOVING;
      
      protected static const FL_HIT_RESTING:String = Brick.FL_HIT_RESTING;
      
      protected static const FL_HIT_RESTING_INVISIBLE:String = "hitRestingInvisible";
      
      public static var animEndFrameNum:int;
      
      private static const NUM_ANIM_FRAMES:int = 4;
      
      public static var animStartFrameDelay:int;
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_MAP_SKIN,changeMapSkinHandler,false,0,true);
      }
      
      public var stopAnimLock:Boolean;
      
      public function ItemBlock(param1:String = null)
      {
         super(param1);
         if(param1 && param1.indexOf(Level.PROP_INVISIBLE) != -1)
         {
            visible = false;
            invisible = true;
            stopAnim = true;
         }
         removeProperty(PR_TYPE_SUPER_ARM_GRABBABLE_PAS);
      }
      
      public static function initiateLevelHandler() : void
      {
         masterItemBlock = new ItemBlock(DEFAULT_NAME);
         masterItemBlock.initiate();
         Level.levelInstance.ALWAYS_ANIM_DCT.addItem(masterItemBlock);
      }
      
      protected static function changeMapSkinHandler(param1:Event) : void
      {
         var _loc2_:CustomDictionary = Level.levelInstance.GROUND_DCT;
         var _loc3_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc4_:CustomMovieClip = new CustomMovieClip(null,null,"ItemBlock");
         animStartFrameDelay = _loc3_.getFrameDelay(_loc4_.getPaletteByRow(0));
         animEndFrameNum = NUM_ANIM_FRAMES + _loc4_.convFrameToInt(FL_START) - 1;
         while(animEndFrameNum > 0 && _loc4_.frameIsEmpty(animEndFrameNum))
         {
            --animEndFrameNum;
         }
         masterItemBlock.changeMapSkinLocalHandler();
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(this != masterItemBlock)
         {
            ITEM_BLOCK_DCT.addItem(this);
         }
      }
      
      private function changeMapSkinLocalHandler() : void
      {
         if(!stopAnim)
         {
            gotoAndStop(FL_START);
         }
         animDelCtr = 0;
      }
      
      override public function getPickup(param1:String) : void
      {
         item = param1;
         if(!item || item == IT_MULTI_COIN)
         {
            item = IT_SINGLE_COIN;
         }
      }
      
      override public function breakBrick(param1:Boolean = false) : void
      {
         this.bounce();
      }
      
      override public function bounce() : void
      {
         if(!visible)
         {
            visible = true;
         }
         if(this != masterItemBlock)
         {
            ITEM_BLOCK_DCT.removeItem(this);
         }
         super.bounce();
      }
      
      override function doneBouncing() : void
      {
         super.doneBouncing();
         if(!invisible)
         {
            gotoAndStop(FL_HIT_RESTING);
         }
         else
         {
            gotoAndStop(FL_HIT_RESTING_INVISIBLE);
         }
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(this == masterItemBlock)
         {
            level.ALWAYS_ANIM_DCT.addItem(this);
         }
         else if(!stopAnim)
         {
            ITEM_BLOCK_DCT.addItem(this);
         }
      }
      
      override public function disarm() : void
      {
         if(this == masterItemBlock)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
         else
         {
            ITEM_BLOCK_DCT.removeItem(this);
         }
         super.disarm();
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:ItemBlock = null;
         if(this == masterItemBlock)
         {
            if(currentFrame == animEndFrameNum + 1 && !disabled)
            {
               gotoAndStop(FL_START);
            }
            for each(_loc1_ in ITEM_BLOCK_DCT)
            {
               if(_loc1_.onScreen && !_loc1_.stopAnim)
               {
                  _loc1_.gotoAndStop(currentFrame);
               }
            }
         }
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(disabled)
         {
            return false;
         }
         if(mainAnimTmr == param1 && currentFrameLabel == FL_START && animDelCtr < animStartFrameDelay)
         {
            ++animDelCtr;
            return false;
         }
         animDelCtr = 0;
         return $animate(param1);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(level && this == masterItemBlock)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
         ITEM_BLOCK_DCT.removeItem(this);
      }
   }
}
