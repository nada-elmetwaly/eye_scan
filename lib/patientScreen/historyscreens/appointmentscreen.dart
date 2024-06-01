import 'package:eye_scan/components/AppoinmentCard.dart';
import 'package:eye_scan/components/completed%20card.dart';
import 'package:eye_scan/components/maincolor.dart';

import 'package:eye_scan/screens/chatlist.dart';
import 'package:flutter/material.dart';

import 'Appointment screen/CanceledScreen.dart';
import 'Appointment screen/completedScreen.dart';
import 'Appointment screen/upcomingscreen.dart';

class HistoryAppointPage extends StatefulWidget {
  const HistoryAppointPage({super.key});

  @override
  State<HistoryAppointPage> createState() => _HistoryAppoState();
}

class _HistoryAppoState extends State<HistoryAppointPage> {
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
              child: Text('Upcoming',style: TextStyle(fontSize: 14,fontFamily: 'myfont')
                ,
              ),
            ),
            Tab(child: Text('Completed',style: TextStyle(fontSize: 14,fontFamily: 'myfont')),),
            Tab(child: Text('Canceled',style: TextStyle(fontSize: 14,fontFamily: 'myfont')),),
          ]) ,
        ),
        body: TabBarView(
          children: [
            UpcomingPage(),
            CompletedScreen(),
            CanceledScreen(),
          ],
        )
      ),
    );
  }
}
