/* file			species.as
date			oct 2009
author			andrew cottam
description		simple class to store properties of a species
				all of the properties are bindable so they can be used in UI components or renderers
properties		speciesID - unique ID for the species, e.g. NOFU
				CommonName - obvious
				ScientificName - obvious
				icon - obvious
				description - obvious
*/
package wcmc.classes
{
	public class Species
	{
		public function Species()
		{
		}
		[Bindable]public var speciesID:String;//of the form NOFU for now
		[Bindable]public var CommonName:String;
		[Bindable]public var ScientificName:String; 
		[Bindable]public var icon:String; 
		[Bindable]public var description:String;
		[Bindable]public var SpcRedCategory:String;
	}
}