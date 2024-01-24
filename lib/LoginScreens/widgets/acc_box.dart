import 'package:eye_scan/LoginScreens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccBox extends StatelessWidget {
  final String title;
  final String desc;
  final String img;
  final VoidCallback onTap;
  const AccBox({super.key , required this.title,required this.desc, required this.img , required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap
       
      ,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
      
          
          Container(
            width: 380,
            height: 190,
           decoration: BoxDecoration(
                boxShadow: [
              BoxShadow(
                  blurRadius: 20,
                  color: Color(0xff75C2F6).withOpacity(0.1),
                  spreadRadius: 0,
                  offset: Offset(10, 16))
            ] ,
              borderRadius: BorderRadius.circular(16)
              ),
            child: Card(
              color: Color(0xff75C2F6).withOpacity(0.1),
              elevation: 0,
              clipBehavior: Clip.none,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 12,),
                    Text( title , style: TextStyle(
                      fontFamily: "myfont" ,
                      fontSize: 18 , 
                      color: Color(0xff000000) , 
                      
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
          Positioned(child: Image.asset(img), height: 185, right: -20, bottom: 30, ) ,
          
        ],
        
      ),
    );
  }
}