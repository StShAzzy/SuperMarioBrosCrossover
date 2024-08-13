package com.smbc.interfaces
{
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusEffect;
   import com.explodingRabbit.cross.gameplay.statusEffects.StatusProperty;
   import com.smbc.main.LevObj;
   import com.smbc.projectiles.Projectile;
   
   public interface IAttackable
   {
       
      
      function hitByAttack(param1:LevObj, param2:int) : void;
      
      function get health() : int;
      
      function hit(param1:LevObj, param2:String) : void;
      
      function confirmedHitProj(param1:Projectile) : void;
      
      function getProperty(param1:String) : StatusProperty;
      
      function isSusceptibleToProperty(param1:StatusProperty) : Boolean;
      
      function getStatusEffect(param1:String) : StatusEffect;
   }
}
