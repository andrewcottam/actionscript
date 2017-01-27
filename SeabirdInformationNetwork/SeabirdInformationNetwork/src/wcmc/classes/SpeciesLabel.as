/* file			specieslabel.as
date			oct 2009
author			andrew cottam
description		simple class to render a species name from an abbreviated name

*/
package wcmc.classes
{
	import mx.controls.Label;
	import mx.formatters.NumberFormatter;

	public class SpeciesLabel extends Label
	{
		public function SpeciesLabel()
		{
			super();
		}
        override public function set data(value:Object):void 
        {
        	switch (value.species)
        	{
				case "ALTE":
					value.species = "Aleutian tern";
					break;
				case "ANMU":
					value.species = "Ancient murrelet";
					break;
				case "ARTE":
					value.species = "Arctic tern";
					break;
				case "AUSH":
					value.species = "Audubon's shearwater";
					break;
				case "BHGU":
					value.species = "Black-headed gull";
					break;
				case "BLGU":
					value.species = "Black guillemot";
					break;
				case "BLKI":
					value.species = "Black-legged kittiwake";
					break;
				case "BLOY":
					value.species = "Black oystercatcher";
					break;
				case "BOGU":
					value.species = "Bonaparte's gull";
					break;
				case "BRCO":
					value.species = "Brandt's cormorant";
					break;
				case "BTGU":
					value.species = "Black-tailed gull";
					break;
				case "CAAU":
					value.species = "Cassin's auklet";
					break;
				case "CATE":
					value.species = "Caspian Tern";
					break;
				case "COEI":
					value.species = "Common eider";
					break;
				case "COMU":
					value.species = "Common murre";
					break;
				case "COTE":
					value.species = "Common tern";
					break;
				case "CRAU":
					value.species = "Crested auklet";
					break;
				case "DCCO":
					value.species = "Double-crested cormorant";
					break;
				case "DOVE":
					value.species = "Dovekie";
					break;
				case "FTSP":
					value.species = "Fork-tailed storm-petrel";
					break;
				case "GGGU":
					value.species = "Glaucous x glaucous-winged gul";
					break;
				case "GHGU":
					value.species = "Glaucous-wing x herring gull";
					break;
				case "GLGU":
					value.species = "Glaucous gull";
					break;
				case "GRCO":
					value.species = "Great cormorant";
					break;
				case "GWGU":
					value.species = "Glaucous-winged gull";
					break;
				case "HEGU":
					value.species = "Herring gull";
					break;
				case "HOPU":
					value.species = "Horned puffin";
					break;
				case "KIMU":
					value.species = "Kittlitz's murrelet";
					break;
				case "LEAU":
					value.species = "Least auklet";
					break;
				case "LESP":
					value.species = "Leach's storm-petrel";
					break;
				case "MAMU":
					value.species = "Marbled murrelet";
					break;
				case "MEGU":
					value.species = "Mew gull";
					break;
				case "NOFU":
					value.species = "Northern fulmar";
					break;
				case "PAAU":
					value.species = "Parakeet auklet";
					break;
				case "PECO":
					value.species = "Pelagic cormorant";
					break;
				case "PIGU":
					value.species = "Pigeon guillemot";
					break;
				case "RFCO":
					value.species = "Red-faced cormorant";
					break;
				case "RHAU":
					value.species = "Rhinoceros auklet";
					break;
				case "RLKI":
					value.species = "Red-legged kittiwake";
					break;
				case "SAGU":
					value.species = "Sabine's gull";
					break;
				case "SBGU":
					value.species = "Slaty-backed gull";
					break;
				case "SPGU":
					value.species = "Spectacled guillemot";
					break;
				case "SWSP":
					value.species = "Swinhoe's storm-petrel";
					break;
				case "TBMU":
					value.species = "Thick-billed murre";
					break;
				case "TECO":
					value.species = "Temminck's cormorant";
					break;
				case "TUPU":
					value.species = "Tufted puffin";
					break;
				case "UNAL":
					value.species = "Unidentified alcid";
					break;
				case "UNAU":
					value.species = "Unidentified auklet";
					break;
				case "UNCO":
					value.species = "Unidentified cormorant";
					break;
				case "UNGU":
					value.species = "Unidentified gull";
					break;
				case "UNIG":
					value.species = "Unidentified guillemot";
					break;
				case "UNKI":
					value.species = "Unidentified kittiwake";
					break;
				case "UNMU":
					value.species = "Unidentified murre";
					break;
				case "UNPU":
					value.species = "Unidentified puffin";
					break;
				case "UNSP":
					value.species = "Unidentified storm petrel";
					break;
				case "UNTE":
					value.species = "Unidentified tern";
					break;
				case "WHAU":
					value.species = "Whiskered auklet";
					break;
			}
        	super.data = value;
        }		
	}
}