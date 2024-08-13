package com.smbc.ground
{
   import com.smbc.characters.Bill;
   import com.smbc.characters.Link;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   import com.smbc.characters.base.MarioBase;
   import com.smbc.characters.base.MegaManBase;
   
   public class SpringGreen extends SpringRed
   {
       
      
      public function SpringGreen()
      {
         super();
         if(player is MarioBase)
         {
            boostSpringPwr = 2750;
         }
         else if(player is MegaManBase)
         {
            boostSpringPwr = 3000;
         }
         else if(player is Bill)
         {
            boostSpringPwr = 2150;
         }
         else if(player is Link)
         {
            boostSpringPwr = 2750;
         }
         else if(player is Ryu)
         {
            boostSpringPwr = 2750;
         }
         else if(player is Samus)
         {
            boostSpringPwr = 1750;
         }
         else if(player is Simon)
         {
            boostSpringPwr = 4250;
         }
         else if(player is Sophia)
         {
            boostSpringPwr = 3500;
         }
      }
   }
}
