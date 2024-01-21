
import 'package:flutter/material.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
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
          child: Icon(Icons.home_outlined,color: Colors.white,),
          label: 'Home',
            labelStyle: TextStyle(color: Colors.white,),
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.search,color: Colors.white,),
          label: 'Search',
          labelStyle: TextStyle(color: Colors.white,)
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.tips_and_updates_outlined,color: Colors.white,),
          label: 'Tips',
            labelStyle: TextStyle(color: Colors.white,)
        ),
        CurvedNavigationBarItem(
          child: Icon(Icons.mark_unread_chat_alt_outlined,color: Colors.white,),
          label: 'Chat',
            labelStyle: TextStyle(color: Colors.white,),
        ),



      ],

    );
  }
}