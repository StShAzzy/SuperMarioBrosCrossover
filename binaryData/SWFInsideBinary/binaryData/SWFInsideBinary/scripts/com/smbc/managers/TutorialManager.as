package com.smbc.managers
{
   import com.smbc.characters.Bass;
   import com.smbc.characters.Bill;
   import com.smbc.characters.Character;
   import com.smbc.characters.Link;
   import com.smbc.characters.Luigi;
   import com.smbc.characters.Mario;
   import com.smbc.characters.MegaMan;
   import com.smbc.characters.Ryu;
   import com.smbc.characters.Samus;
   import com.smbc.characters.Simon;
   import com.smbc.characters.Sophia;
   import com.smbc.data.CampaignModes;
   import com.smbc.data.GameSettings;
   import com.smbc.data.PickupInfo;
   import com.smbc.errors.SingletonError;
   import com.smbc.level.CharacterSelect;
   import com.smbc.level.FakeLevel;
   import com.smbc.level.Level;
   import com.smbc.level.TitleLevel;
   
   public final class TutorialManager extends MainManager
   {
      
      public static const TUT_MNGR:TutorialManager = new TutorialManager();
      
      private static var instantiated:Boolean;
      
      public static const LFT_BTN_STR:String = "LFT_BTN";
      
      public static const RHT_BTN_STR:String = "RHT_BTN";
      
      public static const UP_BTN_STR:String = "UP_BTN";
      
      public static const DWN_BTN_STR:String = "DWN_BTN";
      
      public static const JMP_BTN_STR:String = "JMP_BTN";
      
      public static const ATK_BTN_STR:String = "ATK_BTN";
      
      public static const SPC_BTN_STR:String = "SPC_BTN";
      
      public static const PSE_BTN_STR:String = "PSE_BTN";
      
      public static const SEL_BTN_STR:String = "SEL_BTN";
       
      
      private const START_STR_SUFFIX:String = "Start";
      
      private const PWR_UP_STR_SUFFIX:String = "PowerUp";
      
      public const CHARACTER_SELECT:String = "characterSelect";
      
      public const FIRST_CHARACTER_START:String = "firstCharacterStart";
      
      public const TYPE_SURVIVAL:String = "survival";
      
      public const TYPE_WATER:String = "Water";
      
      public const TYPE_AMMO:String = "Ammo";
      
      public const TYPE_CHEAT:String = "cheat";
      
      public const TYPE_STAR:String = "star";
      
      private const CHARACTER_SELECT_MSG:Array = ["Use the arrow keys to move the cursor, and press " + JMP_BTN_STR + " to select a character."];
      
      private const FIRST_CHARACTER_START_MSG:Array = ["Each character controls just like they do in their own games. Use arrow keys to move, and press " + JMP_BTN_STR + " to jump and " + ATK_BTN_STR + " to attack.  Hold " + ATK_BTN_STR + " to run with Mario and Luigi.","Some skins control a bit differently than the base character. The descriptions for the differences can be seen on the skin selection menu.","Note that Mario and Luigi are the only characters that can jump on enemies. For some characters, you can press " + SPC_BTN_STR + " for an alternate attack and " + SEL_BTN_STR + " to change weapons.","You can pause the game by pressing " + PSE_BTN_STR + ". In the pause menu, you can save or load a game and change several options. If the game runs slowly, try changing music consoles or turn the music off.","Also, playing with a gamepad is highly recommended. See the Exploding Rabbit website for info on setting that up. If you have questions about the game, feel free to ask them in the Super Mario Bros. Crossover forum."];
      
      private const SURVIVAL_MSG:Array = ["Suvival mode:\\nWhen a character dies in this mode, they will be unusable until you revive them. Reviving a character costs one life. To revive a character, select the character and press " + JMP_BTN_STR + ".","If you revive a character that is already alive, that character will gain 2 random power ups plus ammo. You will only be able to revive characters when you enter a new world (after a bowser level).","When you\'re done reviving characters, press " + ATK_BTN_STR + " to enter character select mode."];
      
      private const STAR_MSG:Array = ["A star will give you temporary invincibility. All characters have infinite ammo for the duration of the star."];
      
      private const MUSHROOM_MSG:Array = ["Mushroom:\\nA mushroom gives you an extra hit and enhances most characters. By default, if you take damage you will lose the mushroom and some upgrades you collected. You can get most of them back by collecting another mushroom."];
      
      private const LINK_BLUE_RING_MSG:Array = ["Blue Ring:\\nThe blue ring prevents Link from getting damaged by his bombs."];
      
      private const LINK_BOW_MSG:Array = ["Bow and Arrows:\\nPress " + SPC_BTN_STR + " to shoot an arrow across the screen."];
      
      private const LINK_BOMB_MSG:Array = ["Bomb:\\nPress " + SPC_BTN_STR + " place a bomb. It will explode after a short time. Bombs damage Link if he does not have a mushroom."];
      
      private const LINK_BOMB_BAG_MSG:Array = ["Bomb Bag:\\nThe bomb bag increases Link\'s bomb capacity."];
      
      private const LINK_QUIVER_MSG:Array = ["Quiver:\\nThe quiver increases Link\'s arrow capacity."];
      
      private const LINK_RED_RING_MSG:Array = ["Red Ring:\\nThe red ring allows Link to shoot sword beams across the screen."];
      
      private const BASS_START_MSG:Array = ["Bass:\\nPress " + DWN_BTN_STR + " and " + JMP_BTN_STR + " to dash. Bass can perform a dash jump if you jump while dashing. Bass can also double jump in the air. Press " + SEL_BTN_STR + " or " + SPC_BTN_STR + " to cycle through weapons when you have them."];
      
      private const BILL_START_MSG:Array = ["Bill:\\nBill can shoot in different directions if you hold " + UP_BTN_STR + " and " + DWN_BTN_STR + " while moving. He cannot collect a mushroom and will be killed in one hit."];
      
      private const BILL_RAPID_MSG:Array = ["Rapid:\\nRapid slightly increases Bill\'s firing speed. He can have two at a time."];
      
      private const LINK_START_MSG:Array = ["Link:\\nWhile in the air, Link can perform an upward thrust or downward thrust by pressing " + UP_BTN_STR + " or " + DWN_BTN_STR + ".","He can throw his boomerang to stun enemies and grab items by pressing " + SPC_BTN_STR + ". Press " + SEL_BTN_STR + " to switch subweapons if you have more than one."];
      
      private const LUIGI_START_MSG:Array = ["Luigi:\\nLuigi can run if you hold " + ATK_BTN_STR + " while moving. If he has firepower, press " + ATK_BTN_STR + " to throw fireballs.","He controls similarly to Mario, but his controls are more loose and he can jump higher."];
      
      private const MARIO_START_MSG:Array = ["Mario:\\nMario can run if you hold " + ATK_BTN_STR + " while moving. If he has firepower, press " + ATK_BTN_STR + " to throw fireballs."];
      
      private const MEGA_MAN_START_MSG:Array = ["Mega Man:\\nMega man can slide by pressing " + DWN_BTN_STR + " and " + JMP_BTN_STR + " while on the ground. Press " + SEL_BTN_STR + " or " + SPC_BTN_STR + " to cycle through weapons when you have them.","Mega Man begins with Rush Coil, which can be used to help Mega Man make some long or high jumps. Press " + SEL_BTN_STR + " or " + SPC_BTN_STR + " to switch to Rush Coil."];
      
      private const MEGA_MAN_PWR_UP_MSG:Array = ["When Mega Man has a mushroom, hold " + ATK_BTN_STR + " to charge up his mega buster.","Note that some Mega Man skins can\'t charge up their mega buster."];
      
      private const MEGA_MAN_SUPER_ARM_MSG:Array = ["Super Arm:\\nPress " + ATK_BTN_STR + " when touching a brick to pick it up. Press " + ATK_BTN_STR + " again to throw it."];
      
      private const MEGA_MAN_ENERGY_BALANCER_MSG:Array = ["Energy Balancer:\\nWhen you pick up weapon energy, the energy balancer will automatically fill the weapon with the least amount of ammo if you have no weapon selected or if your current weapon is full."];
      
      private const MEGA_MAN_CHARGE_KICK_MSG:Array = ["Charge Kick:\\nPress " + DWN_BTN_STR + " and " + JMP_BTN_STR + " to damage enemies while sliding."];
      
      private const MEGA_MAN_HARD_KNUCKLE_MSG:Array = ["Hard Knuckle:\\nWhile the hard knuckle is on the screen, press " + UP_BTN_STR + " or " + DWN_BTN_STR + " to move it up or down."];
      
      private const MEGA_MAN_METAL_BLADE_MSG:Array = ["Metal Blade:\\nMetal blades can be thrown in 8 directions."];
      
      private const MEGA_MAN_PHARAOH_SHOT_MSG:Array = ["Pharaoh Shot:\\nYou can hold " + ATK_BTN_STR + " to charge up the pharaoh shot."];
      
      private const MEGA_MAN_WATER_SHIELD_MSG:Array = ["Water Shield:\\nPress " + ATK_BTN_STR + " to form a shield around you. Press " + ATK_BTN_STR + " again to shoot the shield outward."];
      
      private const RYU_START_MSG:Array = ["Ryu:\\nRyu can climb any wall by jumping toward it. While climbing, press back and " + JMP_BTN_STR + " to jump backwards off a wall, or press down and " + JMP_BTN_STR + " to detach from a wall.","If you\'re near the top of a wall, press " + JMP_BTN_STR + " to jump on top of it. Press " + SPC_BTN_STR + " or " + UP_BTN_STR + " and " + ATK_BTN_STR + " to throw special weapons when you have enough ammo."];
      
      private const RYU_JUMP_SLASH:Array = ["Jump Slash:\\nPress " + SPC_BTN_STR + " or " + UP_BTN_STR + " and " + ATK_BTN_STR + " while in the air to use the jump slash."];
      
      private const RYU_SCROLL:Array = ["Scroll:\\nThe scroll inreases Ryu\'s ammo capacity."];
      
      private const SAMUS_START_MSG:Array = ["Samus:\\nSamus can shoot upward while standing, running, and jumping. Press down while crouching to turn into the morph ball. While in morph ball state, you can set bombs with " + ATK_BTN_STR + "."];
      
      private const SAMUS_ICE_BEAM:Array = ["Ice Beam:\\nShooting enemies with the ice beam will freeze them in place for a short time.  Frozen enemies can be used as platforms."];
      
      private const SAMUS_WAVE_BEAM:Array = ["Wave Beam:\\nThe wave beam arcs up and down as it travels across the screen and passes through walls and pipes."];
      
      private const SAMUS_MORPH_BALL:Array = ["Morph Ball:\\nPress down while crouching to turn into the morph ball. If you have bombs, you can set them with " + ATK_BTN_STR + "."];
      
      private const SAMUS_SCREW_ATTACK:Array = ["Screw Attack:\\nScrew attack causes spin jumps to damage enemies."];
      
      private const SAMUS_VARIA_SUIT:Array = ["Varia Suit:\\nThe varia suit protects Samus from fire bars in Bowser\'s castle."];
      
      private const SAMUS_MISSILE:Array = ["Missile:\\nPress " + SPC_BTN_STR + " to fire missiles. You can collect more ammo from defeated enemies."];
      
      private const SAMUS_MISSILE_EXPANSION:Array = ["Missile Expansion:\\nThe missile expansion increases Samus\' ammo capacity."];
      
      private const SAMUS_AMMO_MSG:Array = ["This gives Samus 2 missiles. Press " + SPC_BTN_STR + " to fire a missile. Missiles can damage enemies that are invulnerable to regular attacks.","While the Classic Samus cheat is active, press " + SPC_BTN_STR + " to toggle missile mode and " + ATK_BTN_STR + " while in missile mode to fire missiles."];
      
      private const SIMON_START_MSG:Array = ["Simon:\\nSimon can double jump if you press " + JMP_BTN_STR + " while in the air. Press " + SPC_BTN_STR + " or " + UP_BTN_STR + " and " + ATK_BTN_STR + " to use subweapons if you have enough ammo."];
      
      private const SOPHIA_START_MSG:Array = ["Sophia:\\nSophia can use special weapons with " + SPC_BTN_STR + " or " + DWN_BTN_STR + " and " + ATK_BTN_STR + " when you have them. Press " + SEL_BTN_STR + " to switch between them."];
      
      private const SOPHIA_HOMING_MISSILE:Array = ["Homing Missile:\\nPress " + SPC_BTN_STR + " or " + DWN_BTN_STR + " and " + ATK_BTN_STR + " to fire a homing missile when enemies are on screen. If you have multiple weapons, press " + SEL_BTN_STR + " to switch between them."];
      
      private const SOPHIA_WALL_CLIMB:Array = ["Wall Climb:\\nHold up while approaching a wall to climb up it. Hold down while approaching a cliff to climb down it. Sophia can climb into gaps by holding the direction toward the gap while driving over it.","While climbing a wall, press " + JMP_BTN_STR + " to jump off and grapple to a nearby wall. To drop from a wall without jumping, hold the direction toward the wall and press " + JMP_BTN_STR + "."];
      
      private const SOPHIA_CEILING_CLIMB:Array = ["Ceiling Climb:\\nJump into a ceiling to grapple to it. To temporarily disable grapple, hold down while in the air."];
      
      private const SOPHIA_HOVER:Array = ["Hover:\\n Press and hold " + JMP_BTN_STR + " while in the air to hover. The hover bar will recharge over time."];
      
      private const CHEAT_MSG:Array = ["Cheats can be unlocked by meeting certain conditions. To find out the required conditions for a cheat, pause the game, go into the cheats menu and select a locked cheat."];
      
      private const TUT_VEC:Vector.<Array> = Vector.<Array>([[this.CHARACTER_SELECT,true,this.CHARACTER_SELECT_MSG],[this.FIRST_CHARACTER_START,true,this.FIRST_CHARACTER_START_MSG],[this.TYPE_SURVIVAL,true,this.SURVIVAL_MSG],[this.TYPE_STAR,true,this.STAR_MSG],[this.TYPE_CHEAT,true,this.CHEAT_MSG],[Bass.CHAR_NAME + this.START_STR_SUFFIX,true,this.BASS_START_MSG],[Bill.CHAR_NAME + this.START_STR_SUFFIX,true,this.BILL_START_MSG],[PickupInfo.BILL_RAPID_1,true,this.BILL_RAPID_MSG],[Link.CHAR_NAME + this.START_STR_SUFFIX,true,this.LINK_START_MSG],[PickupInfo.LINK_BLUE_RING,true,this.LINK_BLUE_RING_MSG],[PickupInfo.LINK_BOW,true,this.LINK_BOW_MSG],[PickupInfo.LINK_BOMB,true,this.LINK_BOMB_MSG],[PickupInfo.LINK_BOMB_BAG,true,this.LINK_BOMB_BAG_MSG],[PickupInfo.LINK_QUIVER,true,this.LINK_QUIVER_MSG],[PickupInfo.LINK_RED_RING,true,this.LINK_RED_RING_MSG],[Luigi.CHAR_NAME + this.START_STR_SUFFIX,true,this.LUIGI_START_MSG],[Mario.CHAR_NAME + this.START_STR_SUFFIX,true,this.MARIO_START_MSG],[MegaMan.CHAR_NAME + this.START_STR_SUFFIX,true,this.MEGA_MAN_START_MSG],[MegaMan.CHAR_NAME + this.PWR_UP_STR_SUFFIX,true,this.MEGA_MAN_PWR_UP_MSG],[PickupInfo.MEGA_MAN_CHARGE_KICK,true,this.MEGA_MAN_CHARGE_KICK_MSG],[PickupInfo.MEGA_MAN_HARD_KNUCKLE,true,this.MEGA_MAN_HARD_KNUCKLE_MSG],[PickupInfo.MEGA_MAN_METAL_BLADE,true,this.MEGA_MAN_METAL_BLADE_MSG],[PickupInfo.MEGA_MAN_PHARAOH_SHOT,true,this.MEGA_MAN_PHARAOH_SHOT_MSG],[PickupInfo.MEGA_MAN_SUPER_ARM,true,this.MEGA_MAN_SUPER_ARM_MSG],[PickupInfo.MEGA_MAN_WATER_SHIELD,true,this.MEGA_MAN_WATER_SHIELD_MSG],[PickupInfo.MEGA_MAN_ENERGY_BALANCER,true,this.MEGA_MAN_ENERGY_BALANCER_MSG],[PickupInfo.MUSHROOM,true,this.MUSHROOM_MSG],[Ryu.CHAR_NAME + this.START_STR_SUFFIX,true,this.RYU_START_MSG],[Samus.CHAR_NAME + this.START_STR_SUFFIX,true,this.SAMUS_START_MSG],[PickupInfo.RYU_JUMP_SLASH,true,this.RYU_JUMP_SLASH],[PickupInfo.RYU_SCROLL,true,this.RYU_SCROLL],[PickupInfo.SAMUS_ICE_BEAM,true,this.SAMUS_ICE_BEAM],[PickupInfo.SAMUS_WAVE_BEAM,true,this.SAMUS_WAVE_BEAM],[PickupInfo.SAMUS_MISSILE_EXPANSION,true,this.SAMUS_MISSILE_EXPANSION],[PickupInfo.SAMUS_MORPH_BALL,true,this.SAMUS_MORPH_BALL],[PickupInfo.SAMUS_SCREW_ATTACK,true,this.SAMUS_SCREW_ATTACK],[PickupInfo.SAMUS_VARIA_SUIT,true,this.SAMUS_VARIA_SUIT],[Samus.CHAR_NAME + this.TYPE_AMMO,true,this.SAMUS_AMMO_MSG],[Simon.CHAR_NAME + this.START_STR_SUFFIX,true,this.SIMON_START_MSG],[Sophia.CHAR_NAME + this.START_STR_SUFFIX,true,this.SOPHIA_START_MSG],[PickupInfo.SOPHIA_CEILING_CLIMB,true,this.SOPHIA_CEILING_CLIMB],[PickupInfo.SOPHIA_HOVER,true,this.SOPHIA_HOVER],[PickupInfo.SOPHIA_HOMING_MISSILE,true,this.SOPHIA_HOMING_MISSILE],[PickupInfo.SOPHIA_WALL_CLIMB,true,this.SOPHIA_WALL_CLIMB]]);
      
      private var allTutorialsViewed:Boolean;
      
      private const NAME_IND:int = 0;
      
      private const ENABLED_IND:int = 1;
      
      private const MSG_ARR_IND:int = 2;
      
      private const MSGS_TO_SHOW:Vector.<String> = new Vector.<String>();
      
      public function TutorialManager()
      {
         super();
         if(instantiated)
         {
            throw new SingletonError();
         }
         instantiated = true;
         this.TUT_VEC.fixed = true;
      }
      
      public function checkTutorial(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         if(!GameSettings.tutorials || this.allTutorialsViewed || Level.levelInstance is TitleLevel)
         {
            return false;
         }
         var _loc3_:int = this.TUT_VEC.length;
         var _loc5_:int = 0;
         while(_loc5_ < _loc3_)
         {
            _loc7_ = (_loc6_ = this.TUT_VEC[_loc5_])[this.NAME_IND];
            _loc8_ = _loc6_[this.MSG_ARR_IND];
            if(_loc7_ == param1 && _loc6_[this.ENABLED_IND])
            {
               _loc9_ = 0;
               while(_loc9_ < _loc8_.length)
               {
                  _loc10_ = _loc8_[_loc9_];
                  this.MSGS_TO_SHOW.push(_loc10_);
                  _loc9_++;
               }
               _loc6_[this.ENABLED_IND] = false;
               if(this.TUT_VEC.length == 0)
               {
                  this.allTutorialsViewed = true;
                  GameSettings.changeTutorials(int(false));
               }
               _loc4_ = true;
               break;
            }
            _loc5_++;
         }
         if(_loc4_)
         {
            if(param2)
            {
               this.showStoredMessages();
            }
            return true;
         }
         return false;
      }
      
      public function startLevel(param1:Character) : void
      {
         if(level is TitleLevel || level is CharacterSelect || level is FakeLevel)
         {
            return;
         }
         this.checkTutorial(this.FIRST_CHARACTER_START);
         this.checkTutorial(param1.charName + this.START_STR_SUFFIX);
         this.showStoredMessages();
      }
      
      public function gotPowerUp(param1:Character) : void
      {
         this.checkTutorial(param1.charName + this.PWR_UP_STR_SUFFIX);
         this.showStoredMessages();
      }
      
      public function characterSelect() : void
      {
         if(GameSettings.campaignMode == CampaignModes.SURVIVAL)
         {
            this.checkTutorial(this.TYPE_SURVIVAL);
         }
         else
         {
            this.checkTutorial(this.CHARACTER_SELECT);
         }
         this.showStoredMessages();
      }
      
      private function showStoredMessages() : void
      {
         if(this.MSGS_TO_SHOW.length)
         {
            msgBxMngr.tutorialStart(this.MSGS_TO_SHOW);
            this.MSGS_TO_SHOW.length = 0;
         }
      }
      
      public function getStoredMessages() : Vector.<String>
      {
         var _loc1_:Vector.<String> = null;
         if(this.MSGS_TO_SHOW.length)
         {
            _loc1_ = this.MSGS_TO_SHOW.concat();
            this.MSGS_TO_SHOW.length = 0;
            return _loc1_;
         }
         return null;
      }
      
      public function saveData() : Array
      {
         var _loc3_:int = 0;
         var _loc1_:Array = [];
         var _loc2_:int = this.TUT_VEC.length;
         while(_loc3_ < _loc2_)
         {
            _loc1_.push(int(this.TUT_VEC[_loc3_][this.ENABLED_IND]));
            _loc3_++;
         }
         return _loc1_;
      }
      
      public function loadData(param1:Array) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = this.TUT_VEC.length;
         while(_loc3_ < _loc2_)
         {
            this.TUT_VEC[_loc3_][this.ENABLED_IND] = Boolean(param1[0]);
            param1.shift();
            _loc3_++;
         }
      }
      
      public function startNewGameHandler() : void
      {
         this.setAllTutorialsEnabled();
      }
      
      private function setAllTutorialsEnabled(param1:Boolean = true) : void
      {
         var _loc2_:Array = null;
         for each(_loc2_ in this.TUT_VEC)
         {
            _loc2_[this.ENABLED_IND] = param1;
         }
      }
   }
}
