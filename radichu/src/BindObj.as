package 
{
	import mx.messaging.channels.StreamingAMFChannel;
	
	[Bindable]
	dynamic public class BindObj extends Object
	{
		public function BindObj()
		{
			super();
		}
		public var label:String = new String();
		public var tumburl:String = new String();
		public var title:String = new String();
		public var htmltitle:String = new String();
		public var twdata:Object = new Object();
	}
}