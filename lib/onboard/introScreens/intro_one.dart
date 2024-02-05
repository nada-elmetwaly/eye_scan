import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 220,) ,
              Container(
                width: double.infinity ,
                child: Image.asset("assets/images/splash11.png")) ,
                SizedBox(
                          height:32,
                        ),
                        Text(
                          " Eye Diseases Recognition",
                          style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 22,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Recognize about the disease at its beginning.",
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