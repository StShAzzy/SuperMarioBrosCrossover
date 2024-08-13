package com.smbc.displayInterface
{
   import com.smbc.SuperMarioBrosCrossover;
   import com.smbc.characters.WarriorOfLight;
   import com.smbc.main.GlobVars;
   import com.smbc.main.SkinObj;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class FinalFantasyPointer extends SkinObj
   {
      
      private static const SPEED:int = 400;
      
      public static const TYPE_NORMAL:String = "normal";
      
      public static const TYPE_HORIZONTAL:String = "horizontal";
      
      public static const EVENT_CANCEL:String = "eventCancel";
      
      public static const EVENT_SELECT:String = "eventSelect";
       
      
      private var game:SuperMarioBrosCrossover;
      
      private var warrior:WarriorOfLight;
      
      private var lftBtn:Boolean;
      
      private var rhtBtn:Boolean;
      
      private var upBtn:Boolean;
      
      private var dwnBtn:Boolean;
      
      private var type:String;
      
      public function FinalFantasyPointer(param1:WarriorOfLight, param2:String = "normal")
      {
         this.game = SuperMarioBrosCrossover.game;
         super();
         this.warrior = param1;
         this.type = param2;
      }
      
      override public function initiate() : void
      {
         var _loc1_:Point = null;
         _loc1_ = this.warrior.localToGlobal(GlobVars.ZERO_PT);
         x = _loc1_.x;
         if(this.type == TYPE_NORMAL)
         {
            y = _loc1_.y;
         }
         else
         {
            y = GlobVars.STAGE_HEIGHT / 2;
         }
         this.game.addChild(this);
      }
      
      public function update(param1:Number) : void
      {
         if(this.type == TYPE_NORMAL)
         {
            if(this.upBtn && !this.dwnBtn)
            {
               y -= param1 * SPEED;
            }
            else if(this.dwnBtn && !this.upBtn)
            {
               y += param1 * SPEED;
            }
         }
         if(this.rhtBtn && !this.lftBtn)
         {
            x += param1 * SPEED;
         }
         else if(this.lftBtn && !this.rhtBtn)
         {
            x -= param1 * SPEED;
         }
      }
      
      public function pressJmpBtn() : void
      {
         dispatchEvent(new Event(EVENT_SELECT));
         this.cleanUp();
      }
      
      public function pressAtkBtn() : void
      {
         dispatchEvent(new Event(EVENT_CANCEL));
         this.cleanUp();
      }
      
      public function pressUpBtn() : void
      {
         this.upBtn = true;
      }
      
      public function pressDwnBtn() : void
      {
         this.dwnBtn = true;
      }
      
      public function pressLftBtn() : void
      {
         this.lftBtn = true;
      }
      
      public function pressRhtBtn() : void
      {
         this.rhtBtn = true;
      }
      
      public function relUpBtn() : void
      {
         this.upBtn = false;
      }
      
      public function relDwnBtn() : void
      {
         this.dwnBtn = false;
      }
      
      public function relLftBtn() : void
      {
         this.lftBtn = false;
      }
      
      public function relRhtBtn() : void
      {
         this.rhtBtn = false;
      }
      
      override public function cleanUp() : void
      {
         if(this.game.contains(this))
         {
            this.game.removeChild(this);
         }
         if(this.warrior)
         {
            this.warrior.removePointer();
         }
      }
   }
}
