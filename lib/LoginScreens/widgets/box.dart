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
        padding: const EdgeInsets.symmetric(horizontal: 22.0 , vertical: 30),
        child: Container(
                  width: 360,
                  height: 320,
                  decoration: BoxDecoration(
                      color: Color(0xff75C2F6).withOpacity(0.25),
                      borderRadius: BorderRadius.circular(16)),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset(
                          "assets/images/check.png",
                          height: 150,
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
                          padding: const EdgeInsets.only(left: 17.0 , right: 13),
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
                ),
      );
  }
}