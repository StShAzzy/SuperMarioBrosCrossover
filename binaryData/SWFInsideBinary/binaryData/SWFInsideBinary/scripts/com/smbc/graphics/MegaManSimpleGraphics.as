package com.smbc.graphics
{
   import com.smbc.characters.Bass;
   import com.smbc.characters.MegaMan;
   import com.smbc.data.CharacterInfo;
   import com.smbc.events.CustomEvents;
   import com.smbc.main.LevObj;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class MegaManSimpleGraphics extends SimpleAnimatedObject
   {
      
      public static const TYPE_DAMAGE_SPLASH:String = "damageSplash";
      
      public static const TYPE_DAMAGE_SPARK:String = "damageSpark";
      
      public static const TYPE_ENEMY_EXPLOSION:String = "enemyExplosion";
      
      public static const TYPE_CHARGE_KICK:String = "chargeKick";
      
      public static const TYPE_SLIDE_DUST:String = "slideDust";
      
      private static const FL_CHARGE_KICK_END:String = "chargeKickEnd";
      
      private static const FL_CHARGE_KICK_START:String = "chargeKickStart";
      
      public static const FL_DAMAGE_SPLASH:String = "damageSplash";
      
      public static const FL_DAMAGE_SPARK_END:String = "damageSparkEnd";
      
      public static const FL_DAMAGE_SPARK_START:String = "damageSparkStart";
      
      public static const FL_ENEMY_EXPLOSION_END:String = "enemyExplosionEnd";
      
      public static const FL_ENEMY_EXPLOSION_START:String = "enemyExplosionStart";
      
      public static const FL_SLIDE_DUST_END:String = "slideDustEnd";
      
      public static const FL_SLIDE_DUST_START:String = "slideDustStart";
      
      private static const DAMAGE_SPLASH_FLICKER_TMR_DEL:int = 50;
      
      private static const DAMAGE_SPARK_1_OFS_PNT:Point = new Point(-24,-8);
      
      private static const DAMAGE_SPARK_2_OFS_PNT:Point = new Point(0,-14);
      
      private static const DAMAGE_SPARK_3_OFS_PNT:Point = new Point(24,-8);
      
      private static const SLIDE_DUST_OFS_PNT:Point = new Point(-32,0);
      
      private static const SLIDE_DUST_ANIM_TMR_DEL:int = 130;
      
      private static const SPARK_ANIM_TMR_DEL:int = 130;
      
      public static const EXPLOSION_ANIM_TMR_DEL:int = 32;
      
      private static const CHARGE_KICK_ANIM_TMR_DEL:int = 80;
      
      private static const CHARGE_KICK_X_OFS:int = 16;
       
      
      private var slideDustOfsPnt:Point;
      
      private var sparkNum:int;
      
      private var sparkOfsPnt:Point;
      
      public var type:String;
      
      private var source:LevObj;
      
      public function MegaManSimpleGraphics(param1:LevObj, param2:String, param3:int = 0)
      {
         this.type = param2;
         this.source = param1;
         this.sparkNum = param3;
         var _loc4_:int;
         if((_loc4_ = player.charNum) != Bass.CHAR_NUM && _loc4_ != MegaMan.CHAR_NUM)
         {
            _loc4_ = MegaMan.CHAR_NUM;
         }
         inheritedForceShortClassName = CharacterInfo.CHAR_ARR[_loc4_][CharacterInfo.IND_CHAR_NAME_CLASS] + "SimpleGraphics";
         super();
         this.setUpType();
      }
      
      private function setUpType() : void
      {
         switch(this.type)
         {
            case TYPE_DAMAGE_SPLASH:
               gotoAndStop(FL_DAMAGE_SPLASH);
               x = this.source.nx;
               y = this.source.ny - this.source.height / 2;
               stopAnim = true;
               stopUpdate = false;
               this.source.addEventListener(CustomEvents.CHARACTER_TAKE_DAMAGE_END,this.characterTakeDamageEndHandler,false,0,true);
               visible = !player.visible;
               level.addToLevel(new MegaManSimpleGraphics(this.source,TYPE_DAMAGE_SPARK,1));
               level.addToLevel(new MegaManSimpleGraphics(this.source,TYPE_DAMAGE_SPARK,2));
               level.addToLevel(new MegaManSimpleGraphics(this.source,TYPE_DAMAGE_SPARK,3));
               break;
            case TYPE_DAMAGE_SPARK:
               gotoAndStop(FL_DAMAGE_SPARK_START);
               stopAnim = false;
               stopUpdate = false;
               this.sparkOfsPnt = classObj["DAMAGE_SPARK_" + this.sparkNum.toString() + "_OFS_PNT"];
               x = this.source.nx + this.sparkOfsPnt.x;
               y = this.source.ny - this.source.height + this.sparkOfsPnt.y;
               accurateAnimTmr = new GameLoopTimer(SPARK_ANIM_TMR_DEL);
               break;
            case TYPE_ENEMY_EXPLOSION:
               x = this.source.hMidX;
               y = this.source.hMidY;
               this.source.destroy();
               stopAnim = false;
               gotoAndStop(FL_ENEMY_EXPLOSION_START);
               accurateAnimTmr = new GameLoopTimer(EXPLOSION_ANIM_TMR_DEL);
               break;
            case TYPE_CHARGE_KICK:
               x = this.source.nx + CHARGE_KICK_X_OFS * this.source.scaleX;
               y = this.source.ny - this.source.height / 2;
               stopAnim = false;
               stopUpdate = false;
               scaleX = this.source.scaleX;
               gotoAndStop(FL_CHARGE_KICK_START);
               accurateAnimTmr = new GameLoopTimer(CHARGE_KICK_ANIM_TMR_DEL);
               EVENT_MNGR.addEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler,false,0,true);
               break;
            case TYPE_SLIDE_DUST:
               gotoAndStop(FL_SLIDE_DUST_START);
               stopAnim = false;
               stopUpdate = false;
               this.slideDustOfsPnt = classObj["SLIDE_DUST_OFS_PNT"];
               x = this.source.nx - 32;
               y = this.source.ny - 8;
               accurateAnimTmr = new GameLoopTimer(SLIDE_DUST_ANIM_TMR_DEL);
         }
      }
      
      protected function levelSetIndexesHandler(param1:Event) : void
      {
         if(this.type == TYPE_CHARGE_KICK)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      protected function characterTakeDamageEndHandler(param1:Event) : void
      {
         if(this.type == TYPE_DAMAGE_SPLASH)
         {
            destroy();
         }
      }
      
      override public function updateObj() : void
      {
         super.updateObj();
         if(this.type == TYPE_DAMAGE_SPLASH)
         {
            x = this.source.nx;
            y = this.source.ny - this.source.height / 2;
         }
         else if(this.type == TYPE_DAMAGE_SPARK)
         {
            x = this.source.nx + this.sparkOfsPnt.x;
            y = this.source.ny - this.source.height + this.sparkOfsPnt.y;
         }
         else if(this.type == TYPE_CHARGE_KICK)
         {
            x = this.source.nx + CHARGE_KICK_X_OFS * this.source.scaleX;
            y = this.source.ny - this.source.height / 2;
         }
         else if(this.type == TYPE_SLIDE_DUST)
         {
            x = this.source.nx + this.slideDustOfsPnt.x;
            y = this.source.ny;
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         this.source.addEventListener(CustomEvents.CHARACTER_TAKE_DAMAGE_END,this.characterTakeDamageEndHandler,false,0,true);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.source.removeEventListener(CustomEvents.CHARACTER_TAKE_DAMAGE_END,this.characterTakeDamageEndHandler);
         if(this.type == TYPE_CHARGE_KICK)
         {
            EVENT_MNGR.removeEventListener(CustomEvents.LEVEL_SET_INDEXES,this.levelSetIndexesHandler);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.type == TYPE_DAMAGE_SPARK && currentFrame == convFrameToInt(FL_DAMAGE_SPARK_END) + 1)
         {
            destroy();
         }
         else if(this.type == TYPE_ENEMY_EXPLOSION && currentFrame == convFrameToInt(FL_ENEMY_EXPLOSION_END) + 1)
         {
            destroy();
         }
         else if(this.type == TYPE_CHARGE_KICK && currentFrame == convFrameToInt(FL_CHARGE_KICK_END) + 1)
         {
            gotoAndStop(FL_CHARGE_KICK_START);
         }
         else if(this.type == TYPE_SLIDE_DUST && currentFrame == convFrameToInt(FL_SLIDE_DUST_END))
         {
            destroy();
         }
      }
   }
}
