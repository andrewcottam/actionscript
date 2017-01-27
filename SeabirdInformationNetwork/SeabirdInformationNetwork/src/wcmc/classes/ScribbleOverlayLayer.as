/* file			scribbleoverlaylayer.as
date			oct 2009
author			andrew cottam
description		derived from the google overlaybase class this class is used to show a user defined area over as a custom overlay in the google map api
				a user can draw a freehand polygon and this can be used to do spatial queries and overlays
				the class needs initialising from the calling component and finalising 
*/
package wcmc.classes
{
    import com.esri.ags.geometry.MapPoint;
    import com.esri.ags.geometry.Polygon;
    import com.google.maps.LatLng;
    import com.google.maps.Map;
    import com.google.maps.Map3D;
    import com.google.maps.MapAction;
    import com.google.maps.PaneId;
    import com.google.maps.interfaces.IMap;
    import com.google.maps.interfaces.IPane;
    import com.google.maps.overlays.OverlayBase;
    
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.geom.Point;
    
    import mx.containers.Canvas;
    import mx.controls.Alert;
    import mx.events.FlexEvent;
        
    public class ScribbleOverlayLayer extends OverlayBase
    {
    	[Bindable]public var canvas:Canvas=new Canvas(); //contains the actual drawing that the user creates
    	[Bindable]private var originX:Number; //start x coordinate of the scribble or circle
    	[Bindable]private var originY:Number; //start y coordinate of the scribble or circle
    	[Bindable]private var points:Array=new Array(); //contains the array of points that the user has digitised (as mouse coordinates)
    	[Bindable]public var lastPoints:Array=new Array; //the last points that were digitised
    	[Bindable]public var drawMode:String; //currently scribble or circle
    	[Event(name="UDACreated", type="wcmc.classes.UDACreatedEvent")] //custom event that clients can attach a handler onto
        public function ScribbleOverlayLayer()
        {
            super();
            addEventListener(FlexEvent.CREATION_COMPLETE,addCanvas); //add the canvas when the scribble layer is completely loaded
        }
        //this should be called before the user can digitise anything
        public function initialise(_map:Map3D):void
        {
	    	clearCanvas();
	    	_map.disableDragging(); //otherwise the user will not be able to scribble with the mouse - it would simply move the map
	    	_map.setDoubleClickMode(MapAction.ACTION_NOTHING); //similarly, we need to disable double click so the user can complete the digitising
			_map.addOverlay(this); //add the scribble overlay to the google map
        }
        //this should be called when the user has dinished digitising
        public function finalise(_map:Map3D):void
        {        	
	    	clearCanvas();
	    	_map.enableDragging(); //reset the draggin 
	    	_map.setDoubleClickMode(MapAction.ACTION_PAN_ZOOM_IN); //reset the double click action
	    	_map.removeOverlay(this); //remove this overlay from the google map
        }    
        //resets the canvas ready for the next drawing operation
        private function clearCanvas():void
        {
        	lastPoints=[];//needs to be reset since PositionOverlay is called everytime the user zooms or pans-i.e. the scribble will be redrawn 
			originX=NaN; //reset the origin x
			originY=NaN; //and y
        	canvas.graphics.clear(); //clear the canvas
        }   
        //add the canvas to this object and set its size     
        private function addCanvas(event:FlexEvent):void
        {
            canvas.width = (pane.map as Map).width;
            canvas.height = (pane.map as Map).height;
			addChild(canvas);
			canvas.addEventListener(MouseEvent.MOUSE_MOVE,_mouseMove); //wire up the mouse move event
			canvas.addEventListener(MouseEvent.MOUSE_UP,_mouseUp); //wire up the mouse up event
        }
        //called when the mouse moves over the canvas
        private function _mouseMove(event:MouseEvent):void
        {
			if ((!isNaN(originX))&&(event.buttonDown)) //if we have already started to digitise a polygon and the mouse is down
			{
				points.push({X:event.localX,Y:event.localY}); //add a point to the array of mouse points
				canvas.graphics.clear(); //clear everything that is already on the canvas
				canvas.graphics.beginFill(0x000000,0.3); //set the fill style
				canvas.graphics.moveTo(originX,originY); //move to the origin to redraw the whole polygon
				switch (drawMode)
				{
					case "Circle": //draw a circle with the radius set the new mouse poition 
					{
						var radius:Number=Math.sqrt((Math.pow(event.localX-originX,2))+(Math.pow(event.localY-originY,2)));
						canvas.graphics.drawCircle(originX,originY,radius);
						canvas.graphics.endFill();
						break;
					}
					case "Freehand":
					{
						for each (var point:Object in points) //iterate through all the points in the array and redraw the whole polygon up to the new point
						{
							canvas.graphics.lineTo(point.X,point.Y);						
						}
						canvas.graphics.endFill(); //complete the polygon
						break;
					}					
				}
			}
			else //the user is creating a first point
			{
				if (event.buttonDown)
				{
					originX=event.localX;
					originY=event.localY;
					dispatchEvent(new Event("StartUDADraw"));
				}
			}
        }
        private function _mouseUp(event:MouseEvent):void //user has completed drawing the user-defined area
        {
			canvas.graphics.clear(); //clear the existing UDA
			canvas.graphics.beginFill(0x000000,0.1); //set the fill style
			canvas.graphics.lineStyle(1,0x000000); //set the line style
			switch (drawMode)
			{
				case "Freehand":
				{
					canvas.graphics.moveTo(originX,originY); //move to the origin and draw the whole polygon
					for each (var point:Object in points)
					{
						canvas.graphics.lineTo(point.X,point.Y);						
					}
					canvas.graphics.endFill();
					break;					
				}
				case "Circle":
				{
					var radius:Number=Math.sqrt((Math.pow(event.localX-originX,2))+(Math.pow(event.localY-originY,2)));
					canvas.graphics.drawCircle(originX,originY,radius);
					canvas.graphics.endFill();					
					break;					
				}
			}
			originX=NaN; //reset the orogin to NaN
			originY=NaN;
			//THE FOLLOWING IS NOT IMPLEMETED FOR A CIRCLE YET
			//convert the points to lat/longs - to allow us to query ArcGIS Server and also to redraw if the user zooms/pans
			if (points.length==0)
			{
				Alert.show("To zoom in you need to deselect the drawing tool");
			}
			else
			{
				points.push({X:points[0].X,Y:points[0].Y}); // close the polygon - this is needed for creating the correct UDA geometry
				var _pointsArray:Array=new Array() //array of points in the UDA as lat/long coordinates
	        	lastPoints=[]; //reset the last points array - this array is used in the positionOverlay function
				for each (point in points) //create the array of lat/longs from the points array
				{
					var _Point:Point=new Point(point.X,point.Y);
					var _LatLng:LatLng=pane.fromPaneCoordsToLatLng(_Point); //convert to lat/long
					var _mapPoint:MapPoint=new MapPoint(_LatLng.lng(),_LatLng.lat()); //create an ESRI point 
					_pointsArray.push(_mapPoint); //and add it to the UDA that we will create
					lastPoints.push(_LatLng); //add the LatLng to an array of points in case the user zooms/pans
				}
				var _ringsArray:Array=new Array(); //create a new array to hold each of the rings in the polygon
				_ringsArray.push(_pointsArray); //add the lat/long points array to the rings collection
				var _geometry:Polygon=new Polygon(_ringsArray); //create a new ESRI polygon geometry to query the data
				dispatchEvent(new UDACreatedEvent("UDACreated",_geometry)); //fire the UDA Created event
				points=[]; //reset the points array to an empty array
			}
        }
        //must be implemented as part of IBaseOverlay (think thats what its called)
        override public function getDefaultPane(map:IMap):IPane 
        {
            return map.getPaneManager().getPaneById(PaneId.PANE_OVERLAYS);
        }
        //must be implemented as part of IBaseOverlay - this is called a lot whever the user zooms or pans the map
        override public function positionOverlay(arg0:Boolean):void
        {
        	if (lastPoints.length==0) return; //no UDA to draw
			canvas.graphics.clear(); //clear the existing scribble and redraw it in the right place
			canvas.graphics.beginFill(0x000000,0.1);
			canvas.graphics.lineStyle(1,0x000000);
			var _point:Point=pane.fromLatLngToPaneCoords(lastPoints[0]); //convert the point from lat/long to a screen coordinate
			canvas.graphics.moveTo(_point.x,_point.y); //move to the start
			for (var i:Number=1;i<lastPoints.length;i++) //draw the polygon
			{
				var _LatLng:LatLng=lastPoints[i];
				_point=pane.fromLatLngToPaneCoords(_LatLng);
				canvas.graphics.lineTo(_point.x,_point.y);						
			}
			canvas.graphics.endFill();			
        }
    }
}