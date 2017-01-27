/* file			site.as
date			oct 2009
author			andrew cottam
description		simple class to store properties of a site  
properties		siteID - unique identifier for the site (not actually used at the moment because the data from Axiom does not include one
				siteName - name for the site (may not be unique)
				label - the text that is shown in any UI components
				icon - cant remember
*/
package wcmc.classes
{
	public class Site
	{
		public function Site()
		{
		}
		[Bindable]public var siteID:int;
		[Bindable]public var siteName:String;
		[Bindable]public var label:String; 
		[Bindable]public var icon:String; 
	}
}