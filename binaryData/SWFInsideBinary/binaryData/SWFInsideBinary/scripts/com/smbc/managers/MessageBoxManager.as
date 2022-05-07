package com.smbc.managers
{
   import com.smbc.data.Cheats;
   import com.smbc.data.GameStates;
   import com.smbc.errors.SingletonError;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.IInitiater;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.messageBoxes.CharacterSelectBox;
   import com.smbc.messageBoxes.MenuBox;
   import com.smbc.messageBoxes.MessageBox;
   import com.smbc.messageBoxes.MessageBoxMessages;
   import com.smbc.messageBoxes.PauseMenu;
   import com.smbc.messageBoxes.PlainMessageBox;
   import com.smbc.messageBoxes.StartMenu;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public final class MessageBoxManager extends MainManager implements IInitiater
   {
      
      public static const INSTANCE:MessageBoxManager = new MessageBoxManager();
      
      private static var instantiated:Boolean;
       
      
      private const DEF_POS_PNT:Point = new Point(GlobVars.STAGE_WIDTH / 2,GlobVars.STAGE_HEIGHT / 2);
      
      private var msgBx:PlainMessageBox;
      
      private var msgsToShowVec:Vector.<String>;
      
      private var oldPlayerStopAnim:Boolean;
      
      public var mainMenu:MenuBox;
      
      private const TUT_MNGR:TutorialManager = TutorialManager.TUT_MNGR;
      
      public var setBtnsDct:Dictionary;
      
      private var _lastMenuPosition:int;
      
      private var freezeGame:Boolean;
      
      private var playCheatSfx:Boolean;
      
      public function MessageBoxManager()
      {
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
      }
      
      public function updateVars() : void
      {
         level = Level.levelInstance;
         player = level.player;
      }
      
      public function createPlainMessageBox(param1:String) : void
      {
      }
      
      public function tutorialStart(param1:Vector.<String>, param2:Boolean = true) : void
      {
         if(Level.levelInstance is CharacterSelect)
         {
            param2 = false;
         }
         this.freezeGame = param2;
         if(!this.msgsToShowVec)
         {
            this.msgsToShowVec = new Vector.<String>();
            this.msgsToShowVec = this.msgsToShowVec.concat(param1.concat());
            this.createTutorialMessagebox(this.msgsToShowVec[0]);
         }
         else
         {
            this.msgsToShowVec = this.msgsToShowVec.concat(param1.concat());
         }
      }
      
      public function createMessageBoxSeries(param1:Vector.<String>, param2:Boolean, param3:Boolean = false) : void
      {
         this.playCheatSfx = param3;
         this.tutorialStart(param1,param2);
      }
      
      private function createTutorialMessagebox(param1:String) : void
      {
         this.msgBx = new PlainMessageBox(param1);
         this.msgBx.tutorial = true;
         var _loc2_:MessageBox = MessageBox.activeInstance;
         if(_loc2_ is PlainMessageBox && (_loc2_ as PlainMessageBox).msgStr == param1)
         {
            return;
         }
         if(this.playCheatSfx && param1.indexOf(MessageBoxMessages.UNLOCKED_CHEAT_PRETEXT) != -1)
         {
            sndMngr.playSoundNow(Cheats.SN_ACTIVATE_CHEAT);
         }
         if(_loc2_ && _loc2_ != CharacterSelectBox.instance)
         {
            _loc2_.nextMsgBxToCreate = this.msgBx;
         }
         else
         {
            this.msgBx.initiate();
         }
         if(level && this.freezeGame)
         {
            level.freezeGame();
            this.oldPlayerStopAnim = player.stopAnim;
            player.stopAnim = true;
         }
      }
      
      public function tutorialEnd() : void
      {
         if(this.msgsToShowVec)
         {
            this.msgsToShowVec.shift();
            if(this.msgsToShowVec.length > 0)
            {
               this.createTutorialMessagebox(this.msgsToShowVec[0]);
               return;
            }
            this.msgsToShowVec = null;
         }
         this.playCheatSfx = false;
         this.msgBx = null;
         btnMngr.activeMsgBx = null;
         if(level && this.freezeGame)
         {
            level.unfreezeGame();
            player.stopAnim = this.oldPlayerStopAnim;
            this.oldPlayerStopAnim = false;
         }
         dispatchEvent(new Event(CustomEvents.MESSAGE_BOX_SERIES_END));
      }
      
      public function writeNextMainMenu(param1:MessageBox, param2:Boolean = true) : void
      {
         var _loc3_:int = 0;
         if(gsMngr.gameState == GameStates.PAUSE)
         {
            if(param2)
            {
               _loc3_ = PauseMenu.lastIndex;
            }
            param1.nextMsgBxToCreate = new PauseMenu(_loc3_);
         }
         else
         {
            if(param2)
            {
               _loc3_ = StartMenu.lastIndex;
            }
            param1.nextMsgBxToCreate = new StartMenu(_loc3_);
         }
      }
      
      public function resetLastMenuPosition() : void
      {
         this._lastMenuPosition = 0;
      }
      
      public function saveLastMenuPosition() : void
      {
         this._lastMenuPosition = MenuBox.activeMenu.cSelNum;
      }
      
      public function removeAllMessageBoxes() : void
      {
         var mc:DisplayObject = null;
         var n:int = GlobVars.STAGE.numChildren;
         var i:int = 0;
         while(i < n)
         {
            mc = GlobVars.STAGE.getChildAt(i);
            if(mc is MessageBox)
            {
               with(mc as MessageBox)
               {
                  
                  nextMsgBxToCreate = null;
                  nextMsgBxToFocus = null;
                  cancel();
               }
            }
            i++;
         }
      }
      
      public function get lastMenuPosition() : int
      {
         return this._lastMenuPosition;
      }
   }
}
