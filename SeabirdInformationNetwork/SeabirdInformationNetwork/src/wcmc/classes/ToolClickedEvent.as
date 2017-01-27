package wcmc.classes
{
	import flash.events.Event;
	public class ToolClickedEvent extends Event
	{
		public function ToolClickedEvent(type:String,  bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
		static public const TOOL_CLICKED_EVENT:String="ToolClicked"; 
	}
}