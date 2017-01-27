package wcmc.classes
{
	import flash.events.Event;
	import flash.events.EventDispatcher;
	
	import mx.collections.ArrayCollection;
	
	import wcmc.components.ValidatorSummary;
	
	[Event(name="NewSiteEntered", type="wcmc.classes.NewSiteEnteredEvent")]
	public class ValidatorBase extends EventDispatcher
	{
		private var _speciesCounts:ArrayCollection;
		private var _invalidCount:int=-1; //unknown to start with
		private var _validationStatus:String=VALIDATION_STATUS_NOT_CHECKED; //not checked to start with
		private var _validationSummaryControl:ValidatorSummary;
		private var _invalidIDs:ArrayCollection;
		private var fullValidation:Boolean=true; //will be true to start to start with as the user will be validating all values
		protected var editItemIndex:int;
		public var speciesCountStartEditState:SpeciesCount=new SpeciesCount;//used to detect whether there has been a change in an edited item
		public var validationStatusField:String;
		public var validators:Validators; //pointer to the parent array collection
		[Bindable]public var filtered:Boolean=false;
		[Bindable]public var gridColumn:SpeciesCountsGridColumn;
		static public const VALIDATION_STATUS_NOT_CHECKED:String="notChecked";
		static public const VALIDATION_STATUS_IN_PROGRESS:String="inProgress";
		static public const VALIDATION_STATUS_VALID:String="valid";
		static public const VALIDATION_STATUS_INVALID:String="invalid";
		static public const VALIDATION_STATUS_CHANGED_EVENT:String="validationStatusChange";
		public function ValidatorBase()
		{
		}
		public function get speciesCounts():ArrayCollection
		{
			return _speciesCounts;
		}
		public function set speciesCounts(value:ArrayCollection):void
		{
			_speciesCounts = value;
			resetValidator();			
		}
		private function resetValidator():void
		{
			invalidCount=-1;
			validationStatus=VALIDATION_STATUS_NOT_CHECKED;
		}
		[Bindable(event="invalidCountChange")]
		public function get invalidCount():int
		{
			return _invalidCount;
		}
		public function set invalidCount(value:int):void
		{
			_invalidCount = value;
			(_invalidCount==0) ? validationStatus = VALIDATION_STATUS_VALID : validationStatus = VALIDATION_STATUS_INVALID;
		}
		[Bindable]
		public function get validationStatus():String
		{
			return _validationStatus;
		}
		public function set validationStatus(value:String):void
		{
			_validationStatus = value;
			if ((value==VALIDATION_STATUS_VALID)&&(speciesCounts.filterFunction!=null)) toggleFilter();//all records are now valid, so if they were filtered for invalid ones, then remove the filter 
			dispatchEvent(new Event(VALIDATION_STATUS_CHANGED_EVENT));
		}
		[Bindable]
		public function get validationSummaryControl():ValidatorSummary
		{
			return _validationSummaryControl;
		}
		public function set validationSummaryControl(value:ValidatorSummary):void
		{
			_validationSummaryControl = value;
			_validationSummaryControl.validator= this; //point the validation control summaries validtor to this
		}
		public function toggleFilter():void
		{
			if (speciesCounts)
			{
				(filtered) ? speciesCounts.filterFunction=null : speciesCounts.filterFunction=invalidsFilter;
				filtered = (!filtered);
				speciesCounts.refresh();
			}
		}
		private function invalidsFilter(speciesCount:SpeciesCount):Boolean 
		{
			//filter for only records that are either invalid or in progress (i.e. waiting to get validation result back)
			return ((speciesCount[validationStatusField]==VALIDATION_STATUS_INVALID)||(speciesCount[validationStatusField]==VALIDATION_STATUS_IN_PROGRESS));
		}		
		public function get invalidIDs():ArrayCollection
		{
			return _invalidIDs;
		}
		
		public function set invalidIDs(value:ArrayCollection):void
		{
			if( _invalidIDs !== value)
			{
				_invalidIDs = value;
				var speciesCount:SpeciesCount;
				if (fullValidation)
				{
					var count:uint=0;
					for each (var i:uint in _invalidIDs)
					{
						speciesCount=getSpeciesCountById(i);
						speciesCount[validationStatusField]=VALIDATION_STATUS_INVALID;
						count+=1; //increment the temp counter
					}
					invalidCount = count;
				}
				else
				{
					speciesCount=getSpeciesCountById(editItemIndex);
					if (_invalidIDs.length==0) //single count validated - set to valid 
					{
						speciesCount[validationStatusField]=VALIDATION_STATUS_VALID;
						if ((speciesCountStartEditState[validationStatusField]!=VALIDATION_STATUS_VALID)&&(speciesCountStartEditState[validationStatusField]!=null))
						{
							updateAllSimilarToValidated(speciesCountStartEditState[gridColumn.dataField],speciesCount[gridColumn.dataField]);
						}
						else
						{
							invalidCount=invalidCount;
						}
					}
					else //invalid
					{
						if (gridColumn.dataField=="siteName") dispatchEvent(new NewSiteEnteredEvent(NewSiteEnteredEvent.NEWSITEENTERED,speciesCount,true));//bit of a hack - this is specific to creating a new site
						speciesCount[validationStatusField]=VALIDATION_STATUS_INVALID;
						(speciesCountStartEditState[gridColumn.dataField]!=VALIDATION_STATUS_INVALID) ? invalidCount+=1 : invalidCount=invalidCount;//increment the invalid count if the validation status has changed 
					}
				}
				dispatchEvent(new Event("invalidCountChange")); //fire the invalid count changed event which is bindable
			}
		}
		private function getSpeciesCountById(id:uint):SpeciesCount
		{
			for each (var speciesCount:SpeciesCount in speciesCounts)
			{
				if (speciesCount.id==id)
				{
					return speciesCount;
				}
			}
			return null;
		}
		public function validate(id:int=-1):void
		{
			validationStatus=VALIDATION_STATUS_IN_PROGRESS;
			(id>-1) ? fullValidation = false : fullValidation = true;
			editItemIndex=id;
		}
		private function updateAllSimilarToValidated(invalidValue:String,validValue:String):void
		{
			var counter:uint=1;//there is already 1 record that has been validated
			var i:int=speciesCounts.length-1;
			while (i>-1) 
			{
				var speciesCount:SpeciesCount=speciesCounts[i];
				if (speciesCount[gridColumn.dataField]==invalidValue)
				{
					speciesCount[gridColumn.dataField]=validValue;
					speciesCount[validationStatusField]=VALIDATION_STATUS_VALID;
					counter+=1;
				}
				i-=1;
			}
			invalidCount=invalidCount-counter;
		}
	}
}