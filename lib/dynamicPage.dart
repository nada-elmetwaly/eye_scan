import 'package:eye_scan/screens/chat_screen.dart';
import 'package:eye_scan/screens/chatlist.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:eye_scan/screens/profile_screen.dart';
import 'package:eye_scan/screens/search_screen.dart';
import 'package:eye_scan/screens/tips_screen.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';



import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';



class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  int page = 0;
  List<Widget> list = [
    const HomeScreen(),
    const SearchScreen(),
    const tipsScreen(),
    ChatList(),
    const ProfileScreen(),
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
              PhosphorIcons.magnifyingGlass(),
              color: page == 1 ? Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Search',
          ),
          CurvedNavigationBarItem(
            labelStyle: const TextStyle(color: Colors.white),
            child: PhosphorIcon(
              PhosphorIcons.lightbulb(),
              color: page == 2 ? Color(0xff73B8EB) : Colors.white,
            ),
            label: 'Tips',
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
