import 'package:eye_scan/components/maincolor.dart';
import 'package:eye_scan/screens/chatlist.dart';
import 'package:flutter/material.dart';

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
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: maincolorblue
              ),
              tabs: [
            Tab(
              child: Text('Upcoming',style: TextStyle(fontSize: 14)
                ,
              ),
            ),
            Tab(child: Text('Completed'),),
            Tab(child: Text('Canceled'),),
          ]) ,
        ),
        body: TabBarView(
          children: [
            ChatList(),
          ],
        )
      ),
    );
  }
}
