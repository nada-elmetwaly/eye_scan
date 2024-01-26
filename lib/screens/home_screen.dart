
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
                Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: Container(
                    width: 295,
                    height: 40,
                    child: Card(
                      elevation: 1,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: PhosphorIcon(
                                  PhosphorIcons.slidersHorizontal(),
                                  color: Color(0xFF73B8EB),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {
                              ;
                            },
                            icon: PhosphorIcon(
                              PhosphorIcons.magnifyingGlass(),
                              color: Color(0xFF979797),
                              size: 20,
                            ),
                          ),
                          label: Text(
                            'Search',
                            style: TextStyle(color: Color(0xff979797)),
                          ),
                        ),
                      ),
                    ),
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
                Positioned(
                  left:50,
                  top: 24,
                  child: Container(
                    width: 306,
                    height: 130,
                    decoration: ShapeDecoration(
                      color: Color(0x5473B8EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left:50,
                  top: 12,
                  child: Container(
                    width: 318,
                    height: 135,
                    decoration: ShapeDecoration(
                      color: Color(0x8973B8EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
                  ),
                ),


                Center(
                  child: Container(
                    decoration: ShapeDecoration(
                      color: Color(0xFF73B8EB),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19),
                      ),
                    ),
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
