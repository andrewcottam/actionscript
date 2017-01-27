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
  import com.google.maps.PaneId;
  import com.google.maps.extras.arcgislink.ArcGISTileLayerOptions;
  import com.google.maps.extras.arcgislink.ServiceEvent;
  import com.google.maps.interfaces.IPane;
  import com.google.maps.interfaces.IPaneManager;
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
		_SeaLevelRiseLayer.highlightColor=0xee99b3cc; //first two hex characters control the alpha value, e.g. ff = 1
		_SeaLevelRiseLayer.addEventListener(ServiceEvent.LOAD, addOverlay);
        map.addEventListener(MapMoveEvent.MOVE_END,mapMoveEnd);
        map.addEventListener(MapZoomEvent.ZOOM_CHANGED,zoomChanged);
 		super(_SeaLevelRiseLayer, _SeaLevelRiseLayer.getProjection().getTileSize(), _SeaLevelRiseLayer.getProjection());
    }
    private function addOverlay(event:ServiceEvent):void
    {
		var manager:IPaneManager = map.getPaneManager();
		var pane:IPane = manager.createPane(0); //place the overlay at the bottom of the stack of panes
		pane.addOverlay(this);
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