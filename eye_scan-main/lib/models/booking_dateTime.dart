import 'package:intl/intl.dart';
class DataConverted{
  static String getDay(int day){
    switch(day){
      case 1:
        return 'Saturday';
      case 2:
        return 'Sunday';
      case 3:
        return 'Monday';
      case 4:
        return 'Thursday';
      case 5:
        return 'Wednesday';
      case 6:
        return 'Tuesday';
      default:
        return 'Saturday';
    }
  }
  static String getTime(int time){
    switch(time){
      case 0:
        return "2:00 PM";
      case 1:
        return "3:00 PM";
      case 2:
        return "4:00 PM";
      case 3:
        return "5:00 PM";
      case 4:
        return "6:00 PM";
      case 5:
        return "7:00 PM";
      default:
        return "4:00 PM";
    }
  }
}