package
{
	import mx.formatters.DateFormatter;

	public class DateConv extends DateFormatter
	{
		private static var MonthStr:Object = 
			{Jan:0, Feb:1, Mar:2, Apr:3, May:4, Jun:5, Jul:6, Aug:7, Sep:8, Oct:9, Nov:10, Dec:11};

		public function DateConv()
		{
			super();
		}
		
		public static function parseDate(str:String):Date{
//			return parseDateString(str);
			var ar:Array = str.split(" ");
			var ar2:Array = ar[4].toString().split(":");
			var d:Date = new Date(
				int(ar[3]), MonthStr[ar[2]], int(ar[1]), int(ar2[0]), int(ar2[1]), int(ar2[2]));
			d.setTime(d.getTime() - d.getTimezoneOffset() * 60 * 1000);
			return d;
		}
		
		public static function parseDate2(str:String):Date{
			var ar:Array = str.split(" ");
			var ar2:Array = ar[3].toString().split(":");
			var d:Date = new Date(
				int(ar[5]), MonthStr[ar[1]], int(ar[2]), int(ar2[0]), int(ar2[1]), int(ar2[2]));
			d.setTime(d.getTime() - d.getTimezoneOffset() * 60 * 1000);
			return d;
		}

		public static function toDispTime(d:Date):String{
			var str:String;
			str =	(d.month + 1).toString() + "/" + d.date + " " + 
					(d.hours + 100).toString().substr(1) + ":" + 
					(d.minutes + 100).toString().substr(1) + ":" + 
					(d.seconds + 100).toString().substr(1);
			return str;
		}
	}
}