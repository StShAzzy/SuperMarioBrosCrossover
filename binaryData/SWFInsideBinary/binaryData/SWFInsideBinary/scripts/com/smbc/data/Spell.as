package com.smbc.data
{
   import com.smbc.displayInterface.FinalFantasyPointer;
   
   public class Spell
   {
      
      public static const SPELL_BOLT:Spell = new Spell("bolt",FinalFantasyPointer.TYPE_HORIZONTAL);
      
      public static const SPELL_FIRE:Spell = new Spell("fire");
      
      public static const SPELL_ICE:Spell = new Spell("ice",FinalFantasyPointer.TYPE_NORMAL);
       
      
      public var pointerType:String;
      
      public var name:String;
      
      public function Spell(param1:String, param2:String = null)
      {
         super();
         this.pointerType = param2;
         this.name = param1;
      }
   }
}
