package wcmc.classes
{
	import com.google.maps.extras.arcgislink.MapService;
	import com.google.maps.interfaces.IOverlay;
    public class Layer
    {
        public function Layer(_mapServiceUrl:String,_alpha:Number=1,_visible:Boolean=false)
        {
        	alpha=_alpha;
			visible=_visible;
			mapServiceUrl=_mapServiceUrl;
        }
        public var visible:Boolean;
        public var mapServiceUrl:String;
        public var overlay:IOverlay; //could be a ArcGISTileLayer or an ArcGISMapOverlay
        public var mapService:MapService;
        public var alpha:Number;
    }
}