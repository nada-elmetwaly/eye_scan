import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/maincolor.dart';

class EditSchedule extends StatefulWidget {
  const EditSchedule({super.key});

  @override
  State<EditSchedule> createState() => _EditScheduleState();
}

class _EditScheduleState extends State<EditSchedule> {
  bool isSaturday = false;
  bool isSunday = false;
  bool isMonday = false;
  bool isTuesday = false;
  bool isWednesday = false;
  bool isThursday = false;
  bool isFriday = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onTap: () {
                Navigator.pop(context);
              },
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [

            Column(
              children: [
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
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Saturday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isSaturday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isSaturday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Sunday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isSunday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isSunday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Monday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isMonday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isMonday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tuesday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isTuesday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isTuesday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wednesday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isWednesday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isWednesday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Thursday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isThursday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isThursday = value;
                          });

                        }),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Friday',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        color: Color(0xff333333),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Switch(

                        value: isFriday,
                        activeColor: maincolorblue,
                        onChanged: (bool value) {
                          setState(() {
                            isFriday = value;
                          });

                        }),

                  ],
                ),
              ],
            ),
            Container(
              width: 327,
              height: 56,
              decoration: BoxDecoration(
                  color: maincolorblue,
                  borderRadius:BorderRadius.circular(16) ,
                  border: Border.all(
                      color: Colors.white
                  )
              ),
              child: MaterialButton(onPressed: (){},
                child:
                Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
