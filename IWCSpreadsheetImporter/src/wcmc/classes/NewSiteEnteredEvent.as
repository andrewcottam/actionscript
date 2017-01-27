package wcmc.classes
{
	import flash.events.Event;
	
	public class NewSiteEnteredEvent extends Event
	{
		public function NewSiteEnteredEvent(type:String, _speciesCount:SpeciesCount, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			speciesCount=_speciesCount;
		}
		public var speciesCount:SpeciesCount;
		static public const NEWSITEENTERED:String="NewSiteEntered";
	}
}