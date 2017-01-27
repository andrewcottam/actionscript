package wcmc.classes
{
	import flash.display.Sprite;
	import mx.core.UIComponent;
	public class SpriteUIComponent extends UIComponent
	{
		public function SpriteUIComponent ()
		{
		    super ();
		}	
		private var _sprite:Sprite; 	
		[Bindable]public function set sprite(_Sprite:Sprite):void
		{
			_sprite=_Sprite;
		    explicitHeight = sprite.height;
		    explicitWidth = sprite.width;
		    addChild (sprite);
		}
		public function get sprite():Sprite
		{
			return _sprite;
		}
	}
}