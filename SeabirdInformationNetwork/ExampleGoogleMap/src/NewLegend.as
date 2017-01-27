package
{
	import mx.binding.utils.BindingUtils;
	import mx.collections.ArrayCollection;
	import mx.containers.Canvas;
	import mx.controls.List;
	import mx.controls.Text;
	import mx.core.ClassFactory;
	public class NewLegend extends Canvas
	{
		public function NewLegend() 
		{
//				var o:Object={key:"one",value:"This is a very long piece of text that will not fit into a standard width list component"};
//				dataProvider=new ArrayCollection();
//				dataProvider.addItem(o);
			super();
		}
		public function get dataProvider():Object
		{
			return _list.dataProvider;
		}
		public function set dataProvider(_DataProvider:Object):void
		{
			_list.dataProvider=_DataProvider;
		}
		private var _list:List;
		override protected function createChildren():void
		{
			super.createChildren();
			_list=new List();
			_list.itemRenderer=new ClassFactory(renderer);
//			BindingUtils.bindSetter(setDataProvider,this,"dataProvider");
//			BindingUtils.bindProperty(_list,"dataProvider",this,"dataProvider");
			addChild(_list);
			var _text:Text=new Text();
			addChild(_text);
		}
		private function setDataProvider(property:ArrayCollection):void
		{
			_list.dataProvider=property;
		}
	}
}