package com.smbc.pickups
{
   import com.smbc.characters.Character;
   import com.smbc.data.PickupInfo;
   import com.smbc.data.ScoreValue;
   import com.smbc.graphics.Scenery;
   import com.smbc.graphics.fontChars.FontCharScore;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import com.smbc.managers.EventManager;
   import com.smbc.text.TextFieldContainer;
   import flash.text.TextFormat;
   
   public class FlagPole extends Pickup
   {
       
      
      private const SCORE_LEVEL_1_HEIGHT_PERC:Number = 0.1;
      
      private const SCORE_LEVEL_2_HEIGHT_PERC:Number = 0.2;
      
      private const SCORE_LEVEL_3_HEIGHT_PERC:Number = 0.4;
      
      private const SCORE_LEVEL_4_HEIGHT_PERC:Number = 0.65;
      
      private const SCORE_LEVEL_5_HEIGHT_PERC:Number = 0.9;
      
      private var scoreLev1Y:Number;
      
      private var scoreLev2Y:Number;
      
      private var scoreLev3Y:Number;
      
      private var scoreLev4Y:Number;
      
      private var scoreLev5Y:Number;
      
      protected var xLoc:Number;
      
      protected var flag:Scenery;
      
      private var _activated:Boolean;
      
      private var flagStopLoc:Number;
      
      public const FLAG_DROP_SPEED:Number = 220;
      
      private var scoreTxtCont:LevObj;
      
      private var yTop:Number;
      
      private var yMid:Number;
      
      private var yBot:Number;
      
      private const SCORE_TXT_FONT_SIZE:int = 16;
      
      public function FlagPole(param1:Number)
      {
         super(PickupInfo.FLAG_POLE);
         this.xLoc = param1 + TILE_SIZE * 0.5;
         defyGrav = true;
         stopAnim = true;
         hitDistOver = GLOB_STG_BOT / 2;
      }
      
      override public function initiate() : void
      {
         super.initiate();
         nx = this.xLoc;
         ny = GLOB_STG_BOT - TILE_SIZE * 3;
         setHitPoints();
         this.flagStopLoc = hBot - TILE_SIZE * 1.25;
      }
      
      public function rcvFlag(param1:Scenery) : void
      {
         this.flag = param1;
         this.flag.x = nx - TILE_SIZE;
         this.flag.y = ny - height + TILE_SIZE / 2;
      }
      
      override protected function updateStats() : void
      {
         var _loc1_:Number = NaN;
         super.updateStats();
         if(this._activated)
         {
            if(this.flag.y < this.flagStopLoc)
            {
               this.flag.y += this.FLAG_DROP_SPEED * dt;
               _loc1_ = this.flag.y;
               if(_loc1_ < this.yMid)
               {
                  this.scoreTxtCont.y = this.yMid + (this.yMid - _loc1_);
               }
               else if(_loc1_ > this.yMid)
               {
                  this.scoreTxtCont.y = this.yMid - (_loc1_ - this.yMid);
               }
               else if(_loc1_ == this.yMid)
               {
                  this.scoreTxtCont.y = this.yMid;
               }
            }
            if(this.flag.y >= this.flagStopLoc)
            {
               this.flag.y = this.flagStopLoc;
               this.scoreTxtCont.y = this.yTop;
               this._activated = false;
               player.stopFlagPoleSlide();
            }
         }
      }
      
      public function checkPlayerLoc() : void
      {
      }
      
      override public function touchPlayer(param1:Character) : void
      {
         var _loc2_:int = 0;
         if(stopHit)
         {
            return;
         }
         stopHit = true;
         this._activated = true;
         this.yTop = this.flag.y;
         this.yBot = this.flagStopLoc;
         this.yMid = (this.yBot + this.yTop) * 0.5;
         this.scoreLev1Y = hBot - hHeight * this.SCORE_LEVEL_1_HEIGHT_PERC;
         this.scoreLev2Y = hBot - hHeight * this.SCORE_LEVEL_2_HEIGHT_PERC;
         this.scoreLev3Y = hBot - hHeight * this.SCORE_LEVEL_3_HEIGHT_PERC;
         this.scoreLev4Y = hBot - hHeight * this.SCORE_LEVEL_4_HEIGHT_PERC;
         this.scoreLev5Y = hBot - hHeight * this.SCORE_LEVEL_5_HEIGHT_PERC;
         if(player.hMidY <= this.scoreLev5Y)
         {
            _loc2_ = ScoreValue.FLAG_POLE_HEIGHT_5;
         }
         else if(player.hMidY <= this.scoreLev4Y)
         {
            _loc2_ = ScoreValue.FLAG_POLE_HEIGHT_4;
         }
         else if(player.hMidY <= this.scoreLev3Y)
         {
            _loc2_ = ScoreValue.FLAG_POLE_HEIGHT_3;
         }
         else if(player.hMidY <= this.scoreLev2Y)
         {
            _loc2_ = ScoreValue.FLAG_POLE_HEIGHT_2;
         }
         else
         {
            _loc2_ = ScoreValue.FLAG_POLE_HEIGHT_1;
         }
         EVENT_MNGR.addPoints(_loc2_);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.font = GlobVars.SCORE_FNT.fontName;
         _loc3_.size = this.SCORE_TXT_FONT_SIZE;
         _loc3_.color = 16777215;
         var _loc4_:TextFieldContainer;
         (_loc4_ = new TextFieldContainer(FontCharScore.FONT_NUM)).text = _loc2_.toString();
         this.scoreTxtCont = new LevObj();
         this.scoreTxtCont.addChild(_loc4_);
         this.scoreTxtCont.x = hRht;
         this.scoreTxtCont.y = this.yBot;
         level.addToLevel(this.scoreTxtCont);
         EventManager.EVENT_MNGR.touchedFlagPole();
      }
      
      public function set activated(param1:Boolean) : void
      {
         this._activated = param1;
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
      }
      
      public function get activated() : Boolean
      {
         return this._activated;
      }
   }
}
