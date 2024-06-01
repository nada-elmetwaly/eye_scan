import 'package:eye_scan/DoctorScreens/Schedule_Screen/typeschedule/CanceledScreendoctor.dart';
import 'package:eye_scan/DoctorScreens/Schedule_Screen/typeschedule/ConfirmedScreen.dart';
import 'package:eye_scan/DoctorScreens/Schedule_Screen/typeschedule/RequestScreen.dart';
import 'package:eye_scan/components/AppoinmentCard.dart';
import 'package:eye_scan/components/completed%20card.dart';
import 'package:eye_scan/components/maincolor.dart';

import 'package:eye_scan/screens/chatlist.dart';
import 'package:flutter/material.dart';



class ScheduleScreens extends StatefulWidget {
  const ScheduleScreens({super.key});

  @override
  State<ScheduleScreens> createState() => _HistoryAppoState();
}

class _HistoryAppoState extends State<ScheduleScreens> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,

      child: Scaffold(
          appBar: AppBar(

            titleSpacing: 20,
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              'Appointment',
              style: TextStyle(
                fontFamily: 'myfont',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            bottom:  TabBar(
                indicatorPadding: EdgeInsets.only(right: 5,left: 5),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: maincolorblue
                ),
                tabs: [
                  Tab(
                    child: Text('Request',style: TextStyle(fontSize: 14,fontFamily: 'myfont')
                      ,
                    ),
                  ),
                  Tab(child: Text('Confirmed',style: TextStyle(fontSize: 14,fontFamily: 'myfont')),),
                  Tab(child: Text('Canceled',style: TextStyle(fontSize: 14,fontFamily: 'myfont')),),
                ]) ,
          ),
          body: TabBarView(
            children: [
              RequestPage(),
              ConfirmedPage(),
              CanceledScreenDoctor(),
            ],
          )
      ),
    );
  }
}
