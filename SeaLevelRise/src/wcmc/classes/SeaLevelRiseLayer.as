/*
 * ArcGIS for Google Maps Flash API
 *
 * License http://www.apache.org/licenses/LICENSE-2.0
 */
 /**
 * @author nianwei at gmail dot com
 */ 

package wcmc.classes {
  import com.google.maps.*;
  import com.google.maps.extras.arcgislink.*;
  import com.google.maps.interfaces.*;
  
  import flash.display.Bitmap;
  import flash.display.BitmapData;
  import flash.display.DisplayObject;
  import flash.display.Loader;
  import flash.display.LoaderInfo;
  import flash.events.*;
  import flash.filters.BlurFilter;
  import flash.geom.Point;
  import flash.geom.Rectangle;
  import flash.net.URLRequest;
  
  import mx.controls.HSlider;
  import mx.events.SliderEvent;
  /**
   * Used for cached map service
   */
  //There some unique challenges in AS3 compare to JS in implementing this class :
  // --can not call super in a callback function, must be inside the constructor context
  //--copyright et once passed in constructor the overriden functions such as getCopyrightCollection etc does not seem to be used.
  public class SeaLevelRiseLayer extends TileLayerBase implements IEventDispatcher {
    private var baseUrl_:String;
    private var mapService_:MapService;
    private var urlTemplate_:String;
    private var numOfHosts_:int;
    internal var projection_:ArcGISTileConfig; // need access from MapType
    private var fullBounds_:* /*Envelope*/ ;
    private var initialBounds_:* /*Envelope*/ ;
	private var seaLevelRiseBitmaps:Array; //array of sea level rise bitmap objects - these are onscreen and offscreen bitmaps and the urls
	private var slider:HSlider;
	private var zoomLevel:Number; //current zoom level
	/**
	 *If true the full DEM will be shown alongside the areas that are highlighted
	 */
	public var showDEM:Boolean;
	/**
	 *If true, background values will not be shown as highlighted areas 
	 */
	public var hideBackground:Boolean=true;
	/**
	 *The color of the highlighted areas 
	 */
	public var highlightColor:uint;
	
    public function SeaLevelRiseLayer(service:*, _seaLevelRiseLayerOverlay:SeaLevelRiseLayerOverlay, _slider:HSlider,opt_layerOpts:ArcGISTileLayerOptions=undefined) 
    {
      slider=_slider;
      dispatcher_=new EventDispatcher(this);
      opt_layerOpts=opt_layerOpts || new ArcGISTileLayerOptions({});
      this.mapService_=(service is MapService) ? service as MapService : new MapService(service as String);
      if (opt_layerOpts.name) 
      {
        this.mapService_.name=opt_layerOpts.name;
      }
      this.alpha_=isNaN(opt_layerOpts.alpha) ? Alpha.OPAQUE : opt_layerOpts.alpha;

      //In the format of mt[number].domain.com
      if (opt_layerOpts.hosts) 
      {
        var pro:String=ArcGISUtil.extractString(this.mapService_.url, '', '://');
        var host:String=ArcGISUtil.extractString(this.mapService_.url, '://', '/');
        var path:String=ArcGISUtil.extractString(this.mapService_.url, pro + '://' + host, '');
        this.urlTemplate_=pro + '://' + opt_layerOpts.hosts + path;
        this.numOfHosts_=parseInt(ArcGISUtil.extractString(opt_layerOpts.hosts, '[', ']'), 10);
      }
      var copy:ICopyrightCollection=opt_layerOpts.copyrights;
      if (!copy) 
      {
        copy=new CopyrightCollection('pre');
        copy.addCopyright(new Copyright('1', new LatLngBounds(new LatLng(-90, -180), new LatLng(90, 180)), 0, ''));
      }
      this.copy_=copy;
      this.minZoom_=opt_layerOpts.minResolution || 0;
      this.maxZoom_=opt_layerOpts.maxResolution || 20;

      if (this.mapService_.hasLoaded()) 
      {
        this.init_(opt_layerOpts);
      } 
      else 
      {
        var me:SeaLevelRiseLayer=this;
        this.mapService_.addEventListener(ServiceEvent.LOAD, function():void {
            me.init_(opt_layerOpts);
            me.dispatchEvent(new ServiceEvent(ServiceEvent.LOAD));
          });
      }
      super(this.copy_, this.minZoom_, this.maxZoom_, this.alpha_);
      if (this.mapService_.hasLoaded()) 
      {
        dispatchEvent(new ServiceEvent(ServiceEvent.LOAD));
      }
      seaLevelRiseBitmaps=new Array(); //instantiate a new array to hold references to all of the loader objects
      _slider.addEventListener(SliderEvent.CHANGE,applyThreshold); //wire the change event of the slider to the applyThreshold method
    }

    /**
     * Initialize the tile layer from a loaded map service
     * @param {ArcGISMapService} mapService
     * @param {Object} opt_layerOpts
     */
    private function init_(opt_layerOpts:*):void {
      this.projection_=new ArcGISTileConfig(this.mapService_.tileInfo, this.mapService_.fullExtent);
      var copy:CopyrightCollection=opt_layerOpts.copyrights;
      if (!copy) {
        copy=new CopyrightCollection('');
        copy.addCopyright(new Copyright('1', ArcGISUtil.fromEnvelopeToLatLngBounds(this.mapService_.fullExtent), this.projection_.zoomOffset_, this.mapService_.copyrightText));
      }
      this.copy_=copy;
      this.minZoom_=opt_layerOpts.minResolution || this.projection_.minResolution();
      this.maxZoom_=opt_layerOpts.maxResolution || this.projection_.maxResolution();
      // It seems unlike in JS, AS3's super can be called only in one place in constructor, 
      // as a workaround all get methods are overriden.
      // TileLayerBase.call(this, copy, minZoom, maxZoom, opt_layerOpts);
      // super(copy, minZoom, maxZoom, opt_layerOpts.alpha);
    }
    
    private function ioErrorHandler(event:IOErrorEvent):void {
      trace("ioErrorHandler: " + event);
    }

    /**
     * Gain access to the underline {@link ArcGISMapService}
     * @return {MapSerive}
     */
    public function getMapService():MapService {
      return this.mapService_;
    }

    /**
     * Get full bounds of the to the underline {@link ArcGISMapService}
     * @return {GLatLngBounds}
     */
    public function getFullBounds():LatLngBounds {
      this.fullBounds_=this.fullBounds_ || ArcGISUtil.fromEnvelopeToLatLngBounds(this.mapService_.fullExtent);
      return this.fullBounds_;
    }

    public function getInitialBounds():LatLngBounds {
      this.initialBounds_=this.initialBounds_ || ArcGISUtil.fromEnvelopeToLatLngBounds(this.mapService_.initialExtent);
      return this.initialBounds_;
    }

    /**
     * Returns the {@link ArcGISProjection}, a subclass of <code>GProjection</code>
     *  used by this ArcGISTileLayer.
     * @return {ArcGISProjection}
     */
    public function getProjection():ArcGISTileConfig {
      return this.projection_ || ArcGISTileConfig.GOOGLE_MAPS;
    }

    public function hasLoaded():Boolean {
      return this.mapService_.hasLoaded();
    }

    public function getName():String {
      return this.mapService_.name;
    }
    private var dispatcher_:EventDispatcher;

    public function addEventListener(type:String, listener:Function, useCapture:Boolean=false, priority:int=0, useWeakReference:Boolean=false):void {

      dispatcher_.addEventListener(type, listener, useCapture, priority);
    }

    public function dispatchEvent(evt:Event):Boolean {
      return dispatcher_.dispatchEvent(evt);
    }

    public function hasEventListener(type:String):Boolean {
      return dispatcher_.hasEventListener(type);
    }

    public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {
      dispatcher_.removeEventListener(type, listener, useCapture);
    }

    public function willTrigger(type:String):Boolean {
      return dispatcher_.willTrigger(type);
    }


    private var copy_:ICopyrightCollection;

    public override function getCopyrightCollection():ICopyrightCollection {
      return this.copy_ ? this.copy_ : super.getCopyrightCollection();
    }
    private var maxZoom_:Number;

    public override function getMaxResolution():Number {
      return this.maxZoom_ ? this.maxZoom_ : super.getMaxResolution();
    }
    private var minZoom_:Number;

    public override function getMinResolution():Number {
      return this.minZoom_ ? this.minZoom_ : super.getMinResolution();
    }
    private var alpha_:Number;

    public override function getAlpha():Number {
      return this.alpha_ ? this.alpha_ : super.getAlpha();
    }

    public function setAlpha(alpha:Number):void {
      this.alpha_=alpha;
    }
    /**
     * Creates and loads a tile (x, y) at the given zoom level.
     * @param tilePos  Tile coordinates.
     * @param zoom  Tile zoom.
     * @return  Display object representing the tile.
     */
    public override function loadTile(tile:Point, zoom:Number):DisplayObject 
    {
      var url:String; //.minResolution()
      var z:Number=zoom - (this.projection_ ? this.projection_.zoomOffset_ : this.getMinResolution()); //.minResolution());
      if (isNaN(zoomLevel)) zoomLevel=z;
      if (!isNaN(tile.x) && !isNaN(tile.y) && z >= 0) {
        var u:String=this.mapService_.url;
        if (this.urlTemplate_) {
          u=this.urlTemplate_.replace('[' + this.numOfHosts_ + ']', '' + ((tile.y + tile.x) % this.numOfHosts_));
        }
        url=u + '/tile/' + z + '/' + tile.y + '/' + tile.x;
      }
    	//check that the new tiles being requested are from the same zoom level as the tiles that are already loaded. If not the user has changed zoom and we need to clear existing tiles.
    	if (z!=zoomLevel)
    	{
    		trace("changedzoom");
    		seaLevelRiseBitmaps=[];
    	}
      var loader:Loader=new Loader();
      if (url!=null)
      {
        loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
        loader.contentLoaderInfo.addEventListener(Event.COMPLETE,loadTileComplete);
        loader.load(new URLRequest(url));
        var seaLevelRiseBitmap:SeaLevelRiseBitmap=new SeaLevelRiseBitmap();
        seaLevelRiseBitmap.url=url;
        seaLevelRiseBitmaps.push(seaLevelRiseBitmap);
      }
      zoomLevel=z;
      return loader;
    }
    private function loadTileComplete(event:Event):void
    {
    	var _loaderInfo:LoaderInfo=event.target as LoaderInfo;
    	for each (var _seaLevelRiseBitmap:SeaLevelRiseBitmap in seaLevelRiseBitmaps)
    	{
    		if (_seaLevelRiseBitmap.url==_loaderInfo.url)  //image data returned from ArcGIS Server - now process it
    		{
		        _seaLevelRiseBitmap.onScreenBitmapData=(_loaderInfo.content as Bitmap).bitmapData; //get a pointer to the onscreen bitmap data
				if (hideBackground) _seaLevelRiseBitmap.onScreenBitmapData.threshold(_seaLevelRiseBitmap.onScreenBitmapData,new Rectangle(0, 0, 256,256), new Point(0, 0),"==",0x00000000,0xffffffff); //make the background values transparent if specified
				_seaLevelRiseBitmap.offScreenBitmapData=_seaLevelRiseBitmap.onScreenBitmapData.clone(); //copy the onscreen bitmapdata to an offscreen cache
				if (!showDEM) _seaLevelRiseBitmap.onScreenBitmapData.fillRect(new Rectangle(0, 0, 256,256),0x00ffffff); //clear the onscreen bitmapdata if we dont want to show the DEM
				if (slider.value>slider.minimum) //if the slider is not at the minimum then apply the threshold
				{
					var _threshold:uint=getThreshold();
					threshold(_threshold,_seaLevelRiseBitmap.offScreenBitmapData,_seaLevelRiseBitmap.onScreenBitmapData);			
				}
				break;
    		}
    	}
    	_loaderInfo.loader.removeEventListener(IOErrorEvent.IO_ERROR, ioErrorHandler);
    	_loaderInfo.loader.removeEventListener(Event.COMPLETE,loadTileComplete);
    }
    public function applyThreshold(event:SliderEvent):void
    {
		var _threshold:uint=getThreshold();
    	for each (var _seaLevelRiseBitmap:SeaLevelRiseBitmap in seaLevelRiseBitmaps)
    	{
    		threshold(_threshold,_seaLevelRiseBitmap.offScreenBitmapData,_seaLevelRiseBitmap.onScreenBitmapData);
		}
    }
    private function threshold(_threshold:uint,offScreenBitmap:BitmapData,onScreenBitmap:BitmapData):void
    {
    	if (!onScreenBitmap) return; 
    	var copySource:Boolean;
		if (!showDEM)
		{
			onScreenBitmap.fillRect(new Rectangle(0, 0, 256,256),0x00ffffff);
		}
		onScreenBitmap.threshold(offScreenBitmap,new Rectangle(0, 0, 256,256), new Point(0, 0),"<",_threshold,highlightColor,0x000000ff,showDEM); //if we want to see the DEM then the copysource parameter is true
		var _filter:BlurFilter = new BlurFilter(1,1);
		onScreenBitmap.applyFilter(onScreenBitmap,new Rectangle(0, 0, 256,256),new Point(0, 0),_filter);
    }
	private function getThreshold():uint
	{
 		return int(slider.value);              
	}
    private function outputPixelValues(_bitmapData:BitmapData):void
    {
		var col:Number;
	    for (col=125; col<135; col++) 
	    {
			var pixelValue:uint = _bitmapData.getPixel32(col, 100);
			var alphaValue:uint = pixelValue >> 24 & 0xFF;
			var red:uint = pixelValue >> 16 & 0xFF;
			var green:uint = pixelValue >> 8 & 0xFF;
			var blue:uint = pixelValue & 0xFF;
//			trace("Alpha:" + alphaValue.toString(16) + " Red:" + red.toString(16) + " Green:" + green.toString(16) + " Blue:" + blue.toString(16)); // ff
	    }
    }
  }
}