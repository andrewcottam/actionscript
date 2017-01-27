package wcmc.classes
{
	import com.google.maps.extras.arcgislink.MapService;
	import com.google.maps.interfaces.IOverlay;
	
    public class Layer
    {
        public function Layer(_id:Number,_name:String,_label:String,_category:String,_description:String,_expanded:Boolean,_visible:Boolean,_mapServiceUrl:String,_citation:String,_metadata:String)
        {
        	id=_id;
			name=_name;
			label=_label;
			category=_category;
			description=_description;
			expanded=_expanded;
			visible=_visible;
			mapServiceUrl=_mapServiceUrl;
			citation=_citation;
			metadata=_metadata;
        }
        public var id:Number;
        [Bindable]public var name:String;
        [Bindable]public var label:String;
        [Bindable]public var category:String;
        [Bindable]public var description:String;
        [Bindable]public var visible:Boolean;
        public var expanded:Boolean;
        public var mapServiceUrl:String;
        public var overlay:IOverlay; //could be a ArcGISTileLayer or an ArcGISMapOverlay
        public var mapService:MapService;
        [Bindable]public var citation:String;
        public var metadata:String;
    }
}