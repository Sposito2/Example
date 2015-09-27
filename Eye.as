package  {

	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;


	public class Eye extends MovieClip {
	//	var speed:Number;
	//	var moveToPos:Boolean = false;
		var xToMove:Number;
		var yToMove:Number;

		var playerController:PlayerController = new PlayerController(this as MovieClip);
		public function Eye() {
		StartEvents();


		}

		public function StartEvents(){
			addEventListener(Event.ENTER_FRAME, Update);

		}

		public function KillEvents(){
			removeEventListener(Event.ENTER_FRAME, Update);

		}

		public function Update(e:Event):void{

			MCTools.LookToMouse(this, false);
		}



	}

}
