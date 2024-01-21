import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
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
        Icon(Icons.home_outlined,color: Colors.white,),
        Icon(Icons.search,color: Colors.white,),
        Icon(Icons.tips_and_updates_outlined,color: Colors.white,),
        Icon(Icons.mark_unread_chat_alt_outlined,color: Colors.white,),

      ],

    );
  }
}