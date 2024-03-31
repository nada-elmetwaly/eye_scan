import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccBox extends StatelessWidget {
  final String title;
  final String desc;
  final String img;
  
  final VoidCallback onTap;
  AccBox({super.key , required this.title,required this.desc, required this.img , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap
       
      ,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
      
          
          Container(
            
            width: 360,
            height: 160,
           decoration: BoxDecoration(
                boxShadow: [
              BoxShadow(
               color: Color(0xA5DADADA),
                blurRadius: 29.30,
                offset: Offset(1, 2),
                spreadRadius: 0,)
            ] ,
              borderRadius: BorderRadius.circular(16)
              ),
            child: Card(
              color: Color(0xFFF4F8F9),
              elevation: 0,
              clipBehavior: Clip.none,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    Text( title , textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w600,
                        height: 0.08,
                      ),) ,
                    SizedBox(height: 18,),
                    Text( desc ,
                     style: TextStyle(
                      fontFamily: "myfont" ,
                      fontSize: 13.5 ,
                      height: 1.9,

                      color: Color(0xff000000) ,

                    ),)
                  ],
                ),
              ),
            ),
          ) ,
          Positioned(child: Image.asset(img), height:190, right: -40, bottom: 0.02, ) ,
          
        ],
        
      ),
    );
  }
}