import 'package:flutter/cupertino.dart';

class CommonText extends StatelessWidget {
  final String text ;
  const CommonText({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                  text,
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontFamily: "myfont",
                      fontSize: 30,
                      letterSpacing: 3),
                );
  }
}