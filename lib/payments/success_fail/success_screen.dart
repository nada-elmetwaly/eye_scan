import 'package:flutter/material.dart';

import '../../dynamicPage.dart';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  State<SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80,),
              Container(
                width: 327,
                height: 286,
                decoration: ShapeDecoration(
                  color: Color(0x2D75C2F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Image(image:AssetImage('assets/images/check.png'),),
                    Text(
                      'Done',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    SizedBox(
                      width: 188,
                      child: Text(
                        'Your appointment with Dr. Thomas was successfully booked',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF787878),
                          fontSize: 14,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Container(
                width: 327,
                height: 154,
                decoration: ShapeDecoration(
                  color: Color(0x2D75C2F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16,right: 42,top: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Date',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 18,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            '20/10/2023',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 13,
                              fontFamily: 'Baloo Bhai 2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Time',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 18,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            '10:00 AM',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 13,
                              fontFamily: 'Baloo Bhai 2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Patient',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 18,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            'Mohammed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 13,
                              fontFamily: 'Baloo Bhai 2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF666666),
                              fontSize: 18,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Text(
                            '\$20',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 13,
                              fontFamily: 'Baloo Bhai 2',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height:32),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 327,
                  height: 56,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0xFF75C2F6)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Set a reminder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF75C2F6),
                        fontSize: 16,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:8),
              GestureDetector(
                onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));},
                child: Container(
                  width: 327,
                  height: 56,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0xFF75C2F6)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: Color(0xFF73B8EB),
                  ),
                  child: Center(
                    child: Text(
                      'Back to home',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
