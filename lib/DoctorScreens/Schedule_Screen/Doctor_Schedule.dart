import 'package:eye_scan/DoctorScreens/Schedule_Screen/Edit_Schedule.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DoctorSchedule extends StatefulWidget {
  const DoctorSchedule({super.key});

  @override
  State<DoctorSchedule> createState() => _DoctorScheduleState();
}

class _DoctorScheduleState extends State<DoctorSchedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>EditSchedule()));
        },
        child: Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
        backgroundColor: maincolorblue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff333333),
              ),
              onTap: () {Navigator.pop(context);},
            ),
            const SizedBox(
              width: 120,
            ),
            Text(
              'Schedule',
              style: TextStyle(
                fontFamily: 'myfont',
                color: Color(0xff333333),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: maincolorblue,
                  size: 24,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Working Hours',
                  style: TextStyle(
                      fontFamily: 'myfont', fontSize: 16, color: Colors.black),
                ),
                SizedBox(
                  width: 190,
                ),
                InkWell(
                    onTap: () {},
                    child: Image(image: AssetImage('assetes/edit_blue.png'))),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: 327,
              height: 59,
              color: Color(0xffF4F8F9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Saturday',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'myfont',
                        color: Colors.black),
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '06:00 am - 09:00 pm',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'myfont',
                            color: Colors.black),
                      ),
                      Text(
                        '40 min',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'myfont',
                            color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
