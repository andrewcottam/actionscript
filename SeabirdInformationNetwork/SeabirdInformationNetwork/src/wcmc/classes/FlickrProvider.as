package wcmc.classes
{
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	[Event(name="flickrSearchCompleted", type="wcmc.classes.FlickrSearchEventCompleted")]
	public class FlickrProvider
	{
		public function FlickrProvider()
		{
		}
		[Bindable]public var photos:Array;
		private const FLICKR_ENDPOINT:String="http://api.flickr.com/services/rest/";
		private const FLICKR_SITE:String="http://en.wikipedia.org/wiki/";
		public function search(keyword:String):void
		{
            var flickrServ:HTTPService = new HTTPService();
            flickrServ.resultFormat = "text";
            flickrServ.url=FLICKR_ENDPOINT + "?method=flickr.photos.search&api_key=6d3e521646cdd1391a6dee32d8e54d62&format=rest&per_page=10&text=" + keyword;
            flickrServ.addEventListener(ResultEvent.RESULT,flickrResultHandler);	
            flickrServ.addEventListener(FaultEvent.FAULT,flickrErrorHandler);
        	flickrServ.send();
		}
		private function flickrResultHandler(event:ResultEvent):void
		{
			var _xml:XML = new XML(event.result);
			var _xmlNodeList:XMLList=new XMLList(_xml..photo);
     		(photos)?photos=[]:photos=new Array();
			for (var i:int =0; i<_xmlNodeList.length();i++)
			{
				var _xml2:XML=_xmlNodeList[i];
 	    		var _photo:FlickrPhoto=new FlickrPhoto(_xml2.attribute("farm"),_xml2..attribute("id"),_xml2.attribute("isfamily"),_xml2.attribute("isfriend"),_xml2.attribute("ispublic"),_xml2.attribute("owner"),_xml2.attribute("secret"),_xml2.attribute("server"),_xml2.attribute("title"));
 	    		photos.push(_photo);
			}
			dispatchEvent(new FlickrSearchEventCompleted("flickrSearchCompleted",photos));
		}
		private function flickrErrorHandler(event:FaultEvent):void
		{
			
		}
	}
}