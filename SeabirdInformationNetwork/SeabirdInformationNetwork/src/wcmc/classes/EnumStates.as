/* file			enumstates.as
date			oct 2009
author			andrew cottam
description		simple enum of application states
				this enum is used to control which content boxes are loaded in the application through the use of states which contain specific content boxes
*/
package wcmc.classes
{
	public final class EnumStates
	{
		public static const START:String="start";
	    public static const SPECIES:String = "Species";
	    public static const SITES:String = "Sites";
	    public static const ALLSPECIES:String = "AllSpecies";
	    public static const ALLSITES:String = "AllSites";
		public static const ANALYSIS:String = "Analysis";
		public static const CLIMATECHANGE:String = "ClimateChange";
		public static const FISHERIES:String = "Fisheries";
		public static const HUNTING:String = "Hunting";
		public static const GAPANALYSIS:String = "GapAnalysis";
		public static const SURVEYS:String = "Surveys";
		public static const MAP_CONFIG:String = "MapConfig";
	    public static const SPECIES_DISTRIBUTION_MAP:String = "ToolSpeciesDistributionMap";
	    public static const SPECIES_ABUNDANCE_MAP:String = "ToolSpeciesAbundanceMap";
	    public static const SPECIES_TOP_10:String = "ToolSpeciesTop10";
	    public static const SPECIES_SITE_COUNTS:String = "ToolSpeciessiteCounts";
		public static const SPECIES_PA_COUNTS:String = "ToolSpeciesProtectedAreas";
		public static const SPECIES_COUNTRY_COUNTS:String = "ToolSpeciesCountryCounts";
		public static const SPECIES_UDA_COUNTS:String = "ToolSpeciesUDACounts";
		public static const SPECIES_UDA_TRENDS:String = "ToolSpeciesUDATrends";
		public static const SPECIES_PRODUCTIVITY_MAP:String = "ToolSpeciesProductivityMap";
	    public static const SITE_DISTRIBUTION_MAP:String = "ToolSiteDistributionMap";
	    public static const SITE_ABUNDANCE_MAP:String = "ToolSiteAbundanceMap";
		public static const SITE_UDA_TRENDS:String = "ToolSiteUDATrends";
		public static const SITE_UDA_ABUNDANCE:String = "ToolSiteUDAbundance";
		public static const ANALYSIS_SEA_LEVEL_RISE:String = "SeaLevelRise";
	}
}