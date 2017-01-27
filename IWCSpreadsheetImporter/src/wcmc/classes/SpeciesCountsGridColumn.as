package wcmc.classes
{
	import spark.components.gridClasses.GridColumn;
	
	public class SpeciesCountsGridColumn extends GridColumn
	{
		public function SpeciesCountsGridColumn(columnName:String=null)
		{
			super(columnName);
		}
		private var _validator:ValidatorBase;
		
		[Bindable]
		public function get validator():ValidatorBase
		{
			return _validator;
		}
		
		public function set validator(value:ValidatorBase):void
		{
			_validator = value;
			_validator.gridColumn = this;
			_validator.validationStatusField = this.dataField + "ValidationStatus";
		}
	}
}