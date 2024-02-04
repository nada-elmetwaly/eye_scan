import 'package:eye_scan/HistoryScreensD/appointment_tab.dart';
import 'package:eye_scan/HistoryScreensD/records_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
        
         toolbarHeight:290,
         automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.all(0),
            child: Column(
              
              children: [
                
            Row(
              children: [
                
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Ellipse 74.png",
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              "Salma Omar",
              style: TextStyle(
                fontFamily: "myfont",
                fontSize: 19,
              ),
            ),
            Text(
              "Glocuma",
              style: TextStyle(
                  color: Color(0xffADADAD),
                  fontFamily: "myfont",
                  fontSize: 15),
            ),
              ],
            )
            ),

            bottom: TabBar(
                    dividerColor: Colors.transparent,
                indicatorPadding: EdgeInsets.only(right: 20, left: 20),
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Color(0xff787878),
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    
                    color: Color(0xff73B8EB)),
                tabs: [
                  Tab(
                    child: Text(
                      'Appointment',
                      style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                    ),
                  ),
                  Tab(
                    child: Text('Records',
                        style: TextStyle(fontSize: 18, fontFamily: 'myfont' ,)),
                  ),
                  
                ]

            ),
        ),
        body: TabBarView(children: [
          AppointmentTab() , 
          RecordsTab()
        ],),
        
      ),
    );
  }
}
