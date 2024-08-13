package com.smbc.level
{
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.data.GameSettings;
   import com.smbc.data.Themes;
   import com.smbc.graphics.Background;
   import com.smbc.graphics.BackgroundInfo;
   import com.smbc.graphics.ThemeGroup;
   import com.smbc.managers.GraphicsManager;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class LevelGraphicLayerContainer extends Sprite
   {
      
      private static var offset:Number = 0;
       
      
      public var BG_VEC:Vector.<Background>;
      
      protected var level:Level;
      
      protected var type:String;
      
      public var currentMapSkin:int;
      
      public function LevelGraphicLayerContainer(param1:Level)
      {
         this.BG_VEC = new Vector.<Background>();
         super();
         this.level = param1;
         if(GameSettings.DEBUG_MODE)
         {
            addEventListener(MouseEvent.CLICK,this.clickHandler);
         }
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         if(this.level)
         {
            this.level.clickLsr(param1);
         }
      }
      
      public function setBackgrounds() : void
      {
         var _loc2_:int = 0;
         var _loc4_:Background = null;
         var _loc1_:int = int(this.BG_VEC.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            _loc4_ = this.BG_VEC[_loc2_];
            _loc4_.deactivate();
            _loc2_++;
         }
         offset = 0;
         var _loc3_:ThemeGroup = Themes.getMapTheme();
         this.BG_VEC = Vector.<Background>(BackgroundInfo.getBgSetItem(GameSettings.getMapSkinLimited(),_loc3_.theme,_loc3_.setNum,this.type)).concat();
         this.currentMapSkin = GraphicsManager.INSTANCE.cMapNum;
         _loc1_ = int(this.BG_VEC.length);
         _loc2_ = 0;
         while(_loc2_ < _loc1_)
         {
            (_loc4_ = this.BG_VEC[_loc2_]).x = 0;
            _loc4_.y = 0;
            addChildAt(_loc4_,_loc2_);
            _loc2_++;
         }
         if(this.level.player)
         {
            x = 0;
            this.level.scrollScreen();
            for each(_loc4_ in this.BG_VEC)
            {
               _loc4_.activate();
            }
         }
      }
      
      public function setOffset() : void
      {
         var _loc1_:Background = null;
         for each(_loc1_ in this.BG_VEC)
         {
            _loc1_.bgXAtTeleport = _loc1_.x;
            _loc1_.getNewLevelX = true;
         }
      }
      
      public function initiateLevelHandler() : void
      {
         var _loc1_:Background = null;
         for each(_loc1_ in this.BG_VEC)
         {
            _loc1_.activate();
         }
         offset = 0;
      }
      
      public function scroll() : void
      {
         var _loc1_:Background = null;
         var _loc2_:Number = NaN;
         for each(_loc1_ in this.BG_VEC)
         {
            _loc2_ = this.level.x * _loc1_.scrollSpeed;
            if(_loc1_.getNewLevelX)
            {
               _loc1_.levelXAfterTeleport = _loc2_;
               _loc1_.getNewLevelX = false;
            }
            if(_loc1_.bgXAtTeleport == 0)
            {
               _loc1_.x = _loc2_;
            }
            else
            {
               _loc1_.x = _loc1_.bgXAtTeleport - (_loc1_.levelXAfterTeleport - _loc2_);
            }
            _loc1_.checkIfNeedsExtension();
         }
      }
      
      public function destroy() : void
      {
         var _loc4_:Background = null;
         var _loc1_:int = int(this.BG_VEC.length);
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_)
         {
            _loc4_ = this.BG_VEC[_loc2_];
            _loc4_.deactivate();
            _loc2_++;
         }
         var _loc3_:SuperMarioBrosCrossover = SuperMarioBrosCrossover.game;
         if(parent)
         {
            parent.removeChild(this);
         }
         if(GameSettings.DEBUG_MODE)
         {
            removeEventListener(MouseEvent.CLICK,this.clickHandler);
         }
      }
   }
}
