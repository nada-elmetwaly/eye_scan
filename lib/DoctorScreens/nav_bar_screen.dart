import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:eye_scan/DoctorScreens/Schedule_Screen/Schedule-screen.dart';
import 'package:eye_scan/DoctorScreens/chat_screens/chatlist_doctor.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

import 'Scan_Screens/ScanScreen.dart';
import 'Schedule_Screen/Doctor_Schedule.dart';
import 'nav_screens/doc_chat_screen.dart';
import 'nav_screens/doc_home_screen.dart';
import 'nav_screens/profile_screen.dart';

class DoctorNav extends StatefulWidget {
  const DoctorNav({super.key});

  @override
  State<DoctorNav> createState() => _DoctorNavState();
}

class _DoctorNavState extends State<DoctorNav> {
  int page = 0;
  List<Widget> list = [
    const DocHome(),
    const ScheduleScreens(),
    const ScanPage(),
    ChatListDoctor(),
    const DocProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: [
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child:PhosphorIcon(
              PhosphorIcons.house(),
              color: page == 0 ? Color(0xff73B8EB) : Colors.white,
              size:30,
            ),

            label: 'Home',

          ),
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child: PhosphorIcon(
              PhosphorIcons.calendarCheck(),
              color: page == 1 ? Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Schedule',
          ),
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child: PhosphorIcon(
              PhosphorIcons.scan(),
              color: page == 2 ? Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Scan',
          ),
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child: PhosphorIcon(
              PhosphorIcons.chatCircleDots(),
              color: page == 3 ? Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Chat',
          ),
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child: PhosphorIcon(
              PhosphorIcons.userCircleGear(),
              color: page == 4 ?Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Profile',
          ),
        ],
        color:Color(0xff73B8EB) ,
        height: 60,
        iconPadding: 0,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(microseconds: 300),
        onTap: (index) {
          setState(() {
            page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: list[page],
    );
  }
}
