// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:eye_scan/LoginScreens/widgets/common_text.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/payments/payment_methods_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PaymentPlansAnn extends StatefulWidget {
  const PaymentPlansAnn({super.key});

  @override
  State<PaymentPlansAnn> createState() => _PaymentPlansAnnState();
}

class _PaymentPlansAnnState extends State<PaymentPlansAnn> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,) ,
          
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  SizedBox(
                    width: 25,
                  ),
                  Text("Payment Plans" , style: TextStyle(
                    fontSize: 32 , 
                    fontFamily: "myfont" ,
                    letterSpacing: 1.5
                  ),)
                  
                ],
              ),
              SizedBox(height: 73,) ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Monthly subscription" , style: TextStyle(
                    fontSize: 15 , 
                    fontFamily: "myfont" ,
                  ),) ,
                   LinearPercentIndicator(
                    lineHeight: 12,
                    percent: 0.5,
                    barRadius: Radius.circular(16) ,
                    clipLinearGradient: false,
                    
                    progressColor: Color(0xffDADADA),
                    backgroundColor: Color(0xff75C2F6),
                    
                    width: 90,
                  ) ,
                   
               
                      Text("Annual subscription" , style: TextStyle(
                        fontFamily: "myfont" ,
                        fontSize: 15
                      ),)
                ]
              ) , 
          
              SizedBox(height: 40,) ,
              Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F8F9) , 
                borderRadius: BorderRadius.circular(16) , 
                border: _value == 1
                  ? Border.all(width: 1, color: Color(0xff73B8EB))
                  : Border.all(color: Colors.transparent)
                
              ),
              width: 370,
              height: 140,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , top: 15),
                        child: Text("Plan 1" , style: TextStyle(
                         fontWeight: FontWeight.w600, 
                          fontSize: 20
                        ),),
                      ) ,
                     Padding(
                        padding: const EdgeInsets.only(right: 15 , top: 15),
                        child: Text("50EGB/Year" , style: TextStyle(
                         fontWeight: FontWeight.w600,
                        
                          fontSize: 18
                        ),),
                      ) ,
                    ],
                  ) ,
                  SizedBox(height: 35,) , 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0 , bottom: 8),
                        child: Text("can text any doctor \nwith advertisments" , 
                        style: TextStyle(color: Color(0xff787676)),
                        ),
                      ) , 
                      Radio(value: 1, 
                      groupValue: _value, 
                      onChanged: (value){
                        setState(() {
                          _value = value as int ;
                        });
                       } ,
                      activeColor: Color(0xFF73B8EB),
                        
                      
                      )
                    ],
                  )
                ],
              ),
              ) ,
              SizedBox(height: 15,) ,
          
              Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F8F9) , 
                borderRadius: BorderRadius.circular(16) , 
                border: _value == 2
                  ? Border.all(width: 1, color: Color(0xff73B8EB))
                  : Border.all(color: Colors.transparent)
                
              ),
              width: 370,
              height: 140,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , top: 15),
                        child: Text("Plan 2" , style: TextStyle(
                         fontWeight: FontWeight.w600, 
                          fontSize: 20
                        ),),
                      ) ,
                     Padding(
                        padding: const EdgeInsets.only(right: 15 , top: 15),
                        child: Text("60EGB/Year" , style: TextStyle(
                         fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),),
                      ) ,
                    ],
                  ) ,
                  SizedBox(height: 35,) , 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0 , bottom: 8),
                        child: Text("can text and call any doctor \nwithout advertisments" , 
                        style: TextStyle(color: Color(0xff787676)),
                        ),
                      ) , 
                      Radio(value: 2, 
                      groupValue: _value, 
                       onChanged: (value){
                        setState(() {
                          _value = value as int ;
                        });
                       } ,
                      activeColor: Color(0xFF73B8EB),
                       
                      
                      )
                    ],
                  )
                ],
              ),
              ) ,
          
              SizedBox(height: 15,) , 
              Container(
              decoration: BoxDecoration(
                color: Color(0xffF4F8F9) , 
                borderRadius: BorderRadius.circular(16) , 
                border: _value == 3
                  ? Border.all(width: 1, color: Color(0xff73B8EB))
                  : Border.all(color: Colors.transparent)
                
              ),
              width: 370,
              height: 140,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20 , top: 15),
                        child: Text("Plan 3" , style: TextStyle(
                         fontWeight: FontWeight.w600, 
                          fontSize: 20
                        ),),
                      ) ,
                     Padding(
                        padding: const EdgeInsets.only(right: 15 , top: 15),
                        child: Text("70EGB/Year" , style: TextStyle(
                         fontWeight: FontWeight.w600,
                          fontSize: 18
                        ),),
                      ) ,
                    ],
                  ) ,
                  SizedBox(height: 10,) , 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0 , bottom: 23 ),
                        child: Text("can text and call any doctor \nwithout advertisments\nHave 10% sale in all clinics and Radiology centers" , 
                        style: TextStyle(color: Color(0xff787676) , fontSize: 13),
                        ),
                      ) , 
                      Radio(
                        value: 3, 
                      groupValue: _value, 
                      onChanged: (value){
                        setState(() {
                          _value = value as int ;
                        });
                       } ,
                      activeColor: Color(0xFF73B8EB),
                        
                      
                      )
                    ],
                  )
                ],
              ),
              ) ,
              SizedBox(height: 47,) ,
              
              CustomButton(text: "Next", onPressed: (){
                
              },) ,
             
            ],
          ),
        ),
      ),
    );
  }
}
