package wcmc.classes
{
	import com.esri.ags.geometry.MapPoint;
	import com.esri.ags.utils.JSON;
	
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.URLRequestMethod;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	
	[Event(name="ValidationResultsReturned", type="wcmc.classes.ValidationResultsReturnedEvent")]
	[Event(name="NearestFeaturesFound", type="wcmc.classes.NearestFeaturesFoundEvent")]
	[Event(name="DataImported", type="flash.events.Event")] 
	public class ValidateDataServiceClient extends EventDispatcher
	{
		public function ValidateDataServiceClient(target:IEventDispatcher=null)
		{
			super(target);
		}
		public function validate(data:ArrayCollection,validationType:String,id:int=-1):void
		{
			var jsonString:String="";
			for each (var speciesCount:SpeciesCount in data)
			{
				if (((id>-1) && (speciesCount.id==id)) || (id==-1))
				{
					var obj:Object = new Object();
					obj.i=(speciesCount.id);
					obj.v=(speciesCount[validationType]);
					jsonString = jsonString + JSON.encode(obj) + ",";
				}
			}
			jsonString = "{\"records\":[" + jsonString.substr(0,jsonString.length-1) + "]}";
			var jsonObj:Object = JSON.decode(jsonString);
			var myRequest:URLRequest = new URLRequest ("http://dev.unep-wcmc.org/ArcGIS/rest/services/IWC/SpreadsheetImport/MapServer/exts/InternationalWaterbirdCensusExtensions/ValidateData"); 
			myRequest.method = URLRequestMethod.POST;
			myRequest.data = "validationType=" + validationType + "&data=" + JSON.encode(jsonObj) + "&f=json";
			var urlLoader:URLLoader=new URLLoader(); 
			urlLoader.addEventListener(Event.COMPLETE,validateComplete); 
			urlLoader.load(myRequest); 
		}
		
		private function validateComplete(event:Event):void
		{
			event.target.removeEventListener(Event.COMPLETE,validateComplete);
			var data:String=event.target.data;
			var jsonObj:Object = JSON.decode(String(data));
			var invalidIDsString:String=jsonObj.invalidIDs;
			var invalidIDsArray:Array;
			(invalidIDsString=="") ? invalidIDsArray = null : invalidIDsArray = invalidIDsString.split(",");
			dispatchEvent(new ValidationResultsReturnedEvent(ValidationResultsReturnedEvent.VALIDATIONRESULTSRETURNED,new ArrayCollection(invalidIDsArray)));
		}
		public function postSpreadsheet(data:ArrayCollection, userID:String):void
		{
			var jsonString:String="";
			for each (var speciesCount:SpeciesCount in data)
			{
				var obj:Object = new Object();
				obj.a=(speciesCount.siteCode);
				obj.b=(speciesCount.date);
				obj.c=(speciesCount.speciesCode);
				obj.d=(speciesCount.count);
				obj.a="gb00008";
				obj.b="04/29/2003";
				obj.c="wibbl";
				obj.d=23;
				jsonString = jsonString + JSON.encode(obj) + ",";
			}
			jsonString = "{\"records\":[" + jsonString.substr(0,jsonString.length-1) + "]}";
			var jsonObj:Object = JSON.decode(jsonString);
			var myRequest:URLRequest = new URLRequest ("http://dev.unep-wcmc.org/ArcGIS/rest/services/IWC/SpreadsheetImport/MapServer/exts/InternationalWaterbirdCensusExtensions/PostData"); 
			myRequest.method = URLRequestMethod.POST;
			myRequest.data = "userID=" + userID + "&data=" + JSON.encode(jsonObj) + "&f=json";
			var urlLoader:URLLoader=new URLLoader(); 
			urlLoader.addEventListener(Event.COMPLETE,postComplete); 
			urlLoader.load(myRequest); 
		}
		private function postComplete(event:Event):void
		{
			var data:String=event.target.data;
			var jsonObj:Object = JSON.decode(String(data));
			dispatchEvent(new Event("DataImported"));
		}
		public function validateSitePosition(location:MapPoint,distance:uint):void
		{
			var myRequest:URLRequest = new URLRequest ("http://dev.unep-wcmc.org/ArcGIS/rest/services/IWC/SpreadsheetImport/MapServer/exts/InternationalWaterbirdCensusExtensions/findNearFeatures"); 
			myRequest.method = URLRequestMethod.POST;
			myRequest.data = "location=" + JSON.encode(location) + "&distance=" + String(distance) + "&f=json";
			var urlLoader:URLLoader=new URLLoader(); 
			urlLoader.addEventListener(Event.COMPLETE,validateSitePositionComplete); 
			urlLoader.load(myRequest); 			
		}
		private function validateSitePositionComplete(event:Event):void
		{
			var data:String=event.target.data;
			var jsonObj:Object = JSON.decode(String(data));
			dispatchEvent(new NearestFeaturesFoundEvent(NearestFeaturesFoundEvent.NEARESTFEATURESFOUND,jsonObj));
		}
	}
}