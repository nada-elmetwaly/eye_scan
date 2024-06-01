// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  final String text;
  final double width;
  const SquareTile(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
     
        onPressed: () {},
       style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 60 , vertical: 6) ,
        elevation: 0 , 
        side: BorderSide(color: Color(0xffEAF0F6)) , 
        
       ),
          
        child: Wrap(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath,
                height: 25,
                width: width,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ));
  }
}
