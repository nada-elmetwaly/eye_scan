import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppoinBox extends StatelessWidget {
  final String day ;
  const AppoinBox({
    
    super.key,
    required this.day
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        height: 74,
        width: 371,
        decoration: ShapeDecoration(
          color: Color(0xffEDEFF1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)
          ) ,
          
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10 , left: 15),
                child: Text(day , style: TextStyle(
                  fontFamily: "myfont" , 
                  fontSize: 17
                ),),
              ) ,
              SizedBox(height: 3,),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Calendar.png"),
                        SizedBox(width: 5,) , 
                        Text("26/06/2022" , style: TextStyle(
                          color: Color(0xff787878) , 
                          fontFamily: "myfont" , 
                          fontSize: 15.5
                        ),)
                      ],
                    ),
                  ) ,
                  SizedBox(width: 70,) ,
                  Row(
                    children: [
                      SvgPicture.asset("assets/images/Time Circle.svg") ,
                      SizedBox(width: 5,) ,
                      Text("11:30 AM" , style: TextStyle(
                        color: Color(0xff787878) , 
                        fontFamily: "myfont" , 
                        fontSize: 15.5
                      ),)
                    ],
                  )
                ],
              )
            ],
          ),
      ),
    );
  }
}