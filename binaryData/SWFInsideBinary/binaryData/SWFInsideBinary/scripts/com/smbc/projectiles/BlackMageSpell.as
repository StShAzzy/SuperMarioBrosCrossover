package com.smbc.projectiles
{
   import com.smbc.characters.BlackMage;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.DamageValue;
   import com.smbc.data.Spell;
   import com.smbc.interfaces.IAttackable;
   import com.smbc.main.LevObj;
   import flash.geom.Point;
   
   public class BlackMageSpell extends Projectile
   {
      
      public static const TYPE_FIRE:String = "fire";
      
      public static const TYPE_BOLT:String = "bolt";
      
      public static const TYPE_ICE:String = "ice";
      
      private static const FIRE_SPEED:int = 450;
      
      private static const FIRE_X_OFS:int = 38;
      
      private static const FIRE_Y_OFS:int = 27;
      
      private static const BOLT_OFS_PNT:Point = new Point(100,0);
      
      private static const FIRE_OFS_PNT:Point = new Point(38,27);
      
      private static const ICE_OFS_PNT:Point = new Point(100,27);
       
      
      public var spell:Spell;
      
      private var mage:BlackMage;
      
      private var spellPnt:Point;
      
      public function BlackMageSpell(param1:LevObj, param2:Spell, param3:Point = null)
      {
         super(param1,SOURCE_TYPE_PLAYER);
         this.spell = param2;
         this.spellPnt = param3;
         this.mage = param1 as BlackMage;
         defyGrav = true;
         if(param2 == Spell.SPELL_FIRE)
         {
            this.setUpFire();
         }
         else if(param2 == Spell.SPELL_ICE)
         {
            this.setUpIce();
         }
         else if(param2 == Spell.SPELL_BOLT)
         {
            this.setUpBolt();
         }
         gotoAndStop(param2.name + "Start");
      }
      
      private function setUpFire() : void
      {
         var _loc1_:Number = NaN;
         _loc1_ = this.mage.scaleX;
         x = this.mage.nx + FIRE_X_OFS * _loc1_;
         y = this.mage.ny - FIRE_Y_OFS;
         vx = FIRE_SPEED * _loc1_;
         scaleX = _loc1_;
         mainAnimTmr = AnimationTimers.ANIM_FAST_TMR;
         _damageAmt = DamageValue.BLACK_MAGE_FIRE;
      }
      
      private function setUpIce() : void
      {
         var _loc1_:Number = this.mage.scaleX;
         x = this.mage.nx + ICE_OFS_PNT.x * _loc1_;
         y = this.mage.ny - ICE_OFS_PNT.y;
         mainAnimTmr = AnimationTimers.ANIM_MODERATE_TMR;
         _damageAmt = DamageValue.BLACK_MAGE_ICE;
      }
      
      private function setUpBolt() : void
      {
         var _loc1_:Number = this.mage.scaleX;
         x = this.mage.nx + BOLT_OFS_PNT.x * _loc1_;
         y = (GLOB_STG_TOP + GLOB_STG_BOT) / 2 + 10;
         mainAnimTmr = AnimationTimers.ANIM_MODERATE_TMR;
         _damageAmt = DamageValue.BLACK_MAGE_BOLT;
         hitDistOver = GLOB_STG_BOT / 2;
      }
      
      override public function confirmedHit(param1:IAttackable, param2:Boolean = true) : void
      {
         HIT_OBJS_DCT.addItem(param1);
      }
      
      override public function checkFrame() : void
      {
         super.checkFrame();
         var _loc1_:int = currentFrame;
         if(_loc1_ == getLabNum(this.spell.name + "End") + 1)
         {
            if(this.spell == Spell.SPELL_FIRE)
            {
               gotoAndStop(this.spell.name + "Start");
            }
            else
            {
               visible = false;
               destroy();
            }
         }
      }
   }
}
