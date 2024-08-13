package com.explodingRabbit.cross.gameplay.statusEffects
{
   import com.smbc.characters.base.MegaManBase;
   import com.smbc.data.GameSettings;
   import com.smbc.data.HitTestTypes;
   import com.smbc.data.SoundNames;
   import com.smbc.ground.SimpleGround;
   import com.smbc.level.Level;
   import com.smbc.main.GlobVars;
   import com.smbc.main.LevObj;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.SoundManager;
   import com.smbc.utils.GameLoopTimer;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.events.TimerEvent;
   
   public class StatFxFreeze extends StatusEffect
   {
      
      private static const FLASH_TMR_DEL:int = 40;
      
      private static const FLASH_START_DEL_FROM_END:int = 1250;
       
      
      private var mainTmr:GameLoopTimer;
      
      private var flashTmr:GameLoopTimer;
      
      private var colored:Boolean = true;
      
      private var duration:int;
      
      private var fakeGround:SimpleGround;
      
      public function StatFxFreeze(param1:LevObj, param2:int = 0)
      {
         super(TYPE_FREEZE,param1);
         this.duration = param2;
         if(param2)
         {
            this.mainTmr = new GameLoopTimer(param2,1);
         }
      }
      
      override public function clone(param1:LevObj, param2:LevObj = null) : StatusEffect
      {
         return new StatFxFreeze(param1,this.duration);
      }
      
      override public function apply() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super.apply();
         if(this.mainTmr)
         {
            _loc1_ = this.mainTmr.delay;
            _loc2_ = _loc1_ - FLASH_START_DEL_FROM_END;
            if(_loc2_ < FLASH_START_DEL_FROM_END)
            {
               _loc2_ = FLASH_START_DEL_FROM_END;
            }
            this.flashTmr = new GameLoopTimer(_loc2_,1);
            this.flashTmr.addEventListener(TimerEvent.TIMER,this.flashTmrHandler,false,0,true);
            this.flashTmr.start();
            this.mainTmr.addEventListener(TimerEvent.TIMER_COMPLETE,this.mainTimerHandler,false,0,true);
            this.mainTmr.start();
         }
         _target.addStatusEffect(new StatFxStop(_target,_loc1_));
         if(this.mainTmr)
         {
            _target.addTmr(this.mainTmr);
            _target.addTmr(this.flashTmr);
         }
         _target.removeHitTestableItem(HitTestTypes.CHARACTER);
         this.fakeGround = new SimpleGround(SimpleGround.BN_BLOCK);
         this.fakeGround.alpha = 0;
         this.fakeGround.offGrid = true;
         this.fakeGround.x = _target.hLft;
         this.fakeGround.y = _target.hBot - GlobVars.TILE_SIZE;
         Level.levelInstance.addToLevel(this.fakeGround);
         this.fakeGround.removeAllHitTestableItems();
         this.fakeGround.addHitTestableItem(HitTestTypes.CHARACTER);
         this.colorFrozen();
         if(Level.levelInstance.player is MegaManBase)
         {
            SoundManager.SND_MNGR.playSound(SoundNames.SFX_MEGA_MAN_ICE_SLASHER_HIT);
         }
      }
      
      protected function mainTimerHandler(param1:Event) : void
      {
         this.destroy();
      }
      
      protected function flashTmrHandler(param1:Event) : void
      {
         if(this.flashTmr.numTotalCycles == 1)
         {
            this.flashTmr.stop();
            this.flashTmr.numTotalCycles = 0;
            this.flashTmr.delay = FLASH_TMR_DEL;
            this.flashTmr.start();
         }
         if(this.colored)
         {
            _target.resetColor();
            this.colored = false;
         }
         else
         {
            this.colorFrozen();
         }
      }
      
      private function colorFrozen() : void
      {
         var _loc4_:Bitmap = null;
         var _loc5_:BitmapData = null;
         this.colored = true;
         var _loc1_:Vector.<Bitmap> = _target.getBmpsFromFrame();
         var _loc2_:GraphicsManager = GraphicsManager.INSTANCE;
         var _loc3_:int = GameSettings.getEnemyPaletteLimited();
         for each(_loc4_ in _loc1_)
         {
            _loc5_ = _loc4_.bitmapData.clone();
            _loc4_.bitmapData = _loc5_;
            _loc2_.recolorToStanGbPalette(_loc5_,_loc5_.rect);
            _loc2_.recolorStanGbPalToCurGbPalSingle(_loc5_,_target.masterBmdSkinCont.type,GraphicsManager.GB_PAL_OBJ1,14);
            if(_loc3_ != 0)
            {
               _loc2_.recolorToStanGbPalette(_loc5_,_loc5_.rect);
               _loc2_.recolorStanGbPalToCurGbPalSingle(_loc5_,_target.masterBmdSkinCont.type,GraphicsManager.GB_PAL_OBJ1);
            }
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         _target.stopHit = false;
         _target.addHitTestableItem(HitTestTypes.CHARACTER);
         _target.resetColor();
         _target.removeStatusEffect(TYPE_STOP);
         this.fakeGround.destroy();
         if(this.mainTmr)
         {
            this.mainTmr.stop();
            _target.removeTmr(this.mainTmr);
            this.mainTmr.removeEventListener(TimerEvent.TIMER_COMPLETE,this.mainTimerHandler);
            this.mainTmr = null;
         }
         if(this.flashTmr)
         {
            this.flashTmr.stop();
            _target.removeTmr(this.flashTmr);
            this.flashTmr.removeEventListener(TimerEvent.TIMER,this.flashTmrHandler);
            this.flashTmr = null;
         }
      }
   }
}
