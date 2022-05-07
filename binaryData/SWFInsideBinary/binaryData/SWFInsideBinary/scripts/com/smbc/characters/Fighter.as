package com.smbc.characters
{
   import com.smbc.data.DamageValue;
   import com.smbc.interfaces.IAttackable;
   
   public class Fighter extends WarriorOfLight
   {
      
      private static const COPY_PIXELS_Y_OFS:int = 0;
       
      
      public function Fighter()
      {
         copyPixelsYOfs = COPY_PIXELS_Y_OFS;
         super();
         flAttackEnd = FL_ATTACK_END;
      }
      
      override protected function sideAttack() : void
      {
         super.sideAttack();
         attack();
      }
      
      override public function landAttack(param1:IAttackable) : void
      {
         super.landAttack(param1);
         if(ATK_DCT[param1])
         {
            return;
         }
         ATK_DCT.addItem(param1);
         param1.hitByAttack(this,DamageValue.FIGHTER_SWORD);
      }
   }
}
