package com.smbc.characters
{
   import com.smbc.data.PaletteTypes;
   import com.smbc.data.Spell;
   import com.smbc.displayInterface.FinalFantasyPointer;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.utils.GameLoopTimer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class WarriorOfLight extends Character
   {
      
      public static const PAL_ORDER_ARR:Array = [PaletteTypes.P_STATE,PaletteTypes.FLASH_POWERING_UP];
      
      private static const UPGRADE_X_OFS:int = 423;
      
      public static const TYPE_FIGHTER:String = "Fighter";
      
      public static const TYPE_THIEF:String = "Thief";
      
      public static const TYPE_BLACK_MAGE:String = "BlackMage";
      
      public static const TYPE_WHITE_MAGE:String = "WhiteMage";
      
      public static var charPState:int;
      
      public static const WIN_SONG_DUR:int = 5400;
      
      public static const CHAR_SEL_END_DUR:int = 1700;
      
      private static const JUMP_PWR:int = 630;
      
      private static const GRAVITY:int = 1400;
      
      private static const MOVEMENT_SPEED:int = 200;
      
      protected static const DEL_CAST_SPELL:int = 300;
      
      protected static const DEL_PREPARE_SPELL:int = 500;
       
      
      protected const FL_ATTACK_END:String = "attackEnd";
      
      protected const FL_ATTACK_START:String = "attackStart";
      
      protected const FL_CROUCH:String = "crouch";
      
      protected const FL_DIE:String = "die";
      
      protected const FL_FALL:String = "fall";
      
      protected const FL_JUMP:String = "jump";
      
      protected const FL_CAST_SPELL:String = "castSpell";
      
      protected const FL_PREPARE_SPELL_END:String = "prepareSpellEnd";
      
      protected const FL_PREPARE_SPELL_START:String = "prepareSpellStart";
      
      protected const FL_STAND:String = "stand";
      
      protected const FL_TAKE_DAMAGE:String = "takeDamage";
      
      protected const FL_WALK_END:String = "walkEnd";
      
      protected const FL_WALK_START:String = "walkStart";
      
      protected const ST_CAST_SPELL:String = "castSpell";
      
      protected const ST_PREPARE_SPELL:String = "prepareSpell";
      
      protected var pressedJmpBtn:Boolean;
      
      private const SUBCASSES:Array = [Fighter,Thief,BlackMage,WhiteMage];
      
      protected var animationTmr:GameLoopTimer;
      
      protected var actionTmr:GameLoopTimer;
      
      protected var copyPixelsYOfs:int;
      
      protected var flAttackEnd:String;
      
      public var pointer:FinalFantasyPointer;
      
      protected var spellToCast:Spell;
      
      protected var idle:Boolean = true;
      
      protected var pointerAppearanceDelTmr:GameLoopTimer;
      
      public function WarriorOfLight()
      {
         this.animationTmr = new GameLoopTimer(100);
         this.actionTmr = new GameLoopTimer(600,1);
         this.pointerAppearanceDelTmr = new GameLoopTimer(250,1);
         inheritedForceShortClassName = "WarriorOfLight";
         super();
         _charName = WarriorOfLight[Character.CHAR_NAME_PROPERTY_NAME];
         _charNameTxt = WarriorOfLight[Character.CHAR_NAME_TEXT_PROPERTY_NAME];
         _charNameCaps = WarriorOfLight[Character.CHAR_NAME_CAPS_PROPERTY_NAME];
         winSongDur = WarriorOfLight[Character.WIN_SONG_DUR_PROPERTY_NAME];
         brickState = BRICK_NONE;
         this.pointerAppearanceDelTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.pointerAppearanceDelTmrHandler,false,0,true);
      }
      
      protected function pointerAppearanceDelTmrHandler(param1:Event) : void
      {
         if(atkBtn)
         {
            this.createPointer(FinalFantasyPointer.TYPE_NORMAL);
         }
      }
      
      protected function attackTmrHandler(param1:TimerEvent) : void
      {
         gotoAndStop(currentFrame + 1);
         this.checkFrame();
      }
      
      protected function prepareSpellTmrHandler(param1:Event) : void
      {
         this.actionTmr.stop();
         this.castSpell(this.spellToCast);
      }
      
      override protected function firstCall() : void
      {
         classObj = WarriorOfLight;
         copyPixelsOfsPnt = new Point(0,this.copyPixelsYOfs);
         if(charPState == PS_FIRE_FLOWER)
         {
            copyPixelsOfsPnt.x = UPGRADE_X_OFS;
         }
         super.firstCall();
      }
      
      override public function setStats() : void
      {
         jumpPwr = JUMP_PWR;
         gravity = GRAVITY;
         if(level.waterLevel)
         {
            defGravity = gravity;
            gravity = 750;
            defGravityWater = gravity;
         }
         defSpringPwr = 500;
         boostSpringPwr = 1000;
         xSpeed = MOVEMENT_SPEED;
         super.setStats();
      }
      
      override protected function movePlayer() : void
      {
         if(!this.idle && onGround || cState == ST_CROUCH)
         {
            vx = 0;
            return;
         }
         if(rhtBtn && !lftBtn && !wallOnRight)
         {
            if(stuckInWall)
            {
               return;
            }
            if(cState == ST_VINE)
            {
               if(!exitVine)
               {
                  return;
               }
               getOffVine();
            }
            vx = MOVEMENT_SPEED;
            scaleX = 1;
         }
         else if(lftBtn && !rhtBtn && !wallOnLeft)
         {
            if(stuckInWall)
            {
               return;
            }
            if(cState == ST_VINE)
            {
               if(!exitVine)
               {
                  return;
               }
               getOffVine();
            }
            vx = -MOVEMENT_SPEED;
            scaleX = -1;
         }
         else if(lftBtn && rhtBtn && cState != ST_DIE)
         {
            vx = 0;
         }
         else if(!lftBtn && !rhtBtn && cState != ST_DIE)
         {
            vx = 0;
         }
         if(cState == ST_VINE)
         {
            if(rhtBtn && !lftBtn)
            {
               if(!exitVine)
               {
                  return;
               }
               getOffVine();
               vx = MOVEMENT_SPEED;
               this.scaleX = 1;
            }
            else if(lftBtn && !rhtBtn)
            {
               if(!exitVine)
               {
                  return;
               }
               getOffVine();
               vx = -MOVEMENT_SPEED;
               this.scaleX = -1;
            }
         }
      }
      
      override protected function checkState() : void
      {
         if(this.pointer)
         {
            this.pointer.update(dt);
         }
         if(cState == ST_VINE)
         {
            checkVineBtns();
            checkVinePosition();
            return;
         }
         if(onGround)
         {
            lastVX = 0;
            jumped = false;
            this.pressedJmpBtn = false;
            if(this.idle)
            {
               if(dwnBtn)
               {
                  this.setState(ST_CROUCH);
                  setStopFrame(this.FL_CROUCH);
               }
               else if(vx == 0)
               {
                  this.setState(ST_STAND);
                  setStopFrame(this.FL_STAND);
               }
               else
               {
                  this.setState(ST_WALK);
                  if(lState != ST_WALK)
                  {
                     setPlayFrame(this.FL_WALK_START);
                  }
               }
            }
         }
         else if(this.idle)
         {
            this.setState(ST_JUMP);
            if(this.pressedJmpBtn)
            {
               setStopFrame(this.FL_JUMP);
            }
            else
            {
               setStopFrame(this.FL_FALL);
            }
            if(lastOnSpring && !onSpring)
            {
               if(rhtBtn && !lftBtn)
               {
                  vx = MOVEMENT_SPEED;
                  scaleX = 1;
                  if(lastVX < 0)
                  {
                     lastVX = 0;
                  }
               }
               else if(lftBtn && !rhtBtn)
               {
                  vx = -MOVEMENT_SPEED;
                  scaleX = -1;
                  if(lastVX > 0)
                  {
                     lastVX = 0;
                  }
               }
            }
            if(onSpring)
            {
               if(rhtBtn)
               {
                  scaleX = 1;
               }
               else if(lftBtn)
               {
                  scaleX = -1;
               }
            }
         }
         if(cState == ST_ATTACK)
         {
            checkAtkRect = true;
         }
         else
         {
            checkAtkRect = false;
         }
      }
      
      protected function attack() : void
      {
         if(!this.idle)
         {
            return;
         }
         this.setState(ST_ATTACK);
         this.idle = false;
         setStopFrame(this.FL_ATTACK_START);
         this.animationTmr.addEventListener(TimerEvent.TIMER,this.attackTmrHandler,false,0,true);
         this.animationTmr.start();
      }
      
      override public function landAttack(param1:IAttackable) : void
      {
      }
      
      protected function sideAttack() : void
      {
      }
      
      protected function upAttack() : void
      {
      }
      
      protected function downAttack() : void
      {
      }
      
      override public function pressJmpBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressJmpBtn();
            return;
         }
         super.pressJmpBtn();
         if(!onGround)
         {
            return;
         }
         this.idle = true;
         this.removeActionTmrListeners();
         this.removeAnimationTmrListeners();
         onGround = false;
         vy = -jumpPwr;
         setStopFrame(this.FL_JUMP);
         this.setState(ST_JUMP);
         jumped = true;
         this.pressedJmpBtn = true;
         releasedJumpBtn = false;
         frictionY = false;
      }
      
      override public function pressUpBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressUpBtn();
         }
         else
         {
            super.pressUpBtn();
         }
      }
      
      override public function pressDwnBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressDwnBtn();
         }
         else
         {
            super.pressDwnBtn();
         }
      }
      
      override public function pressLftBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressLftBtn();
         }
         else
         {
            super.pressLftBtn();
         }
      }
      
      override public function pressRhtBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressRhtBtn();
         }
         else
         {
            super.pressRhtBtn();
         }
      }
      
      override public function relUpBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.relUpBtn();
         }
         else
         {
            super.relUpBtn();
         }
      }
      
      override public function relDwnBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.relDwnBtn();
         }
         else
         {
            super.relDwnBtn();
         }
      }
      
      override public function relLftBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.relLftBtn();
         }
         else
         {
            super.relLftBtn();
         }
      }
      
      override public function relRhtBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.relRhtBtn();
         }
         else
         {
            super.relRhtBtn();
         }
      }
      
      override public function pressAtkBtn() : void
      {
         if(this.pointer)
         {
            this.pointer.pressAtkBtn();
            return;
         }
         super.pressAtkBtn();
         if(!this.idle)
         {
            return;
         }
         if(!upBtn && !dwnBtn)
         {
            this.sideAttack();
         }
         else if(upBtn && !dwnBtn)
         {
            this.upAttack();
         }
         else if(dwnBtn && !upBtn)
         {
            this.downAttack();
         }
      }
      
      override public function pressSpcBtn() : void
      {
         super.pressSpcBtn();
         if(!this.idle)
         {
            return;
         }
         charPState = pState;
      }
      
      override public function setState(param1:String) : void
      {
         if(cState == ST_ATTACK && param1 != ST_ATTACK)
         {
            if(ATK_DCT.length != 0)
            {
               ATK_DCT.clear();
            }
         }
         super.setState(param1);
      }
      
      protected function createPointer(param1:String = null) : void
      {
         if(!param1)
         {
            param1 = FinalFantasyPointer.TYPE_NORMAL;
         }
         this.pointer = new FinalFantasyPointer(this,param1);
         this.pointer.initiate();
         this.pointer.addEventListener(FinalFantasyPointer.EVENT_SELECT,this.pointerSelectHandler,false,0,true);
         this.pointer.addEventListener(FinalFantasyPointer.EVENT_CANCEL,this.pointerCancelHandler,false,0,true);
         if(lftBtn)
         {
            this.pointer.pressLftBtn();
         }
         if(rhtBtn)
         {
            this.pointer.pressRhtBtn();
         }
         if(upBtn)
         {
            this.pointer.pressUpBtn();
         }
         if(dwnBtn)
         {
            this.pointer.pressDwnBtn();
         }
         setAllButtonsFalse();
      }
      
      override public function setPowerState(param1:int) : void
      {
         var _loc2_:Boolean = firstPStateCall;
         super.setPowerState(param1);
         if(_loc2_)
         {
            return;
         }
         var _loc3_:int = copyPixelsOfsPnt.x;
         if(pState == PS_FIRE_FLOWER)
         {
            copyPixelsOfsPnt.x = UPGRADE_X_OFS;
         }
         else
         {
            copyPixelsOfsPnt.x = 0;
         }
         if(_loc3_ != copyPixelsOfsPnt.x)
         {
            redraw();
         }
      }
      
      protected function pointerCancelHandler(param1:Event) : void
      {
         BTN_MNGR.sendPlayerBtns();
      }
      
      protected function pointerSelectHandler(param1:Event) : void
      {
         if(this.spellToCast)
         {
            this.castSpell(this.spellToCast);
         }
         BTN_MNGR.sendPlayerBtns();
      }
      
      protected function castSpell(param1:Spell) : void
      {
         this.removeActionTmrListeners();
         this.actionTmr.stop();
         this.actionTmr.delay = DEL_CAST_SPELL;
         this.actionTmr.start();
         this.actionTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.castSpellTmrHandler,false,0,true);
         this.setState(this.ST_CAST_SPELL);
         setStopFrame(this.FL_CAST_SPELL);
      }
      
      protected function castSpellTmrHandler(param1:Event) : void
      {
         this.setState(ST_NEUTRAL);
         this.idle = true;
         this.checkState();
      }
      
      protected function prepareSpell() : void
      {
         this.removeActionTmrListeners();
         this.actionTmr.delay = DEL_PREPARE_SPELL;
         this.actionTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.prepareSpellTmrHandler,false,0,true);
         this.actionTmr.start();
         this.idle = false;
         this.setState(this.ST_PREPARE_SPELL);
         setStopFrame(this.FL_PREPARE_SPELL_START);
      }
      
      override public function checkFrame() : void
      {
         var _loc1_:String = currentLabel;
         var _loc2_:int = currentFrame;
         if(cState == ST_WALK && _loc2_ == getLabNum(this.FL_WALK_END) + 1)
         {
            setPlayFrame(this.FL_WALK_START);
         }
         else if(cState == ST_ATTACK && _loc2_ == getLabNum(this.flAttackEnd) + 1)
         {
            this.setState(ST_NEUTRAL);
            this.idle = true;
            this.animationTmr.stop();
            this.checkState();
         }
      }
      
      protected function removeAnimationTmrListeners() : void
      {
         this.animationTmr.removeEventListener(TimerEvent.TIMER,this.attackTmrHandler);
      }
      
      protected function removeActionTmrListeners() : void
      {
         this.actionTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.prepareSpellTmrHandler);
         this.actionTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.castSpellTmrHandler);
      }
      
      override protected function removeListeners() : void
      {
         super.removeListeners();
         this.removeAnimationTmrListeners();
         this.removeActionTmrListeners();
      }
      
      override public function cleanUp() : void
      {
         super.cleanUp();
         if(this.pointer)
         {
            this.pointer.cleanUp();
         }
      }
      
      public function removePointer() : void
      {
         this.pointer.removeEventListener(FinalFantasyPointer.EVENT_SELECT,this.pointerSelectHandler);
         this.pointer.removeEventListener(FinalFantasyPointer.EVENT_CANCEL,this.pointerCancelHandler);
         this.pointer = null;
      }
   }
}
