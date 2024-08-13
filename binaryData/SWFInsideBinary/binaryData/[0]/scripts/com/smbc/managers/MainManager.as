package com.smbc.managers
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.Character;
   import com.smbc.errors.InitiateError;
   import com.smbc.interfaces.IInitiater;
   import com.smbc.interfaces.IManager;
   import com.smbc.level.Level;
   import flash.events.EventDispatcher;
   
   public class MainManager extends EventDispatcher implements IInitiater, IManager
   {
      
      public static const MNGR_DCT:CustomDictionary = new CustomDictionary();
       
      
      protected var initiated:Boolean;
      
      protected var game:SuperMarioBrosCrossover;
      
      protected var gsMngr:GameStateManager;
      
      protected var grMngr:GraphicsManager;
      
      protected var btnMngr:ButtonManager;
      
      protected var statMngr:StatManager;
      
      protected var scrnMngr:ScreenManager;
      
      protected var sndMngr:SoundManager;
      
      protected var eventMngr:EventManager;
      
      protected var msgBxMngr:MessageBoxManager;
      
      protected var txtMngr:TextManager;
      
      protected var tutMngr:TutorialManager;
      
      protected var level:Level;
      
      protected var player:Character;
      
      public function MainManager()
      {
         super();
      }
      
      public function initiate() : void
      {
         if(this.initiated)
         {
            throw new InitiateError();
         }
         this.initiated = true;
         this.game = SuperMarioBrosCrossover.game;
         this.gsMngr = GameStateManager.GS_MNGR;
         this.btnMngr = ButtonManager.BTN_MNGR;
         this.statMngr = StatManager.STAT_MNGR;
         this.scrnMngr = ScreenManager.SCRN_MNGR;
         this.sndMngr = SoundManager.SND_MNGR;
         this.eventMngr = EventManager.EVENT_MNGR;
         this.txtMngr = TextManager.INSTANCE;
         this.msgBxMngr = MessageBoxManager.INSTANCE;
         this.tutMngr = TutorialManager.TUT_MNGR;
         this.grMngr = GraphicsManager.INSTANCE;
      }
      
      public function clearLevelRefs() : void
      {
         this.level = null;
         this.player = null;
      }
      
      public function updateLevelRefs() : void
      {
         this.level = Level.levelInstance;
         this.player = this.level.player;
      }
   }
}
