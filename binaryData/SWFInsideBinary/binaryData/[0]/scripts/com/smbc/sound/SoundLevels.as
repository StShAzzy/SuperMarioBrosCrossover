package com.smbc.sound
{
   public class SoundLevels
   {
      
      public static var musicVolume:int = 0;
      
      public static var sfxVolume:int = 100;
      
      public static const MAX_VOLUME:int = 100;
      
      public static const MIN_VOLUME:int = 0;
      
      public static const VOLUME_INCREMENT:int = 10;
      
      private static const MUS_REF:int = 80;
      
      private static const SFX_REF:int = 77;
      
      public static const LEVEL_DIVISOR:int = 100;
      
      public static const BLASTER_MASTER_NSF:int = MUS_REF + 0;
      
      public static const CASTLEVANIA_NSF:int = MUS_REF + 5;
      
      public static const CASTLEVANIA_2_NSF:int = MUS_REF - 5;
      
      public static const CONTRA_NSF:int = MUS_REF - 10;
      
      public static const CONTRA_FORCE_NSF:int = MUS_REF + 0;
      
      public static const LIFE_FORCE_NSF:int = MUS_REF + 0;
      
      public static const MEGA_MAN_NSF:int = MUS_REF - 10;
      
      public static const MEGA_MAN_2_NSF:int = MUS_REF - 25;
      
      public static const MEGA_MAN_3_NSF:int = MUS_REF - 18;
      
      public static const METROID_NSF:int = MUS_REF + 0;
      
      public static const NINJA_GAIDEN_NSF:int = MUS_REF + 20;
      
      public static const NINJA_GAIDEN_2_NSF:int = MUS_REF + 0;
      
      public static const SUPER_MARIO_BROS_NSF:int = MUS_REF - 9;
      
      public static const SUPER_MARIO_BROS_3_NSF:int = MUS_REF - 10;
      
      public static const ZELDA_1_NSF:int = MUS_REF - 12;
      
      public static const ZELDA_2_NSF:int = MUS_REF - 10;
      
      public static const BGM_BILL_DUNGEON:int = MUS_REF + 12;
      
      public static const BGM_BILL_OVER_WORLD:int = MUS_REF + 15;
      
      public static const BGM_BILL_UNDER_GROUND:int = MUS_REF + 11;
      
      public static const BGM_BILL_WATER:int = MUS_REF + 11;
      
      public static const BGM_GAME_CHARACTER_SELECT:int = MUS_REF - 5;
      
      public static const BGM_GAME_ENDING:int = MUS_REF + 0;
      
      public static const BGM_GAME_SECONDS_LEFT_INTRO:int = MUS_REF - 42;
      
      public static const BGM_GAME_STAR_POWER:int = MUS_REF - 10;
      
      public static const BGM_GAME_STAR_POWER_FAST:int = MUS_REF + 0;
      
      public static const BGM_LINK_DUNGEON:int = MUS_REF + 0;
      
      public static const BGM_LINK_OVER_WORLD:int = MUS_REF + 0;
      
      public static const BGM_LINK_UNDER_GROUND:int = MUS_REF - 3;
      
      public static const BGM_LINK_WATER:int = MUS_REF + 4;
      
      public static const BGM_MARIO_DUNGEON:int = MUS_REF + 0;
      
      public static const BGM_MARIO_DUNGEON_FAST:int = MUS_REF + 0;
      
      public static const BGM_MARIO_OVER_WORLD:int = MUS_REF + 0;
      
      public static const BGM_MARIO_OVER_WORLD_FAST:int = MUS_REF + 0;
      
      public static const BGM_MARIO_UNDER_GROUND:int = MUS_REF + 0;
      
      public static const BGM_MARIO_UNDER_GROUND_FAST:int = MUS_REF + 0;
      
      public static const BGM_MARIO_WATER:int = MUS_REF + 0;
      
      public static const BGM_MARIO_WATER_FAST:int = MUS_REF + 0;
      
      public static const BGM_MEGA_MAN_DUNGEON:int = MUS_REF - 3;
      
      public static const BGM_MEGA_MAN_OVER_WORLD:int = MUS_REF + 7;
      
      public static const BGM_MEGA_MAN_SECONDS_LEFT:int = MUS_REF + 0;
      
      public static const BGM_MEGA_MAN_UNDER_GROUND:int = MUS_REF + 0;
      
      public static const BGM_MEGA_MAN_WATER:int = MUS_REF + 5;
      
      public static const BGM_RYU_DUNGEON:int = MUS_REF + 11;
      
      public static const BGM_RYU_OVER_WORLD:int = MUS_REF + 11;
      
      public static const BGM_RYU_SECONDS_LEFT:int = MUS_REF + 11;
      
      public static const BGM_RYU_UNDER_GROUND:int = MUS_REF + 11;
      
      public static const BGM_RYU_WATER:int = MUS_REF + 11;
      
      public static const BGM_SAMUS_DUNGEON:int = MUS_REF - 5;
      
      public static const BGM_SAMUS_OVER_WORLD:int = MUS_REF - 6;
      
      public static const BGM_SAMUS_UNDER_GROUND:int = MUS_REF + 0;
      
      public static const BGM_SAMUS_WATER:int = MUS_REF + 0;
      
      public static const BGM_SIMON_DUNGEON:int = MUS_REF + 0;
      
      public static const BGM_SIMON_OVER_WORLD:int = MUS_REF + 13;
      
      public static const BGM_SIMON_SECONDS_LEFT:int = MUS_REF + 0;
      
      public static const BGM_SIMON_UNDER_GROUND:int = MUS_REF + 10;
      
      public static const BGM_SIMON_WATER:int = MUS_REF + 0;
      
      public static const MFX_BILL_INTRO:int = MUS_REF + 15;
      
      public static const MFX_BILL_WIN:int = MUS_REF + 12;
      
      public static const MFX_GAME_GAME_OVER:int = MUS_REF + 0;
      
      public static const MFX_LINK_INTRO_LEVEL:int = MUS_REF - 36;
      
      public static const MFX_LINK_SELECT:int = MUS_REF + 20;
      
      public static const MFX_LINK_WIN:int = MUS_REF + 6;
      
      public static const MFX_MARIO_DIE:int = MUS_REF + 0;
      
      public static const MFX_MARIO_INTRO:int = MUS_REF - 3;
      
      public static const MFX_MARIO_SELECT_CHARACTER:int = MUS_REF + 5;
      
      public static const MFX_MARIO_WIN:int = MUS_REF + 0;
      
      public static const MFX_MARIO_WIN_CASTLE:int = MUS_REF + 0;
      
      public static const MFX_MEGA_MAN_INTRO:int = MUS_REF + 0;
      
      public static const MFX_MEGA_MAN_WIN:int = MUS_REF + 0;
      
      public static const MFX_RYU_DIE:int = MUS_REF + 11;
      
      public static const MFX_RYU_INTRO:int = MUS_REF + 11;
      
      public static const MFX_RYU_WIN:int = MUS_REF + 11;
      
      public static const MFX_SAMUS_INTRO:int = MUS_REF + 3;
      
      public static const MFX_SAMUS_WIN:int = MUS_REF - 2;
      
      public static const MFX_SIMON_DIE:int = MUS_REF + 0;
      
      public static const MFX_SIMON_INTRO:int = MUS_REF + 12;
      
      public static const MFX_SIMON_WIN:int = MUS_REF + 0;
      
      public static const SFX_BILL_DIE:int = SFX_REF + 0;
      
      public static const SFX_BILL_ELECTRECUTE:int = SFX_REF + 0;
      
      public static const SFX_BILL_LAND:int = SFX_REF - 7;
      
      public static const SFX_BILL_MACHINE_GUN:int = SFX_REF - 16;
      
      public static const SFX_BILL_NORMAL_SHOT:int = SFX_REF - 16;
      
      public static const SFX_BILL_SECONDS_LEFT:int = SFX_REF + 0;
      
      public static const SFX_BILL_SHOT_HIT:int = SFX_REF - 5;
      
      public static const SFX_BILL_SPREAD:int = SFX_REF - 12;
      
      public static const SFX_GAME_BOWSER_FALL:int = SFX_REF + 7;
      
      public static const SFX_GAME_BOWSER_FIRE:int = SFX_REF + 0;
      
      public static const SFX_GAME_BRICK_BREAK:int = SFX_REF - 10;
      
      public static const SFX_GAME_BRIDGE_BREAK:int = SFX_REF + 0;
      
      public static const SFX_GAME_CANON:int = SFX_REF + 10;
      
      public static const SFX_GAME_CHARACTER_SELECT_CURSOR:int = SFX_REF + 10;
      
      public static const SFX_GAME_COIN:int = SFX_REF - 15;
      
      public static const SFX_GAME_FLAG_POLE:int = SFX_REF - 5;
      
      public static const SFX_GAME_HIT_CEILING:int = SFX_REF + 7;
      
      public static const SFX_GAME_ITEM_APPEAR:int = SFX_REF + 5;
      
      public static const SFX_GAME_KICK_SHELL:int = SFX_REF - 5;
      
      public static const SFX_GAME_NEW_LIFE:int = SFX_REF - 4;
      
      public static const SFX_GAME_PAUSE:int = SFX_REF - 4;
      
      public static const SFX_GAME_PIPE:int = SFX_REF - 4;
      
      public static const SFX_GAME_POINTS:int = SFX_REF - 14;
      
      public static const SFX_GAME_POWER_UP:int = SFX_REF - 8;
      
      public static const SFX_GAME_STOMP:int = SFX_REF - 4;
      
      public static const SFX_GAME_VINE:int = SFX_REF + 0;
      
      public static const SFX_LINK_BOOMERANG:int = SFX_REF - 4;
      
      public static const SFX_LINK_DIE:int = SFX_REF + 0;
      
      public static const SFX_LINK_GET_ITEM:int = SFX_REF + 0;
      
      public static const SFX_LINK_HIT_ENEMY:int = SFX_REF + 11;
      
      public static const SFX_LINK_HIT_ENEMY_ARMOR:int = SFX_REF + 11;
      
      public static const SFX_LINK_JUMP:int = SFX_REF - 12;
      
      public static const SFX_LINK_SECONDS_LEFT:int = SFX_REF - 10;
      
      public static const SFX_LINK_SHOOT_SWORD:int = SFX_REF + 13;
      
      public static const SFX_LINK_STAB:int = SFX_REF + 0;
      
      public static const SFX_MARIO_FIREBALL:int = SFX_REF + 10;
      
      public static const SFX_MARIO_JUMP_BIG:int = SFX_REF + 0;
      
      public static const SFX_MARIO_JUMP_SMALL:int = SFX_REF - 13;
      
      public static const SFX_MEGA_MAN_CHARGE_SHOT:int = SFX_REF + 0;
      
      public static const SFX_MEGA_MAN_CHARGE_START:int = SFX_REF - 11;
      
      public static const SFX_MEGA_MAN_CHARGE_LOOP:int = SFX_REF - 11;
      
      public static const SFX_MEGA_MAN_CHARGE_HEAT_START:int = SFX_REF + 0;
      
      public static const SFX_MEGA_MAN_CHARGE_HEAT_LOOP:int = SFX_REF + 0;
      
      public static const SFX_MEGA_MAN_DEFLECT:int = SFX_REF - 11;
      
      public static const SFX_MEGA_MAN_DIE:int = SFX_REF - 5;
      
      public static const SFX_MEGA_MAN_DIE_ALT:int = SFX_REF - 5;
      
      public static const SFX_MEGA_MAN_FIRE:int = SFX_REF - 5;
      
      public static const SFX_MEGA_MAN_HIT_ENEMY:int = SFX_REF - 4;
      
      public static const SFX_MEGA_MAN_ICE_SLASHER:int = SFX_REF + 0;
      
      public static const SFX_MEGA_MAN_ICE_SLASHER_HIT:int = SFX_REF + 0;
      
      public static const SFX_MEGA_MAN_SCREW_CRUSHER:int = SFX_REF + 20;
      
      public static const SFX_MEGA_MAN_WATER_SHIELD:int = SFX_REF - 10;
      
      public static const SFX_MEGA_MAN_LAND:int = SFX_REF - 10;
      
      public static const SFX_MEGA_MAN_SHOOT:int = SFX_REF - 12;
      
      public static const SFX_MEGA_MAN_TELEPORT:int = SFX_REF + 0;
      
      public static const SFX_RYU_ATTACK:int = SFX_REF + 0;
      
      public static const SFX_RYU_ATTACK_ARMOR:int = SFX_REF + 0;
      
      public static const SFX_RYU_DAMAGE_ENEMY:int = SFX_REF + 10;
      
      public static const SFX_RYU_JUMP:int = SFX_REF - 10;
      
      public static const SFX_RYU_TAKE_DAMAGE:int = SFX_REF + 5;
      
      public static const SFX_RYU_THROW_BIG_STAR:int = SFX_REF + 0;
      
      public static const SFX_RYU_THROW_SMALL_STAR:int = SFX_REF - 5;
      
      public static const SFX_SAMUS_BOMB_EXPLODE:int = SFX_REF + 5;
      
      public static const SFX_SAMUS_BOMB_SET:int = SFX_REF + 10;
      
      public static const SFX_SAMUS_BULLET_PROOF:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_DIE:int = SFX_REF + 9;
      
      public static const SFX_SAMUS_GET_MISSILE:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_HIT_ENEMY:int = SFX_REF + 11;
      
      public static const SFX_SAMUS_ICE_BEAM:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_JUMP:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_LAND:int = SFX_REF - 5;
      
      public static const SFX_SAMUS_LONG_BEAM:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_MORPH_BALL:int = SFX_REF + 16;
      
      public static const SFX_SAMUS_SHOOT_MISSILE:int = SFX_REF + 0;
      
      public static const SFX_SAMUS_SHORT_BEAM:int = SFX_REF + 10;
      
      public static const SFX_SAMUS_STEP:int = SFX_REF - 5;
      
      public static const SFX_SAMUS_WAVE_BEAM:int = SFX_REF + 3;
      
      public static const SFX_SIMON_AXE:int = SFX_REF - 17;
      
      public static const SFX_SIMON_FLAME_WHIP:int = SFX_REF - 3;
      
      public static const SFX_SIMON_GET_BIG_HEART:int = SFX_REF - 7;
      
      public static const SFX_SIMON_HIT_CANDLE:int = SFX_REF - 5;
      
      public static const SFX_SIMON_HIT_ENEMY:int = SFX_REF - 12;
      
      public static const SFX_SIMON_HIT:int = SFX_REF + 0;
      
      public static const SFX_SIMON_ROSARY:int = SFX_REF + 0;
      
      public static const SFX_SIMON_WHIP:int = SFX_REF - 12;
      
      public static const SFX_SOPHIA_BULLET_EXPLODE:int = SFX_REF + 15;
      
      public static const SFX_SOPHIA_DIE:int = SFX_REF + 15;
      
      public static const SFX_SOPHIA_GET_PICKUP:int = SFX_REF + 10;
      
      public static const SFX_SOPHIA_HIT_ENEMY:int = SFX_REF + 23;
      
      public static const SFX_SOPHIA_HOVER:int = SFX_REF + 10;
      
      public static const SFX_SOPHIA_JUMP:int = SFX_REF + 20;
      
      public static const SFX_SOPHIA_KILL_ENEMY:int = SFX_REF + 10;
      
      public static const SFX_SOPHIA_LAND:int = SFX_REF + 20;
      
      public static const SFX_SOPHIA_MISSILE:int = SFX_REF + 15;
      
      public static const SFX_SOPHIA_OPEN:int = SFX_REF + 23;
      
      public static const SFX_SOPHIA_SHOOT_NORMAL:int = SFX_REF + 15;
      
      public static const SFX_SOPHIA_SHOOT_HYPER:int = SFX_REF + 15;
      
      public static const SFX_SOPHIA_SHOOT_CRUSHER:int = SFX_REF + 15;
       
      
      public function SoundLevels()
      {
         super();
      }
   }
}
