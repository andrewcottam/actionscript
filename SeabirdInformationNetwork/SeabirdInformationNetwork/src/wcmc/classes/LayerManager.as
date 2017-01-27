package wcmc.classes
/**
*Provides a central object for managing all of the ArcGIS Server layers in an application 
*/
{
	import com.google.maps.Map;
	import com.google.maps.Map3D;
	import com.google.maps.MapType;
	import com.google.maps.extras.arcgislink.ArcGISMapOverlay;
	import com.google.maps.extras.arcgislink.ArcGISMapOverlayOptions;
	import com.google.maps.extras.arcgislink.ArcGISTileLayer;
	import com.google.maps.extras.arcgislink.ArcGISTileLayerOptions;
	import com.google.maps.extras.arcgislink.ArcGISTileLayerOverlay;
	import com.google.maps.extras.arcgislink.MapService;
	import com.google.maps.extras.arcgislink.ServiceEvent;
	import com.google.maps.interfaces.IOverlay;
	
	import mx.controls.Alert;
	import mx.core.Application;
	import mx.events.ItemClickEvent;
	import mx.managers.CursorManager;
	public class LayerManager
	{
		public function LayerManager()
		{
			addEventListener("ChangeLayerVisiblity",layerVisibilityChanged);		
		}
		[Bindable]public var map:Map;
		public var layers:Array=new Array();
		private function layerVisibilityChanged(event:ChangeLayerVisibilityEvent):void
		{
            if (!event.layer.visible)
            {
				setLayerVisible(event.layer);
            }
            else
            {
                setLayerHidden(event.layer);
            }
        }
        public function setLayerVisible(layer:Layer):void
        {
            layer.visible=true;
            var _mapService:MapService=new MapService(layer.mapServiceUrl);
            layer.mapService=_mapService;
            CursorManager.setBusyCursor();
            _mapService.addEventListener(ServiceEvent.LOAD,checkMapServiceType);
            _mapService.addEventListener(ServiceEvent.EXPORTMAP_START,serviceevent_exportmapstart);
            _mapService.addEventListener(ServiceEvent.EXPORTMAP_COMPLETE,serviceevent_exportmapcomplete);
            _mapService.addEventListener(ServiceEvent.ERROR,serviceevent_error);
            function checkMapServiceType(event:ServiceEvent):void
            {
            	if (event.data.singleFusedMapCache)
            	{
            		var _ms:MapService=event.data as MapService;
            		var layers:Array=_ms.getLayers();
	            	var _ArcGISTileLayer:ArcGISTileLayer=new ArcGISTileLayer(layer.mapServiceUrl, new ArcGISTileLayerOptions({alpha: layer.alpha}));
	            	_ArcGISTileLayer.layer=layer; //I had to add this property to be able to link the ArcGISTileLayer and the IOverlay to the Layer instance
	                _ArcGISTileLayer.addEventListener(ServiceEvent.LOAD, addOverlay);
            	}
            	else
            	{
					// there are some serious issues with dynamic layers that do not seem to occur with cached maps for some reason - it seems to be related to the current extent and if 
					// if crosses the international date line. If the extent includes the IDL, then a dynamic layer will not display!!
            		var _IOverlay:ArcGISMapOverlay=new ArcGISMapOverlay(layer.mapServiceUrl, new ArcGISMapOverlayOptions({alpha: layer.alpha}));
					_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_START,serviceevent_exportmapstart);
					_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_COMPLETE,serviceevent_exportmapcomplete);
					_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_LOAD, serviceevent_exportmapload);
	                _IOverlay.addEventListener(ServiceEvent.ERROR,serviceevent_error);
            		map.addOverlay(_IOverlay);
            		layer.overlay=_IOverlay;
            		CursorManager.removeBusyCursor();
            	}
            }
        }
	        private function serviceevent_exportmapstart(evt:ServiceEvent):void 
	        {
//	        	CursorManager.setBusyCursor();
	        	trace("serviceevent_exportmapstart:" + new Date().time.toString());
	        }
	        private function serviceevent_exportmapcomplete(evt:ServiceEvent):void 
	        {
//	        	CursorManager.removeBusyCursor();
	        	trace("serviceevent_exportmapcomplete:" + new Date().time.toString());
	        }
	        private function serviceevent_exportmapload(evt:ServiceEvent):void 
	        {
	        	trace("serviceevent_exportmapload:" + new Date().time.toString());
	        }
	        private function serviceevent_error(event:ServiceEvent):void
	        {
	        	if (event.data.details.length>0)
	        	{
					Alert.show(event.data.details[0].toString());		        		
	        	}
                CursorManager.removeBusyCursor();
	        }
           private function addOverlay(event:ServiceEvent):void //for tiled layers
            {
            	var _IOverlay:IOverlay;
        		_IOverlay=new ArcGISTileLayerOverlay(event.target as ArcGISTileLayer);
				_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_START,serviceevent_exportmapstart);
				_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_COMPLETE,serviceevent_exportmapcomplete);
				_IOverlay.addEventListener(ServiceEvent.EXPORTMAP_LOAD, serviceevent_exportmapload);
                map.addOverlay(_IOverlay);
                CursorManager.removeBusyCursor();
                ((event.target) as ArcGISTileLayer).layer.overlay=_IOverlay;
                event.target.removeEventListener(ServiceEvent.LOAD, addOverlay);
            }
            public function setLayerHidden(layer:Layer):void
            {
                layer.visible=false;
                if (layer.overlay)
            	{
	                map.removeOverlay(layer.overlay);
            	}
            	layer.overlay=null;
            }
            private function getMapServiceURL(_IOverlay:IOverlay):String
            {
            	var mapService:MapService;
            	switch ((_IOverlay as Object).className)
            	{
            		case "ArcGISTileLayer":
            		{
	            		var _ArcGISTileLayer:ArcGISTileLayer= _IOverlay as ArcGISTileLayer;
	            		mapService=_ArcGISTileLayer.getMapService();
	            		break;
            		}
            		case "ArcGISMapOverlay":
            		{
            			var _ArcGISMapOverlay:ArcGISMapOverlay=_IOverlay as ArcGISMapOverlay;
	            		mapService=_ArcGISTileLayer.getMapService();
						break;            			
            		}
            	}
            	return mapService.getMapService().url;
            }
            private function setGoogleMapType(event:ItemClickEvent):void
            {
            	var map:Map3D = Application.application.map;
                switch (event.item.mapType) //take action depending on the base map set
                {
                    case (EnumGoogleMapType.GOOGLE_IMAGERY):
                    {
                          map.setMapType(MapType.HYBRID_MAP_TYPE);
                          break;
                    }
                    case (EnumGoogleMapType.GOOGLE_ROAD):
                    {
                          map.setMapType(MapType.NORMAL_MAP_TYPE);
                          break;
                    }
                    case (EnumGoogleMapType.GOOGLE_TERRAIN):
                    {
                          map.setMapType(MapType.PHYSICAL_MAP_TYPE);
                          break;
                    }
            	}
            }
	}
}