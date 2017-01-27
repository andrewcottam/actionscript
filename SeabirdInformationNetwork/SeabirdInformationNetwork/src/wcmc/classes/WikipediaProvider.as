package wcmc.classes
{
	import flash.events.Event;
	import flash.events.IOErrorEvent;
	import flash.events.TextEvent;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	import mx.controls.TextArea;
	public class WikipediaProvider
	{
		private const WIKIPEDIA_ENDPOINT:String="http://en.wikipedia.org/w/api.php";
		private const WIKIPEDIA_SITE:String="http://en.wikipedia.org/wiki/";
		public var textArea:TextArea;
//		public function callWikipedia(keyword:String):void
//		{ 
//			var service:HTTPService = new HTTPService();
//			service.method="GET";
//			service.url = WIKIPEDIA_ENDPOINT + "?action=query&list=search&srsearch=" + keyword + "&format=xml";
//			service.addEventListener(ResultEvent.RESULT, wikipediaResultHandler);
//			service.addEventListener(FaultEvent.FAULT,fault);
//			service.send();				
//		}
//		private function wikipediaResultHandler(event:ResultEvent):void 
//		{
//			var body:XML=new XML(event.message.body);
//			var _XMLList:XMLList=body..p; //get tll of the <gml:pos> elements from the gml 
//			if (_XMLList)
//			{
//				var page:XML=_XMLList[0];
//				if (page)
//				{
//					var snippet:String= page.@snippet;
//					var htmlText:String= "<a href='" + WIKIPEDIA_SITE + escape(page.@title) + "' target='_blank'><img src='images/wikipedia.jpg' vspace='3' hspace='6'/></a>" + snippet;
//					textArea.htmlText =htmlText;
//					textArea.toolTip="Full description on Wikipedia";
//					var appear:Dissolve=new Dissolve(textArea);
//					appear.alphaFrom=0;
//					appear.alphaTo=1;
//					appear.duration=1000;
//					appear.play();
//				}
//			}
//		}			
//		private function wikipediaResultHandler2(event:ResultEvent):void 
//		{
//			var _body:XML=new XML(event.message.body);
//			var _ns:Namespace=new Namespace("http://www.w3.org/1999/xhtml");
//			var _XMLList:XMLList=_body.._ns::p; //get the paragraph
//			if (_XMLList)
//			{
//				var paragraph:XML=_XMLList[0];
//				if (paragraph)
//				{
//					var snippet:String= paragraph.toString();
//					var htmlText:String= "<a href='http://en.wikipedia.org/wiki/Crested_Auklet' target='_blank'><img src='images/wikipedia.jpg' vspace='3' hspace='6'/></a>" + snippet;
//					textArea.htmlText =htmlText;
//					textArea.toolTip="Full description on Wikipedia";
//					var appear:Dissolve=new Dissolve(textArea);
//					appear.alphaFrom=0;
//					appear.alphaTo=1;
//					appear.duration=1000;
//					appear.play();
//				}
//			}
//		}			
//		private function fault(e:FaultEvent):void
//		{
//			textArea.text="Unable to get content from Wikipedia:" + e.message.toString();
//		}
		public function callWikipediaPage(keyword:String):void
		{ //calls a aspx page on the Server to get the content from Wikipedia otherwise we have Security Sandbox Violation errors because we are calling a different domain
			var request:URLRequest=new URLRequest("default.aspx?searchTerm=" + keyword);
			var loader:URLLoader=new URLLoader();
			loader.addEventListener(Event.COMPLETE, wikipediaResultHandler);
			loader.addEventListener(IOErrorEvent.IO_ERROR,ioError);
			loader.load(request);
		}
		private function ioError(error:IOErrorEvent):void
		{
			textArea.htmlText="Unable to get Wikipedia content" + error.text;
		}
		private function wikipediaResultHandler(event:Event):void 
		{
			var text:String= event.target.data; //get the description from the aspx page
			var description:String;
			if (text=="")
			{
				textArea.htmlText ="No information found on Wikipedia";
			}
			else
			{
				var startofDescription:Number=text.indexOf("<description>"); //find the position of the <description> element which is the text description for the species
				if (startofDescription>-1)
				{
					var endofDescription:Number=text.indexOf("</description>");
					if (endofDescription>-1)
					{
						description=text.substring(startofDescription + 13,endofDescription); //get the description elements value
					}
				}
				var startofPage:Number=text.indexOf("<page>"); //find the position of the <page> element which is the url of the Wikipedia page where the info came from 
				if (startofPage>-1)
				{
					var endofPage:Number=text.indexOf("</page>");
					if (endofPage>-1)
					{
						var page:String=text.substring(startofPage + 6,endofPage); //get the page element
					}
				}
				var pos:Number=description.indexOf("</table>"); //sometimes a species with synonyms has a table with paragraph marks in which return the synonyms before the main species description so we need to ID them
				if (pos>0)
				{
					var pos2:Number=description.indexOf("<table>");
					if (pos2<0) //no start <table> tag found
					{
						description=description.substr(pos + 8);
					}
					else
					{
						if (pos2>pos)//i.e. the first element is a closing </table> which is wrong
						{
							description=description.substr(pos + 8);
						}
					}
				}
				pos=description.indexOf("<p>");
				if ((pos<3)&&(pos>-1)) description=description.substr(pos+3);
				description=description.replace(/a href=\"/g,"a href=\"event:"); //in order for links to work from the TextArea we need to replace all links with the prefix event:
				var htmlText:String= "<a href='" + page + "' target='_blank'><img src='images/wikipedia.jpg' vspace='3' hspace='6'/></a>" + description + " ...";
				textArea.htmlText =htmlText;
				textArea.toolTip="Click here to visit the Wikipedia page";
				textArea.addEventListener(TextEvent.LINK,linkClicked)
			}
		}			
			private function linkClicked(event:TextEvent):void
			{
				navigateToURL(new URLRequest("http://en.wikipedia.org" + event.text),"_blank");
			}	}
}