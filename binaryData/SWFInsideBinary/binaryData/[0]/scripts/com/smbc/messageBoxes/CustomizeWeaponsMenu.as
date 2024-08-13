package com.smbc.messageBoxes
{
   import com.smbc.data.GameSettings;
   import com.smbc.enums.BillWeapon;
   import com.smbc.enums.LinkWeapon;
   import com.smbc.enums.MegaManSpecialWeapon;
   import com.smbc.enums.RyuSpecialWeapon;
   import com.smbc.enums.SamusWeapon;
   import com.smbc.enums.SimonSpecialWeapon;
   import com.smbc.enums.SophiaWeapon;
   import com.smbc.text.TextFieldContainer;
   
   public class CustomizeWeaponsMenu extends SettingsMenuBox
   {
      
      public static var instance:CustomizeWeaponsMenu;
       
      
      public function CustomizeWeaponsMenu(param1:int = 0)
      {
         super(this.loadItems(),param1);
         instance = this;
      }
      
      private function loadItems() : Array
      {
         return [[MenuBoxItems.BASS_WEAPON,GameSettings.bassWeapon.NiceName],[MenuBoxItems.BILL_FIRST_WEAPON,GameSettings.billFirstWeapon.NiceName],[MenuBoxItems.BILL_SECOND_WEAPON,GameSettings.billSecondWeapon.NiceName],[MenuBoxItems.LINK_WEAPON,GameSettings.linkWeapon.NiceName],[MenuBoxItems.MEGA_MAN_WEAPON,GameSettings.megaManWeapon.NiceName],[MenuBoxItems.RYU_START_WEAPON,GameSettings.ryuStartWeapon.NiceName],[MenuBoxItems.RYU_EXTRA_WEAPON,GameSettings.ryuExtraWeapon.NiceName],[MenuBoxItems.SAMUS_WEAPON,GameSettings.samusWeapon.NiceName],[MenuBoxItems.SIMON_START_WEAPON,GameSettings.simonStartWeapon.NiceName],[MenuBoxItems.SIMON_EXTRA_WEAPON,GameSettings.simonExtraWeapon.NiceName],[MenuBoxItems.SOPHIA_WEAPON,GameSettings.sophiaWeapon.NiceName],[MenuBoxItems.BACK]];
      }
      
      override protected function chooseItem(param1:String, param2:String, param3:TextFieldContainer, param4:int) : void
      {
         var _loc5_:String = null;
         switch(param1)
         {
            case MenuBoxItems.BILL_FIRST_WEAPON:
               GameSettings.billFirstWeapon = GameSettings.billFirstWeapon.GetAtIndex(param4) as BillWeapon;
               if(GameSettings.billFirstWeapon == GameSettings.billSecondWeapon || GameSettings.billFirstWeapon == BillWeapon.Spread)
               {
                  GameSettings.billFirstWeapon = GameSettings.billFirstWeapon.GetAtIndex(param4) as BillWeapon;
               }
               if(GameSettings.billFirstWeapon == GameSettings.billSecondWeapon || GameSettings.billFirstWeapon == BillWeapon.Spread)
               {
                  GameSettings.billFirstWeapon = GameSettings.billFirstWeapon.GetAtIndex(param4) as BillWeapon;
               }
               _loc5_ = GameSettings.billFirstWeapon.NiceName;
               break;
            case MenuBoxItems.BILL_SECOND_WEAPON:
               GameSettings.billSecondWeapon = GameSettings.billSecondWeapon.GetAtIndex(param4) as BillWeapon;
               if(GameSettings.billSecondWeapon == GameSettings.billFirstWeapon)
               {
                  GameSettings.billSecondWeapon = GameSettings.billSecondWeapon.GetAtIndex(param4) as BillWeapon;
               }
               _loc5_ = GameSettings.billSecondWeapon.NiceName;
               break;
            case MenuBoxItems.BASS_WEAPON:
               GameSettings.bassWeapon = GameSettings.bassWeapon.GetAtIndex(param4) as MegaManSpecialWeapon;
               _loc5_ = GameSettings.bassWeapon.NiceName;
               break;
            case MenuBoxItems.LINK_WEAPON:
               GameSettings.linkWeapon = GameSettings.linkWeapon.GetAtIndex(param4) as LinkWeapon;
               _loc5_ = GameSettings.linkWeapon.NiceName;
               break;
            case MenuBoxItems.MEGA_MAN_WEAPON:
               GameSettings.megaManWeapon = GameSettings.megaManWeapon.GetAtIndex(param4) as MegaManSpecialWeapon;
               _loc5_ = GameSettings.megaManWeapon.NiceName;
               break;
            case MenuBoxItems.RYU_START_WEAPON:
               GameSettings.ryuStartWeapon = GameSettings.ryuStartWeapon.GetAtIndex(param4) as RyuSpecialWeapon;
               if(GameSettings.ryuStartWeapon == GameSettings.ryuExtraWeapon)
               {
                  GameSettings.ryuStartWeapon = GameSettings.ryuStartWeapon.GetAtIndex(param4) as RyuSpecialWeapon;
               }
               _loc5_ = GameSettings.ryuStartWeapon.NiceName;
               break;
            case MenuBoxItems.RYU_EXTRA_WEAPON:
               GameSettings.ryuExtraWeapon = GameSettings.ryuExtraWeapon.GetAtIndex(param4) as RyuSpecialWeapon;
               if(GameSettings.ryuExtraWeapon == GameSettings.ryuStartWeapon)
               {
                  GameSettings.ryuExtraWeapon = GameSettings.ryuExtraWeapon.GetAtIndex(param4) as RyuSpecialWeapon;
               }
               _loc5_ = GameSettings.ryuExtraWeapon.NiceName;
               break;
            case MenuBoxItems.SAMUS_WEAPON:
               GameSettings.samusWeapon = GameSettings.samusWeapon.GetAtIndex(param4) as SamusWeapon;
               _loc5_ = GameSettings.samusWeapon.NiceName;
               break;
            case MenuBoxItems.SIMON_START_WEAPON:
               GameSettings.simonStartWeapon = GameSettings.simonStartWeapon.GetAtIndex(param4) as SimonSpecialWeapon;
               if(GameSettings.simonStartWeapon == GameSettings.simonExtraWeapon)
               {
                  GameSettings.simonStartWeapon = GameSettings.simonStartWeapon.GetAtIndex(param4) as SimonSpecialWeapon;
               }
               _loc5_ = GameSettings.simonStartWeapon.NiceName;
               break;
            case MenuBoxItems.SIMON_EXTRA_WEAPON:
               GameSettings.simonExtraWeapon = GameSettings.simonExtraWeapon.GetAtIndex(param4) as SimonSpecialWeapon;
               if(GameSettings.simonExtraWeapon == GameSettings.simonStartWeapon)
               {
                  GameSettings.simonExtraWeapon = GameSettings.simonExtraWeapon.GetAtIndex(param4) as SimonSpecialWeapon;
               }
               _loc5_ = GameSettings.simonExtraWeapon.NiceName;
               break;
            case MenuBoxItems.SOPHIA_WEAPON:
               GameSettings.sophiaWeapon = GameSettings.sophiaWeapon.GetAtIndex(param4) as SophiaWeapon;
               _loc5_ = GameSettings.sophiaWeapon.NiceName;
               break;
            case MenuBoxItems.BACK:
               cancel();
         }
         afterChooseItem(param1,_loc5_,param3);
      }
      
      override protected function destroy() : void
      {
         super.destroy();
         instance = null;
      }
   }
}
