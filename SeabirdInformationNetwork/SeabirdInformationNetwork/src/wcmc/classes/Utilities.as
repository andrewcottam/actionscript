package wcmc.classes
{
	public class Utilities
	{
		public static function getToolName(state:String):String
		{
			switch (state)
			{
				    case EnumStates.SPECIES_DISTRIBUTION_MAP:
			{return "Species distribution map";
			break;}
				    case EnumStates.SPECIES_ABUNDANCE_MAP:
			{return "Species abundance map";
			break;}
				    case EnumStates.SPECIES_TOP_10:
			{return "Top 10 sites";
			break;}
				    case EnumStates.SPECIES_SITE_COUNTS:
			{return "Species counts by site";
			break;}
					case EnumStates.SPECIES_PA_COUNTS:
			{return "Species counts by protected area";
			break;}
					case EnumStates.SPECIES_COUNTRY_COUNTS:
			{return "Species counts by country";
			break;}
					case EnumStates.SPECIES_UDA_COUNTS:
			{return "Species counts by user-defined area";
			break;}
					case EnumStates.SPECIES_UDA_TRENDS:
			{return "Species trends by user-defined area";
			break;}
					case EnumStates.SPECIES_PRODUCTIVITY_MAP:
			{return "Species productivity map";
			break;}
				    case EnumStates.SITE_DISTRIBUTION_MAP:
			{return "Site location";
			break;}
				    case EnumStates.SITE_ABUNDANCE_MAP:
			{return "Site species list";
			break;}
					case EnumStates.SITE_UDA_TRENDS:
			{return "Species trends by user-defined area";
			break;}
			}
			return "";		
		}
	}
}