import 'package:eye_scan/components/table_calender.dart';
import 'package:eye_scan/payments/payment_methods_screen.dart';
import 'package:flutter/material.dart';

import '../components/shared_text.dart';
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
  DateTime _focusDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  int? _currentIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;

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
      body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 12,
            ),
            SharedText(text: 'Schedule'),
            SizedBox(
              height: 22,
            ),
            Center(
              child: GroupButton(
                options: GroupButtonOptions(borderRadius:BorderRadius.circular(15),selectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                  height: 0,fontFamily: 'myfont',fontSize: 14,color: Colors.white),
                  selectedColor: Color(0xFF73B8EB),
                  buttonHeight: 31,
                  buttonWidth: 96,
                  spacing: 12,
                  unselectedBorderColor: Color(0x4C75C1C4),
                  unselectedColor: Color(0xFFF4F7F9),
                  unselectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                      height: 0,fontFamily: 'myfont',fontSize: 14,color: Color(0xFF333333),),
                  ),

                  buttons: ['Saturday','Sunday','Monday','Thursday','Wednesday','Tuesday']),
            ),

            SizedBox(
              height: 32,
            ),
            SharedText(text: 'Available time'),
            SizedBox(
              height: 16.5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: GroupButton(
                    options: GroupButtonOptions(borderRadius:BorderRadius.circular(15),selectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                        height: 0,fontFamily: 'myfont',fontSize: 10,color: Colors.white),
                      selectedColor: Color(0xFF73B8EB),
                      buttonHeight: 31,
                      buttonWidth: 75,
                      spacing: 12,
                      unselectedBorderColor: Color(0x4C75C1C4),
                      unselectedColor: Color(0xFFF4F7F9),
                      unselectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                        height: 0,fontFamily: 'myfont',fontSize: 10,color: Color(0xFF333333),),
                      crossGroupAlignment: CrossGroupAlignment.start,
                      groupingType: GroupingType.row

                    ),

                    buttons: ['2:00 PM','3:00 PM','4:00 PM','4:00 PM','5:00 PM','6:00 PM']),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SharedText(text: 'Type'),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: GroupButton(
                  options: GroupButtonOptions(borderRadius:BorderRadius.circular(15),selectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                      height: 0,fontFamily: 'myfont',fontSize: 16,color: Colors.white),
                    selectedColor: Color(0xFF73B8EB),
                    buttonHeight: 31,
                    buttonWidth: 96,
                    spacing: 12,
                    unselectedBorderColor: Color(0x4C75C1C4),
                    unselectedColor: Color(0xFFF4F7F9),
                    unselectedTextStyle: TextStyle(fontWeight: FontWeight.w400,
                      height: 0,fontFamily: 'myfont',fontSize: 16,color: Color(0xFF333333),),
                  ),

                  buttons: ['Online','Offline',]),
            ),
            SizedBox(
              height: 24,
            ),
            SharedText(text: 'Payment methods'),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 327,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Color(0xFFF4F7F9),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFFEAF6F6)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Choose payment method',
                        style: TextStyle(
                          color: Color(0xFF787676),
                          fontSize: 14,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentMethods()));
                          },
                          icon: Icon(Icons.arrow_forward_ios_outlined))
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  width: 327,
                  height: 56,
                  decoration: ShapeDecoration(
                    color: Color(0xFF73B8EB),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Set appointment',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),


    );
  }



}
