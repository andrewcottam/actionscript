package wcmc.classes
{
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.events.CollectionEvent;
	import mx.events.CollectionEventKind;
	
	public class Validators extends ArrayCollection
	{
		[Bindable]public var validationStatus:String=ValidatorBase.VALIDATION_STATUS_NOT_CHECKED;
		[Bindable]public var validationFinished:Boolean;
		public function Validators(source:Array=null)
		{
			super(source);
		}
		override public function set source(s:Array):void
		{
			super.source = s;
			for each (var validator:ValidatorBase in source) 
			{
				validator.addEventListener(ValidatorBase.VALIDATION_STATUS_CHANGED_EVENT,itemValidationChanged); //fire the itemValidationChanged if any item in the validators array changes its validation status
				validator.validators=this;
			}
		}
		private function itemValidationChanged(event:Event):void //fired when an individual validator changes its validation status
		{
			var allValid:Boolean=true;
			var isFinished:Boolean=true;
			for each (var validator:ValidatorBase in source)
			{
				if (validator.validationStatus!=ValidatorBase.VALIDATION_STATUS_VALID) allValid=false; //see whether any are invalid
				if (validator.validationStatus==ValidatorBase.VALIDATION_STATUS_IN_PROGRESS) isFinished=false; //see whether any are still running
			}
			(allValid) ? validationStatus=ValidatorBase.VALIDATION_STATUS_VALID : validationStatus=ValidatorBase.VALIDATION_STATUS_INVALID;
			(isFinished) ? validationFinished=true : validationFinished=false;
		}
		public function removeFilters():void
		{
			for each (var validator:ValidatorBase in source)
			{
				if (validator.filtered) validator.toggleFilter();
			}
		}
	}
}