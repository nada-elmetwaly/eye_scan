import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
class MyNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color:Color(0xff73B8EB) ,
      backgroundColor: Colors.white,
      animationDuration: Duration(microseconds: 300),
      items: [

        CurvedNavigationBarItem(
          child:PhosphorIcon(
            PhosphorIcons.house(),
            color: Colors.white,
            size:30,
          ),
          label: 'Home',
            labelStyle: TextStyle(color: Colors.white,)
        ),
        CurvedNavigationBarItem(
          child: PhosphorIcon(
    PhosphorIcons.magnifyingGlass(),
            color: Colors.white,
            size:30,
    ),
          label: 'Search',
          labelStyle: TextStyle(color: Colors.white,)
        ),
        CurvedNavigationBarItem(
          child: PhosphorIcon(
            PhosphorIcons.chatCircleDots(),
            color: Colors.white,
            size:30,
          ),
          label: 'Chat',
            labelStyle: TextStyle(color: Colors.white,)
        ),
        CurvedNavigationBarItem(
          child: PhosphorIcon(
            PhosphorIcons.userCircleGear(),
            color: Colors.white,
            size:30,
          ),
          label: 'Profile',
            labelStyle: TextStyle(color: Colors.white,)
        ),



      ],

    );
  }
}