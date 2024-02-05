import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 75,) ,
              Container(
                width: double.infinity ,
                child: Image.asset("assets/images/splash33.png")) ,
                
                        Text(
                          " Chat",
                          style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 13,
                        ),
                        Text(
                          "Easily communicate with each other.",
                          style: TextStyle(
                              fontFamily: "myfont",
                              fontSize: 14.5,
                              color: Colors.grey[600]),
                        ),
                        
            ],
          ),
        ),
        
        ]
      ),
    );
  }
}