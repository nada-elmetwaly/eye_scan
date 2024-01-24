

import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import '../components/circle-Profile.dart';
import '../components/custom-button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../components/rate_component.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 70, bottom: 15, left: 40),
              child: Text(
                'Eye Link',
                style: TextStyle(
                  color: Color(0xFF73B8EB),
                  fontSize: 16,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 295,
                  height: 40,
                  color: Color(0xFFF7FBFB),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xFFF7FBFB),
                        prefixIcon: PhosphorIcon(
                          PhosphorIcons.magnifyingGlass(),
                          color: Color(0xFF979797),
                        ),
                        suffixIcon: PhosphorIcon(
                          PhosphorIcons.slidersHorizontal(),
                          color: Color(0xFF73B8EB),
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color(0xFF979797),
                          fontSize: 16,
                          fontFamily: "myfont",
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(color: Color(0xFFF7FBFB)))),
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                PhosphorIcon(
                  PhosphorIcons.bell(),
                  color: Color(0xFF73B8EB),
                  size: 24,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          blurRadius: 40,
                          color: Colors.grey.withOpacity(0.6),
                          spreadRadius: 0,
                          offset: Offset(8, 10))
                    ]),
                    width: 331,
                    height: 140,
                    child: Card(
                      color: Color(0xFF73B8EB),
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Next Appointment with',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.w500,
                                height: 0.14,
                              ),
                            ),
                            SizedBox(
                              height: 35,
                            ),
                            Text(
                              'Dr.Anyname at 3:00pm',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "myfont",
                                fontWeight: FontWeight.w600,
                                height: 0.06,
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            CustomButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 35,
                    bottom: -5,
                    child: Image(
                      width: 137,
                      image: AssetImage(
                        'assetes/d.png',
                      ),
                      height: 171,
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(
                bottom: 5,
                left: 10,
              ),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                color: Color(0xFF73B8EB),
                width: 1.0,
              ))),
              child: Text(
                "Online Doctors",
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 16,
                  fontFamily: "myfont",
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                CircleProfile(img: 'assetes/man1.png'),
                SizedBox(
                  width: 20,
                ),
                CircleProfile(img: 'assetes/man2.png'),
                SizedBox(
                  width: 20,
                ),
                CircleProfile(img: 'assetes/girl.png'),
                SizedBox(
                  width: 20,
                ),
                CircleProfile(img: 'assetes/girl2.png'),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 5,
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: Color(0xFF73B8EB),
                    width: 1.0,
                  ))),
                  child: Text(
                    "Top Doctors",
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: 200,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                    color: Color(0xFF73B8EB),
                    fontSize: 16,
                    fontFamily: "myfont",
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RateComponent(name: 'Dr. Aaroni',image: 'assetes/d.png',),
                  SizedBox(width: 2,),
                  RateComponent(name: 'Dr. Thomas',image: 'assetes/d2.png',),
                  SizedBox(width: 2,),
                  RateComponent(name: 'Dr. Aaroni',image: 'assetes/d.png',),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }


}
