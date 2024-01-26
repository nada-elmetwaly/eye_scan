// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreens/acc_type.dart';
import 'package:eye_scan/LoginScreens/login.dart';
import 'package:eye_scan/dynamicPage.dart';
import 'package:eye_scan/onBoarding/SplashCont.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({
    Key? key,
  }) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  late PageController _pageController;
  bool onLastPage = false;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 42,
          ),
          Row(
            children: [
              SizedBox(
                width: 28,
              ),
              IconButton(
                  onPressed: () {
                    _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
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
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: PageView.builder(
              
              itemCount: demo_data.length,
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                  onLastPage = (index == 2);
                });
              },
              itemBuilder: (context, index) => onBoardingContent(
                title: demo_data[index].title,
                description: demo_data[index].description,
                img: demo_data[index].img,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              _pageController.nextPage(
                  curve: Curves.ease, duration: Duration(milliseconds: 300));
            },
            child: Column(
              children: [
               
               
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
                          _pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Image.asset("assets/images/arrow1.png"),
                        )) ,
                         Row(
                  children: [
                    SizedBox(
                      width: 170,
                    ),
                    ...List.generate(
                        demo_data.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Dotindicator(
                                isActive: index == _pageIndex,
                              ),
                            )),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 51,
          )
        ],
      )),
    );
  }
}

class OnBoard {
  final String img, title, description;
  OnBoard({
    required this.img,
    required this.title,
    required this.description,
  });
}

final List<OnBoard> demo_data = [
  OnBoard(
    img: "assets/images/splash11.png",
    title: "Eye Disease Recognition",
    description: "Recognize about the disease at its begining",
  ),
  OnBoard(
    img: "assets/images/splash22.png",
    title: "Appointment with doctors",
    description: "We can easily book an appointment with suitable doctor",
  ),
  OnBoard(
    img: "assets/images/splash33.png",
    title: "Chat",
    description: "Easily communicate with eath other",
  )
];
