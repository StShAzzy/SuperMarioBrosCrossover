package com.smbc.graphics
{
   import com.customClasses.MCAnimator;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.*;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.Cheats;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.PickupInfo;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.*;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.LevelDataManager;
   import com.smbc.managers.StatManager;
   import com.smbc.managers.TextManager;
   import com.smbc.text.TextFieldContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol125")]
   public class TopScreenText extends Sprite
   {
      
      private static var _instance:TopScreenText;
      
      public static const HUD_X_OFS:int = 22;
      
      private static const HUD_Y_OFS:int = -12;
      
      public static const FIRST_ROW_Y:int = 26 + HUD_Y_OFS;
      
      public static const SECOND_ROW_Y:int = 42 + HUD_Y_OFS;
      
      public static const THIRD_ROW_Y:int = SECOND_ROW_Y + 18;
      
      private static const SPACE_BTW_ICONS:int = 16;
      
      private static const NAME_TXT_PNT:Point = new Point(45 + HUD_X_OFS,FIRST_ROW_Y);
      
      private static const COIN_TXT_PNT:Point = new Point(206 + HUD_X_OFS,SECOND_ROW_Y);
      
      private static const LIVES_TXT_PNT:Point = new Point(206 + HUD_X_OFS,FIRST_ROW_Y);
      
      private static const WORLD_NAME_TXT_PNT:Point = new Point(285 + HUD_X_OFS,FIRST_ROW_Y);
      
      private static const TIME_NAME_TXT_PNT:Point = new Point(398 + HUD_X_OFS,FIRST_ROW_Y);
      
      private static const COIN_SYMBOL_PNT:Point = new Point(COIN_TXT_PNT.x - 6,COIN_TXT_PNT.y + 10);
      
      private static const P_STATE_ICON_PNT:Point = new Point(160 + HUD_X_OFS,SECOND_ROW_Y + 2);
      
      private static const STAR_ICON_PNT:Point = new Point(P_STATE_ICON_PNT.x + SPACE_BTW_ICONS,SECOND_ROW_Y + 2);
      
      public static const UPG_ICONS_START_PNT:Point = new Point(48 + HUD_X_OFS,THIRD_ROW_Y);
      
      private static const SCORE_TXT_PNT:Point = new Point(NAME_TXT_PNT.x,SECOND_ROW_Y);
      
      private static const WORLD_NUM_TXT_PNT:Point = new Point(WORLD_NAME_TXT_PNT.x + 16,SECOND_ROW_Y);
      
      private static const TIME_NUM_TXT_PNT:Point = new Point(TIME_NAME_TXT_PNT.x + 12,SECOND_ROW_Y);
      
      private static const AMMO_TXT_PNT:Point = new Point(20,66);
      
      private static const AMMO_ICON_PNT:Point = new Point(6,70);
      
      public static const AMMO_ICON_X_ALIGNED:int = 10;
      
      private static const PORT_PNT:Point = new Point(-10 + HUD_X_OFS,FIRST_ROW_Y);
      
      private static var ammoTfc:TextFieldContainer;
      
      public static const COIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_SLOWEST_TMR;
       
      
      public var level:Level;
      
      private const LIVES_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var scoreDispTxt:TextField;
      
      private const SCORE_DISP_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var nameDispTxt:TextField;
      
      private const NAME_DISP_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var worldDispTxt:TextField;
      
      private const WORLD_DISP_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var worldNameTxt:TextField;
      
      private const WORLD_NAME_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var timeDispTxt:TextField;
      
      private const TIME_DISP_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var timeNameTxt:TextField;
      
      private const TIME_NAME_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      public var coinDispTxt:TextField;
      
      private const COIN_DISP_TFC:TextFieldContainer = new TextFieldContainer(FontCharHud.FONT_NUM);
      
      private var ammoIcon:CustomMovieClip;
      
      public var tsTxtBg:Sprite;
      
      public var coinSymbol:CoinSymbol;
      
      private var mushroomIcon:UpgradeIcon;
      
      private var starIcon:UpgradeIcon;
      
      private var iconVec:Vector.<UpgradeIcon>;
      
      private var portrait:CustomMovieClip;
      
      private var portraitFrame:CustomMovieClip;
      
      private var coinType:String;
      
      private var stopAnim:Boolean;
      
      private const ANIMATOR:MCAnimator = GlobVars.ANIMATOR;
      
      private const STAT_MNGR:StatManager = StatManager.STAT_MNGR;
      
      private const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      private const TXT_MNGR:TextManager = TextManager.INSTANCE;
      
      public function TopScreenText()
      {
         var _loc1_:CustomMovieClip = null;
         this.level = GlobVars.level;
         this.mushroomIcon = new UpgradeIcon(PickupInfo.MUSHROOM);
         this.starIcon = new UpgradeIcon(PickupInfo.STAR);
         this.iconVec = new Vector.<UpgradeIcon>();
         super();
         if(_instance)
         {
            throw new SingletonError();
         }
         this.coinSymbol = CoinSymbol.getInstance();
         this.coinSymbol.x = COIN_SYMBOL_PNT.x;
         this.coinSymbol.y = COIN_SYMBOL_PNT.y;
         addChild(this.coinSymbol);
         this.replaceStageTextFields();
         this.updNameDispTxt();
         this.updWorldDispTxt();
         this.setUpCoinType();
         this.updLivesDispTxt(this.STAT_MNGR.numLives);
         _loc1_ = new CustomMovieClip(null,null,"Mushroom");
         _loc1_.x = 240;
         _loc1_.y = 60;
         removeChild(this.tsTxtBg);
         this.tsTxtBg = null;
      }
      
      public static function get instance() : TopScreenText
      {
         if(!_instance)
         {
            _instance = new TopScreenText();
         }
         return _instance;
      }
      
      private function replaceStageTextFields() : void
      {
         this.TXT_MNGR.replaceStageTextField(this.scoreDispTxt,this.SCORE_DISP_TFC,this);
         this.scoreDispTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.nameDispTxt,this.NAME_DISP_TFC,this);
         this.nameDispTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.worldDispTxt,this.WORLD_DISP_TFC,this);
         this.worldDispTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.worldNameTxt,this.WORLD_NAME_TFC,this);
         this.worldNameTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.timeDispTxt,this.TIME_DISP_TFC,this);
         this.timeDispTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.timeNameTxt,this.TIME_NAME_TFC,this);
         this.timeNameTxt = null;
         this.TXT_MNGR.replaceStageTextField(this.coinDispTxt,this.COIN_DISP_TFC,this);
         this.coinDispTxt = null;
         this.SCORE_DISP_TFC.x = SCORE_TXT_PNT.x;
         this.SCORE_DISP_TFC.y = SCORE_TXT_PNT.y;
         this.NAME_DISP_TFC.x = NAME_TXT_PNT.x;
         this.NAME_DISP_TFC.y = NAME_TXT_PNT.y;
         this.WORLD_DISP_TFC.x = WORLD_NUM_TXT_PNT.x;
         this.WORLD_DISP_TFC.y = WORLD_NUM_TXT_PNT.y;
         this.WORLD_NAME_TFC.x = WORLD_NAME_TXT_PNT.x;
         this.WORLD_NAME_TFC.y = WORLD_NAME_TXT_PNT.y;
         this.TIME_DISP_TFC.x = TIME_NUM_TXT_PNT.x;
         this.TIME_DISP_TFC.y = TIME_NUM_TXT_PNT.y;
         this.TIME_NAME_TFC.x = TIME_NAME_TXT_PNT.x;
         this.TIME_NAME_TFC.y = TIME_NAME_TXT_PNT.y;
         this.COIN_DISP_TFC.x = COIN_TXT_PNT.x;
         this.COIN_DISP_TFC.y = COIN_TXT_PNT.y;
         if(!ammoTfc)
         {
            ammoTfc = new TextFieldContainer(FontCharHud.FONT_NUM);
            ammoTfc.x = AMMO_TXT_PNT.x;
            ammoTfc.y = AMMO_TXT_PNT.y;
         }
         HudAlwaysOnTop.INSTANCE.addChild(ammoTfc);
         this.mushroomIcon.x = P_STATE_ICON_PNT.x;
         this.mushroomIcon.y = P_STATE_ICON_PNT.y;
         this.starIcon.x = STAR_ICON_PNT.x;
         this.starIcon.y = STAR_ICON_PNT.y;
         addChild(this.mushroomIcon);
         this.mushroomIcon.update();
         this.starIcon.update();
      }
      
      public function updNameDispTxt() : void
      {
         var _loc1_:int = this.STAT_MNGR.curCharNum;
         var _loc2_:String = CharacterInfo.CHAR_ARR[_loc1_][CharacterInfo.IND_CHAR_NAME_MENUS];
         var _loc3_:String = this.STAT_MNGR.getSkinName();
         if(_loc3_)
         {
            _loc2_ = _loc3_;
         }
         this.NAME_DISP_TFC.text = _loc2_;
         if(this.portrait)
         {
            removeChild(this.portrait);
            this.portrait = null;
         }
         this.portrait = new CustomMovieClip(null,null,CharacterInfo.getCharClassName(_loc1_) + "Icon");
         this.portrait.x = PORT_PNT.x;
         this.portrait.y = PORT_PNT.y;
         if(!this.portraitFrame)
         {
            this.portraitFrame = new CustomMovieClip(null,null,PortraitSelector.CLASS_NAME);
            this.portraitFrame.gotoAndStop(PortraitSelector.FL_HUD_FRAME);
            this.portraitFrame.x = this.portrait.x - 2;
            this.portraitFrame.y = this.portrait.y - 2;
            addChild(this.portraitFrame);
         }
         addChild(this.portrait);
         if(GameSettings.hideNewStuff)
         {
            this.portrait.visible = false;
            this.portraitFrame.visible = false;
         }
      }
      
      public function updWorldDispTxt() : void
      {
         this.WORLD_DISP_TFC.text = this.STAT_MNGR.currentLevelID.nameWithoutAreaDisplay;
      }
      
      public function updCoinDispTxt(param1:String) : void
      {
         if(param1.length == 1)
         {
            param1 = "0" + param1;
         }
         this.COIN_DISP_TFC.text = "*" + param1;
      }
      
      public function updLivesDispTxt(param1:int) : void
      {
         var _loc2_:String = param1.toString();
         if(_loc2_.length == 1)
         {
            _loc2_ = "0" + _loc2_;
         }
         this.LIVES_TFC.text = "*" + _loc2_;
      }
      
      public function updTimeDispTxt(param1:String) : void
      {
         var _loc2_:int = param1.length;
         if(_loc2_ == 2)
         {
            param1 = "0" + param1;
         }
         else if(_loc2_ == 1)
         {
            param1 = "00" + param1;
         }
         this.TIME_DISP_TFC.text = param1;
      }
      
      public function updScoreDisp(param1:String) : void
      {
         var _loc2_:int = param1.length;
         if(_loc2_ == 6)
         {
            param1 = "0" + param1;
         }
         else if(_loc2_ == 5)
         {
            param1 = "00" + param1;
         }
         else if(_loc2_ == 4)
         {
            param1 = "000" + param1;
         }
         else if(_loc2_ == 3)
         {
            param1 = "0000" + param1;
         }
         else if(_loc2_ == 2)
         {
            param1 = "00000" + param1;
         }
         else if(_loc2_ == 1)
         {
            param1 = "000000" + param1;
         }
         this.SCORE_DISP_TFC.text = param1;
      }
      
      public function updateUpgIcons() : void
      {
         var _loc7_:String = null;
         var _loc8_:UpgradeIcon = null;
         if(GameSettings.hideNewStuff)
         {
            return;
         }
         this.mushroomIcon.update();
         while(this.iconVec.length)
         {
            this.iconVec[0].destroy();
            this.iconVec.shift();
         }
         if(GameSettings.classicMode)
         {
            return;
         }
         var _loc1_:int = this.STAT_MNGR.curCharNum;
         var _loc2_:Vector.<String> = this.STAT_MNGR.getIconOrderVec(_loc1_);
         var _loc3_:CustomDictionary = this.STAT_MNGR.getObtainedUpgradesDct(_loc1_);
         var _loc4_:* = CharacterInfo.getCharClassName(_loc1_) + "Icon";
         var _loc5_:int = int(_loc2_.length);
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc7_ = _loc2_[_loc6_];
            if(_loc3_[_loc7_])
            {
               _loc8_ = new UpgradeIcon(_loc7_,_loc4_);
               this.iconVec.push(_loc8_);
               _loc8_.x = UPG_ICONS_START_PNT.x + SPACE_BTW_ICONS * (this.iconVec.length - 1);
               _loc8_.y = UPG_ICONS_START_PNT.y;
               addChild(_loc8_);
            }
            _loc6_++;
         }
      }
      
      public function refreshAmmoIcon() : void
      {
         if(this.ammoIcon)
         {
            this.ammoIcon.gotoAndStop(this.ammoIcon.currentFrame);
         }
      }
      
      public function UpdAmmoIcon(param1:Boolean, param2:String = null, param3:Number = NaN) : void
      {
         if(Level.levelInstance is TitleLevel)
         {
            param1 = false;
         }
         if(this.ammoIcon)
         {
            if(this.ammoIcon.parent)
            {
               this.ammoIcon.parent.removeChild(this.ammoIcon);
            }
            this.ammoIcon = null;
         }
         if(!param1)
         {
            return;
         }
         var _loc4_:* = CharacterInfo.getCharClassName(this.STAT_MNGR.curCharNum) + "Icon";
         this.ammoIcon = new CustomMovieClip(null,null,_loc4_);
         this.ammoIcon.gotoAndStop(param2);
         if(isNaN(param3))
         {
            this.ammoIcon.x = AMMO_ICON_PNT.x;
         }
         else
         {
            this.ammoIcon.x = param3;
         }
         this.ammoIcon.y = AMMO_ICON_PNT.y;
         HudAlwaysOnTop.INSTANCE.addChild(this.ammoIcon);
      }
      
      public function UpdAmmoText(param1:Boolean, param2:int = -1) : void
      {
         if(Level.levelInstance is TitleLevel)
         {
            param1 = false;
         }
         if(!param1)
         {
            ammoTfc.visible = false;
            return;
         }
         ammoTfc.visible = true;
         var _loc3_:String = param2.toString();
         if(param2 < 10)
         {
            _loc3_ = "0" + _loc3_;
         }
         ammoTfc.text = "*" + _loc3_;
      }
      
      public function initiateLevelHandler() : void
      {
         this.level = Level.levelInstance;
         this.coinSymbol.initiateLevelHandler();
         this.updWorldDispTxt();
         this.updateUpgIcons();
         if(!Cheats.infiniteTime && !(this.level is CharacterSelect) && !(this.level is TitleLevel))
         {
            this.showTime();
         }
         else
         {
            this.hideTime();
         }
         if(this.level is TitleLevel)
         {
            visible = false;
         }
         else
         {
            visible = true;
         }
      }
      
      public function initiateBlackScreen() : void
      {
         this.updWorldDispTxt();
         x = 0;
         this.updTimeDispTxt(LevelDataManager.currentLevelData.gettimeLeftTot(this.STAT_MNGR.currentLevelID).toString());
         if(!Cheats.infiniteTime && !(this.level is CharacterSelect) && !(this.level is TitleLevel))
         {
            this.showTime();
         }
         else
         {
            this.hideTime();
         }
      }
      
      public function setUpCoinType() : void
      {
         if(this.GS_MNGR.gameState == GameStates.BLACK_SCREEN)
         {
            this.stopAnim = true;
            this.hideTime();
            this.updCoinDispTxt(this.STAT_MNGR.numCoinsStr);
            this.updScoreDisp(this.STAT_MNGR.score.toString());
         }
         else if(this.GS_MNGR.gameState == GameStates.CHARACTER_SELECT)
         {
            this.stopAnim = false;
            this.hideTime();
            if(contains(this.TIME_NAME_TFC))
            {
               removeChild(this.TIME_NAME_TFC);
            }
            this.updCoinDispTxt(this.STAT_MNGR.numCoinsStr);
            this.updScoreDisp(this.STAT_MNGR.score.toString());
         }
         else
         {
            this.stopAnim = false;
         }
         if(Cheats.infiniteTime)
         {
            this.hideTime();
         }
         this.coinSymbol.gotoAndStop("coin" + this.coinType + "Start");
      }
      
      public function animateCoin() : void
      {
         this.coinSymbol.animate(COIN_ANIM_TMR);
         this.coinSymbol.checkFrame();
      }
      
      public function hideTime() : void
      {
         if(contains(this.TIME_DISP_TFC))
         {
            removeChild(this.TIME_DISP_TFC);
         }
      }
      
      public function showTime() : void
      {
         if(Cheats.infiniteTime || Level.levelInstance is TitleLevel)
         {
            return;
         }
         if(!contains(this.TIME_DISP_TFC))
         {
            addChild(this.TIME_DISP_TFC);
         }
      }
      
      public function hideName() : void
      {
         if(contains(this.NAME_DISP_TFC))
         {
            removeChild(this.NAME_DISP_TFC);
         }
      }
      
      public function scroll() : void
      {
         x = -this.level.x;
      }
      
      public function get timeRemaining() : String
      {
         return this.TIME_DISP_TFC.text;
      }
   }
}
