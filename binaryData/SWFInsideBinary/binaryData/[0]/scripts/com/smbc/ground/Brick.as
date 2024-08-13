package com.smbc.ground
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.display.CustomMovieClip;
   import com.explodingRabbit.utils.CustomDictionary;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.*;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.Cheats;
   import com.smbc.data.DamageValue;
   import com.smbc.data.RandomDropGenerator;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.events.CustomEvents;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.*;
   import com.smbc.managers.EventManager;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.pickups.*;
   import com.smbc.projectiles.*;
   import com.smbc.sound.*;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class Brick extends Ground implements IAttackable
   {
      
      private static const EVENT_BOUNCE:Event = new Event(CustomEvents.BRICK_BOUNCE);
      
      private static const EVENT_BREAK:Event = new Event(CustomEvents.BRICK_BREAK);
      
      public static const BRICKS_TO_BREAK_DCT:CustomDictionary = new CustomDictionary(true);
      
      public static const BRICKS_TO_BOUNCE_DCT:CustomDictionary = new CustomDictionary(true);
      
      private static const BRICKS_DCT:CustomDictionary = new CustomDictionary(true);
      
      public static var masterBrick:Brick;
      
      private static const FL_BRICK_END:String = "brickEnd";
      
      public static const FL_BRICK:String = "brick";
      
      public static var bounceAndBreakNow:Boolean;
      
      public static const IT_SINGLE_COIN:String = "Coin";
      
      protected static const FL_HIT_MOVING:String = "hitMoving";
      
      protected static const FL_HIT_RESTING:String = "hitResting";
      
      public static const GRAVITY:int = 1000;
      
      public static const BOUNCE_PWR:int = 150;
      
      private static var animEndFrameNum:int;
      
      private static const NUM_ANIM_FRAMES:int = 4;
      
      private static var animStartFrameDelay:int;
      
      {
         EventManager.EVENT_MNGR.addEventListener(CustomEvents.CHANGE_MAP_SKIN,changeMapSkinHandler,false,0,true);
      }
      
      protected const IT_MULTI_COIN:String = "MultiCoin";
      
      protected const IT_MULTI_COIN_FINISHED:String = this.IT_MULTI_COIN + "multiCoinFinished";
      
      protected const IT_MUSHROOM_RED:String = "Mushroom";
      
      protected const IT_POISON_MUSHROOM:String = "PoisonMushroom";
      
      protected const IT_ONE_UP_MUSHROOM:String = "OneUpMushroom";
      
      protected const IT_STAR:String = "Star";
      
      protected const IT_VINE:String = "Vine";
      
      protected const IT_EXPLODING_RABBIT:String = "ExplodingRabbit";
      
      protected const IT_HAMMER:String = "Hammer";
      
      protected const IT_WING:String = "Wing";
      
      protected const IT_CLOCK:String = "Clock";
      
      protected const IT_ATOM:String = "Atom";
      
      protected const IT_HUDSON_BEE:String = "HudsonBee";
      
      internal var bouncing:Boolean;
      
      internal var yPos:Number;
      
      internal var color:String;
      
      public var item:String;
      
      internal var invisible:Boolean;
      
      private var coinBrickTmr:CustomTimer;
      
      private var coinBrickTmrDur:uint = 6000;
      
      private var lastHit:Boolean;
      
      protected const SFX_GAME_BRICK_BREAK:String = SoundNames.SFX_GAME_BRICK_BREAK;
      
      protected const SFX_GAME_HIT_CEILING:String = SoundNames.SFX_GAME_HIT_CEILING;
      
      protected const SFX_GAME_ITEM_APPEAR:String = SoundNames.SFX_GAME_ITEM_APPEAR;
      
      protected const SFX_GAME_VINE:String = SoundNames.SFX_GAME_VINE;
      
      public const BOUNCE_HIT_DCT:CustomDictionary = new CustomDictionary(true);
      
      private const COIN_BRICK_MAX_COINS:int = 15;
      
      private var coinBrickCtr:int;
      
      protected var _health:int = 125;
      
      private const MM_ST_SLIDE:String = MegaManBase.ST_SLIDE;
      
      public var disableThisRoundOnly:Boolean;
      
      protected const GS_PLAY:String = "play";
      
      protected var animDelCtr:int;
      
      private var piecesDamage:Boolean;
      
      public function Brick(param1:String = null)
      {
         var _loc3_:String = null;
         super(param1);
         this.setColor(param1);
         mainAnimTmr = AnimationTimers.ANIM_SLOWEST_TMR;
         _animated = true;
         var _loc2_:String = Level.ExtractLevelDataProperty(param1,Level.PROP_CONTAINED_ITEM,true);
         if(_loc2_ == this.IT_VINE)
         {
            _loc2_ += Level.PROP_SEP + Level.ExtractLevelDataProperty(param1,Level.PROP_P_TRANS_DEST,false);
            _loc3_ = Level.ExtractLevelDataProperty(param1,Level.PROP_NUMBER,false);
            if(_loc3_ != null)
            {
               _loc2_ += Level.PROP_SEP + _loc3_;
            }
         }
         this.getPickup(_loc2_);
         hitTestTypesDct.clear();
         hitTestTypesDct.addItem(HT_BRICK);
         if(_loc2_ == null)
         {
            addProperty(new StatusProperty(StatusProperty.TYPE_SUPER_ARM_GRABBABLE_PAS));
         }
      }
      
      public static function initiateLevelHandler() : void
      {
         masterBrick = new Brick(FL_BRICK);
         masterBrick.initiate();
      }
      
      protected static function changeMapSkinHandler(param1:Event) : void
      {
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc3_:CustomMovieClip = new CustomMovieClip(null,null,"Brick");
         animStartFrameDelay = _loc2_.getFrameDelay(_loc3_.getPaletteByRow(0));
         animEndFrameNum = NUM_ANIM_FRAMES + _loc3_.convFrameToInt(FL_BRICK) - 1;
         while(animEndFrameNum > 0 && _loc3_.frameIsEmpty(animEndFrameNum))
         {
            --animEndFrameNum;
         }
         masterBrick.changeMapSkinLocalHandler();
      }
      
      private function changeMapSkinLocalHandler() : void
      {
         if(!stopAnim)
         {
            gotoAndStop(FL_BRICK);
         }
      }
      
      internal function setColor(param1:String) : void
      {
      }
      
      override public function initiate() : void
      {
         super.initiate();
         if(this == masterBrick)
         {
            level.ALWAYS_ANIM_DCT.addItem(this);
         }
         else if(classObj == Brick)
         {
            BRICKS_DCT.addItem(this);
         }
      }
      
      override public function hitAttack() : void
      {
         if(this.item)
         {
            this.bounce();
         }
         else
         {
            this.breakBrick();
         }
      }
      
      override internal function standingOnGround(param1:AnimatedObject) : void
      {
         this.BOUNCE_HIT_DCT.addItem(param1);
      }
      
      public function getPickup(param1:String) : void
      {
         this.item = param1;
         if(param1)
         {
            removeProperty(StatusProperty.TYPE_SUPER_ARM_GRABBABLE_PAS);
         }
      }
      
      override public function hitProj(param1:Projectile) : void
      {
         if(disabled || destroyed || param1.doesntHitBricks || Boolean(param1.getProperty(PR_PASSTHROUGH_ALWAYS)))
         {
            return;
         }
         if(this.item != this.IT_MULTI_COIN || this.item == this.IT_MULTI_COIN && (!param1.getProperty(PR_PASSTHROUGH_DEFEAT) || param1.getProperty(PR_PASSTHROUGH_DEFEAT) && !param1.HIT_OBJS_DCT[this]))
         {
            level.addToProjHitArr(param1,this);
         }
      }
      
      override public function confirmedHitProj(param1:Projectile) : void
      {
         if(disabled || destroyed || this.disableThisRoundOnly)
         {
            return;
         }
         if(this.item)
         {
            this.bounce();
         }
         else
         {
            this.takeDamage(param1.damageAmt);
         }
         param1.confirmedHit(this);
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         if(param1.dead)
         {
            return;
         }
         if(param2 == "bottom")
         {
            if(stopHit || param1.lastOnGround || param1.onGround || param1.brickState == Character.BRICK_NONE || param1.nonInteractive)
            {
               return;
            }
            yPenAmt = param1.hMidX - hMidX;
            if(yPenAmt < 0)
            {
               yPenAmt = -yPenAmt;
            }
            level.gBounceArr.push(this);
         }
      }
      
      public function hitByAttack(param1:LevObj, param2:int) : void
      {
         if(!disabled)
         {
            if(this.item)
            {
               this.bounce();
            }
            else
            {
               this.breakBrick();
            }
         }
      }
      
      public function takeDamage(param1:int) : void
      {
         this._health -= int(param1 * DamageValue.dmgMult);
         if(this._health <= 0)
         {
            this.breakBrick();
         }
      }
      
      public function hitCharacterBounceOrBreak() : void
      {
         if(!this.item && player.brickState == Character.BRICK_BREAKER)
         {
            this.breakBrick();
         }
         else
         {
            this.bounce();
         }
      }
      
      public function flag() : void
      {
         this.yPos = this.y;
      }
      
      public function breakBrick(param1:Boolean = false) : void
      {
         var _loc6_:Ryu = null;
         if(param1)
         {
            this.piecesDamage = true;
         }
         if(disabled)
         {
            return;
         }
         if(this.item)
         {
            this.bounce();
            return;
         }
         if(!(level is TitleLevel))
         {
            ++STAT_MNGR.numBricksBroken;
         }
         BRICKS_TO_BREAK_DCT.addItem(this);
         destroyed = true;
         if(!bounceAndBreakNow)
         {
            return;
         }
         if(player.canGetAmmoFromBricks)
         {
            RandomDropGenerator.checkDropItem(player.charNameCaps,this);
         }
         this.hitObjectsAbove();
         var _loc2_:BrickPiece = new BrickPiece(this,this.color,"top-left",this.x,this.y,this.piecesDamage);
         var _loc3_:BrickPiece = new BrickPiece(this,this.color,"top-right",this.x,this.y,this.piecesDamage);
         var _loc4_:BrickPiece = new BrickPiece(this,this.color,"bottom-left",this.x,this.y,this.piecesDamage);
         var _loc5_:BrickPiece = new BrickPiece(this,this.color,"bottom-right",this.x,this.y,this.piecesDamage);
         level.addToLevel(_loc2_);
         level.addToLevel(_loc3_);
         level.addToLevel(_loc4_);
         if(!this.piecesDamage)
         {
            level.addToLevelNow(_loc5_);
         }
         else
         {
            level.addToLevel(_loc5_);
         }
         BRICKS_TO_BREAK_DCT.removeItem(this);
         dispatchEvent(EVENT_BREAK);
         level.destroy(this);
         if(player is Ryu)
         {
            _loc6_ = player as Ryu;
            if(_loc6_.cState == Ryu.ST_CLIMB && (_loc6_.cancelGrappleGroundPos == hRht || _loc6_.cancelGrappleGroundPos == hLft))
            {
               if(_loc6_.hTop <= hBot && _loc6_.hBot >= hTop)
               {
                  _loc6_.detachFromWall();
                  _loc6_.forceAttachToWall = true;
                  level.DESTROY_DCT.removeItem(this);
                  this.cleanUp();
                  level.checkCollisions(player);
               }
            }
         }
         disabled = true;
         SND_MNGR.playSound(this.SFX_GAME_BRICK_BREAK);
         EVENT_MNGR.addPoints(ScoreValue.BREAK_BRICK);
      }
      
      public function bounce() : void
      {
         if(disabled || destroyed)
         {
            return;
         }
         if(Cheats.alwaysBreakBricks && this.item == null)
         {
            this.breakBrick();
            return;
         }
         BRICKS_TO_BOUNCE_DCT.addItem(this);
         this._health = 0;
         if(this.item)
         {
            this.disableThisRoundOnly = true;
         }
         if(!bounceAndBreakNow)
         {
            return;
         }
         if(this.item)
         {
            this.startBounce();
            if(this.item == this.IT_MULTI_COIN)
            {
               if(player.canGetAmmoFromCoinBlocks)
               {
                  RandomDropGenerator.checkDropItem(player.charNameCaps,this);
               }
               this.addObj();
               ++this.coinBrickCtr;
               if(this.coinBrickCtr == this.COIN_BRICK_MAX_COINS)
               {
                  this.lastHit = true;
               }
               if(this.lastHit)
               {
                  disabled = true;
                  hitTestTypesDct.clear();
                  hitTestTypesDct.addItem(HT_GROUND_NON_BRICK);
                  gotoAndStop(FL_HIT_MOVING);
                  stopAnim = true;
                  this.item = this.IT_MULTI_COIN_FINISHED;
                  if(this.coinBrickTmr)
                  {
                     this.coinBrickTmr.stop();
                     this.coinBrickTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.coinBrickTmrLsr);
                     removeTmr(this.coinBrickTmr);
                     this.coinBrickTmr = null;
                  }
               }
               else if(!this.coinBrickTmr)
               {
                  this.coinBrickTmr = new CustomTimer(this.coinBrickTmrDur,1);
                  addTmr(this.coinBrickTmr);
                  this.coinBrickTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.coinBrickTmrLsr);
                  this.coinBrickTmr.start();
               }
            }
            else
            {
               if(this.item == IT_SINGLE_COIN)
               {
                  if(player.canGetAmmoFromCoinBlocks)
                  {
                     RandomDropGenerator.checkDropItem(player.charNameCaps,this);
                  }
                  this.addObj();
               }
               disabled = true;
               hitTestTypesDct.clear();
               hitTestTypesDct.addItem(HT_GROUND_NON_BRICK);
               gotoAndStop(FL_HIT_MOVING);
               stopAnim = true;
            }
         }
         else
         {
            this.startBounce();
         }
      }
      
      private function startBounce() : void
      {
         this.hitObjectsAbove();
         this.y = this.yPos;
         this.bouncing = true;
         afterGround = true;
         vy = -BOUNCE_PWR;
         this._health = 0;
         SND_MNGR.playSound(this.SFX_GAME_HIT_CEILING);
         dispatchEvent(EVENT_BOUNCE);
         BRICKS_TO_BOUNCE_DCT.removeItem(this);
      }
      
      private function hitObjectsAbove() : void
      {
         var _loc1_:AnimatedObject = null;
         for each(_loc1_ in this.BOUNCE_HIT_DCT)
         {
            _loc1_.gBounceHit(this);
            this.BOUNCE_HIT_DCT.removeItem(_loc1_);
         }
      }
      
      private function addObj() : void
      {
         var _loc1_:AnimatedObject = null;
         switch(this.item)
         {
            case this.IT_MUSHROOM_RED:
               this.normalItemExitBrickStart(Pickup(_loc1_ = Pickup.generateNextUpgrade()));
               break;
            case this.IT_POISON_MUSHROOM:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Mushroom(Mushroom.ST_POISON)));
               break;
            case this.IT_ONE_UP_MUSHROOM:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Mushroom(Mushroom.ST_GREEN)));
               break;
            case this.IT_STAR:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Star()));
               break;
            case this.IT_MULTI_COIN:
               _loc1_ = new FlyingCoin();
               FlyingCoin(_loc1_).getFlyingCoinInfo(this);
               EVENT_MNGR.getCoin();
               break;
            case IT_SINGLE_COIN:
               _loc1_ = new FlyingCoin();
               FlyingCoin(_loc1_).getFlyingCoinInfo(this);
               EVENT_MNGR.getCoin();
               break;
            case this.IT_EXPLODING_RABBIT:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new ExplodingRabbitPowerup()));
               break;
            case this.IT_ATOM:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Atom()));
               break;
            case this.IT_CLOCK:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Clock()));
               break;
            case this.IT_HAMMER:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new HammerPickup()));
               break;
            case this.IT_HUDSON_BEE:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new HudsonBee()));
               break;
            case this.IT_WING:
               this.normalItemExitBrickStart(Pickup(_loc1_ = new Wing()));
               break;
            default:
               if(this.item.indexOf(this.IT_VINE) != -1)
               {
                  _loc1_ = new Vine(this.item);
                  (_loc1_ as Vine).exitBrickStart(this);
                  SND_MNGR.playSound(this.SFX_GAME_VINE);
               }
         }
         if(_loc1_)
         {
            if(_loc1_ is FlyingCoin)
            {
               level.addToLevelNow(_loc1_);
            }
            else
            {
               level.addToLevel(_loc1_);
            }
         }
      }
      
      private function normalItemExitBrickStart(param1:Pickup) : void
      {
         ao = new Mushroom(Mushroom.ST_GREEN);
         param1.exitBrickStart(this);
         SND_MNGR.playSound(this.SFX_GAME_ITEM_APPEAR);
      }
      
      private function coinBrickTmrLsr(param1:TimerEvent) : void
      {
         this.lastHit = true;
         if(this.coinBrickTmr.running)
         {
            this.coinBrickTmr.stop();
         }
         this.coinBrickTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.coinBrickTmrLsr);
         removeTmr(this.coinBrickTmr);
         this.coinBrickTmr = null;
      }
      
      override public function updateGround() : void
      {
         super.updateGround();
         if(this.bouncing)
         {
            this.y += vy * dt;
            vy += GRAVITY * dt;
            if(this.y >= this.yPos)
            {
               this.y = this.yPos;
               this.bouncing = false;
               afterGround = false;
               if(player.ATK_DCT[this])
               {
                  player.ATK_DCT.removeItem(this);
               }
               if(Boolean(this.item) && this.item != this.IT_MULTI_COIN)
               {
                  this.doneBouncing();
               }
            }
         }
         if(this.BOUNCE_HIT_DCT.length)
         {
            this.BOUNCE_HIT_DCT.clear();
         }
      }
      
      internal function doneBouncing() : void
      {
         if(this.item != IT_SINGLE_COIN && this.item != this.IT_MULTI_COIN_FINISHED)
         {
            this.addObj();
         }
         gotoAndStop(FL_HIT_RESTING);
         stopAnim = true;
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(Boolean(this.coinBrickTmr) && this.coinBrickTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.coinBrickTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.coinBrickTmrLsr);
         }
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(Boolean(this.coinBrickTmr) && !this.coinBrickTmr.hasEventListener(TimerEvent.TIMER_COMPLETE))
         {
            this.coinBrickTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.coinBrickTmrLsr);
         }
      }
      
      public function get health() : int
      {
         return this._health;
      }
      
      public function breakOnNextHit() : void
      {
         this._health = 1;
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         if(mainAnimTmr == param1 && currentFrameLabel == FL_BRICK && this.animDelCtr < animStartFrameDelay)
         {
            ++this.animDelCtr;
            return false;
         }
         this.animDelCtr = 0;
         return super.animate(param1);
      }
      
      final protected function $animate(param1:ICustomTimer) : Boolean
      {
         return super.animate(param1);
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this == masterBrick)
         {
            level.ALWAYS_ANIM_DCT.removeItem(this);
         }
         else if(classObj == Brick)
         {
            BRICKS_DCT.removeItem(this);
         }
      }
      
      override public function disarm() : void
      {
         super.disarm();
         if(this != masterBrick && classObj == Brick)
         {
            BRICKS_DCT.removeItem(this);
         }
      }
      
      override public function rearm() : void
      {
         super.rearm();
         if(this == masterBrick)
         {
            level.ALWAYS_ANIM_DCT.addItem(this);
         }
         else if(classObj == Brick)
         {
            BRICKS_DCT.addItem(this);
         }
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:Brick = null;
         if(stopAnim)
         {
            return;
         }
         if(this == masterBrick)
         {
            if(currentFrame == animEndFrameNum + 1)
            {
               gotoAndStop(FL_BRICK);
            }
            for each(_loc1_ in BRICKS_DCT)
            {
               if(_loc1_.onScreen && !_loc1_.stopAnim)
               {
                  _loc1_.gotoAndStop(currentFrame);
               }
            }
         }
      }
   }
}
