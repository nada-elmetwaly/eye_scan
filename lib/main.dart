import 'package:eye_scan/DoctorScreens/Scan_Screens/ScanScreen.dart';
import 'package:eye_scan/DoctorScreens/Schedule_Screen/Doctor_Schedule.dart';
import 'package:eye_scan/HistoryScreensD/history.dart';
import 'package:eye_scan/LoginScreens/login.dart';
import 'package:eye_scan/components/historyCard.dart';

import 'package:eye_scan/onboard/onBoardingScreen.dart';
import 'package:eye_scan/payments/appointment_screen.dart';
import 'package:eye_scan/screens/chat_screen.dart';
import 'package:eye_scan/screens/profile_screen.dart';
import 'package:flutter/material.dart';

import 'DoctorScreens/nav_bar_screen.dart';
import 'dynamicPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key , });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  onboarding()
      
    );
  }
}

