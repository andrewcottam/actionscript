/* file			contentboxspecies.as
date			oct 2009
author			andrew cottam
hierarchy		contentbox > contentboxspecies
description		this file is a descendent class from the content box which introduces custom behavior for all species content boxes and descendents
				the class has a species content box header which has a common name label and a latin name label both of which are populated when the content box's parameter value is set
				descendent classes therefore inherit this species content box header and will have their own specific content as well
*/
package wcmc.classes
{
	import mx.controls.Image;
	import mx.core.Application;
	
	import wcmc.components.SpeciesContentBoxHeader;
	public class ContentBoxSpecies extends ContentBox
	{
		private var _SpeciesContentBoxHeader:SpeciesContentBoxHeader=new SpeciesContentBoxHeader();
   		[Bindable][Embed(source="../../images/iucncat_LC.png")]private var IUCN_LC:Class;
   		[Bindable][Embed(source="../../images/iucncat_CR.png")]private var IUCN_CR:Class;
   		[Bindable][Embed(source="../../images/iucncat_EN.png")]private var IUCN_EN:Class;
   		[Bindable][Embed(source="../../images/iucncat_VU.png")]private var IUCN_VU:Class;
		public var species:Species = new Species();
		public function ContentBoxSpecies()
		{
			super();
			addEventListener("ContentBoxParameterSet",loadData);
			addChild(_SpeciesContentBoxHeader);
		}
		private function loadData(event:ContentBoxParameterSetEvent):void
		{
			for each (var _species:Species in Application.application.speciesArray) //parse the abbreviated species code to a full name
			{
				if (_species.speciesID==parameter)
				{
					species=_species;//set the value of the content box's species parameter
					break;
				}
			}
			_SpeciesContentBoxHeader.CommonNameLabel.text=_species.CommonName; //set the common name in the species content box header
			_SpeciesContentBoxHeader.LatinNameLabel.text=_species.ScientificName; //set the latin name in the species content box header
			_SpeciesContentBoxHeader.iucnCategoryImage.visible=true;
			switch (_species.SpcRedCategory)
			{
				case "LC":
					_SpeciesContentBoxHeader.iucnCategoryImage.source=IUCN_LC;
					break;
				case "CR":
					_SpeciesContentBoxHeader.iucnCategoryImage.source=IUCN_CR;
					break;
				case "EN":
					_SpeciesContentBoxHeader.iucnCategoryImage.source=IUCN_EN;
					break;
				case "VU":
					_SpeciesContentBoxHeader.iucnCategoryImage.source=IUCN_VU;
					break;
				case "NA":
					_SpeciesContentBoxHeader.iucnCategoryImage.visible=false;
					break;
			}
		}
	}
}