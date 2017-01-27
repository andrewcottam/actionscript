package wcmc.classes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	
	public class ValidationResultsReturnedEvent extends Event
	{
		public function ValidationResultsReturnedEvent(type:String, _validationResults:ArrayCollection, bubbles:Boolean=false, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			validationResults=_validationResults;
		}
		public var validationResults:ArrayCollection;
		static public const VALIDATIONRESULTSRETURNED:String="ValidationResultsReturned";
	}
}