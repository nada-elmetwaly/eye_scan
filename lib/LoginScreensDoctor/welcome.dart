// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/DoctorScreens/nav_bar_screen.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/box.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:eye_scan/dynamicPage.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeD extends StatelessWidget {
  const WelcomeD({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CommonBox(text: "Welcome back", desc: "Your log in has been successfully") ,
              
              CustomButton(
                  text: "Go to home",
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DoctorNav()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
