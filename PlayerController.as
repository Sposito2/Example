package  {
	
	import flash.display.MovieClip;
	import flash.events.KeyboardEvent;
	import flash.events.Event;
	import flash.ui.Keyboard;
	
	public class PlayerController {

		private var  leftKey : Boolean = false;
		private var rightKey : Boolean = false;
		private var    upKey : Boolean = false;
		private var  downKey : Boolean = false;
		
		
		private var player:MovieClip;
		
		public function PlayerController(mC:MovieClip){
		
			mC.stage.addEventListener(KeyboardEvent.KEY_DOWN , KeyPress   );
			mC.stage.addEventListener(KeyboardEvent.KEY_UP   , KeyRelease );
			mC.stage.addEventListener(Event.ENTER_FRAME      , movePlayer );
			
			player = mC;
		}
		
		//When the player press any keyboard key...
		function KeyPress(evt:KeyboardEvent){
				 if (evt.keyCode == 37)  leftKey = true;
			else if (evt.keyCode == 38)    upKey = true;
			else if (evt.keyCode == 39) rightKey = true;
			else if (evt.keyCode == 40)  downKey = true;
		}
		
		//When the player release any keyboard key...
		function KeyRelease(evt:KeyboardEvent){
				 if (evt.keyCode == 37)  leftKey = false;
			else if (evt.keyCode == 38)    upKey = false;
			else if (evt.keyCode == 39) rightKey = false;
			else if (evt.keyCode == 40)  downKey = false;
		}
		
		private function movePlayer(evt:Event):void{
			if (  leftKey == true) player.x -= 5;
			if ( rightKey == true) player.x += 5;
			if (    upKey == true) player.y -= 5;
			if (  downKey == true) player.y += 5;
			
		}
		
		//Remove the PlayerController event listeners
		private function Kill(){
			player.stage.removeEventListener(KeyboardEvent.KEY_DOWN , KeyPress   );
			player.stage.removeEventListener(KeyboardEvent.KEY_UP   , KeyRelease );
			player.stage.removeEventListener(Event.ENTER_FRAME      , movePlayer );
		}

	}
	
}
