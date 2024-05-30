import 'dart:ui';

import 'package:eye_scan/components/custom-button.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:eye_scan/components/shared_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  Color?avatarColor;
  String?NameofPerson;
  String?RequestStatus;
  String?Position;
  String?ButtonText;
  String?ImgPath;
  Color?ButtonColor;
   AppointmentCard({super.key,required this.avatarColor,required this.NameofPerson,required this.Position,required this.ImgPath,required this.ButtonColor,required this.ButtonText,required this.RequestStatus});

  @override
  State<AppointmentCard> createState() => _AppointmentItemState();
}

class _AppointmentItemState extends State<AppointmentCard> {

  bool?isReschdule=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration:BoxDecoration(
          color: Color(0xffFBFCFD),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Color(0xffD8E8F2)
          )
        ),
        width: 327,
        height: 230,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image(image:AssetImage(widget.ImgPath!)),
                  SizedBox(width: 10,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      widget.NameofPerson!,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 20,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        widget.Position!,
                        style: TextStyle(
                          color: maincolorgrey,
                          fontSize: 12,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Row(children: [
                        Icon(Icons.location_on_outlined,size: 10,color: maincolorblue,),
                        Text(
                          'Mansoura',
                          style: TextStyle(
                            color: maincolorblue,
                            fontSize: 10,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Text(
                          ',',
                          style: TextStyle(
                            color: maincolorblue,
                            fontSize: 10,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        Text(
                          'Egypt',
                          style: TextStyle(
                            color: maincolorblue,
                            fontSize: 10,
                            fontFamily: "myfont",
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ],)
                    ],
                  ),
                ],
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Examination date',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween ,

                    children: [
                      Row(
                        children: [
                          Icon(Icons.calendar_month_outlined,color: maincolorgrey,size: 14,),
                          SizedBox(width: 5,),
                          Text(
                            '26/06/2022',
                            style: TextStyle(
                              color:maincolorgrey,
                              fontSize: 12,
                              fontFamily: "myfont",

                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.watch_later_outlined,color: maincolorgrey,size: 14,),
                          SizedBox(width: 5,),
                          Text(
                            '10:30 Am',
                            style: TextStyle(
                              color:maincolorgrey,
                              fontSize: 12,
                              fontFamily: "myfont",

                              height: 0,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(backgroundColor:widget.avatarColor ,radius: 5,),
                          SizedBox(width: 5,),
                          Text(
                            widget.RequestStatus!,
                            style: TextStyle(
                              color:maincolorgrey,
                              fontSize: 12,
                              fontFamily: "myfont",

                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 144,
                    height: 46,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(8) ,
                      border: Border.all(
                        color: Colors.blue
                      )
                    ),
                    child: MaterialButton(onPressed: (){},
                      child:
                    Text(
                        'Cancel',
                        style: TextStyle(
                          color: maincolorblue,
                          fontSize: 14,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                    ),
                    ),
                  ),
                  Container(
                    width: 144,
                    height: 46,
                    decoration: BoxDecoration(
                      color:widget.ButtonColor,
                        borderRadius:BorderRadius.circular(8) ,

                    ),
                    child: MaterialButton(onPressed: (){},
                      child:
                      Text(
                        widget.ButtonText!,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
