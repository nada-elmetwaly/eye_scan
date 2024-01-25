import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

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
                ],
              ),
            ),
          ),
          Positioned(
              top: 70, left: 15, child: IconButton(icon:Icon(Icons.arrow_back_ios_new_rounded),onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchScreen()));},)),
          Positioned(
            top: 420,
            left: 15,
            child: Text(
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
          ),
          Positioned(
            top: 450,
            left: 15,
            child: Text(
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
          ),
          Positioned(
            left: 2,
            top: 475,
            child: IconButton(
              onPressed: () {
                ;
              },
              icon: PhosphorIcon(
                PhosphorIcons.mapPin(),
                color: Color(0xFF73B8EB),
                size: 20,
              ),
            ),
          ),
          Positioned(
            left: 40,
            top: 490,
            child: Text(
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
          ),
          Positioned(
              top: 9,
              right: 10,
              child: Text(
                '\$20',
                style: TextStyle(
                  color: Color(0xFF73B8EB),
                  fontSize: 14,
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              )),
          Positioned(
            bottom: 340,
            left: 6,
            child: Row(
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
                Container(
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
                )
              ],
            ),
          ),
          Positioned(
            bottom: 320,
            left: 20,
            child: Text(
              'About',
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 16,
                fontFamily: 'myfont',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),
          ),
          Positioned(
            bottom: 250,
            left: 20,
            child: SizedBox(
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
          ),
          Positioned(
            bottom: 90,
            left: 40,
            child: GestureDetector(
              onTap: (){},
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
          )
        ],
      ),
    );
  }
}
