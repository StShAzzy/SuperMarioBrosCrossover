package com.smbc.data
{
   import com.smbc.pickups.BassPickup;
   import com.smbc.pickups.BillPickup;
   import com.smbc.pickups.FireFlower;
   import com.smbc.pickups.LinkPickup;
   import com.smbc.pickups.LuigiPickup;
   import com.smbc.pickups.MarioPickup;
   import com.smbc.pickups.MegaManPickup;
   import com.smbc.pickups.Mushroom;
   import com.smbc.pickups.Pickup;
   import com.smbc.pickups.RyuPickup;
   import com.smbc.pickups.SamusPickup;
   import com.smbc.pickups.SimonPickup;
   import com.smbc.pickups.SophiaPickup;
   import com.smbc.pickups.VicViperPickup;
   import flash.utils.Dictionary;
   import flash.utils.describeType;
   import flash.utils.getDefinitionByName;
   
   public class PickupInfo
   {
      
      public static const UPGRADE_STR:String = "UPG_";
      
      public static const REGULAR_STR:String = "REG_";
      
      public static const FAKE_STR:String = "NON_";
      
      private static const PICKUP_DCT:Dictionary = new Dictionary();
      
      private static const PICKUP_ARR:Array = [];
      
      public static const MAIN_TYPE_UPGRADE:String = "upgrade";
      
      public static const MAIN_TYPE_FAKE:String = "fake";
      
      public static const MAIN_TYPE_REGULAR:String = "regular";
      
      public static const MUSHROOM:String = "UPG_mushroom";
      
      public static const FIRE_FLOWER:String = "UPG_fireFlower";
      
      public static const POISON_MUSHOOM:String = "REG_poisonMushroom";
      
      public static const GREEN_MUSHROOM:String = "REG_greenMushroom";
      
      public static const ATOM:String = "REG_atom";
      
      public static const HUDSON_BEE:String = "REG_hudsonBee";
      
      public static const HAMMER:String = "REG_hammer";
      
      public static const WING:String = "REG_wing";
      
      public static const CLOCK:String = "REG_clock";
      
      public static const STAR:String = "REG_star";
      
      public static const COIN:String = "REG_coin";
      
      public static const EXPLODING_RABBIT:String = "REG_explodingRabbit";
      
      public static const BILL_FLARE:String = "UPG_flare";
      
      public static const BILL_LASER:String = "UPG_laser";
      
      public static const BILL_MACHINE:String = "UPG_machine";
      
      public static const BILL_RAPID_1:String = "UPG_rapid1";
      
      public static const BILL_RAPID_2:String = "UPG_rapid2";
      
      public static const BILL_SPREAD:String = "UPG_spread";
      
      public static const LINK_LADDER:String = "UPG_ladder";
      
      public static const LINK_BOW:String = "UPG_bow";
      
      public static const LINK_BOMB:String = "UPG_bomb";
      
      public static const LINK_BOMB_BAG:String = "UPG_bombBag";
      
      public static const LINK_BLUE_RING:String = "UPG_blueRing";
      
      public static const LINK_SHORT_BOOMERANG:String = "UPG_shortBoomerang";
      
      public static const LINK_MAGIC_BOOMERANG:String = "UPG_magicBoomerang";
      
      public static const LINK_MAGIC_SHIELD:String = "UPG_magicShield";
      
      public static const LINK_MAGIC_SWORD:String = "UPG_magicSword";
      
      public static const LINK_RED_RING:String = "UPG_redRing";
      
      public static const LINK_QUIVER:String = "UPG_quiver";
      
      public static const LINK_ARROW_AMMO:String = "REG_arrowAmmo";
      
      public static const LINK_BOMB_AMMO:String = "REG_bombAmmo";
      
      public static const MARIO_FIRE_FLOWER:String = "UPG_fireFlower";
      
      public static const MEGA_MAN_BASS_BUSTER:String = "UPG_bassBuster";
      
      public static const MEGA_MAN_CHARGE_KICK:String = "UPG_chargeKick";
      
      public static const MEGA_MAN_CHARGE_SHOT:String = "UPG_chargeShot";
      
      public static const MEGA_MAN_ENERGY_BALANCER:String = "UPG_energyBalancer";
      
      public static const MEGA_MAN_FLAME_BLAST:String = "UPG_flameBlast";
      
      public static const MEGA_MAN_HARD_KNUCKLE:String = "UPG_hardKnuckle";
      
      public static const MEGA_MAN_MAGMA_BAZOOKA:String = "UPG_magmaBazooka";
      
      public static const MEGA_MAN_MEGA_BUSTER:String = "UPG_megaBuster";
      
      public static const MEGA_MAN_METAL_BLADE:String = "UPG_metalBlade";
      
      public static const MEGA_MAN_PHARAOH_SHOT:String = "UPG_pharaohShot";
      
      public static const MEGA_MAN_RUSH_COIL:String = "UPG_rushCoil";
      
      public static const MEGA_MAN_RUSH_JET:String = "UPG_rushJet";
      
      public static const MEGA_MAN_RUSH_MARINE:String = "UPG_rushMarine";
      
      public static const MEGA_MAN_SCREW_CRUSHER:String = "UPG_screwCrusher";
      
      public static const MEGA_MAN_SUPER_ARM:String = "UPG_superArm";
      
      public static const MEGA_MAN_WATER_SHIELD:String = "UPG_waterShield";
      
      public static const MEGA_MAN_WEAPON_ENERGY_BIG:String = "REG_weaponEnergyBig";
      
      public static const MEGA_MAN_WEAPON_ENERGY_SMALL:String = "REG_weaponEnergySmall";
      
      public static const PIT_FIRE_ARROW:String = "UPG_fireArrow";
      
      public static const PIT_FEATHER:String = "UPG_feather";
      
      public static const PIT_LONG_ARROW:String = "UPG_longArrow";
      
      public static const PIT_BARRIER:String = "UPG_barrier";
      
      public static const PIT_HAMMER:String = "UPG_hammer";
      
      public static const RYU_ART_OF_FIRE_WHEEL:String = "UPG_artOfFireWheel";
      
      public static const RYU_SHURIKEN:String = "UPG_shuriken";
      
      public static const RYU_WINDMILL_SHURIKEN:String = "UPG_windmillShuriken";
      
      public static const RYU_FIRE_DRAGON_BALL:String = "UPG_fireDragonBall";
      
      public static const RYU_JUMP_SLASH:String = "UPG_jumpSlash";
      
      public static const RYU_SCROLL:String = "UPG_scroll";
      
      public static const RYU_SWORD_EXTENSION:String = "UPG_swordExtension";
      
      public static const RYU_NINJITSU_AMMO_BIG:String = "REG_ninjitsuAmmoBig";
      
      public static const RYU_NINJITSU_AMMO_SMALL:String = "REG_ninjitsuAmmoSmall";
      
      public static const SAMUS_BOMB:String = "UPG_bomb";
      
      public static const SAMUS_HIGH_JUMP:String = "UPG_highJump";
      
      public static const SAMUS_ICE_BEAM:String = "UPG_iceBeam";
      
      public static const SAMUS_LONG_BEAM:String = "UPG_longBeam";
      
      public static const SAMUS_MISSILE:String = "UPG_missile";
      
      public static const SAMUS_MISSILE_EXPANSION:String = "UPG_missileExpansion";
      
      public static const SAMUS_MORPH_BALL:String = "UPG_morphBall";
      
      public static const SAMUS_SCREW_ATTACK:String = "UPG_screwAttack";
      
      public static const SAMUS_VARIA_SUIT:String = "UPG_variaSuit";
      
      public static const SAMUS_WAVE_BEAM:String = "UPG_waveBeam";
      
      public static const SAMUS_MISSILE_AMMO:String = "REG_missileAmmo";
      
      public static const SIMON_AXE:String = "UPG_axe";
      
      public static const SIMON_STOP_WATCH:String = "UPG_stopWatch";
      
      public static const SIMON_CROSS:String = "UPG_cross";
      
      public static const SIMON_DOUBLE:String = "UPG_double";
      
      public static const SIMON_DAGGER:String = "UPG_dagger";
      
      public static const SIMON_HOLY_WATER:String = "UPG_holyWater";
      
      public static const SIMON_TRIPLE:String = "UPG_triple";
      
      public static const SIMON_WHIP_LEVEL_2:String = "UPG_whipLevel2";
      
      public static const SIMON_WHIP_LEVEL_3:String = "UPG_whipLevel3";
      
      public static const SIMON_HEART_BIG:String = "REG_heartBig";
      
      public static const SIMON_HEART_SMALL:String = "REG_heartSmall";
      
      public static const SIMON_PORK_CHOP:String = "REG_porkChop";
      
      public static const SOPHIA_CEILING_CLIMB:String = "UPG_ceilingClimb";
      
      public static const SOPHIA_HOMING_MISSILE:String = "UPG_homingMissile";
      
      public static const SOPHIA_MISSILE:String = "UPG_missile";
      
      public static const SOPHIA_HOVER:String = "UPG_hover";
      
      public static const SOPHIA_WALL_CLIMB:String = "UPG_wallClimb";
      
      public static const SOPHIA_WALL_JUMP:String = "UPG_wallJump";
      
      public static const SOPHIA_CRUSHER:String = "UPG_crusher";
      
      public static const SOPHIA_HYPER:String = "UPG_hyper";
      
      public static const SOPHIA_HOMING_MISSILE_AMMO:String = "REG_homingMissileAmmo";
      
      public static const SOPHIA_MISSILE_AMMO:String = "REG_missileAmmo";
      
      public static const VIC_POWER_UP_1:String = "UPG_powerUp1";
      
      public static const VIC_POWER_UP_2:String = "UPG_powerUp2";
      
      public static const VIC_POWER_UP_3:String = "UPG_powerUp3";
      
      public static const VIC_POWER_UP_4:String = "UPG_powerUp4";
      
      public static const VIC_POWER_UP_5:String = "UPG_powerUp5";
      
      public static const VIC_POWER_UP_6:String = "UPG_powerUp6";
      
      public static const VIC_SPEED_1:String = "UPG_speed1";
      
      public static const VIC_SPEED_2:String = "UPG_speed2";
      
      public static const VIC_SPEED_3:String = "UPG_speed3";
      
      public static const VIC_SPEED_4:String = "UPG_speed4";
      
      public static const VIC_SPEED_5:String = "UPG_speed5";
      
      public static const VIC_MISSILE:String = "UPG_missile";
      
      public static const VIC_DOUBLE_1:String = "UPG_double1";
      
      public static const VIC_DOUBLE_2:String = "UPG_double2";
      
      public static const VIC_LASER_1:String = "UPG_laser1";
      
      public static const VIC_LASER_2:String = "UPG_laser2";
      
      public static const VIC_OPTION_1:String = "UPG_option1";
      
      public static const VIC_OPTION_2:String = "UPG_option2";
      
      public static const VIC_OPTION_3:String = "UPG_option3";
      
      public static const VIC_OPTION_4:String = "UPG_option4";
      
      public static const VIC_SHIELD:String = "UPG_shield";
      
      public static const PIPE_TRANSPORTER:String = "NON_pipeTransporter";
      
      public static const TELEPORTER:String = "NON_teleporter";
      
      public static const VINE:String = "NON_vine";
      
      public static const LEVEL_EXIT:String = "NON_levelExit";
      
      public static const RUSH:String = "NON_rush";
      
      public static const FLAG_POLE:String = "NON_flagPole";
      
      public static const AMMO_DCT:Dictionary = new Dictionary();
       
      
      public function PickupInfo()
      {
         super();
      }
      
      public static function initiate() : void
      {
         var _loc1_:BassPickup = null;
         var _loc2_:BillPickup = null;
         var _loc3_:LinkPickup = null;
         var _loc4_:LuigiPickup = null;
         var _loc5_:MarioPickup = null;
         var _loc6_:MegaManPickup = null;
         var _loc7_:RyuPickup = null;
         var _loc8_:SamusPickup = null;
         var _loc9_:SimonPickup = null;
         var _loc10_:SophiaPickup = null;
         var _loc11_:VicViperPickup = null;
         setUpNums();
         setUpAmmoDct();
      }
      
      private static function setUpAmmoDct() : void
      {
         var _loc2_:Object = null;
         var _loc1_:Array = [LINK_ARROW_AMMO,LINK_BOMB_AMMO,MEGA_MAN_WEAPON_ENERGY_BIG,MEGA_MAN_WEAPON_ENERGY_SMALL,RYU_NINJITSU_AMMO_BIG,RYU_NINJITSU_AMMO_SMALL,SAMUS_MISSILE_AMMO,SOPHIA_MISSILE_AMMO,SOPHIA_HOMING_MISSILE_AMMO,SIMON_HEART_BIG,SIMON_HEART_SMALL];
         for each(_loc2_ in _loc1_)
         {
            AMMO_DCT[_loc2_] = _loc2_;
         }
      }
      
      private static function setUpNums() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc1_:XMLList = describeType(PickupInfo)..constant;
         var _loc2_:int = _loc1_.length();
         while(_loc3_ < _loc2_)
         {
            _loc4_ = _loc1_[_loc3_].@name;
            if((_loc5_ = PickupInfo[_loc4_]) is String)
            {
               if((_loc6_ = _loc5_ as String).indexOf(UPGRADE_STR) != -1)
               {
                  PICKUP_ARR.push(_loc6_);
               }
            }
            _loc3_++;
         }
         PICKUP_ARR.sort();
         _loc2_ = PICKUP_ARR.length;
         _loc3_ = 0;
         while(_loc3_ < _loc2_)
         {
            _loc6_ = PICKUP_ARR[_loc3_];
            PICKUP_DCT[_loc6_] = _loc3_;
            _loc3_++;
         }
      }
      
      public static function getPickupClass(param1:int) : Class
      {
         var _loc2_:* = "com.smbc.pickups." + CharacterInfo.getCharClassName(param1) + "Pickup";
         return getDefinitionByName(_loc2_) as Class;
      }
      
      public static function getPickupClassFromUpgradeType(param1:String) : Class
      {
         switch(param1)
         {
            case MUSHROOM:
               return Mushroom;
            case FIRE_FLOWER:
               return FireFlower;
            default:
               return Pickup;
         }
      }
      
      public static function convToInt(param1:String) : int
      {
         return PICKUP_DCT[param1];
      }
      
      public static function convToString(param1:int) : String
      {
         return PICKUP_ARR[param1];
      }
   }
}
