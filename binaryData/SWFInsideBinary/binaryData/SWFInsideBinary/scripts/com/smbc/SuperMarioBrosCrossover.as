package com.smbc
{
   import com.explodingRabbit.cross.games.Games;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.data.Cheats;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameSettingsValues;
   import com.smbc.data.OnlineData;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.ScreenSize;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.MasterObjects;
   import com.smbc.managers.ButtonManager;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.MainManager;
   import com.smbc.managers.MessageBoxManager;
   import com.smbc.managers.ScreenManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TextManager;
   import com.smbc.managers.TutorialManager;
   import com.smbc.sound.RepeatingSilenceOverrideSnd;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.display.StageQuality;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.external.ExternalInterface;
   import flash.utils.Dictionary;
   import nl.stroep.utils.ImageSaver;
   
   public class SuperMarioBrosCrossover extends Sprite
   {
      
      public static var game:SuperMarioBrosCrossover;
       
      
      public var testBmp:Bitmap;
      
      public const MASK_SPRITE:Sprite = new Sprite();
      
      private var onlineDataLoaded:Boolean;
      
      private var addedToStage:Boolean;
      
      public function SuperMarioBrosCrossover()
      {
         this.testBmp = new Bitmap();
         super();
         if(game != null)
         {
            throw new SingletonError();
         }
         game = this;
         addEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler,false,0,true);
      }
      
      private function addedToStageHandler(param1:Event) : void
      {
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStageHandler);
         OnlineData.instance.addEventListener(Event.COMPLETE,this.onlineDataCompleteHandler,false,0,true);
         OnlineData.initiate();
      }
      
      protected function onlineDataCompleteHandler(param1:Event) : void
      {
         OnlineData.instance.removeEventListener(Event.COMPLETE,this.onlineDataCompleteHandler);
         this.initiateGame();
      }
      
      private function initiateGame() : void
      {
         if(!OnlineData.loaded)
         {
         }
         stage.quality = StageQuality.LOW;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         this.MASK_SPRITE.graphics.beginFill(16711680);
         this.MASK_SPRITE.graphics.drawRect(0,0,ScreenSize.SCREEN_WIDTH,ScreenSize.SCREEN_HEIGHT);
         this.MASK_SPRITE.graphics.endFill();
         this.mask = this.MASK_SPRITE;
         if(!GameSettings.DEBUG_MODE)
         {
            GameSettings.setDefaults();
         }
         var _loc1_:GameStateManager = GameStateManager.GS_MNGR;
         var _loc2_:ButtonManager = ButtonManager.BTN_MNGR;
         var _loc3_:StatManager = StatManager.STAT_MNGR;
         var _loc4_:ScreenManager = ScreenManager.SCRN_MNGR;
         var _loc5_:SoundManager = SoundManager.SND_MNGR;
         var _loc6_:EventManager = EventManager.EVENT_MNGR;
         var _loc7_:TextManager = TextManager.INSTANCE;
         var _loc8_:MessageBoxManager = MessageBoxManager.INSTANCE;
         var _loc9_:TutorialManager = TutorialManager.TUT_MNGR;
         var _loc10_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc11_:CustomDictionary = MainManager.MNGR_DCT;
         _loc2_.initiate();
         _loc11_.addItem(_loc2_);
         _loc1_.initiate();
         _loc11_.addItem(_loc1_);
         _loc3_.initiate();
         _loc11_.addItem(_loc3_);
         _loc5_.initiate();
         _loc11_.addItem(_loc5_);
         _loc6_.initiate();
         _loc11_.addItem(_loc6_);
         _loc7_.initiate();
         _loc11_.addItem(_loc7_);
         _loc9_.initiate();
         _loc11_.addItem(_loc9_);
         _loc8_.initiate();
         _loc11_.addItem(_loc8_);
         _loc10_.initiate();
         _loc11_.addItem(_loc10_);
         _loc11_.addItem(_loc4_);
         GameSettings.managersReady();
         ImageSaver.INSTANCE = new ImageSaver("http://localhost:8888/save-my-image.php",this);
         if(GameSettings.callJavaScript)
         {
            ExternalInterface.addCallback("fromJava",_loc5_.fromJava);
         }
         MasterObjects.initiate();
         Games.initiateGames();
         Cheats.setUpCheats();
         if(GameSettings.DEBUG_MODE)
         {
            GameSettings.activateDebugMode();
         }
         GameSettingsValues.initiate();
         var _loc12_:RepeatingSilenceOverrideSnd = new RepeatingSilenceOverrideSnd();
         PickupInfo.initiate();
         _loc4_.initiate();
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         super.addChild(param1);
         if(contains(GraphicsManager.gameBoyFilterSprite))
         {
            setChildIndex(GraphicsManager.gameBoyFilterSprite,numChildren - 1);
         }
         return param1;
      }
      
      private function shit() : Boolean
      {
         var _loc3_:String = null;
         var _loc1_:String = stage.loaderInfo.url;
         if(GameSettings.callJavaScript && _loc1_.indexOf("file://") != -1)
         {
            GameSettings.callJavaScript = false;
         }
         var _loc2_:Dictionary = new Dictionary();
         _loc2_["file://"] = "file://";
         _loc2_["http://localhost:8888/"] = "http://localhost:8888/";
         _loc2_["http://127.0.0.1:8888/"] = "http://127.0.0.1:8888/";
         if(!GameSettings.DEBUG_MODE)
         {
            _loc2_["http://www.explodingrabbit.com/"] = "http://www.explodingrabbit.com/";
            _loc2_["http://explodingrabbit.com/"] = "http://www.explodingrabbit.com/";
         }
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_ == _loc1_.substr(0,_loc3_.length))
            {
               return true;
            }
         }
         return false;
      }
      
      public function getChildrenArr() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < numChildren)
         {
            _loc1_.push(getChildAt(_loc2_));
            _loc2_++;
         }
         return _loc1_;
      }
   }
}
