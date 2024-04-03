// ignore_for_file: prefer_const_constructors

import 'package:eye_scan/LoginScreensPatient/shared_style/field_style.dart';
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/LoginScreensDoctor/signup_3.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpTwo extends StatefulWidget {
  const SignUpTwo({super.key});

  @override
  State<SignUpTwo> createState() => _SignUpTwoState();
}

class _SignUpTwoState extends State<SignUpTwo> {
  final cities = ["Cairo", "Alex", "Dakahlia", "Damietta"];

  String? selectedVal;

  TextEditingController yearOfExperienceController = TextEditingController();
  TextEditingController feeController = TextEditingController();
  TextEditingController clinicLocationController = TextEditingController();

  Future<void> setYearOfExperience() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('yearOfExperience', yearOfExperienceController.text);
  }

  Future<void> setFee() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('fee', feeController.text);
  }

  Future<void> setClinicLocation() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('clinicLocation', selectedVal!);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
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
                    width: 59,
                  ),
                  CommonText(text: "Sign Up")
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 6,
                  percent: 0.73,
                  barRadius: Radius.circular(16),
                  progressColor: Color(0xff75C2F6),
                  backgroundColor: Color(0xffDADADA),
                  width: 372,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "2/3",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                ),
                child: TextFormField(
                  controller: yearOfExperienceController,
                  obscureText: false,
                  decoration: buildInputDecoration(
                      "assets/images/clipboard-text.png",
                      "Years of experience"),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40.0,
                ),
                child: TextFormField(
                  controller: feeController,
                  obscureText: false,
                  decoration:
                      buildInputDecoration("assets/images/cash.png", "Fees"),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: DropdownButtonFormField(

                    decoration:
                        buildInputDecoration("assets/images/location.png", ""),
                    value: selectedVal,
                    hint: Text(
                      "clinic location",
                      style: TextStyle(
                          fontSize: 17,
                          fontFamily: "myfont",
                          color: Color(0xff787676)),
                    ),
                    items: cities
                        .map((e) => DropdownMenuItem(
                              child: Text(
                                e,
                                style: TextStyle(
                                    color: Color(0xff787676),
                                    fontFamily: "myfont",
                                    fontSize: 17),
                              ),
                              value: e,
                            ))
                        .toList(),
                    onChanged: (String? val) {
                      setState(() {
                        selectedVal = val ?? "";
                      });
                    }),
              ),
              SizedBox(
                height: 240,
              ),
              CustomButton(
                  text: "Next",
                  onPressed: () {
                    print(selectedVal);
                    setYearOfExperience();
                    setFee();
                    setClinicLocation();
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpThree()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
