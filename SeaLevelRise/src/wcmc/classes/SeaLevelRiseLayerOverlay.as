/*
 * ArcGIS for Google Maps Flash API
 *
 * License http://www.apache.org/licenses/LICENSE-2.0
 */
 /**
 * @author nianwei at gmail dot com
 */ 

package wcmc.classes
{
  import com.google.maps.Map3D;
  import com.google.maps.MapMoveEvent;
  import com.google.maps.MapZoomEvent;
  import com.google.maps.extras.arcgislink.ArcGISTileLayerOptions;
  import com.google.maps.extras.arcgislink.ServiceEvent;
  import com.google.maps.overlays.TileLayerOverlay;
  
  import mx.controls.HSlider;
/**
 * Tile layer as overlay. tile layer must be loaded first.
 */ 
  public class SeaLevelRiseLayerOverlay extends TileLayerOverlay
  {
  	private var _SeaLevelRiseLayer:SeaLevelRiseLayer;
  	private var map:Map3D;
    public function SeaLevelRiseLayerOverlay(url:String,_map:Map3D,_slider:HSlider)
    {
    	map=_map;
		_SeaLevelRiseLayer=new SeaLevelRiseLayer(url, this,_slider, new ArcGISTileLayerOptions({alpha: 1}));
		_SeaLevelRiseLayer.showDEM=false;
		_SeaLevelRiseLayer.highlightColor=0xdd99b3cc; 
		_SeaLevelRiseLayer.addEventListener(ServiceEvent.LOAD, addOverlay);
        map.addEventListener(MapMoveEvent.MOVE_END,mapMoveEnd);
        map.addEventListener(MapZoomEvent.ZOOM_CHANGED,zoomChanged);
 		super(_SeaLevelRiseLayer, _SeaLevelRiseLayer.getProjection().getTileSize(), _SeaLevelRiseLayer.getProjection());
    }
    private function addOverlay(event:ServiceEvent):void
    {
		map.addOverlay(this);
    }
    private function mapMoveEnd(event:MapMoveEvent):void
    {
		_SeaLevelRiseLayer.applyThreshold(null);
    }
	private function zoomChanged(event:MapZoomEvent):void
	{
		_SeaLevelRiseLayer.applyThreshold(null);
	}
  }
}