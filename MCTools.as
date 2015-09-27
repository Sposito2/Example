package  {
	import flash.display.MovieClip;

	public class MCTools {

		public function MCTools() {

		}


		public static function LookToMouse(obj:MovieClip, smooth:Boolean){
		//	var numX:Number = obj.stage.mouseX - obj.x;
			var numY:Number = obj.stage.mouseY - obj.y;

			var angle:Number = Math.atan2(numY,numX ) * 180 / Math.PI;

			var smoothAngle:Number = Lerp(5,obj.rotation, angle);
			obj.rotation = smooth? smoothAngle : angle;

		}
		//Linear Interpolation algorithm
		public static function Lerp (rate:Number, start:Number, end:Number):Number{
			if (start == end)
				return end;
			return ( ( 1 - rate ) * start ) + ( rate * end ) ;

		}



	}

}
