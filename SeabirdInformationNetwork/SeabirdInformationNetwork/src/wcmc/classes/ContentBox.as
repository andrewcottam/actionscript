/* file			contentbox.mxml
date			oct 2009
author			andrew cottam
description		this file is the definition for a custom base class for all content baxes in the application
				all content boxes in the application descend from this class which includes some generic behavior common to all content boxes
descendents		contentboxsite, contentboxsitetool, contentboxspecies, contentboxspeciestool
properties		parameter (String) - all content boxes have a parameter property that controls the content of the content box, e.g. species BTLS
				searchbox (TextInput) - if specified in a class instance this is used to filter search results in the results box
				resultsbox (VBox) - if specified in a class instance this is used to display searhc results 
events			contentboxparametersetevent - is dispatched when the parameter is set and can be used by descendent classes to do custom processing, e.g. loading data
				

 */
package wcmc.classes
{
	import flash.events.Event;
	import mx.collections.ArrayCollection;
	import mx.containers.VBox;
	import mx.controls.List;
	import mx.controls.TextInput;
	import mx.states.SetStyle;
	import wcmc.components.*;
    [Event(name="ContentBoxParameterSet", type="wcmc.classes.ContentBoxParameterSetEvent")]
/**
* Custom base class for all content baxes in the application.</p><p>All content boxes in the application descend from this class which includes some generic behavior common to all content boxes.</p>
* @see ContentBoxSite
 * @see ContentBoxSiteTool
 * @see ContentBoxSpecies
 * @see ContentBoxSpeciesTool
*/	
	public class ContentBox extends VBox
	{
/**
* Constructor 
*/
		public function ContentBox()
		{
			super();
			addEventListener("add",addHandler);//dispatched when the specific ContentBox is added to the ContentBox area
			addEventListener("change",searchTextChanged);//dispatched when a text change event occurs
			styleName="ContentBox";
/**
* Parameter value for the content box. This value controls the content of the content box and is either a species or site unique identifier, e.g. ALTN is Aleutian tern. 
*/
		}
		[Bindable]public function set parameter(value:String):void
		{
			_parameter = value;
			dispatchEvent(new ContentBoxParameterSetEvent("ContentBoxParameterSet")); //fire the content box parameter set event
		}
		public function get parameter():String
		{
			return _parameter;
		}
		private var _parameter:String;
		/**
		 *  
		 */		
		public var searchBox:TextInput;
		public var resultsBox:VBox;	
		public var filterOn:String; //can be set in a class instance to allow search and results filtering
		private function addHandler(event:Event):void
		{
			
		}	
		private function searchTextChanged(event:Event):void
		{
			if (!resultsBox || !searchBox){return}; //filter the data in the list box
			var obj:Object = resultsBox.getChildAt(0); //see if the results box has a list box to list the results
			if (obj is List)
			{
				var _List:List = (obj as List);
				//filter the array 
				var _ArrayCollection:ArrayCollection = _List.dataProvider as ArrayCollection;
				_ArrayCollection.filterFunction = filter;	
				_ArrayCollection.refresh();	
				_List.rowCount = _ArrayCollection.length;
			}
		}
		//custom filter function which returns a boolean indicating if the passed object matches the filteron value
		private function filter(obj:Object):Boolean 
		{
			if (!obj.hasOwnProperty(filterOn)){return true}
			var _testName:String = obj[filterOn].toUpperCase();
			var pos:int = _testName.indexOf(searchBox.text.toUpperCase());
			if ((pos > -1) || (searchBox.text==""))
			{
				return true;
			}
			else
			{
				return false;
			}
		}			
	}
}