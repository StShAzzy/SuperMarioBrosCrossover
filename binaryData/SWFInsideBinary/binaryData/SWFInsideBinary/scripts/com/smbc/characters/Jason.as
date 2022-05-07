package com.smbc.characters
{
   import com.smbc.data.SoundNames;
   import com.smbc.ground.Ground;
   import com.smbc.main.AnimatedObject;
   
   public class Jason extends AnimatedObject
   {
      
      public static const EXIT_SOPHIA_VY:int = -150;
      
      public static const EXIT_SOPHIA_Y_OFS:int = -20;
      
      public static const FL_WALK:String = "walk";
      
      public static const FL_STAND:String = "stand";
      
      public static const GRAVITY:int = Sophia.GRAVITY;
       
      
      private var sophia:Sophia;
      
      private var exit:Boolean;
      
      public function Jason(param1:Sophia, param2:Boolean = true)
      {
         super();
         this.sophia = param1;
         this.exit = param2;
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_BRICK);
         hitTestTypesDct.addItem(HT_CHARACTER);
      }
      
      public function exitSophia() : void
      {
         x = this.sophia.nx;
         y = this.sophia.ny + EXIT_SOPHIA_Y_OFS;
         vy = EXIT_SOPHIA_VY;
         stopAnim = true;
         gotoAndStop(FL_WALK);
         SND_MNGR.playSound(SoundNames.SFX_SOPHIA_OPEN);
      }
      
      override public function hitGround(param1:Ground, param2:String) : void
      {
         super.hitGround(param1,param2);
         gotoAndStop(FL_STAND);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         gravity = GRAVITY;
         if(this.exit)
         {
            this.exitSophia();
         }
      }
   }
}
