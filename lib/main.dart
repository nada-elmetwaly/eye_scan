import 'dart:developer';

import 'package:eye_scan/CHAAT/firebase_options.dart';
import 'package:eye_scan/CHAAT/screens/auth/login_screen.dart';
import 'package:eye_scan/DoctorScreens/Scan_Screens/ScanScreen.dart';
import 'package:eye_scan/DoctorScreens/Schedule_Screen/Doctor_Schedule.dart';
import 'package:eye_scan/HistoryScreensD/history.dart';
import 'package:eye_scan/LoginScreensPatient/login.dart';

import 'package:eye_scan/components/historyCard.dart';

import 'package:eye_scan/onboard/onBoardingScreen.dart';
import 'package:eye_scan/payments/appointment_screen.dart';
import 'package:eye_scan/providers/authtokeenprovider.dart';
import 'package:eye_scan/providers/doctorProfileProvider.dart';
import 'package:eye_scan/screens/chat_screen.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:eye_scan/screens/profile_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notification_channel/flutter_notification_channel.dart';
import 'package:flutter_notification_channel/notification_importance.dart';
import 'package:provider/provider.dart';

import 'DoctorScreens/nav_bar_screen.dart';
import 'dynamicPage.dart';

late Size mq;
Future main() async {

   WidgetsFlutterBinding.ensureInitialized();
   Firebase.initializeApp();
   
  runApp(
      ChangeNotifierProvider(create: (BuildContext context) {
        return Authtokenprovider();
      },
      child:MyApp()));


}

class MyApp extends StatelessWidget {
  

  const MyApp({super.key , });

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return   MaterialApp(
      title: "Chat",
       theme: ThemeData(
            appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 1,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontWeight: FontWeight.normal, fontSize: 19),
          backgroundColor: Color(0xff73B8EB),
        )),

      debugShowCheckedModeBanner: false,

      home:LoginScreen2(),


    );
  }
}
_initializeFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  var result = await FlutterNotificationChannel().registerNotificationChannel(
      description: 'For Showing Message Notification',
      id: 'chats',
      importance: NotificationImportance.IMPORTANCE_HIGH,
      name: 'Chats');

  log('\nNotification Channel Result: $result');
}