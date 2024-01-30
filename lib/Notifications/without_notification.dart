// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WithoutNotification extends StatelessWidget {
  const WithoutNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 25,
                  ),
                  Text("Notifications" , 
                  style: TextStyle(fontSize: 32 , 
                  fontFamily: "myfont" , 

                  ),
                  
                  )
                  
                ],
              ),
              SizedBox(height: 130,) , 
              Stack(
                children: [Container(
                  width: 290,
                  height: 290,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F8F9) , 
                    shape: BoxShape.circle
                
                  ) , 
                  child: Image.asset("assets/images/notification.png"),
                ),
                Positioned(
                  child: Image.asset("assets/images/sleep 1.png" , ) , left: 215,
                  top: 20,
                  )
                ] ,
                
              ) ,
              SizedBox(height: 20,) ,
              Text("You're all caught up" , style: TextStyle(
                fontSize: 19 , 
                fontFamily: "myfont",
                color: Color(0xff263238)
              ),) , 
              SizedBox(height: 7,) , 
              Text("Come back later for Reminders." , style: TextStyle(
                fontSize: 16 , 
                fontFamily: "myfont" , 
                color: Color(0xff263238).withOpacity(0.5)
              ),)
          ],
        ),
      ),
    );
  }
}