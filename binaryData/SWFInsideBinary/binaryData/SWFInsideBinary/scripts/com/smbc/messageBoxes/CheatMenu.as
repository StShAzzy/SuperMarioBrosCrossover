package com.smbc.messageBoxes
{
   import com.explodingRabbit.cross.data.ConsoleType;
   import com.explodingRabbit.cross.games.Games;
   import com.smbc.data.Cheats;
   import com.smbc.data.SoundNames;
   import com.smbc.level.Level;
   import com.smbc.sound.SoundContainer;
   import com.smbc.text.TextFieldContainer;
   import flash.ui.Keyboard;
   
   public class CheatMenu extends SettingsMenuBox
   {
      
      private static const ALL_CHEATS_CTR_NUM:int = 10;
      
      private static const CORRECT_INPUT:Array = [Keyboard.UP,Keyboard.UP,Keyboard.DOWN,Keyboard.DOWN,Keyboard.LEFT,Keyboard.RIGHT,Keyboard.LEFT,Keyboard.RIGHT,Keyboard.B,Keyboard.A];
       
      
      private var allCheatsCtr:int;
      
      private var enteringCode:Boolean;
      
      private var currentInputIndex:int;
      
      private var musicWasPlaying:Boolean;
      
      public function CheatMenu(param1:int = 0, param2:Number = NaN)
      {
         super(this.loadItems(),param1,param2);
         nextMsgBxToCreate = new OptionsMenu(OptionsMenu.lastIndex);
      }
      
      private function loadItems() : Array
      {
         var _loc1_:Array = [this.addCheat(MenuBoxItems.LEVEL_SELECT),this.addCheat(MenuBoxItems.ALL_GROUND_IS_BRICKS,Cheats.allGroundIsBricks),this.addCheat(MenuBoxItems.ALL_HAMMER_BROS,Cheats.allHammerBros),this.addCheat(MenuBoxItems.ALL_WEAPONS_PIERCE,Cheats.allWeaponsPierce),this.addCheat(MenuBoxItems.ALWAYS_BREAK_BRICKS,Cheats.alwaysBreakBricks),this.addCheat(MenuBoxItems.BOUNCY_PITS,Cheats.bouncyPits),this.addCheat(MenuBoxItems.CLASSIC_SAMUS,Cheats.classicSamus),this.addCheat(MenuBoxItems.CLASSIC_SCREEN_SCROLL,Cheats.classicScreenScroll),this.addCheat(MenuBoxItems.CLASSIC_SIMON,Cheats.classicSimon),this.addCheat(MenuBoxItems.EVERYONE_CAN_STOMP,Cheats.everyoneCanStomp),this.addCheat(MenuBoxItems.EVIL_HAMMER_BROS,Cheats.evilHammerBros),this.addCheat(MenuBoxItems.EXTRA_CHECKPOINTS,Cheats.extraCheckpoints),this.addCheat(MenuBoxItems.INFINITE_AMMO,Cheats.infiniteAmmo),this.addCheat(MenuBoxItems.INFINITE_LIVES,Cheats.infiniteLives),this.addCheat(MenuBoxItems.INFINITE_TIME,Cheats.infiniteTime),this.addCheat(MenuBoxItems.INVINCIBLE,Cheats.invincible),this.addCheat(MenuBoxItems.WATER_MODE,Cheats.waterMode),[MenuBoxItems.ENTER_CODE],[MenuBoxItems.BACK]];
         if(!Cheats.getLockStatus(MenuBoxItems.LEVEL_SELECT))
         {
            _loc1_.shift();
         }
         if(Cheats.allUnlocked)
         {
            _loc1_.splice(_loc1_.length - 2,1);
         }
         return _loc1_;
      }
      
      private function addCheat(param1:String, param2:* = undefined) : Array
      {
         if(Cheats.getLockStatus(param1))
         {
            return [param1,param2,MenuBoxItems.HIDDEN_CHEAT];
         }
         return [param1,param2];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:String = null;
         var _loc5_:Level = Level.levelInstance;
         var _loc6_:int = -1;
         if(param3 && param3.text == MenuBoxItems.HIDDEN_CHEAT)
         {
            nextMsgBxToCreate = new PlainMessageBox(Cheats.getUnlockConditionsMessage(param1));
            nextMsgBxToCreate.nextMsgBxToCreate = new CheatMenu(cSelNum,TXT_CONT.y);
            SND_MNGR.playSoundNow(SN_CHOOSE_ITEM);
            cancel();
            return;
         }
         switch(param1)
         {
            case MenuBoxItems.EVERYONE_CAN_STOMP:
               _loc7_ = !Cheats.everyoneCanStomp;
               Cheats.everyoneCanStomp = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.ALL_HAMMER_BROS:
               _loc7_ = !Cheats.allHammerBros;
               Cheats.allHammerBros = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.ALL_WEAPONS_PIERCE:
               _loc8_ = convertToOnOffStr(Cheats.allWeaponsPierce = Boolean(!Cheats.allWeaponsPierce));
               break;
            case MenuBoxItems.ALL_GROUND_IS_BRICKS:
               _loc8_ = convertToOnOffStr(Cheats.allGroundIsBricks = Boolean(!Cheats.allGroundIsBricks));
               break;
            case MenuBoxItems.ALWAYS_BREAK_BRICKS:
               _loc8_ = convertToOnOffStr(Cheats.alwaysBreakBricks = Boolean(!Cheats.alwaysBreakBricks));
               break;
            case MenuBoxItems.BACK:
               cancel();
               break;
            case MenuBoxItems.BOUNCY_PITS:
               _loc7_ = !Cheats.bouncyPits;
               Cheats.bouncyPits = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.CLASSIC_SAMUS:
               _loc7_ = !Cheats.classicSamus;
               Cheats.classicSamus = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.CLASSIC_SCREEN_SCROLL:
               _loc7_ = !Cheats.classicScreenScroll;
               Cheats.classicScreenScroll = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.CLASSIC_SIMON:
               _loc7_ = !Cheats.classicSimon;
               Cheats.classicSimon = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               ++this.allCheatsCtr;
               break;
            case MenuBoxItems.EVIL_HAMMER_BROS:
               _loc7_ = !Cheats.evilHammerBros;
               Cheats.evilHammerBros = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.EXTRA_CHECKPOINTS:
               _loc7_ = !Cheats.extraCheckpoints;
               Cheats.extraCheckpoints = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.INFINITE_AMMO:
               _loc7_ = !Cheats.infiniteAmmo;
               Cheats.infiniteAmmo = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.INFINITE_LIVES:
               _loc7_ = !Cheats.infiniteLives;
               Cheats.infiniteLives = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.INFINITE_TIME:
               _loc7_ = !Cheats.infiniteTime;
               Cheats.infiniteTime = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               break;
            case MenuBoxItems.INVINCIBLE:
               _loc7_ = !Cheats.invincible;
               Cheats.invincible = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               if(_loc5_ && _loc5_.player)
               {
                  if(_loc7_)
                  {
                     _loc5_.player.forceTakeNoDamage();
                  }
                  else
                  {
                     _loc5_.player.forceTakeDamage();
                  }
               }
               break;
            case MenuBoxItems.WATER_MODE:
               _loc7_ = !Cheats.waterMode;
               Cheats.waterMode = _loc7_;
               _loc8_ = convertToOnOffStr(_loc7_);
               if(_loc5_ && !_loc5_.initialWaterLevel)
               {
                  if(_loc7_)
                  {
                     _loc5_.forceWaterLevel();
                  }
                  else
                  {
                     _loc5_.forceNonwaterLevel();
                  }
               }
               break;
            case MenuBoxItems.ENTER_CODE:
               this.beginEnteringCode();
         }
         afterChooseItem(param1,_loc8_,param3);
      }
      
      private function beginEnteringCode() : void
      {
         this.enteringCode = true;
         this.currentInputIndex = 0;
         if(SND_MNGR.musicPlayerMain.isPlaying)
         {
            this.musicWasPlaying = true;
            SND_MNGR.pauseBgm();
         }
         else
         {
            this.musicWasPlaying = false;
         }
         SND_MNGR.playMusic(Games.contra.SngTitle,SND_MNGR.sfxPlayer,false,null,ConsoleType.BIT_8,true);
      }
      
      private function captureInput(param1:uint) : void
      {
         var _loc2_:SoundContainer = null;
         if(CORRECT_INPUT[this.currentInputIndex] == param1)
         {
            ++this.currentInputIndex;
            if(this.currentInputIndex == CORRECT_INPUT.length)
            {
               this.cancelCodeInput();
               Cheats.unlockAllCheats();
               nextMsgBxToCreate = new CheatMenu();
               cancel();
               _loc2_ = SND_MNGR.findSound(SoundNames.SFX_GAME_HIT_CEILING);
               if(_loc2_ != null)
               {
                  SND_MNGR.removeSnd(_loc2_);
               }
               SND_MNGR.playSoundNow(SoundNames.SFX_GAME_NEW_LIFE);
            }
         }
         else
         {
            this.cancelCodeInput();
         }
      }
      
      private function cancelCodeInput() : void
      {
         this.enteringCode = false;
         SND_MNGR.sfxPlayer.stop();
         SND_MNGR.playSoundNow(SoundNames.SFX_GAME_HIT_CEILING);
         if(this.musicWasPlaying)
         {
            SND_MNGR.resumeBgm();
         }
      }
      
      override public function pressUpBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.UP);
         }
         else
         {
            super.pressUpBtn();
         }
      }
      
      override public function pressDwnBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.DOWN);
         }
         else
         {
            super.pressDwnBtn();
         }
      }
      
      override public function pressLftBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.LEFT);
         }
         else
         {
            super.pressLftBtn();
         }
      }
      
      override public function pressRhtBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.RIGHT);
         }
         else
         {
            super.pressRhtBtn();
         }
      }
      
      override public function pressJmpBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.A);
         }
         else
         {
            super.pressJmpBtn();
         }
      }
      
      override public function pressAtkBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.B);
         }
         else
         {
            cancel();
            SND_MNGR.playSoundNow(SN_CANCEL_ITEM);
         }
      }
      
      override public function pressSpcBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.C);
         }
         else
         {
            super.pressSpcBtn();
         }
      }
      
      override public function pressPseBtn() : void
      {
         if(this.enteringCode)
         {
            this.captureInput(Keyboard.ESCAPE);
         }
         else
         {
            super.pressPseBtn();
         }
      }
   }
}
