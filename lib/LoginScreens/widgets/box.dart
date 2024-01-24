import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonBox extends StatelessWidget {
  final String text;
  final String desc;
  const CommonBox({super.key , required this.text, required this.desc});

  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
                  width: 350,
                  height: 300,
                  decoration: BoxDecoration(
                      color: Color(0xff75C2F6).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 55,
                      ),
                      Image.asset(
                        "assets/images/check.png",
                        height: 90,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            fontFamily: "myfont",
                            fontSize: 26,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 7,
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: Text(desc , style: TextStyle(
                          fontFamily: "myfont",
                          fontSize: 18 , 
                          wordSpacing: 1,
                          letterSpacing: 1,
                          color: Color(0xff787878)
                        
                        ),),
                      )
                    ],
                  ),
                ),
      );
  }
}