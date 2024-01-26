import 'package:eye_scan/LoginScreens/acc_type.dart';
import 'package:eye_scan/LoginScreens/welcome.dart';
import 'package:eye_scan/LoginScreens/login.dart';
import 'package:eye_scan/onBoarding/onBoarding.dart';
import 'package:eye_scan/screens/chat_screen.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'dynamicPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key , });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      home: OnBoarding()
     //Test(),
    );
  }
}

