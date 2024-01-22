import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  final String text;
  final Icon icon;
  const CustomField({super.key, required this.text , required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffF4F8F9),
        borderRadius: BorderRadius.circular(16),
      ),
      width: 327,
      height: 56,
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
            icon: icon , 
            hintText: text,
            border: InputBorder.none),
      ),
    );
  }
}
