package wcmc.classes
{
	import flash.events.Event;
	public class ChangeLayerVisibilityEvent extends Event
	{
		public function ChangeLayerVisibilityEvent(_layer:Layer,type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			layer=_layer;
			super(type, bubbles, cancelable);
		}
		[Bindable]public var layer:Layer;
        public static const CHANGE_LAYER_VISIBILITY_EVENT:String = "ChangeLayerVisiblity";
        
	}
}