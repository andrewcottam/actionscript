package wcmc.classes
{
	public class DatabaseValidator extends ValidatorBase
	{
		private var serviceClient:ValidateDataServiceClient;
		
		public function DatabaseValidator()
		{
			super();
			serviceClient=new ValidateDataServiceClient();
			serviceClient.addEventListener(ValidationResultsReturnedEvent.VALIDATIONRESULTSRETURNED,validationResultsReturned);
		}
		override public function validate(id:int=-1):void
		{
			super.validate(id);
			serviceClient.validate(speciesCounts,gridColumn.dataField,id);
		}
		public function validationResultsReturned(event:ValidationResultsReturnedEvent):void
		{
			invalidIDs=event.validationResults;
		}
	}
}