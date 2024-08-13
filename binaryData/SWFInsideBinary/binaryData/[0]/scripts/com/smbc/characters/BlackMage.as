package com.smbc.characters
{
   import com.smbc.data.Spell;
   import com.smbc.projectiles.BlackMageSpell;
   import flash.geom.Point;
   
   public class BlackMage extends WarriorOfLight
   {
      
      private static const COPY_PIXELS_Y_OFS:int = 47 * 4;
       
      
      public function BlackMage()
      {
         copyPixelsYOfs = COPY_PIXELS_Y_OFS;
         super();
      }
      
      override protected function upAttack() : void
      {
         super.upAttack();
         spellToCast = Spell.SPELL_BOLT;
         prepareSpell();
      }
      
      override protected function sideAttack() : void
      {
         super.sideAttack();
         spellToCast = Spell.SPELL_FIRE;
         prepareSpell();
      }
      
      override protected function downAttack() : void
      {
         super.downAttack();
         spellToCast = Spell.SPELL_ICE;
         prepareSpell();
      }
      
      override protected function castSpell(param1:Spell) : void
      {
         var _loc2_:Point = null;
         super.castSpell(param1);
         if(pointer)
         {
            _loc2_ = level.globalToLocal(new Point(pointer.x,pointer.y));
         }
         level.addToLevel(new BlackMageSpell(this,param1,_loc2_));
      }
   }
}
