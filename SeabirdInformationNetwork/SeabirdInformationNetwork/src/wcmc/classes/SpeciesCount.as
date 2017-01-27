/* file			speciescount.as
date			oct 2009
author			andrew cottam
description		simple class to store properties of a species count
				all of the properties are bindable so they can be used in UI components or renderers
properties		uniqueID - running unique integer
				species - the species ID for the count
				site - the site name
				abundance - count for the species (can include 0)
*/
package wcmc.classes
{
	import flash.display.Bitmap;
	
	public class SpeciesCount
	{
		public function SpeciesCount()
		{
		}
		[Bindable]public var uniqueID:int;
		[Bindable]public var species:String;
		[Bindable]public var site:String;
		[Bindable]public var abundance:int;
		[Bindable]public var bitmap:Bitmap;
	}
}