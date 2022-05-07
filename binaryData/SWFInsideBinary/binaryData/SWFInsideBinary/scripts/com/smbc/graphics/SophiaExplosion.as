package com.smbc.graphics
{
   import com.explodingRabbit.utils.CustomTimer;
   import com.smbc.characters.Sophia;
   import com.smbc.data.AnimationTimers;
   import com.smbc.data.RandomDropGenerator;
   import com.smbc.data.SoundNames;
   import com.smbc.enemies.Enemy;
   import com.smbc.main.AnimatedObject;
   import com.smbc.main.SimpleAnimatedObject;
   import com.smbc.projectiles.SophiaBullet;
   
   public class SophiaExplosion extends SimpleAnimatedObject
   {
      
      private static const FL_BULLET_EXPLODE_END:String = "bulletExplodeEnd";
      
      private static const FL_BULLET_EXPLODE_START:String = "bulletExplodeStart";
      
      private static const FL_ENEMY_DIE_END:String = "enemyDieEnd";
      
      private static const FL_ENEMY_DIE_START:String = "enemyDieStart";
      
      private static const FL_SOPHIA_DIE_END:String = "playerDieEnd";
      
      private static const FL_SOPHIA_DIE_START:String = "playerDieStart";
      
      private static const ET_BULLET:String = "bullet";
      
      private static const ET_ENEMY:String = "enemy";
      
      private static const ET_SOPHIA:String = "sophia";
      
      private static const MAIN_ANIM_TMR:CustomTimer = AnimationTimers.ANIM_FAST_TMR;
       
      
      private var exType:String;
      
      public function SophiaExplosion(param1:AnimatedObject)
      {
         super();
         stopAnim = false;
         mainAnimTmr = MAIN_ANIM_TMR;
         noAnimThisCycle = true;
         if(param1 is SophiaBullet)
         {
            this.exType = ET_BULLET;
            gotoAndStop(FL_BULLET_EXPLODE_START);
            x = param1.nx;
            y = param1.ny;
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_BULLET_EXPLODE);
         }
         else if(param1 is Enemy)
         {
            this.exType = ET_ENEMY;
            gotoAndStop(FL_ENEMY_DIE_START);
            x = param1.hMidX;
            y = param1.hMidY;
            param1.destroy();
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_KILL_ENEMY);
         }
         else
         {
            if(!(param1 is Sophia))
            {
               throw new Error("Sophia explosion called on wrong type of object");
            }
            this.exType = ET_SOPHIA;
            gotoAndStop(FL_SOPHIA_DIE_START);
            x = param1.nx;
            y = param1.ny;
            SND_MNGR.playSound(SoundNames.SFX_SOPHIA_DIE);
         }
      }
      
      override public function checkFrame() : void
      {
         if(this.exType == ET_BULLET && currentLabel == FL_BULLET_EXPLODE_END)
         {
            this.destroy();
         }
         else if(this.exType == ET_ENEMY && currentLabel == FL_ENEMY_DIE_END)
         {
            this.destroy();
         }
         else if(this.exType == ET_SOPHIA && currentLabel == FL_SOPHIA_DIE_END)
         {
            this.destroy();
         }
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(this.exType == ET_ENEMY)
         {
            RandomDropGenerator.checkDropItem(Sophia.CHAR_NAME_CAPS,this);
         }
      }
   }
}
