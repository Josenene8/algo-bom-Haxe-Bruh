package;

import flixel.FlxGame;
import openfl.display.Sprite;
import openfl.Lib;
import openfl.events.Event;

class Main extends Sprite {
         
         public static function main():Void
         {
             Lib.current.addChild(new Main());
         }
         
         public function new()
         {
                super();
           
                if (stage != null)
                {
                        init();
                  
                }
                else
                {
                        addEventListener(Event.ADDED_TO_STAGE, Init);
                }
           
         }
         
         private function init(?E:Event):Void
         {
                if (hasEventListener(Event.ADDED_TO_STAGE))
                {  
                         removeEventListener(ADDED_TO_STAGE, Init);
                }
                
                setupGame();
         }
         
         private function setupGame()
         {
           
                addChild(new FlxGame(0, 0, InitState, 1, 60, 60, true));
         }
}
