package wcmc.classes
{
	import mx.collections.ArrayCollection;
	
	public class SpeciesCounts 
	{
		public function SpeciesCounts(source:Array=null)
		{
		}
		[Bindable] public var validated:Boolean=false;
		[Bindable] public var counts:ArrayCollection;
		private var _validators:ArrayCollection; 

		[Bindable]
		public function get validators():ArrayCollection
		{
			return _validators;
		}

		public function set validators(value:ArrayCollection):void
		{
			_validators = value;
			for each (var item:ValidatorBase in _validators)
			{
				item.speciesCounts = this;
			}
		}

		public function validateAll():void
		{
			for each (var validator:ValidatorBase in validators)
			{
				validator.validate();
			}
		}
	}
}