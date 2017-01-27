package wcmc.classes
{
	/**
	 * Simple class to store properties of a species count.
	 * @author andrewcottam
	 * 
	 */	
	public class SpeciesCount
	{
		public function SpeciesCount()
		{
		}
		[Bindable]
		/**
		 * The unique identifier for the DataGrid 
		 * @return 
		 * 
		 */
		public var id:uint;
		[Bindable]
		/**
		 * The site code for the species count. 
		 * @return 
		 * 
		 */
		public var siteCode:String;
		[Bindable]
		/**
		 * The site name for the species count. 
		 * @return 
		 * 
		 */
		public var siteName:String;
		[Bindable]
		/**
		 * The date for the species count. 
		 * @return 
		 * 
		 */
		public var date:Number;
		[Bindable]
		/**
		 * The species code for the species count. 
		 * @return 
		 * 
		 */
		public var speciesCode:String;
		[Bindable]
		/**
		 * The count for the species count 
		 * @return 
		 * 
		 */
		public var count:String; //this has to be a string otherwise when you import data with non-numeric data it displays it in the datagrid as 0
		[Bindable]
		/**
		 * The coverage for the species count 
		 * @return 
		 * 
		 */
		public var coverage:String;
		[Bindable]
		/**
		 * The quality for the species count 
		 * @return 
		 * 
		 */
		public var quality:int;
		[Bindable]
		/**
		 * The site code validation status 
		 * @return 
		 * 
		 */
		public var siteCodeValidationStatus:String;
		[Bindable]
		/**
		 * The site name validation status 
		 * @return 
		 * 
		 */
		public var siteNameValidationStatus:String;
		[Bindable]
		/**
		 * The date validation status 
		 * @return 
		 * 
		 */
		public var dateValidationStatus:String;
		[Bindable]
		/**
		 * The species code validation status 
		 * @return 
		 * 
		 */
		public var speciesCodeValidationStatus:String;
		[Bindable]
		/**
		 * The count validation status 
		 * @return 
		 * 
		 */
		public var countValidationStatus:String;
		[Bindable]
		/**
		 * The coverage validation status 
		 * @return 
		 * 
		 */
		public var coverageValidationStatus:String;
		[Bindable]
		/**
		 * The quality validation status 
		 * @return 
		 * 
		 */
		public var qualityValidationStatus:String;
	}
}