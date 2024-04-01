import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:eye_scan/LoginScreensPatient/login.dart';
import 'package:eye_scan/LoginScreensPatient/welcome.dart';
import 'package:http/http.dart' as http;
import 'package:eye_scan/LoginScreensPatient/widgets/common_text.dart';
import 'package:eye_scan/components/customButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUptwo extends StatefulWidget {
  const SignUptwo({super.key});

  @override
  State<SignUptwo> createState() => _SignUptwoState();
}

class _SignUptwoState extends State<SignUptwo> {


  File? _image ;
  Future? getImage(bool isCamera) async {
    File image ;
    if (isCamera){
      image = (await ImagePicker().pickImage(source: ImageSource.camera)) as File;
    } else {
      image = (await ImagePicker().pickImage(source: ImageSource.gallery)) as File ;
    }
    setState(() {
      _image = image ;
    }
    );
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
                padding: const EdgeInsets.only(left: 15.0),
                child: LinearPercentIndicator(
                  animation: true,
                  animationDuration: 1000,
                  lineHeight: 6,
                  percent: 1,
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
                "2/2",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 112,
              ),
              InkWell(
                onTap: () {
                  _getImage();
                },
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: Color(0xff75C2F6), shape: BoxShape.circle),
                  child: Image.asset("assets/images/camera.png"),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 25, right: 30),
                child: Text(
                  "Upload Photo ",
                  style: TextStyle(
                      color: Color(0xff787676),
                      fontSize: 18,
                      fontFamily: "myfont"),
                ),
              ),
              SizedBox(
                height: 190,
              ),
              CustomButton(text: "Confirm", onPressed: () {


              }),
              _image == null
                  ? Container()
                  : Image.file(
                      _image!,
                      height: 300,
                      width: 300,
                    )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getImage() async {
    final imagePicker = ImagePicker();
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }
}
