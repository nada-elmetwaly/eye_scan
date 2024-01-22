import 'package:eye_scan/screens/chat_screen.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:eye_scan/screens/profile_screen.dart';
import 'package:eye_scan/screens/search_screen.dart';
import 'package:eye_scan/screens/tips_screen.dart';
import 'package:flutter/material.dart';

import 'components/bottomNavBar.dart';

class DynamicPage extends StatefulWidget {
  const DynamicPage({super.key});

  @override
  State<DynamicPage> createState() => _DynamicPageState();
}

class _DynamicPageState extends State<DynamicPage> {
  @override

    int _selectedIndex=0;
    void navigteBottomBar(int index){
      setState(() {
        _selectedIndex=index;
      });
    }
    //pages
    final List<Widget> _pages=[
      
      //home screen
      HomeScreen(),
      //search screen
      SearchScreen(),
      //tips screen
      tipsScreen(),

      //chat screen
      ChatScreen(),


      //profile screen
      ProfileScreen(),

    ];
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.grey[150],
        bottomNavigationBar: MyNavBar(
          onTabChange: (index)=> navigteBottomBar(index),

        ),
        body: _pages[_selectedIndex],
      );
  }
}
