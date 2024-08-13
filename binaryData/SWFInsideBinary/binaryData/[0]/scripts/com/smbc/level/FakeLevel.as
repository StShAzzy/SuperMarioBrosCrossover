package com.smbc.level
{
   import com.smbc.characters.Character;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.LevelID;
   import com.smbc.data.MapPack;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.LevelDataManager;
   
   public class FakeLevel extends Level
   {
      
      public static const DEFAULT_CHANGE_TO_SKIN_NUM:int = -1;
       
      
      private var changetoSkinNum:int;
      
      private var resetAmmo:Boolean;
      
      public function FakeLevel(param1:int = -1, param2:Boolean = false)
      {
         this.changetoSkinNum = param1;
         this.resetAmmo = param2;
         super(LevelID.Create(CharacterSelect.FULL_LEVEL_STR),LevelDataManager.getLevelData(MapPack.Smb),[],true);
      }
      
      override public function initiateLevel() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Class = null;
         super.initiateLevel();
         var _loc1_:GraphicsManager = GraphicsManager.INSTANCE;
         if(this.changetoSkinNum == GraphicsManager.CHAR_SKIN_NUM_RANDOM || this.changetoSkinNum >= 0)
         {
            _loc1_.changeCharacterSkin(player,this.changetoSkinNum);
         }
         else
         {
            player.destroy();
            player = null;
            _loc2_ = Character.NUM_CHARACTERS;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = CharacterInfo.getCharClassFromNum(_loc3_);
               player = new _loc4_();
               player.initiate();
               if(this.resetAmmo)
               {
                  player.setAllAmmoToDefault();
               }
               _loc1_.changeCharacterSkin(player,STAT_MNGR.getCharSkinNum(_loc3_));
               _loc3_++;
            }
         }
         player.destroy();
         destroyLevel();
      }
   }
}
