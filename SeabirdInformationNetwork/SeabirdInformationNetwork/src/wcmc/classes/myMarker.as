package wcmc.classes
{
	import com.google.maps.LatLng;
	import com.google.maps.overlays.Marker;
	import com.google.maps.overlays.MarkerOptions;
	
	import mx.binding.utils.ChangeWatcher;
	import mx.core.Application;
	import mx.effects.Fade;
	import mx.events.PropertyChangeEvent;
	public class myMarker extends Marker
	{
		private var _attributes:Object;
		public var changeWatcher:ChangeWatcher;
		public var abundanceField:String;
   		[Bindable][Embed(source="/images/distribution.png")]public var distribution:Class;
		public function myMarker(arg0:LatLng, arg1:MarkerOptions=null)
		{
			super(arg0, arg1);
		}
		public function set attributes(Attributes:Object):void
		{
			_attributes=Attributes;
			if (_attributes.hasOwnProperty("Height")) changeWatcher = ChangeWatcher.watch(Application.application,"currentHeight",currentHeightChanged);
		}
		public function get attributes():Object
		{
			return _attributes;
		}
		private function currentHeightChanged(event:PropertyChangeEvent):void
		{
			var markerOptions:MarkerOptions=getOptions();
			var _population:Population;
			if (event.newValue>_attributes.Height)
			{
				if (markerOptions.icon.alpha==1) setMarkerVisibility(markerOptions,1,0);
				if (Application.application.abundances)	_population=Application.application.abundances.getItemAt(1) as Population;
				if (_population) _population.abundance+=_attributes[abundanceField];//affected population
			}
			else
			{
				if (markerOptions.icon.alpha==0) setMarkerVisibility(markerOptions,0,1);
				if (Application.application.abundances)	_population=Application.application.abundances.getItemAt(0) as Population;
				if (_population) _population.abundance+=_attributes[abundanceField];//unaffected population
			}
		}
		public function removeWatcher():void
		{
			changeWatcher.unwatch();
			changeWatcher=null;
		}
		private function setMarkerVisibility(markerOptions:MarkerOptions,alphaFrom:Number, alphaTo:Number):void
		{
			var fade:Fade=new Fade(markerOptions.icon);
			fade.duration=600;
			fade.alphaFrom=alphaFrom;
			fade.alphaTo=alphaTo;
			fade.play();
		}
	}
}