package wcmc.classes
{
	import mx.collections.ArrayCollection;

	public class NumericValidator extends ValidatorBase
	{
		public function NumericValidator()
		{
			super();
		}
		override public function validate(id:int=-1):void
		{
			super.validate(id);
			var _invalidIDs:ArrayCollection=new ArrayCollection;
			for each (var speciesCount:SpeciesCount in speciesCounts)
			{
				var numTest:String=speciesCount[gridColumn.dataField];
				if (!is_numeric(numTest)) _invalidIDs.addItem(speciesCount.id);
			}
			invalidIDs=_invalidIDs;
		}
		private function is_numeric(val:String):Boolean
		{
			if (!isNaN(Number(val))) 
			{
				return true;
			}
			return false;
		}	
	}
}