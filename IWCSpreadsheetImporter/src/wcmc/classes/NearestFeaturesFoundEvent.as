package wcmc.classes
{
	import flash.events.Event;
	
	public class NearestFeaturesFoundEvent extends Event
	{
		public function NearestFeaturesFoundEvent(type:String, _nearestFeatures:Object,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			nearestFeatures=_nearestFeatures;
		}
		public var nearestFeatures:Object;
		static public const NEARESTFEATURESFOUND:String="NearestFeaturesFound";
	}
}