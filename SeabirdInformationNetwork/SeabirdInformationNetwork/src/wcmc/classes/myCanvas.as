package wcmc.classes
{
	import flash.display.DisplayObject;
	
	import mx.containers.Canvas;
	public class myCanvas extends Canvas
	{
	    override protected function measure():void
	    {
	        super.measure();
	        var _minWidth:int;
	        if (getChildren().length>0)
	        {
	        	var _do:DisplayObject=getChildAt(0);
	        	_minWidth=getChildAt(0).width;
		        minWidth = measuredMinWidth= _minWidth;
	        }
	    }
	}
}