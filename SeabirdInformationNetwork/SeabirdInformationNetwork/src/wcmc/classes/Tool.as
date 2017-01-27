/* file			tool.as
date			oct 2009
author			andrew cottam
description		simple class to store properties of a tool
				all of the properties are bindable so they can be used in UI components or renderers
properties		toolname - unique name - this usually comes from the config file, e.g. ToolSiteUDATrends
				toolimage - the image that is shown next to the label
				toollabel - the name of the tool that is shown in any UI components
				tooldescription - obvious
				toolparameter - the value that is passed to the tool, e.g. a species ID
*/
package wcmc.classes
{
	import com.google.maps.interfaces.IPane;
	
	import flash.display.DisplayObject;
	public class Tool
	{
		public function Tool(_ToolName:String,_ToolLabel:String,_ToolImage:String,_ToolDescription:String,_ToolParameter:String,_ToolVisible:Boolean)
		{
			ToolName=_ToolName;
			ToolLabel = _ToolLabel;			
			ToolImage = _ToolImage;			
			ToolDescription=_ToolDescription;
			ToolParameter=_ToolParameter;
			visible = _ToolVisible;
		}
		[Bindable]public var ToolName:String;
		[Bindable]public var ToolLabel:String;
		[Bindable]public var ToolImage:String;
		[Bindable]public var ToolDescription:String;
		[Bindable]public var ToolParameter:String;
		[Bindable]public var visible:Boolean;
		public var loaded:Boolean=false;
		public var pane:IPane;
		public var markers:Array=new Array();
		public var displayObjects:Array=new Array();
		public function addDisplayObject(_displayObject:DisplayObject):void
		{
			var present:Boolean=false;
			for each (var _do:DisplayObject in displayObjects)
			{
				if (_do===_displayObject)
				{
					present=true;
					break;
				} 
			}
			if (!present) displayObjects.push(_displayObject);
		}
	}
}