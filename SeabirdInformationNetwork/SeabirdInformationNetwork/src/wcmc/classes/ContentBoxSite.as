/* file			contentboxsite.as
date			oct 2009
author			andrew cottam
hierarchy		contentbox > contentboxsite
description		this file is a descendent class from the content box which introduces custom behavior for all site content boxes and descendents
				the class has a site content box header which has a site name label which is populated when the content box's parameter value is set
				descendent classes therefore inherit this site content box header and will have their own specific content as well
*/
package wcmc.classes
{
	import wcmc.components.SiteContentBoxHeader;
	/**
	 * Descendent class from the content box which introduces custom behavior for all site content boxes and descendents. The class has a site content box header which has a site name label which is populated when the content box's parameter value is set.
	 * Descendent classes therefore inherit this site content box header and will have their own specific content as well 
	 * @author andrewcottam
	 * 
	 */	
	public class ContentBoxSite extends ContentBox
	{
		private var _SiteContentBoxHeader:SiteContentBoxHeader=new SiteContentBoxHeader();
		public function ContentBoxSite()
		{
			super();
			addEventListener("ContentBoxParameterSet",loadData);
			addChild(_SiteContentBoxHeader);
		}
		private function loadData(event:ContentBoxParameterSetEvent):void
		{
			_SiteContentBoxHeader.SiteNameLabel.text = parameter;			
		}
	}
}