import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../payments/appointment_screen.dart';
import '../payments/payment_plans_mon.dart';
import '../screens/search_screen.dart';

class DocInfo extends StatelessWidget {
  const DocInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(),
          Container(
            width: double.infinity,
            height: 375,
            decoration: BoxDecoration(color: Color(0xFFEDEFF1)),
          ),
          Positioned(
            left: 100,
            top: 45,
            child: Container(
              width: 203,
              height: 306,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assetes/d2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            top: 340,
            child: Container(
              width: 254,
              height: 60,
              decoration: ShapeDecoration(
                  color: Color(0xFFFBFDFD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 10,
                      offset: Offset(-2, 3),
                      spreadRadius: 0,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Patients',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 12,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        '3.3k',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF787878),
                          fontSize: 10,
                          fontFamily: 'Baloo Bhai 2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Color(0x4C75C1C4),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Experience',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 12,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Text(
                        '10 yrs+',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF787878),
                          fontSize: 10,
                          fontFamily: 'Baloo Bhai 2',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  VerticalDivider(
                    thickness: 1,
                    color: Color(0x4C75C1C4),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Rating',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF73B8EB),
                          fontSize: 12,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '4.0',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF787878),
                              fontSize: 10,
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Icon(Icons.star,color:Colors.amber,size: 14,)

                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 70, left: 15, child: IconButton(icon:Icon(Icons.arrow_back_ios_new_rounded),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));},)),
          Positioned(
            top: 480,
            left: 8,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    ;
                  },
                  icon: PhosphorIcon(
                    PhosphorIcons.mapPin(),
                    color: Color(0xFF73B8EB),
                    size: 20,
                  ),
                ),
                Text(
                  'Mansoura, Egypt ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF73B8EB),
                    fontSize: 12,
                    fontFamily: 'myfont',
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: 0.56,
                  ),
                ),


              ],
            ),
          ),
          Positioned(
            top: 430,
            left: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(

                    children: [
                      Text(
                        'Dr. Thomas',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF333333),
                          fontSize: 20,
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 200,right: 10),
                        child: Text(
                          '100EG',
                          style: TextStyle(
                            color: Color(0xFF73B8EB),
                            fontSize: 16,
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      )

                    ],
                  ),
                  Text(
                    'Eye diseases',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF787878),
                      fontSize: 18,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(height: 17,),

                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          ;
                        },
                        icon: PhosphorIcon(
                          PhosphorIcons.crownSimple(),
                          color: Colors.amber,
                          size: 20,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPlans()));},
                        child: Container(
                          width:23,
                          height: 23,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(),
                          child: Stack(children: [
                            Container(
                              decoration: ShapeDecoration(
                                color: Color(0xFF73B8EB),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                              ),
                            ),
                            Center(
                              child: PhosphorIcon(
                                PhosphorIcons.chatCircleDots(),
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ]),
                        ),
                      )


                    ],
                  ),
                  Text(
                    'About',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 16,
                      fontFamily: 'myfont',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    width: 327,
                    height: 71,
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed dok eiusmod tempor incididunt ut labore et dolore magnavgfuijascij aliqua.Lorem ipsum dolor sit amet, consectetur adipiscinge elit,li sed do eiusmod temor',
                      style: TextStyle(
                        color: Color(0xFF787676),
                        fontSize: 12,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  SizedBox(height:32 ,),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AppointmentScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 327,
                        height: 56,
                        decoration: ShapeDecoration(
                          color: Color(0xFF73B8EB),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Book an appointment',
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
                  ),




                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
