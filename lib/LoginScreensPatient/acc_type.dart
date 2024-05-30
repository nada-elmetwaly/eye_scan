// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/acc_box.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/LoginScreensDoctor/login_d.dart';
import 'package:eye_scan/dynamicPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccTypes extends StatelessWidget {
  
  const AccTypes({super.key ,});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: 65,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios)),
                SizedBox(
                  width: 12,
                ),
                CommonText(text: "Type of account") ,


              ],
            ),
            SizedBox(height: 95,),
           AccBox(
            title: "Doctor",
             desc: "You can recognize the disease easily\n and save your time , contact with your\n patients and see all appointments", 
             img: "assetes/d.png", 
             onTap: (){
               Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => LoginD()));
             }),
            SizedBox(height: 49,) ,
            AccBox(
            title: "Patient",
             desc: "You can recognize the disease easily\n and save your time , contact with your\n patients and see all appointments", 
             img: "assetes/patient.png", 
             onTap: (){
              Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()));
             }),
        ],
      ) ,
    );
  }
}

