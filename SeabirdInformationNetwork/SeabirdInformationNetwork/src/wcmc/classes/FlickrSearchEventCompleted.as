package wcmc.classes
{
	import flash.events.Event;
	public class FlickrSearchEventCompleted extends Event
	{
		public function FlickrSearchEventCompleted(type:String, _matchingPhotos:Array,bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			matchingPhotos=_matchingPhotos;
		}
		public var matchingPhotos:Array;
	}
}