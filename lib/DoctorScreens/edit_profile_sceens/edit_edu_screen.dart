import 'package:flutter/material.dart';

import 'edit_profile_screen.dart';

class EditEduScreen extends StatefulWidget {
  const EditEduScreen({super.key});

  @override
  State<EditEduScreen> createState() => _EditEduScreenState();
}

class _EditEduScreenState extends State<EditEduScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF333333),
          ),
        ),
        title: Text(
          'Education',
          style: TextStyle(color: Color(0xFF333333), fontFamily: 'myfont',fontWeight: FontWeight.w700,
            height: 0,
            letterSpacing: 2.40,),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
