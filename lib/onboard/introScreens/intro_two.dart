import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[ SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height:180,) ,
              Container(
                width: double.infinity ,
                child: Image.asset("assets/images/splash22.png")) ,
                SizedBox(
                          height:14,
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