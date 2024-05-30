import 'package:eye_scan/LoginScreensPatient/acc_type.dart';
import 'package:eye_scan/onboard/introScreens/intro_one.dart';
import 'package:eye_scan/onboard/introScreens/intro_three.dart';
import 'package:eye_scan/onboard/introScreens/intro_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  bool onLastPage = false;

  int _pageIndex = 0;
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          onPageChanged: (index) {
            setState(() {
              _pageIndex = index;
              onLastPage = (index == 2);
            });
          },
          controller: _controller,
          children: [
            IntroOne(),
            IntroTwo(),
            IntroThree(),
          ],
        ),

        SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 52,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 35,
                  ),
                  IconButton(
                      onPressed: () {
                        _controller.previousPage(
                            duration: Duration(milliseconds: 800),
                            curve: Curves.ease);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Color(0xff75C2F6),
                      )),
                  SizedBox(
                    width: 250,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => AccTypes()));
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: Color(0xff75C2F6),
                          fontFamily: "myfont",
                          fontSize: 23),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),

        //dot_indicator

        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("assets/images/Vector.png")),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset("assets/images/Vector (1).png")),
        Positioned(
            top: 135,
            right: 0,
            child: Image.asset("assets/images/Vector (2).png")),
        Positioned(
            top: 0,
            left: 0,
            child: Image.asset("assets/images/Vector (3).png")),

        Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  
                  SizedBox(
                    height: 450,
                  ),
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return AccTypes();
                            }));
                          },
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/arrow1.png"),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: Duration(milliseconds:500),
                                curve: Curves.easeIn);
                          },
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset("assets/images/arrow1.png"),
                          )),
                  Row(
                    children: [

                      SmoothPageIndicator(
                        controller: _controller,
                        count: 3,
                        effect:  WormEffect(
                            dotHeight: 11, dotWidth: 11,
                             activeDotColor: Color(0xff75C2F6) ,
                             dotColor: Color(0xffD9D9D9) ,
                             type: WormType.thinUnderground,
                             ),
                      ),
                      SizedBox(width: 28,)
                    ],
                  ),
                ],
              ),
            ],
          ),
        )
      ]),
    );
  }
}
