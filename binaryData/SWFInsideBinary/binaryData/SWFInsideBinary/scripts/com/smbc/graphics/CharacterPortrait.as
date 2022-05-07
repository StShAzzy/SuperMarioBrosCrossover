package com.smbc.graphics
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.Character;
   import com.smbc.data.CharacterInfo;
   import com.smbc.managers.StatManager;
   import com.smbc.messageBoxes.CharacterSelectBox;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class CharacterPortrait extends Sprite
   {
      
      private static const ICON_PNT:Point = new Point(2,2);
      
      private static const SPACE_BTW_ICONS:int = 16;
      
      private static const NUM_ICONS_PER_ROW:int = 3;
      
      private static const MAX_ICONS:int = 9;
      
      private static const ICON_FRAME_OFS:int = 1;
      
      private static const ICON_INVISIBLE_FRAME_NUM:int = Character.PS_NORMAL + ICON_FRAME_OFS;
      
      private static const PORT_X_OFS:int = 2;
      
      private static const TYPE_RANDOM:String = "random";
      
      private static const TYPE_MAP_SKIN:String = "mapSkin";
      
      private static const FL_PORTRAIT:String = "portrait";
      
      private static const FL_MAP_SKIN:String = "mapSkin";
       
      
      private const PS_ICON:PStateIcon = new PStateIcon();
      
      private var frame:CustomMovieClip;
      
      public var portrait:CustomMovieClip;
      
      private var showIcon:Boolean;
      
      private var type:String;
      
      public var recoloredSprite:Sprite;
      
      private var iconVec:Vector.<UpgradeIcon>;
      
      private var charNum:int;
      
      public function CharacterPortrait(param1:int)
      {
         this.iconVec = new Vector.<UpgradeIcon>();
         super();
         this.charNum = param1;
         if(param1 >= 0)
         {
            this.type = StatManager.STAT_MNGR.convNumToName(param1);
            this.portrait = new CustomMovieClip(null,null,CharacterInfo.getCharClassName(param1) + "Icon");
         }
         else if(param1 == CharacterSelectBox.RANDOM_CHAR_NUM)
         {
            this.type = TYPE_RANDOM;
            this.portrait = new CustomMovieClip(null,null,"PortraitSelector");
         }
         else if(param1 == CharacterSelectBox.MAP_SKIN_CHAR_NUM)
         {
            this.type = TYPE_MAP_SKIN;
            this.portrait = new CustomMovieClip(null,null,"PortraitSelector");
         }
         if(this.portrait)
         {
            this.portrait.gotoAndStop(FL_PORTRAIT);
            this.portrait.x = PORT_X_OFS;
            this.portrait.y = PORT_X_OFS;
            addChild(this.portrait);
         }
         if(param1 == CharacterSelectBox.MAP_SKIN_CHAR_NUM)
         {
            this.portrait.gotoAndStop(FL_MAP_SKIN);
         }
         this.setType();
         this.PS_ICON.x = ICON_PNT.x;
         this.PS_ICON.y = ICON_PNT.y;
         x = PORT_X_OFS;
         y = PORT_X_OFS;
      }
      
      public function getPortraitBmpSprite() : Sprite
      {
         this.recoloredSprite = new Sprite();
         addChildAt(this.recoloredSprite,1);
         this.recoloredSprite.addChild(this.portrait);
         return this.recoloredSprite;
      }
      
      public function setIconVisibility(param1:Boolean) : void
      {
         if(this.PS_ICON.currentFrame == ICON_INVISIBLE_FRAME_NUM)
         {
            this.PS_ICON.visible = false;
         }
         else
         {
            this.PS_ICON.visible = param1;
         }
         this.showIcon = param1;
      }
      
      public function update() : void
      {
         this.portrait.gotoAndStop(this.portrait.currentFrame);
      }
      
      public function setIconPState(param1:int) : void
      {
         this.PS_ICON.gotoAndStop(param1 + ICON_FRAME_OFS);
         if(this.PS_ICON.currentFrame == ICON_INVISIBLE_FRAME_NUM)
         {
            this.PS_ICON.visible = false;
         }
         else if(this.showIcon)
         {
            this.PS_ICON.visible = true;
         }
      }
      
      public function updateUpgIcons() : void
      {
         var _loc6_:int = 0;
         var _loc9_:String = null;
         var _loc10_:UpgradeIcon = null;
         while(this.iconVec.length)
         {
            this.iconVec[0].destroy();
            this.iconVec.shift();
         }
         var _loc1_:StatManager = StatManager.STAT_MNGR;
         var _loc2_:Vector.<String> = _loc1_.getIconOrderVec(this.charNum);
         var _loc3_:CustomDictionary = _loc1_.getObtainedUpgradesDct(this.charNum);
         var _loc4_:* = CharacterInfo.getCharClassName(this.charNum) + "Icon";
         var _loc5_:int = -1;
         var _loc7_:int = _loc2_.length;
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_)
         {
            if(_loc8_ == MAX_ICONS)
            {
               break;
            }
            _loc9_ = _loc2_[_loc8_];
            if(_loc3_[_loc9_])
            {
               _loc10_ = new UpgradeIcon(_loc9_,_loc4_);
               this.iconVec.push(_loc10_);
               _loc5_++;
               if(_loc5_ == NUM_ICONS_PER_ROW)
               {
                  _loc5_ = 0;
                  _loc6_++;
               }
               _loc10_.x = ICON_PNT.x + SPACE_BTW_ICONS * _loc5_;
               _loc10_.y = ICON_PNT.y + SPACE_BTW_ICONS * _loc6_;
               addChild(_loc10_);
            }
            _loc8_++;
         }
      }
      
      public function setType() : void
      {
         if(this.type != TYPE_RANDOM)
         {
         }
         this.frame = new CustomMovieClip(null,null,"PortraitSelector");
         addChildAt(this.frame,0);
         this.frame.gotoAndStop(PortraitSelector.FL_FRAME);
      }
   }
}
