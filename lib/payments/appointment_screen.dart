import 'package:dio/dio.dart';
import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:eye_scan/components/table_calender.dart';
import 'package:eye_scan/main.dart';
import 'package:eye_scan/models/booking_dateTime.dart';
import 'package:eye_scan/payments/payment_methods_screen.dart';
import 'package:eye_scan/providers/dio_provider.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:buttons_flutter/buttons_flutter.dart';

import '../components/shared_text.dart';
import '../providers/dio_provider.dart';
import '../providers/dio_provider.dart';
import '../search_screens/doctor_info_screen.dart';
import '../widgets/price_time_widget.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:buttons_flutter/buttons_flutter.dart';
import 'package:group_button/group_button.dart';


class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({super.key});

  @override
  State<AppointmentScreen> createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  CalendarFormat _format=CalendarFormat.month;
  DateTime _focusDay=DateTime.now();
  DateTime _currentDay=DateTime.now();
  int? _currentIndex;
  bool _isWeekend=false;
  bool _dateSelected=false;
  bool _timeSelected=false;
  bool isActivated=false;

  String? token;
  Future<void> getToken()async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    token=prefs.getString('token') ?? '';
  }
  int? selected_day;
  int? selected_time;



  @override
  void initState() {
    getToken();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Appointment',
          style: TextStyle(
            color: Color(0xFF333333),
            fontSize: 24,
            fontFamily: 'myfont',
            fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 2.40,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new), // Set the leading icon
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DocInfo()));
          },
        ),
      ),
      body:CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                _tableCalendar(),
                const Padding(padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
                  child: Text(
                    'Select Consultation Time',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          _isWeekend ? SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal:10,vertical: 30 ),
              alignment: Alignment.center,
              child: const Text('Weekend is not available,please select another date',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'myfont',
                fontWeight: FontWeight.w700,
                color: Colors.grey,

              ),),
            ),
          ): SliverGrid(delegate: SliverChildBuilderDelegate((context,index){
            return InkWell(
              splashColor: Colors.transparent,
              onTap:(){
                setState(() {
                  _currentIndex=index;
                  _timeSelected=true;
                });

              } ,
              child: Container(
                margin:const EdgeInsets.all(5) ,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: _currentIndex==index
                        ? Colors.white
                        : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  color: _currentIndex==index
                     ? maincolorblue
                     : null,
                ),
                alignment:Alignment.center ,
                child: Text(
                  '${index + 9}:00 ${index + 9 > 11 ? "PM" : "AM"}',
                  style:TextStyle(
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w700,
                    color: _currentIndex == index ? Colors.white :null,
                  ) ,
                ),
              ),
            );
          },
            childCount: 8,
          ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,childAspectRatio: 1.5)),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () async{
                  final getDate=DataConverted.getDate(_currentDay);
                  final getDay=DataConverted.getDay(_currentDay.weekday);
                  final getTime=DataConverted.getTime(_currentIndex!);
                  final booking =await AppointmentService(Dio()).bookAppointment(
                      getDay, getTime, token! );
                  if(booking==200){
                    debugPrint('success booking');
                  }
                  else{
                    debugPrint('fail booking');
                  }


                },
                child: Container(
                 width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: maincolorblue,),


                  child: Center(
                    child: Text(
                      'Make Appointment',
                      style:TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,

                      ),

                    ),
                  ),
                ),
              ),
            ),
          ),


        ]
      )



    );
  }
  Widget _tableCalendar(){
    return TableCalendar(
        focusedDay: _focusDay,
        firstDay: DateTime.now(),
        lastDay: DateTime(2024,12,31),
      calendarFormat: _format,
      currentDay: _currentDay,
      rowHeight: 48,
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration(
          color:maincolorblue ,
          shape: BoxShape.circle,

        )
      ),
      availableCalendarFormats: const{
          CalendarFormat.month:'Month',
      },
      onFormatChanged:(format){
          setState(() {
            _format=format;
          });
      },
      onDaySelected:((selectedDay,focusedDay){
        setState(() {
          _currentDay=selectedDay;
          _focusDay=focusedDay;
          _dateSelected=true;
          if(selectedDay.weekday==6 || selectedDay.weekday==7){
            _isWeekend=true;
            _timeSelected=false;
            _currentIndex=null;
          }else{
            _isWeekend=false;
          }
        });
      }) ,
    );
  }



}
