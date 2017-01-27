package wcmc.classes
{
	public class FlickrPhoto
	{
		private const FLICKR_WEBSITE:String="http://www.flickr.com/photos/";
		public function FlickrPhoto(_farm:String,_id:String,_isfamily:String,_isfriend:String,_ispublic:String,_owner:String,_secret:String,_server:String,_title:String)
		{
			farm=_farm;
			id=_id;
			isfamily=_isfamily;
			isfriend=_isfriend;
			ispublic=_ispublic;
			owner=_owner;
			secret=_secret;
			server=_server;
			title=_title;
			url="http://farm" + _farm + ".static.flickr.com/" + _server + "/" + _id  + "_" + _secret + "_m.jpg";
			flickrPage=FLICKR_WEBSITE + owner + "/" + _id;
		}
		public var farm:String;
		public var id:String;
		public var isfamily:String;
		public var isfriend:String;
		public var ispublic:String;
		public var owner:String;
		public var secret:String;
		public var server:String;
		[Bindable]public var title:String;
		[Bindable]public var url:String;
		public var flickrPage:String;
	}
}