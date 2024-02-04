import 'package:eye_scan/HistoryScreensD/components/appoin_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppointmentTab extends StatelessWidget {
  const AppointmentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50,),
              AppoinBox(day: "Sunday",) , 
              SizedBox(height: 17, ) ,
              AppoinBox(day: "Sunday",) , 
              SizedBox(height: 17,) ,
              AppoinBox(day: "Sunday",) , 
              SizedBox(height: 17,) ,
              AppoinBox(day: "Sunday",)
            ],
          ),
        ),
      ),
    );
  }
}

