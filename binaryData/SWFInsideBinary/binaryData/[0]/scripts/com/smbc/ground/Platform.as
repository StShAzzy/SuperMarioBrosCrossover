package com.smbc.ground
{
   import com.explodingRabbit.utils.CustomDictionary;
   import com.smbc.characters.*;
   import com.smbc.data.Difficulties;
   import com.smbc.data.GameSettings;
   import com.smbc.data.GameStates;
   import com.smbc.data.HRect;
   import com.smbc.data.ScoreValue;
   import com.smbc.enemies.*;
   import com.smbc.graphics.PullyRope;
   import com.smbc.graphics.Scenery;
   import com.smbc.main.*;
   import com.smbc.pickups.*;
   import com.smbc.projectiles.*;
   import com.smbc.sound.*;
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   import flash.media.*;
   
   public class Platform extends Ground
   {
      
      public static const PT_CONSTANT_RISE:String = "ConstantRise";
      
      public static const PT_CONSTANT_FALL:String = "ConstantFall";
      
      public static const PT_STEP_CONSTANT_RIGHT:String = "StepConstantRight";
      
      public static const PT_WAVE_HORIZONTAL:String = "WaveHorizontal";
      
      public static const PT_WAVE_VERTICAL:String = "WaveVertical";
      
      public static const PT_STEP_FALL:String = "StepFall";
      
      public static const PT_PULLY:String = "Pully";
      
      public static const PT_FALLING:String = "PullyFalling";
      
      public static const PT_FLAG_JUMP:String = "FlagJump";
      
      private static const NORMAL_PREFIX:String = "normal-";
      
      private static const NORMAL_END_PREFIX:String = "normalEnd-";
       
      
      protected var platWidth:int;
      
      protected var moveAmt:int;
      
      public var platType:String;
      
      public var dy:Number;
      
      protected var ySpeed:Number = 110;
      
      protected var fallSpeed:Number = 225;
      
      protected var ayPully:Number = 200;
      
      protected var ayPullyFall:Number = 500;
      
      protected var fyPully:Number = 0.0006;
      
      protected var vyMaxPully:Number = 275;
      
      protected var vyMaxPullyFall:Number = 350;
      
      protected var vyMinPully:Number = 20;
      
      private const CONSTANT_RIGHT_SPEED:int = 120;
      
      public var pullyCornerX:Number;
      
      private var partnerX:Number;
      
      private var partner:Platform;
      
      public var pullyLoc:String;
      
      public var moved:Boolean;
      
      public var yMin:Number;
      
      public var yMid:Number;
      
      public var yMax:Number;
      
      public var yMaxTemp:Number;
      
      protected var waveAngle:Number = 0;
      
      protected var waveSpeed:Number = 1;
      
      protected var waveRange:Number = 150;
      
      protected var hWaveSpeed:Number = 1.5;
      
      protected var hWaveRange:Number = 60;
      
      protected var centerX:int;
      
      protected var centerY:int;
      
      public var useVy:Boolean;
      
      public var dx:Number;
      
      private var nWaveAngle:Number;
      
      private var hRect:HRect;
      
      public var fall:Boolean;
      
      public var vertical:Boolean;
      
      public var charOnPlat:Boolean;
      
      public var pullyRope:PullyRope;
      
      private var resetPos:Number;
      
      private var active:Boolean;
      
      private const MIN_PLAT_WIDTH:int = 2;
      
      private var attachedObjectsDct:CustomDictionary;
      
      public function Platform(param1:String = null, param2:String = null, param3:int = 0)
      {
         var _loc4_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:uint = 0;
         var _loc9_:DisplayObject = null;
         super(param1);
         offGrid = true;
         stopAnim = false;
         if(param2)
         {
            this.platType = param2;
         }
         level.ALWAYS_ANIM_DCT.addItem(this);
         if(param3)
         {
            this.platWidth = param3;
         }
         if(param1)
         {
            _loc6_ = param1.indexOf("&&type=") + 7;
            _loc7_ = int(param1.indexOf("&&",_loc6_));
            if(_loc7_ == -1)
            {
               _loc7_ = param1.length;
            }
            this.platWidth = int(param1.charAt(param1.indexOf("&&width=") + 8));
         }
         else
         {
            _loc4_ = NORMAL_PREFIX + this.platWidth.toString();
         }
         var _loc5_:int = GameSettings.difficulty;
         if(Boolean(param1) && param1.indexOf("Cloud") == -1)
         {
            if(_loc5_ == Difficulties.HARD)
            {
               this.platWidth -= 2;
            }
            else if(_loc5_ == Difficulties.VERY_HARD)
            {
               this.platWidth = this.MIN_PLAT_WIDTH;
            }
            if(this.platWidth < this.MIN_PLAT_WIDTH)
            {
               this.platWidth = this.MIN_PLAT_WIDTH;
            }
            _loc4_ = NORMAL_PREFIX + this.platWidth.toString();
            this.platType = param1.substring(_loc6_,_loc7_);
         }
         else if(param1)
         {
            if(!this.platWidth)
            {
               this.platWidth = 6;
            }
            if(_loc5_ == Difficulties.HARD)
            {
               this.platWidth -= 2;
            }
            else if(_loc5_ == Difficulties.VERY_HARD)
            {
               this.platWidth = this.MIN_PLAT_WIDTH;
            }
            if(this.platWidth < this.MIN_PLAT_WIDTH)
            {
               this.platWidth = this.MIN_PLAT_WIDTH;
            }
            _loc4_ = NORMAL_PREFIX + this.platWidth.toString();
            this.platType = PT_STEP_CONSTANT_RIGHT;
         }
         gotoAndStop(_loc4_);
         if(numChildren > 0)
         {
            _loc8_ = 0;
            while(_loc8_ < numChildren)
            {
               _loc9_ = DisplayObject(getChildAt(_loc8_));
               if(_loc9_ is HRect)
               {
                  this.hRect = HRect(_loc9_);
               }
               _loc8_++;
            }
         }
         this.setColPoints();
         hitTestTypesDct.clear();
         hitTestTypesDct.addItem(HT_PLATFORM);
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.setColPoints();
         this.setLastHitPoints();
         switch(this.platType)
         {
            case PT_CONSTANT_RISE:
               this.vertical = true;
               this.useVy = true;
               if(level.levNum != 4)
               {
                  this.resetPos = GLOB_STG_TOP - hHeight;
               }
               else
               {
                  this.resetPos = GLOB_STG_TOP + TILE_SIZE * 2;
               }
               break;
            case PT_CONSTANT_FALL:
               this.vertical = true;
               this.useVy = true;
               break;
            case PT_STEP_CONSTANT_RIGHT:
               this.vertical = false;
               this.useVy = false;
               break;
            case PT_WAVE_HORIZONTAL:
               this.vertical = false;
               this.useVy = false;
               this.centerX = x;
               this.centerY = y;
               break;
            case PT_WAVE_VERTICAL:
               this.vertical = true;
               this.useVy = false;
               this.centerX = x;
               this.centerY = y;
               break;
            case PT_STEP_FALL:
               this.vertical = true;
               this.useVy = true;
               dosBot = true;
               break;
            case PT_PULLY:
            default:
               this.vertical = true;
               this.useVy = true;
               vy = 0;
         }
      }
      
      override public function disarm() : void
      {
         super.disarm();
         ny = y;
         nx = x;
      }
      
      public function getPartnerStep1() : void
      {
         level.pullyCornerVec.forEach(function ff(param1:Scenery, param2:int, param3:Vector.<Scenery>):void
         {
            if(pullyCornerX == param1.x)
            {
               if(param1.currentFrameLabel.indexOf("Left") != -1)
               {
                  pullyRope = new PullyRope(param1.currentFrameLabel);
                  level.addToLevel(pullyRope);
                  pullyRope.x = param1.x + TILE_SIZE * 0.5;
                  pullyRope.y = param1.y + TILE_SIZE;
                  pullyRope.height = y - pullyRope.y;
                  yMin = param1.y + TILE_SIZE;
                  yMaxTemp = y - yMin;
                  partnerX = param3[param2 + 1].x;
               }
               else if(param1.currentFrameLabel.indexOf("Right") != -1)
               {
                  pullyRope = new PullyRope(param1.currentFrameLabel);
                  level.addToLevel(pullyRope);
                  pullyRope.x = param1.x + TILE_SIZE * 0.5;
                  pullyRope.y = param1.y + TILE_SIZE;
                  pullyRope.height = y - pullyRope.y;
                  yMin = param1.y + TILE_SIZE;
                  yMaxTemp = y - yMin;
                  partnerX = param3[param2 - 1].x;
               }
            }
         });
      }
      
      public function getPartnerStep2() : void
      {
         level.pullyPlatVec.forEach(function matchPartnerX(param1:Platform, param2:int, param3:Vector.<Platform>):void
         {
            if(param1.pullyCornerX == partnerX)
            {
               partner = param1;
               yMax = yMin + yMaxTemp + partner.yMaxTemp;
               yMid = (yMin + yMax) * 0.5;
            }
         });
      }
      
      override public function updateGround() : void
      {
         super.updateGround();
         if(this.platType != PT_STEP_FALL && this.platType != PT_PULLY || (!(player is Sophia) || Sophia(player).rotation == 0))
         {
            this.setLastHitPoints();
         }
         if(this.platType == PT_CONSTANT_FALL)
         {
            vy = this.ySpeed;
            y = y + vy * dt;
            if(y > GLOB_STG_BOT && GS_MNGR.gameState != GameStates.CHARACTER_SELECT)
            {
               if(level.levNum != 4)
               {
                  y = GLOB_STG_TOP - hHeight;
               }
               else
               {
                  y = GLOB_STG_TOP + TILE_SIZE * 2;
               }
            }
         }
         else if(this.platType == PT_CONSTANT_RISE)
         {
            vy = this.ySpeed;
            y = y - vy * dt;
            if(y < this.resetPos)
            {
               y = GLOB_STG_BOT;
            }
         }
         else if(this.platType == PT_STEP_CONSTANT_RIGHT)
         {
            if(this.active)
            {
               lx = x;
               x = x + this.CONSTANT_RIGHT_SPEED * dt;
               this.dx = x - lx;
               if(player.onPlatform && player.cloudPlatform && this.charOnPlat)
               {
                  player.x = player.x + this.dx;
                  player.dxPlatform = NaN;
               }
            }
         }
         else if(this.platType == PT_WAVE_VERTICAL)
         {
            y = this.centerY + Math.sin(this.waveAngle) * this.waveRange;
            this.waveAngle = this.waveAngle + this.waveSpeed * dt;
            this.nWaveAngle = this.waveAngle;
            ny = this.centerY + Math.sin(this.nWaveAngle) * this.waveRange;
            this.nWaveAngle = this.nWaveAngle + this.waveSpeed * dt;
         }
         else if(this.platType == PT_WAVE_HORIZONTAL)
         {
            x = this.centerX + Math.sin(this.waveAngle) * this.hWaveRange;
            this.waveAngle = this.waveAngle + this.hWaveSpeed * dt;
            this.nWaveAngle = this.waveAngle;
            nx = this.centerX + Math.sin(this.nWaveAngle) * this.hWaveRange;
            this.nWaveAngle = this.nWaveAngle + this.hWaveSpeed * dt;
            this.dx = nx - x;
         }
         else if(this.platType == PT_FALLING)
         {
            vy = vy + this.ayPullyFall * dt;
            if(vy > this.vyMaxPullyFall)
            {
               vy = this.vyMaxPullyFall;
            }
            y = y + vy * dt;
         }
         this.charOnPlat = false;
         this.moved = false;
         ly = y;
         if(this.platType != PT_STEP_FALL && this.platType != PT_PULLY)
         {
            this.setColPoints();
         }
         if(this.attachedObjectsDct)
         {
            this.updateAttachedObjects();
         }
      }
      
      private function updateAttachedObjects() : void
      {
         var _loc1_:Object = null;
         var _loc2_:AnimatedObject = null;
         var _loc3_:Number = NaN;
         for(var _loc6_ in this.attachedObjectsDct)
         {
            _loc1_ = _loc6_;
            _loc6_;
            _loc2_ = _loc1_ as AnimatedObject;
            _loc3_ = Number(this.attachedObjectsDct[_loc1_]);
            _loc2_.ny = y;
            _loc2_.nx = x + _loc3_;
            _loc2_.drawObj();
         }
      }
      
      public function updatePully() : void
      {
         if(!this.moved && !this.charOnPlat && !this.partner.charOnPlat)
         {
            if(vy != 0)
            {
               vy = vy * Math.pow(this.fyPully,dt);
               if(vy > this.vyMaxPully)
               {
                  vy = this.vyMaxPully;
               }
               else if(vy < -this.vyMaxPully)
               {
                  vy = -this.vyMaxPully;
               }
               else if(vy < this.vyMinPully && vy > -this.vyMinPully)
               {
                  vy = 0;
               }
               this.setLastHitPoints();
               this.partner.setLastHitPoints();
               y = y + vy * dt;
               this.movePartner();
               this.partner.moved = true;
               if(this.attachedObjectsDct)
               {
                  this.updateAttachedObjects();
               }
            }
         }
      }
      
      public function setCharOnPlat() : void
      {
         this.charOnPlat = true;
         if(this.charOnPlat && this.platType == PT_PULLY)
         {
            if(this.pullyLoc != "bottom")
            {
               vy = vy + this.ayPully * dt;
               if(vy > this.vyMaxPully)
               {
                  vy = this.vyMaxPully;
               }
               else if(vy < -this.vyMaxPully)
               {
                  vy = -this.vyMaxPully;
               }
               this.setLastHitPoints();
               this.partner.setLastHitPoints();
               y = y + vy * dt;
               this.movePartner();
            }
            else
            {
               level.scorePop(ScoreValue.PULLY_FALL,player.hMidX,player.hMidY);
               this.pullyFall();
               this.partner.pullyFall();
            }
         }
         else if(this.platType == PT_STEP_FALL)
         {
            vy = this.fallSpeed;
            this.setLastHitPoints();
            y = y + vy * dt;
            this.setColPoints();
         }
         else if(this.platType == PT_STEP_CONSTANT_RIGHT)
         {
            if(!this.active)
            {
               this.active = true;
               x = x + this.CONSTANT_RIGHT_SPEED * dt;
               this.setColPoints();
            }
            player.cloudPlatform = true;
         }
      }
      
      public function movePartner() : void
      {
         this.partner.vy = -vy;
         if(y < this.yMid)
         {
            this.partner.y = this.yMid + (this.yMid - y);
         }
         else if(y > this.yMid)
         {
            this.partner.y = this.yMid - (y - this.yMid);
         }
         else if(y == this.yMid)
         {
            this.partner.y = this.yMid;
         }
         if(y <= this.yMin || this.partner.y >= this.partner.yMax)
         {
            y = this.yMin;
            this.partner.y = this.partner.yMax;
            vy = 0;
            this.partner.vy = 0;
            this.pullyLoc = "top";
            this.partner.pullyLoc = "bottom";
         }
         else if(y >= this.yMax || this.partner.y <= this.partner.yMin)
         {
            y = this.yMax;
            this.partner.y = this.partner.yMin;
            vy = 0;
            this.partner.vy = 0;
            this.pullyLoc = "bottom";
            this.partner.pullyLoc = "top";
         }
         else
         {
            this.pullyLoc = "mid";
            this.partner.pullyLoc = "mid";
         }
         this.pullyRope.height = y - this.pullyRope.y;
         this.partner.pullyRope.height = this.partner.y - this.partner.pullyRope.y;
         this.setColPoints();
         if(!level.contains(this.partner))
         {
            level.addChild(this.partner);
         }
         this.partner.setColPoints();
         if(this.attachedObjectsDct)
         {
            this.updateAttachedObjects();
         }
      }
      
      public function pullyFall() : void
      {
         this.platType = PT_FALLING;
         dosBot = true;
         vy = 0;
         if(level.pullyPlatVec.indexOf(this) != -1)
         {
            level.pullyPlatVec.splice(level.pullyPlatVec.indexOf(this),1);
         }
      }
      
      public function attachObject(param1:AnimatedObject) : void
      {
         var _loc2_:Number = param1.nx - x;
         if(!this.attachedObjectsDct)
         {
            this.attachedObjectsDct = new CustomDictionary(true);
         }
         this.attachedObjectsDct.addItem(param1,_loc2_);
         param1.platformAttachedTo = this;
      }
      
      public function detachObject(param1:AnimatedObject) : void
      {
         this.attachedObjectsDct.removeItem(param1);
         if(param1.platformAttachedTo == this)
         {
            param1.platformAttachedTo = null;
         }
      }
      
      override public function setColPoints() : void
      {
         var _loc1_:Rectangle = this.hRect.getBounds(level);
         _loc1_.width = Math.round(_loc1_.width);
         _loc1_.height = Math.round(_loc1_.height);
         hTop = _loc1_.top;
         hBot = _loc1_.bottom;
         hLft = _loc1_.left;
         hRht = _loc1_.right;
         hMidX = this.x;
         hMidY = this.y + hHeight / 2;
         hHeight = _loc1_.height;
         hWidth = _loc1_.width;
      }
      
      public function setLastHitPoints() : void
      {
         lhTop = hTop;
         lhBot = hBot;
         lhLft = hLft;
         lhRht = hRht;
         lhMidX = hMidX;
         lhMidY = hMidY;
      }
      
      override public function checkFrame() : void
      {
         if(previousFrameLabelIs(NORMAL_END_PREFIX + this.platWidth))
         {
            gotoAndStop(NORMAL_PREFIX + this.platWidth);
         }
      }
      
      override public function cleanUp() : void
      {
         var _loc1_:int = 0;
         super.cleanUp();
         if(level.platVec)
         {
            _loc1_ = int(level.platVec.indexOf(this));
            if(_loc1_ != -1)
            {
               level.platVec.splice(_loc1_,1);
            }
         }
         if(level.pullyPlatVec)
         {
            _loc1_ = int(level.pullyPlatVec.indexOf(this));
            if(_loc1_ != -1)
            {
               level.pullyPlatVec.splice(_loc1_,1);
            }
         }
         level.ALWAYS_ANIM_DCT.removeItem(this);
         if(this.attachedObjectsDct)
         {
            this.attachedObjectsDct.clear();
         }
      }
   }
}
