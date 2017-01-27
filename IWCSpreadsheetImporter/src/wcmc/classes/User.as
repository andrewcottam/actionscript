package wcmc.classes
{
	public class User
	{
		public function User()
		{
		}
		[Bindable]public var id:String;
		[Bindable]public var email:String;
		[Bindable]public var username:String;
		public var roles:Array;
	}
}