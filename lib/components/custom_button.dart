import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  const CustomButton({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color(0xff75C2F6)),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(horizontal: 135, vertical: 15)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16))),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: 20, color: Color(0xffFFFFFF) , fontFamily: "myfont"),
      ),
    );
  }
}