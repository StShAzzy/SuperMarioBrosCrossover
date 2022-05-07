package com.smbc.level
{
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Bass;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Luigi;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   import com.smbc.data.GameSettings;
   import com.smbc.data.MapPack;
   import com.smbc.data.OnlineData;
   import com.smbc.data.Versions;
   import com.smbc.errors.SingletonError;
   import com.smbc.graphics.TitleBmp;
   import com.smbc.graphics.fontChars.FontCharHud;
   import com.smbc.graphics.fontChars.FontCharMenu;
   import com.smbc.graphics.skins.BmdInfo;
   import com.smbc.interfaces.IKeyPressable;
   import com.smbc.main.GlobVars;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GameStateManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.LevelDataManager;
   import com.smbc.managers.StatManager;
   import com.smbc.messageBoxes.FundingBox;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.messageBoxes.NewsTicker;
   import com.smbc.messageBoxes.StartMenu;
   import com.smbc.text.TextFieldContainer;
   import com.smbc.utils.CharacterSequencer;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class TitleLevel extends Level implements IKeyPressable
   {
      
      public static var instance:TitleLevel;
      
      public static var allowRestart:Boolean = true;
      
      private static const STATIC_DATA_DCT:CustomDictionary = new CustomDictionary();
      
      private static const IND_CHAR_CLASS:int = 0;
      
      private static const IND_UPGRADES:int = 1;
      
      private static const IND_START_POS:int = 2;
      
      private static const IND_ACTIVATE_POS:int = 3;
      
      private static const IND_SEQ:int = 4;
      
      private static const IND_CHAR_NUM:int = 5;
      
      private static const TITLE_Y_POS:int = 60;
      
      private static const CLICK_SCREEN_TXT_Y_POS:int = GlobVars.STAGE_HEIGHT / 2;
      
      private static const VERSION_TFC_PNT:Point = new Point(16,GlobVars.STAGE_HEIGHT - 26);
      
      private static const NEW_VERSION_AVAILABLE:String = " (New version available)";
      
      private static const MARIO_WAIT_TMR_DEL:int = 5000;
      
      {
         function():void
         {
            var _loc1_:* = [];
            _loc1_[IND_CHAR_CLASS] = Bass;
            _loc1_[IND_CHAR_NUM] = Bass.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Bass.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(1094,416);
            _loc1_[IND_ACTIVATE_POS] = new Point(1094,416);
            _loc1_[IND_SEQ] = [[1500,"pressRhtBtn"],[367,"pressJmpBtn"],[434,"relJmpBtn"],[267,"pressDwnBtn"],[67,"pressAtkBtn"],[800,"relAtkBtn"],[18,"relRhtBtn"],[33,"relDwnBtn"],[316,"pressLftBtn"],[33,"pressDwnBtn"],[67,"pressJmpBtn"],[84,"relJmpBtn"],[20,"relDwnBtn"],[65,"pressJmpBtn"],[817,"relJmpBtn"],[50,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Bill;
            _loc1_[IND_CHAR_NUM] = Bill.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Bill.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(4633,416);
            _loc1_[IND_ACTIVATE_POS] = new Point(4633,416);
            _loc1_[IND_SEQ] = [[4000,"pressRhtBtn"],[534,"pressJmpBtn"],[347,"relJmpBtn"],[800,"pressJmpBtn"],[152,"relJmpBtn"],[1568,"pressJmpBtn"],[99,"relJmpBtn"],[1400,"pressDwnBtn"],[21,"relRhtBtn"],[450,"pressAtkBtn"],[66,"relAtkBtn"],[86,"pressAtkBtn"],[81,"relAtkBtn"],[84,"pressAtkBtn"],[82,"relAtkBtn"],[86,"pressAtkBtn"],[82,"relAtkBtn"],[85,"pressAtkBtn"],[101,"relAtkBtn"],[80,"pressAtkBtn"],[118,"relAtkBtn"],[81,"pressAtkBtn"],[100,"relAtkBtn"],[87,"pressAtkBtn"],[99,"relAtkBtn"],[367,"relDwnBtn"],[98,"pressRhtBtn"],[184,"pressUpBtn"],[133,"pressAtkBtn"],[66,"relAtkBtn"],[85,"pressAtkBtn"],[101,"relAtkBtn"],[67,"pressAtkBtn"],[14,"relRhtBtn"],[84,"relAtkBtn"],[82,"pressAtkBtn"],[0,"pressLftBtn"],[86,"relAtkBtn"],[48,"relLftBtn"],[34,"pressAtkBtn"],[99,"relAtkBtn"],[0,"pressLftBtn"],[85,"pressAtkBtn"],[82,"relAtkBtn"],[19,"relLftBtn"],[80,"pressAtkBtn"],[86,"relAtkBtn"],[82,"pressAtkBtn"],[99,"relAtkBtn"],[34,"pressLftBtn"],[33,"pressAtkBtn"],[100,"relAtkBtn"],[34,"relLftBtn"],[51,"pressAtkBtn"],[99,"relAtkBtn"],[82,"pressAtkBtn"],[100,"relAtkBtn"],[134,"pressLftBtn"],[66,"relUpBtn"],[401,"pressJmpBtn"],[166,"relJmpBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Link;
            _loc1_[IND_CHAR_NUM] = Link.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Link.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(1514,288);
            _loc1_[IND_ACTIVATE_POS] = new Point(1514,288);
            _loc1_[IND_SEQ] = [[1100,"pressRhtBtn"],[31,"pressJmpBtn"],[269,"relJmpBtn"],[252,"pressDwnBtn"],[150,"relRhtBtn"],[900,"pressRhtBtn"],[52,"relDwnBtn"],[182,"relRhtBtn"],[84,"pressLftBtn"],[118,"pressSpcBtn"],[13,"relLftBtn"],[118,"relSpcBtn"],[680,"pressLftBtn"],[200,"pressJmpBtn"],[600,"relJmpBtn"],[567,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Luigi;
            _loc1_[IND_CHAR_NUM] = Luigi.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Luigi.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(2066,416);
            _loc1_[IND_ACTIVATE_POS] = new Point(2066,416);
            _loc1_[IND_SEQ] = [[1500,"pressJmpBtn"],[421,"relJmpBtn"],[512,"pressLftBtn"],[574,"pressAtkBtn"],[257,"pressJmpBtn"],[158,"relLftBtn"],[167,"pressLftBtn"],[374,"relJmpBtn"],[26,"relLftBtn"],[134,"relAtkBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = MegaMan;
            _loc1_[IND_CHAR_NUM] = MegaMan.CHAR_NUM;
            _loc1_[IND_UPGRADES] = MegaMan.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(567,161);
            _loc1_[IND_ACTIVATE_POS] = new Point(567,161);
            _loc1_[IND_SEQ] = [[1,"pressLftBtn"],[665,"relLftBtn"],[49,"pressRhtBtn"],[266,"relRhtBtn"],[300,"pressAtkBtn"],[67,"relAtkBtn"],[81,"pressAtkBtn"],[84,"relAtkBtn"],[234,"pressAtkBtn"],[133,"pressRhtBtn"],[649,"relRhtBtn"],[752,"pressRhtBtn"],[48,"pressJmpBtn"],[133,"relJmpBtn"],[53,"relAtkBtn"],[32,"relRhtBtn"],[335,"pressLftBtn"],[247,"pressDwnBtn"],[52,"pressJmpBtn"],[133,"relJmpBtn"],[66,"pressJmpBtn"],[116,"relJmpBtn"],[84,"pressJmpBtn"],[116,"relJmpBtn"],[66,"pressJmpBtn"],[134,"relJmpBtn"],[45,"relLftBtn"],[0,"relDwnBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Ryu;
            _loc1_[IND_CHAR_NUM] = Ryu.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Ryu.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(2766,496);
            _loc1_[IND_ACTIVATE_POS] = new Point(2766,496);
            _loc1_[IND_SEQ] = [[1,"pressLftBtn"],[2,"relLftBtn"],[500,"pressRhtBtn"],[73,"pressJmpBtn"],[127,"relJmpBtn"],[1000,"relRhtBtn"],[67,"pressRhtBtn"],[28,"pressUpBtn"],[351,"relRhtBtn"],[0,"relUpBtn"],[900,"pressSpcBtn"],[140,"relSpcBtn"],[860,"pressSpcBtn"],[171,"relSpcBtn"],[649,"pressLftBtn"],[0,"pressUpBtn"],[33,"pressJmpBtn"],[152,"relJmpBtn"],[466,"pressJmpBtn"],[114,"relJmpBtn"],[151,"relUpBtn"],[249,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Samus;
            _loc1_[IND_CHAR_NUM] = Samus.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Samus.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(3248,288);
            _loc1_[IND_ACTIVATE_POS] = new Point(3248,288);
            _loc1_[IND_SEQ] = [[200,"pressDwnBtn"],[128,"relDwnBtn"],[100,"pressDwnBtn"],[133,"relDwnBtn"],[67,"pressAtkBtn"],[133,"relAtkBtn"],[34,"pressLftBtn"],[200,"pressAtkBtn"],[100,"relLftBtn"],[33,"relAtkBtn"],[34,"pressUpBtn"],[100,"pressRhtBtn"],[33,"relUpBtn"],[100,"relRhtBtn"],[134,"pressJmpBtn"],[333,"pressRhtBtn"],[103,"relJmpBtn"],[64,"relRhtBtn"],[505,"pressRhtBtn"],[800,"pressUpBtn"],[230,"pressAtkBtn"],[136,"relAtkBtn"],[466,"pressAtkBtn"],[166,"relAtkBtn"],[535,"pressAtkBtn"],[133,"relAtkBtn"],[382,"relRhtBtn"],[51,"pressLftBtn"],[66,"relUpBtn"],[3000,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Simon;
            _loc1_[IND_CHAR_NUM] = Simon.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Simon.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(2154,416);
            _loc1_[IND_ACTIVATE_POS] = new Point(2154,416);
            _loc1_[IND_SEQ] = [[2500,"pressRhtBtn"],[244,"pressJmpBtn"],[123,"relJmpBtn"],[809,"pressJmpBtn"],[99,"relJmpBtn"],[168,"pressAtkBtn"],[167,"relAtkBtn"],[100,"relRhtBtn"],[534,"pressSpcBtn"],[133,"relSpcBtn"],[559,"pressSpcBtn"],[174,"relSpcBtn"],[693,"pressSpcBtn"],[174,"relSpcBtn"],[1428,"pressLftBtn"],[734,"pressJmpBtn"],[105,"relJmpBtn"],[595,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
            _loc1_[IND_CHAR_CLASS] = Sophia;
            _loc1_[IND_CHAR_NUM] = Sophia.CHAR_NUM;
            _loc1_[IND_UPGRADES] = Sophia.TITLE_SCREEN_UPGRADES;
            _loc1_[IND_START_POS] = new Point(3808,416);
            _loc1_[IND_ACTIVATE_POS] = new Point(3808,416);
            _loc1_[IND_SEQ] = [[1200,"pressAtkBtn"],[81,"relAtkBtn"],[85,"pressAtkBtn"],[82,"relAtkBtn"],[85,"pressAtkBtn"],[81,"relAtkBtn"],[86,"pressAtkBtn"],[101,"relAtkBtn"],[99,"pressAtkBtn"],[99,"relAtkBtn"],[66,"pressAtkBtn"],[101,"relAtkBtn"],[48,"pressAtkBtn"],[101,"relAtkBtn"],[66,"pressAtkBtn"],[53,"pressRhtBtn"],[47,"relAtkBtn"],[651,"pressAtkBtn"],[84,"relAtkBtn"],[66,"pressAtkBtn"],[84,"relAtkBtn"],[66,"pressAtkBtn"],[84,"relAtkBtn"],[84,"pressAtkBtn"],[82,"relAtkBtn"],[67,"pressAtkBtn"],[84,"relAtkBtn"],[67,"pressAtkBtn"],[83,"relAtkBtn"],[250,"pressJmpBtn"],[283,"relJmpBtn"],[216,"pressUpBtn"],[101,"relRhtBtn"],[167,"pressLftBtn"],[184,"relUpBtn"],[50,"relLftBtn"],[199,"pressJmpBtn"],[251,"pressLftBtn"],[50,"relJmpBtn"],[99,"relLftBtn"],[234,"pressRhtBtn"],[167,"relRhtBtn"],[115,"pressLftBtn"],[433,"pressJmpBtn"],[967,"relJmpBtn"],[320,"relLftBtn"]];
            STATIC_DATA_DCT.addItem(_loc1_.concat());
         }();
      }
      
      private const GS_MNGR:GameStateManager = GameStateManager.GS_MNGR;
      
      private const EVENT_MNGR:EventManager = EventManager.EVENT_MNGR;
      
      private var marioWaitTmr:GameLoopTimer;
      
      private var clickScreenTxt:TextFieldContainer;
      
      private var clickScreenTxtTmr:CustomTimer;
      
      private var dataDct:CustomDictionary;
      
      private var versionTfc:TextFieldContainer;
      
      public function TitleLevel()
      {
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         this.clickScreenTxtTmr = new CustomTimer(500);
         this.dataDct = STATIC_DATA_DCT.clone();
         var _loc1_:int = Character.NUM_CHARACTERS;
         var _loc2_:StatManager = StatManager.STAT_MNGR;
         var _loc3_:int = 0;
         while(_loc3_ < _loc1_)
         {
            _loc2_.removeAllUpgradesForChar(_loc3_,false,true);
            _loc3_++;
         }
         for each(_loc4_ in STATIC_DATA_DCT)
         {
            _loc5_ = _loc4_[IND_CHAR_NUM];
            _loc7_ = (_loc6_ = _loc4_[IND_UPGRADES]).length;
            _loc8_ = 0;
            while(_loc8_ < _loc7_)
            {
               _loc2_.addCharUpgrade(_loc5_,_loc6_[_loc8_]);
               _loc8_++;
            }
         }
         _loc2_.curCharNum = Mario.CHAR_NUM;
         super("1-1a",LevelDataManager.getLevelData(MapPack.Smb),[],true);
         STAT_MNGR.passedHw = false;
         if(instance != null)
         {
            throw new SingletonError();
         }
         instance = this;
      }
      
      override public function initiateLevel() : void
      {
         var _loc1_:CustomMovieClip = null;
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:Class = null;
         var _loc5_:Character = null;
         super.initiateLevel();
         screenScrollsLeft = false;
         charDct = new CustomDictionary(true);
         removeEventListener(MouseEvent.CLICK,this.clickLsr);
         if(MessageBox.activeInstance)
         {
            GAME.setChildIndex(MessageBox.activeInstance,GAME.numChildren - 1);
         }
         this.EVENT_MNGR.titleLevelInitiate();
         _loc1_ = new TitleBmp();
         _loc1_.x = GlobVars.STAGE_WIDTH / 2 - _loc1_.width / 2;
         _loc1_.y = TITLE_Y_POS;
         addChild(_loc1_);
         this.versionTfc = new TextFieldContainer(FontCharMenu.FONT_NUM,FontCharMenu.TYPE_NORMAL);
         this.versionTfc.text = "Version " + Versions.toString(GameSettings.VERSION_NUMBER);
         if(OnlineData.newVersionAvailable)
         {
            this.versionTfc.text += NEW_VERSION_AVAILABLE;
         }
         addChild(this.versionTfc);
         this.versionTfc.x = VERSION_TFC_PNT.x;
         this.versionTfc.y = VERSION_TFC_PNT.y;
         this.marioWaitTmr = new GameLoopTimer(MARIO_WAIT_TMR_DEL,1);
         this.marioWaitTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.marioWaitTmrHandler,false,0,true);
         this.marioWaitTmr.start();
         this.setCorrectCharSkin(player);
         for each(_loc2_ in this.dataDct)
         {
            _loc3_ = _loc2_[IND_START_POS];
            (_loc5_ = new (_loc4_ = _loc2_[IND_CHAR_CLASS] as Class)()).x = _loc3_.x;
            _loc5_.y = _loc3_.y;
            _loc5_.setPowerState(_loc2_[IND_UPGRADES]);
            _loc5_.initiate();
            _loc5_.takeNoDamage = true;
            _loc5_.stopUpdate = true;
            charDct.addItem(_loc2_[IND_CHAR_NUM],_loc5_);
            this.setCorrectCharSkin(_loc5_);
         }
         stage.addEventListener(MouseEvent.CLICK,this.clickHandler,false,0,true);
         this.clickScreenTxt = new TextFieldContainer(FontCharHud.FONT_NUM);
         this.clickScreenTxt.multiline = true;
         this.clickScreenTxt.text = "Click screen or press\\nany key to begin";
         this.clickScreenTxt.x = GlobVars.STAGE_WIDTH / 2 - this.clickScreenTxt.width / 2;
         this.clickScreenTxt.y = CLICK_SCREEN_TXT_Y_POS;
         this.clickScreenTxtTmr.addEventListener(TimerEvent.TIMER,this.clickScreenTxtTmrHandler,false,0,true);
         player.relUpBtn();
         player.relRhtBtn();
         player.relAtkBtn();
         NewsTicker.getInstance().initiateLevelHandler();
         if(OnlineData.displayFundingBox)
         {
            FundingBox.getInstance().initiateLevelHandler();
         }
      }
      
      protected function clickScreenTxtTmrHandler(param1:TimerEvent) : void
      {
         if(GAME.contains(this.clickScreenTxt))
         {
            GAME.removeChild(this.clickScreenTxt);
         }
         else if(!MessageBox.activeInstance)
         {
            if(this.versionTfc.visible)
            {
               this.versionTfc.visible = false;
            }
            GAME.addChild(this.clickScreenTxt);
         }
      }
      
      protected function marioWaitTmrHandler(param1:Event) : void
      {
         this.marioWaitTmr.stop();
         this.marioWaitTmr = null;
         this.clickScreenTxtTmr.start();
      }
      
      override public function clickLsr(param1:MouseEvent) : void
      {
      }
      
      override protected function gameLoop(param1:TimerEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Point = null;
         var _loc4_:Point = null;
         var _loc5_:Character = null;
         var _loc6_:CharacterSequencer = null;
         super.gameLoop(param1);
         player.takeNoDamage = true;
         if(this.marioWaitTmr || this.GS_MNGR.gameState != GS_PLAY || flagPole.activated || _beatLevel)
         {
            return;
         }
         player.relDwnBtn();
         player.relLftBtn();
         player.rhtBtn = true;
         player.vxMax = 110;
         if(player.vx > player.vxMax)
         {
            player.vx = player.vxMax;
         }
         this.checkForJump();
         for each(_loc2_ in this.dataDct)
         {
            _loc3_ = _loc2_[IND_ACTIVATE_POS];
            if(locStgRht + 20 > _loc3_.x)
            {
               _loc4_ = _loc2_[IND_START_POS];
               if(_loc5_ = charDct[_loc2_[IND_CHAR_NUM]])
               {
                  _loc5_.x = _loc4_.x;
                  _loc5_.y = _loc4_.y;
                  _loc5_.stopUpdate = false;
                  (_loc6_ = new CharacterSequencer()).startNewSequence(_loc2_[IND_SEQ],_loc5_);
                  this.dataDct.removeItem(_loc2_);
               }
            }
         }
      }
      
      override public function resizeScenery() : void
      {
         var _loc1_:Character = null;
         super.resizeScenery();
         if(!StatManager.STAT_MNGR.loadingData)
         {
            for each(_loc1_ in charDct)
            {
               this.setCorrectCharSkin(_loc1_);
            }
            this.setCorrectCharSkin(player);
         }
      }
      
      private function setCorrectCharSkin(param1:Character) : void
      {
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc3_:int = GameSettings.getMapSkinLimited();
         var _loc4_:int = _loc2_.getCurrentMapConsoleType();
         switch(_loc3_)
         {
            case BmdInfo.SKIN_NUM_SMB3_NES:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_MARIO_SMB3_NES;
               }
               else if(param1 is Luigi)
               {
                  _loc4_ = Luigi.SKIN_LUIGI_SMB3_NES;
               }
               break;
            case BmdInfo.SKIN_NUM_SMB3_SNES:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_MARIO_SMB3_SNES;
               }
               else if(param1 is Luigi)
               {
                  _loc4_ = Luigi.SKIN_LUIGI_SMB3_SNES;
               }
               break;
            case BmdInfo.SKIN_NUM_SMW:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_MARIO_SMW_SNES;
               }
               else if(param1 is Luigi)
               {
                  _loc4_ = Luigi.SKIN_LUIGI_SMW_SNES;
               }
               break;
            case BmdInfo.SKIN_NUM_DEMON_RETURNS:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_DEMON_NES;
               }
               break;
            case BmdInfo.SKIN_NUM_ATARI:
               _loc4_ = Character.getAtariSkinNumber(param1.charNum);
               break;
            case BmdInfo.SKIN_NUM_SMB_SPECIAL:
               _loc4_ = Character.getSpecialSkinNumber(param1.charNum);
               break;
            case BmdInfo.SKIN_NUM_SMB2_NES:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_MARIO_SMB2_NES;
               }
               else if(param1 is Luigi)
               {
                  _loc4_ = Luigi.SKIN_LUIGI_SMB2_NES;
               }
               break;
            case BmdInfo.SKIN_NUM_SMB2_SNES:
               if(param1 is Mario)
               {
                  _loc4_ = Mario.SKIN_MARIO_SMB2_SNES;
               }
               else if(param1 is Luigi)
               {
                  _loc4_ = Luigi.SKIN_LUIGI_SMB2_SNES;
               }
         }
         _loc2_.changeCharacterSkin(param1,_loc4_);
      }
      
      private function checkForJump() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(player.onGround || waterLevel && player.vy >= 0)
         {
            _loc1_ = GLOB_STG_BOT - TILE_SIZE * 2;
            if(player.jmpBtn)
            {
               player.relJmpBtn();
            }
            _loc2_ = player.nx;
            _loc3_ = player.ny;
            _loc4_ = getNearestGrid(_loc2_,1);
            if(getGroundAt(_loc4_ + TILE_SIZE,_loc3_ - TILE_SIZE) || getGroundAt(_loc4_,_loc3_ - TILE_SIZE))
            {
               player.pressJmpBtn();
               return;
            }
            if(!getGroundAt(_loc4_ - TILE_SIZE,_loc3_) && !getGroundAt(_loc4_,GLOB_STG_BOT - TILE_SIZE))
            {
               player.pressJmpBtn();
               return;
            }
            if(waterLevel && player.wallOnRight)
            {
               player.pressJmpBtn();
            }
         }
      }
      
      public function clickHandler(param1:MouseEvent) : void
      {
         if(MessageBox.activeInstance)
         {
            return;
         }
         var _loc2_:StartMenu = new StartMenu();
         _loc2_.initiate();
      }
      
      public function pressAtkBtn() : void
      {
      }
      
      public function pressJmpBtn() : void
      {
         if(MessageBox.activeInstance)
         {
            return;
         }
         var _loc1_:StartMenu = new StartMenu();
         _loc1_.initiate();
      }
      
      public function pressUpBtn() : void
      {
      }
      
      public function pressDwnBtn() : void
      {
      }
      
      public function pressLftBtn() : void
      {
      }
      
      public function pressRhtBtn() : void
      {
      }
      
      public function pressPseBtn() : void
      {
      }
      
      public function pressSpcBtn() : void
      {
      }
      
      override protected function completeLevel() : void
      {
         this.destroyLevel();
         if(allowRestart)
         {
            GAME.addChild(new TitleLevel());
         }
      }
      
      override public function changeScreenScrollsLeftSetting() : void
      {
         screenScrollsLeft = false;
      }
      
      override public function destroyLevel() : void
      {
         var _loc1_:Character = null;
         GlobVars.STAGE.removeEventListener(MouseEvent.CLICK,this.clickHandler);
         for each(_loc1_ in charDct)
         {
            _loc1_.destroy();
         }
         super.destroyLevel();
         if(!allowRestart)
         {
            NewsTicker.getInstance().kill();
            if(OnlineData.displayFundingBox)
            {
               FundingBox.getInstance().kill();
            }
         }
         this.EVENT_MNGR.titleLevelDestroy();
         instance = null;
         if(GAME.contains(this.clickScreenTxt))
         {
            GAME.removeChild(this.clickScreenTxt);
         }
         this.clickScreenTxtTmr.removeEventListener(TimerEvent.TIMER,this.clickScreenTxtTmrHandler);
      }
   }
}
