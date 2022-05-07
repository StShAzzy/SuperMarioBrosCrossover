package com.smbc.level
{
   import com.smbc.characters.Character;
   import com.smbc.data.CharacterInfo;
   import com.smbc.data.MapPack;
   import com.smbc.managers.GraphicsManager;
   import com.smbc.managers.LevelDataManager;
   
   public class FakeLevel extends Level
   {
       
      
      private var changetoSkinNum:int;
      
      public function FakeLevel(param1:int = -1)
      {
         this.changetoSkinNum = param1;
         super(CharacterSelect.FULL_LEVEL_STR,LevelDataManager.getLevelData(MapPack.Smb),[],true);
      }
      
      override public function initiateLevel() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Class = null;
         var _loc5_:int = 0;
         super.initiateLevel();
         var _loc1_:GraphicsManager = GraphicsManager.INSTANCE;
         if(this.changetoSkinNum == GraphicsManager.CHAR_SKIN_NUM_RANDOM || this.changetoSkinNum > 0)
         {
            _loc1_.changeCharacterSkin(player,this.changetoSkinNum);
         }
         else
         {
            _loc2_ = Character.NUM_CHARACTERS;
            _loc3_ = 0;
            while(_loc3_ < _loc2_)
            {
               _loc4_ = CharacterInfo.getCharClassFromNum(_loc3_);
               _loc5_ = STAT_MNGR.getCharSkinNum(player.charNum);
               _loc1_.changeCharacterSkin(player,_loc5_);
               player.destroy();
               player = null;
               player = new _loc4_();
               player.initiate();
               _loc3_++;
            }
         }
         player.destroy();
         destroyLevel();
      }
   }
}
