package com.smbc.enemies
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusEffect;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.Cheats;
   import com.smbc.data.DamageValue;
   import com.smbc.data.GameSettings;
   import com.smbc.data.RandomDropGenerator;
   import com.smbc.data.ScoreValue;
   import com.smbc.data.SoundNames;
   import com.smbc.enums.EnemySpeed;
   import com.smbc.graphics.BillSimpleGraphics;
   import com.smbc.graphics.MegaManSimpleGraphics;
   import com.smbc.graphics.RyuSimpleGraphics;
   import com.smbc.graphics.SamusSimpleGraphics;
   import com.smbc.graphics.SimonSimpleGraphics;
   import com.smbc.graphics.SophiaExplosion;
   import com.smbc.graphics.StarBurst;
   import com.smbc.ground.Ground;
   import com.smbc.ground.SimpleGround;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.interfaces.ICustomTimer;
   import com.smbc.level.TitleLevel;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.LevObj;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.projectiles.BillBullet;
   import com.smbc.projectiles.BrickPiece;
   import com.smbc.projectiles.LinkProjectile;
   import com.smbc.projectiles.LinkSimpleGraphics;
   import com.smbc.projectiles.MarioFireBall;
   import com.smbc.projectiles.MegaManProjectile;
   import com.smbc.projectiles.Projectile;
   import com.smbc.projectiles.RyuProjectile;
   import com.smbc.projectiles.SamusBomb;
   import com.smbc.projectiles.SamusShot;
   import com.smbc.projectiles.SimonProjectile;
   import com.smbc.projectiles.SophiaBullet;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.filters.ColorMatrixFilter;
   
   public class Enemy extends AnimatedObject implements IAttackable
   {
      
      public static const ENEMY_WALK_SPEED_NORMAL:int = 65;
      
      public static const ENEMY_WALK_SPEED_FAST:int = 90;
      
      private static var GM:GraphicsManager;
      
      private static const ENEMY_NUM_PROPERY_NAME:String = "ENEMY_NUM";
      
      protected static const FL_COLOR_PALETTE:String = "colorPalette";
      
      public static const NUM_FLASH_COLORS:int = 3;
      
      private static const MIN_HIT_DELAY_TMR_DUR_LINK:int = 350;
      
      private static const MIN_HIT_DELAY_TMR_DUR_RYU:int = 250;
      
      public static const SEP_STR:String = "_";
      
      public static const FLASH_STR:String = "flash";
      
      public static const SP_Y_OFFSET:uint = 50;
      
      private static const RYU_CLIMB_STATE:String = Ryu.ST_CLIMB;
       
      
      protected var defaultWalkSpeed:int = 65;
      
      private const MAX_COLOR_VALUE:int = 255;
      
      private const MIN_COLOR_VALUE:Number = 1.0E-7;
      
      protected const SV_STOMP_SEQ_MAX:int = 0;
      
      protected const SV_DOUBLE_STOMP:int = 400;
      
      private const F_CR_1_RED_R:Number = 1.0;
      
      private const F_CR_1_RED_G:Number = 0.5882352941176471;
      
      private const F_CR_1_RED_B:Number = 0;
      
      private const F_CR_1_GREEN_R:Number = 1.0;
      
      private const F_CR_1_GREEN_G:Number = 0.996078431372549;
      
      private const F_CR_1_GREEN_B:Number = 0.6313725490196078;
      
      private const F_CR_1_BLUE_R:Number = 0.7176470588235294;
      
      private const F_CR_1_BLUE_G:Number = 0;
      
      private const F_CR_1_BLUE_B:Number = 0;
      
      private const F_CR_2_RED_R:Number = 1.0;
      
      private const F_CR_2_RED_G:Number = 0;
      
      private const F_CR_2_RED_B:Number = 0;
      
      private const F_CR_2_GREEN_R:Number = 1.0;
      
      private const F_CR_2_GREEN_G:Number = 1.0;
      
      private const F_CR_2_GREEN_B:Number = 1.0;
      
      private const F_CR_2_BLUE_R:Number = 0;
      
      private const F_CR_2_BLUE_G:Number = 0.5254901960784314;
      
      private const F_CR_2_BLUE_B:Number = 0.011764705882352941;
      
      private const F_CR_3_RED_R:Number = 0;
      
      private const F_CR_3_RED_G:Number = 0.4549019607843137;
      
      private const F_CR_3_RED_B:Number = 0.7725490196078432;
      
      private const F_CR_3_GREEN_R:Number = 0.7058823529411765;
      
      private const F_CR_3_GREEN_G:Number = 0.7725490196078432;
      
      private const F_CR_3_GREEN_B:Number = 1.0;
      
      private const F_CR_3_BLUE_R:Number = 0;
      
      private const F_CR_3_BLUE_G:Number = 0;
      
      private const F_CR_3_BLUE_B:Number = 0;
      
      public const MIN_HIT_DELAY_TMR:CustomTimer = new CustomTimer(250,1);
      
      var numColors:uint;
      
      var colorNum:uint;
      
      public var xSpeedStuck:Number;
      
      protected var touchedWall:Boolean;
      
      private var cielingDisplace:Number = 100;
      
      var falling:Boolean;
      
      var enemyGravDef:int = 1300;
      
      var enemyVYMaxPsvDef:int = 800;
      
      public var stunned:Boolean;
      
      protected var frozen:Boolean;
      
      public var BOOM_STUN_TMR:CustomTimer;
      
      public var stompable:Boolean;
      
      protected var stompKills:Boolean = true;
      
      protected var forceDefaultDeath:Boolean;
      
      protected var dropsItems:Boolean = true;
      
      protected var SFX_GAME_KICK_SHELL:String;
      
      protected var SFX_GAME_STOMP:String;
      
      protected var scoreStomp:int = 100;
      
      protected var scoreAttack:int = 200;
      
      public var scoreStar:int = 200;
      
      protected var scoreBelow:int = 100;
      
      private const DIE_BOOST_X:int = 100;
      
      private const DIE_BOOST_Y:int = 200;
      
      private const ANIM_TMR_FOR_FLASHING:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      protected var _health:int;
      
      protected const ATK_STUN_TMR_DUR:int = 400;
      
      protected const ATK_STUN_TMR:CustomTimer = new CustomTimer(this.ATK_STUN_TMR_DUR,1);
      
      protected var changeColorNum:int = 1;
      
      protected var resetColorNextCycle:Boolean;
      
      protected var _currentlyChangingColor:Boolean;
      
      protected const ANIM_FAST_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
      
      protected var oRdFrameLabel:String;
      
      protected var oRdCurrentFrame:int;
      
      protected var stunStopAnimStr:String;
      
      private const TRUE_STR:String = "true";
      
      private var flashWhiteTmr:CustomTimer;
      
      private const FLASH_WHITE_TMR_DUR:int = 40;
      
      protected var lhTopSaved:Number;
      
      protected var lhBotSaved:Number;
      
      protected var lhLftSaved:Number;
      
      protected var lhRhtSaved:Number;
      
      protected var lhMidXSaved:Number;
      
      protected var lhMidYSaved:Number;
      
      protected var lhWidthSaved:Number;
      
      protected var lhHeightSaved:Number;
      
      public var enemyNum:int;
      
      private var fakeGround:SimpleGround;
      
      public function Enemy()
      {
         this.BOOM_STUN_TMR = new CustomTimer(3000,1);
         this.SFX_GAME_KICK_SHELL = SoundNames.SFX_GAME_KICK_SHELL;
         this.SFX_GAME_STOMP = SoundNames.SFX_GAME_STOMP;
         super();
         if(!GM)
         {
            GM = GraphicsManager.INSTANCE;
         }
         this.enemyNum = classObj[ENEMY_NUM_PROPERY_NAME];
         this.overwriteInitialStats();
         dosBot = true;
         if(STAT_MNGR.curCharNum == Link.CHAR_NUM)
         {
            this.MIN_HIT_DELAY_TMR.delay = MIN_HIT_DELAY_TMR_DUR_LINK;
         }
         else if(STAT_MNGR.curCharNum == Ryu.CHAR_NUM)
         {
            this.MIN_HIT_DELAY_TMR.delay = MIN_HIT_DELAY_TMR_DUR_RYU;
         }
         this.MIN_HIT_DELAY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.minHitDelayTmrHandler,false,0,true);
         addTmr(this.MIN_HIT_DELAY_TMR);
         ACTIVE_ANIM_TMRS_DCT.addItem(this.ANIM_TMR_FOR_FLASHING);
         hitTestTypesDct.addItem(HT_ENEMY);
         addHitTestableItem(HT_CHARACTER);
         addHitTestableItem(HT_ENEMY);
         addHitTestableItem(HT_PROJECTILE_CHARACTER);
         addHitTestableItem(HT_BRICK);
         addHitTestableItem(HT_GROUND_NON_BRICK);
         addHitTestableItem(HT_PLATFORM);
         addProperty(new StatusProperty(PR_DAMAGES_PLAYER_AGG));
         addProperty(new StatusProperty(PR_FREEZE_PAS));
         addProperty(new StatusProperty(PR_STOP_PAS));
      }
      
      override public function initiate() : void
      {
         super.initiate();
         this.updDirection();
      }
      
      protected function overwriteInitialStats() : void
      {
         if(GameSettings.enemySpeed == EnemySpeed.Fast)
         {
            this.defaultWalkSpeed = ENEMY_WALK_SPEED_FAST;
         }
      }
      
      override protected function addedToStageHandler(param1:Event) : void
      {
         if(player.dead && !level.player.fellInPit)
         {
            return;
         }
         super.addedToStageHandler(param1);
      }
      
      override protected function updateStats() : void
      {
         super.updateStats();
         if(cState != ST_DIE)
         {
            this.checkState();
            this.moveEnemy();
         }
         if(this.resetColorNextCycle)
         {
            this.resetColor();
            this.resetColorNextCycle = false;
         }
         this.touchedWall = false;
         stuckInEnemy = false;
      }
      
      public function stomp() : void
      {
         if(!(level is TitleLevel) && (!this.stompable || !player.canStomp || player.nonInteractive || cState == ST_DIE))
         {
            return;
         }
         if(!(level is TitleLevel))
         {
            ++STAT_MNGR.numEnemiesStomped;
         }
         this.resetColor();
         SND_MNGR.playSound(this.SFX_GAME_STOMP);
         this._currentlyChangingColor = false;
         level.removeColorObject(this);
         this.stunned = false;
         var _loc1_:Boolean = false;
         if(player.stompedEnemyThisCycle && (this is Goomba || this is Beetle))
         {
            _loc1_ = true;
         }
         if(!(this is BulletBill))
         {
            player.stompEnemy();
         }
         var _loc2_:int = -1;
         var _loc3_:int = 0;
         switch(player.numContStomps)
         {
            case 0:
               _loc2_ = -1;
               break;
            case 1:
               _loc2_ = ScoreValue.STOMP_SEQ_1;
               break;
            case 2:
               _loc2_ = ScoreValue.STOMP_SEQ_2;
               break;
            case 3:
               _loc2_ = ScoreValue.STOMP_SEQ_3;
               break;
            case 4:
               _loc2_ = ScoreValue.STOMP_SEQ_4;
               break;
            case 5:
               _loc2_ = ScoreValue.STOMP_SEQ_5;
               break;
            case 6:
               _loc2_ = ScoreValue.STOMP_SEQ_6;
               break;
            case 7:
               _loc2_ = ScoreValue.STOMP_SEQ_7;
               break;
            case 8:
               _loc2_ = ScoreValue.STOMP_SEQ_8;
               break;
            case 9:
               _loc2_ = ScoreValue.STOMP_SEQ_9;
               break;
            case 10:
               _loc2_ = ScoreValue.STOMP_SEQ_10;
               break;
            default:
               _loc2_ = this.SV_STOMP_SEQ_MAX;
         }
         if(_loc2_ > this.scoreStomp || _loc2_ == this.SV_STOMP_SEQ_MAX)
         {
            _loc3_ = _loc2_;
         }
         else
         {
            _loc3_ = this.scoreStomp;
         }
         if(_loc1_ && this.SV_DOUBLE_STOMP > _loc3_ && _loc3_ != this.SV_STOMP_SEQ_MAX)
         {
            _loc3_ = this.SV_DOUBLE_STOMP;
         }
         level.scorePop(_loc3_,nx,hTop - SP_Y_OFFSET);
      }
      
      override public function gotoAndStop(param1:Object, param2:String = null) : void
      {
         if(this.flashWhiteTmr)
         {
            this.resetColor();
         }
         super.gotoAndStop(param1,param2);
         if(this.flashWhiteTmr)
         {
            this.flashWhiteChangeColor();
         }
      }
      
      public function die(param1:LevObj = null) : void
      {
         if(cState == ST_DIE)
         {
            return;
         }
         if(getProperty(PR_PIERCE_PAS) != null)
         {
            ++STAT_MNGR.numArmoredEnemiesDefeated;
         }
         removeAllProperties();
         removeAllStatusEffects();
         removeAllHitTestableItems();
         if(level != TitleLevel.instance)
         {
            ++STAT_MNGR.numEnemiesDefeated;
         }
         level.removeColorObject(this);
         if(this.dropsItems)
         {
            RandomDropGenerator.checkDropItem(player.charNameCaps,this);
         }
         if(!this.forceDefaultDeath)
         {
            if(param1 is SophiaBullet)
            {
               level.addToLevel(new SophiaExplosion(this));
            }
            else if(param1 is MegaManProjectile || param1 is MegaManBase || param1 is BrickPiece)
            {
               level.addToLevel(new MegaManSimpleGraphics(this,MegaManSimpleGraphics.TYPE_ENEMY_EXPLOSION));
            }
            else if(param1 is Link || param1 is LinkProjectile)
            {
               level.addToLevel(new LinkSimpleGraphics(this,LinkSimpleGraphics.TYPE_ENEMY_EXPLOSION));
            }
            else if(param1 is Simon || param1 is SimonProjectile)
            {
               level.addToLevel(new SimonSimpleGraphics(this,SimonSimpleGraphics.TYPE_DESTROY_FLAME));
            }
            else if(param1 is SamusShot || param1 is SamusBomb || param1 is Samus)
            {
               level.addToLevel(new SamusSimpleGraphics(this,SamusSimpleGraphics.TYPE_ENEMY_EXPLOSION,param1));
            }
            else if(param1 is BillBullet)
            {
               level.addToLevel(new BillSimpleGraphics(this,BillSimpleGraphics.TYPE_ENEMY_EXPLOSION));
            }
            else
            {
               if(param1 is Ryu || param1 is RyuProjectile)
               {
                  level.addToLevel(new RyuSimpleGraphics(this,RyuSimpleGraphics.TYPE_ENEMY_EXPLOSION));
                  destroy();
                  return;
               }
               if(param1 is MarioFireBall)
               {
                  level.addToLevel(new StarBurst(this,StarBurst.TYPE_FIREBALL,param1));
               }
            }
            if(destroyed)
            {
               return;
            }
         }
         this._currentlyChangingColor = false;
         changeColorThisCycle = false;
         SND_MNGR.playSound(this.SFX_GAME_KICK_SHELL);
         stopUpdate = false;
         stopHit = true;
         stopAnim = true;
         defyGrav = false;
         if(!this.resetColorNextCycle)
         {
            this.resetColor();
         }
         if(this.BOOM_STUN_TMR.running)
         {
            this.BOOM_STUN_TMR.stop();
         }
         if(this.ATK_STUN_TMR.running)
         {
            this.ATK_STUN_TMR.stop();
         }
         ACTIVE_ANIM_TMRS_DCT.clear();
         mainAnimTmr = null;
         this.stunned = false;
         lockState = false;
         setState(ST_DIE);
         lockState = true;
         if(level.waterLevel)
         {
            vx = 0;
         }
         else if(player.nx > nx)
         {
            vx = -this.DIE_BOOST_X;
         }
         else
         {
            vx = this.DIE_BOOST_X;
         }
         scaleY = -1;
         vy = -this.DIE_BOOST_Y;
         ny -= height;
         y = ny;
         setHitPoints();
         onGround = false;
         destroyOffScreen = true;
         stopTimers();
      }
      
      function moveEnemy() : void
      {
      }
      
      override protected function checkState() : void
      {
         if(!(this is Bowser) && !(this is HammerBro))
         {
            if(vx > 0)
            {
               scaleX = 1;
            }
            else if(vx < 0)
            {
               scaleX = -1;
            }
         }
      }
      
      override public function groundAbove(param1:Ground) : void
      {
         hitCeiling = true;
         ny = param1.hBot + hHeight;
         if(!onGround)
         {
            vy = 0;
         }
         super.groundAbove(param1);
      }
      
      override public function groundOnSide(param1:Ground, param2:String) : void
      {
         if(param2 == "left")
         {
            if(vx < 0 && !this.touchedWall)
            {
               vx = -vx;
            }
            nx = param1.hRht + hWidth / 2;
            wallOnLeft = true;
         }
         else if(param2 == "right")
         {
            if(vx > 0 && !this.touchedWall)
            {
               vx = -vx;
            }
            wallOnRight = true;
            nx = param1.hLft - hWidth / 2;
         }
         this.updDirection();
         this.touchedWall = true;
         super.groundOnSide(param1,param2);
      }
      
      public function convLab(param1:String) : String
      {
         return param1;
      }
      
      override public function getLabNum(param1:String) : uint
      {
         return super.getLabNum(this.convLab(param1));
      }
      
      function setStopFrame(param1:String) : void
      {
         if(currentFrameLabel != this.convLab(param1))
         {
            this.gotoAndStop(this.convLab(param1));
         }
         stopAnim = true;
      }
      
      function setPlayFrame(param1:String) : void
      {
         if(currentFrameLabel != this.convLab(param1))
         {
            this.gotoAndStop(this.convLab(param1));
         }
         stopAnim = false;
      }
      
      protected function moveToFrame(param1:String) : void
      {
         this.gotoAndStop(this.convLab(param1));
      }
      
      protected function saveLastHitPoints() : void
      {
         this.lhTopSaved = lhTop;
         this.lhBotSaved = lhBot;
         this.lhLftSaved = lhLft;
         this.lhRhtSaved = lhRht;
         this.lhMidXSaved = lhMidX;
         this.lhMidYSaved = lhMidY;
         this.lhWidthSaved = lhWidth;
         this.lhHeightSaved = lhHeight;
      }
      
      protected function restoreLastHitPoints() : void
      {
         lhTop = this.lhTopSaved;
         lhBot = this.lhBotSaved;
         lhLft = this.lhLftSaved;
         lhRht = this.lhRhtSaved;
         lhMidX = this.lhMidXSaved;
         lhMidY = this.lhMidYSaved;
         lhWidth = this.lhWidthSaved;
         lhHeight = this.lhHeightSaved;
      }
      
      override public function shiftHit(param1:LevObj, param2:String, param3:Number) : void
      {
         if(getStatusEffect(STATFX_FREEZE) || getStatusEffect(STATFX_STOP))
         {
            return;
         }
         if(param2 == "left")
         {
            nx += param3 / 2 + 0.2;
         }
         else if(param2 == "right")
         {
            nx -= param3 / 2 - 0.2;
         }
         if(param1 is Enemy)
         {
            this.hitEnemy(param1 as Enemy,param2);
         }
         else if(param1 is Ground)
         {
            this.groundOnSide(param1 as Ground,param2);
         }
      }
      
      override public function hit(param1:LevObj, param2:String) : void
      {
         if(param1 is Ground && !Ground(param1).visible)
         {
            return;
         }
         super.hit(param1,param2);
      }
      
      override public function hitEnemy(param1:Enemy, param2:String) : void
      {
         if(cState == ST_DIE || param1.cState == ST_DIE)
         {
            return;
         }
         if(param2 == "left" && vx < 0 && !stuckInEnemy)
         {
            vx = -vx;
         }
         else if(param2 == "right" && vx > 0 && !stuckInEnemy)
         {
            vx = -vx;
         }
         this.updDirection();
      }
      
      protected function updDirection() : void
      {
         if(vx > 0)
         {
            scaleX = 1;
         }
         else if(vx < 0)
         {
            scaleX = -1;
         }
      }
      
      override public function hitProj(param1:Projectile) : void
      {
         if(cState == ST_DIE || param1.HIT_OBJS_DCT[this] || param1.getProperty(PR_PASSTHROUGH_ALWAYS))
         {
            return;
         }
         level.addToProjHitArr(param1,this);
      }
      
      override public function confirmedHitProj(param1:Projectile) : void
      {
         var _loc2_:Boolean = false;
         if(cState == ST_DIE)
         {
            return;
         }
         var _loc3_:int = this._health;
         if(this.checkAttackProps(param1))
         {
            this.takeDamage(param1.damageAmt,param1);
            if(param1.damageAmt > 0)
            {
               _loc2_ = true;
            }
         }
         param1.confirmedHit(this,_loc2_);
      }
      
      protected function takeDamage(param1:int, param2:LevObj = null) : void
      {
         this._health -= int(param1 * DamageValue.dmgMult);
         if(this._health <= 0)
         {
            level.scorePop(this.scoreAttack,nx,hTop - SP_Y_OFFSET);
            this.die(param2);
         }
      }
      
      override public function gBounceHit(param1:Ground) : void
      {
         level.scorePop(this.scoreBelow,nx,hTop - SP_Y_OFFSET);
         level.addToLevel(new StarBurst(this,StarBurst.TYPE_BELOW));
         this.die();
      }
      
      public function hitByAttack(param1:LevObj, param2:int) : void
      {
         if(cState == ST_DIE)
         {
            return;
         }
         if(this.checkAttackProps(param1))
         {
            this.takeDamage(param2,param1);
         }
      }
      
      private function checkAttackProps(param1:LevObj) : Boolean
      {
         var _loc6_:StatusProperty = null;
         var _loc7_:StatusEffect = null;
         if(getStatusEffect(STATFX_INVULNERABLE))
         {
            return false;
         }
         var _loc2_:StatusProperty = param1.getProperty(PR_FREEZE_AGG);
         if(getStatusEffect(STATFX_FREEZE))
         {
            if(param1.getProperty(PR_UNFREEZE_AGG))
            {
               removeStatusEffect(STATFX_FREEZE);
            }
         }
         else if(_loc2_ && isSusceptibleToProperty(_loc2_))
         {
            addStatusEffect(_loc2_.getStatusEffectFromValue(this,param1));
            return false;
         }
         var _loc3_:Vector.<StatusProperty> = param1.getPropOrderVec();
         var _loc4_:int = _loc3_.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = _loc3_[_loc5_];
            if(isSusceptibleToProperty(_loc6_))
            {
               if(_loc7_ = _loc6_.getStatusEffectFromValue(this,param1))
               {
                  addStatusEffect(_loc7_);
               }
            }
            else if(_loc6_.type == PR_PIERCE_AGG && !Cheats.allWeaponsPierce)
            {
               return false;
            }
            _loc5_++;
         }
         return true;
      }
      
      protected function flashWhiteStart() : void
      {
         if(this.flashWhiteTmr)
         {
            this.removeFlashWhiteTmr();
         }
         this.flashWhiteTmr = new CustomTimer(this.FLASH_WHITE_TMR_DUR,1);
         this.flashWhiteTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.flashWhiteTmrHandler,false,0,true);
         addTmr(this.flashWhiteTmr);
         this.flashWhiteTmr.start();
         this.flashWhiteChangeColor();
      }
      
      private function flashWhiteChangeColor() : void
      {
         visible = false;
      }
      
      private function flashWhiteTmrHandler(param1:TimerEvent) : void
      {
         this.removeFlashWhiteTmr();
         this.resetColor();
      }
      
      private function removeFlashWhiteTmr() : void
      {
         if(!this.flashWhiteTmr)
         {
            return;
         }
         this.flashWhiteTmr.stop();
         this.flashWhiteTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flashWhiteTmrHandler);
         removeTmr(this.flashWhiteTmr);
         this.flashWhiteTmr = null;
      }
      
      public function changeColor() : void
      {
         setUpCommonPalettes();
         flash();
      }
      
      override public function animate(param1:ICustomTimer) : Boolean
      {
         var _loc2_:Boolean = super.animate(param1);
         if(this._currentlyChangingColor && param1 == this.ANIM_TMR_FOR_FLASHING)
         {
            changeColorThisCycle = true;
         }
         return _loc2_;
      }
      
      private function minHitDelayTmrHandler(param1:TimerEvent) : void
      {
         this.MIN_HIT_DELAY_TMR.reset();
      }
      
      override public function resetColor(param1:Boolean = false) : void
      {
         visible = true;
         relinkBmdToMasterSingleFrame();
         var _loc2_:Array = new Array();
         _loc2_ = _loc2_.concat([1,0,0,0,0]);
         _loc2_ = _loc2_.concat([0,1,0,0,0]);
         _loc2_ = _loc2_.concat([0,0,1,0,0]);
         _loc2_ = _loc2_.concat([0,0,0,1,0]);
         var _loc3_:ColorMatrixFilter = new ColorMatrixFilter(_loc2_);
         this.filters = [_loc3_];
      }
      
      override public function hitCharacter(param1:Character, param2:String) : void
      {
         if(param1.starPwr)
         {
            level.scorePop(this.scoreStar,nx,hTop - SP_Y_OFFSET);
            level.addToLevel(new StarBurst(this,StarBurst.TYPE_STAR));
            this.die();
         }
         else if(param2 == "top" && !player.nonInteractive)
         {
            this.stomp();
         }
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.fakeGround)
         {
            this.fakeGround.destroy();
         }
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         if(this.flashWhiteTmr)
         {
            this.flashWhiteTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.flashWhiteTmrHandler);
         }
         this.MIN_HIT_DELAY_TMR.removeEventListener(TimerEvent.TIMER_COMPLETE,this.minHitDelayTmrHandler);
      }
      
      override protected function reattachLsrs() : void
      {
         super.reattachLsrs();
         if(this.flashWhiteTmr)
         {
            this.flashWhiteTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.flashWhiteTmrHandler,false,0,true);
         }
         this.MIN_HIT_DELAY_TMR.addEventListener(TimerEvent.TIMER_COMPLETE,this.minHitDelayTmrHandler,false,0,true);
      }
      
      public function get currentlyChangingColor() : Boolean
      {
         return this._currentlyChangingColor;
      }
      
      public function get health() : int
      {
         return this._health;
      }
   }
}
