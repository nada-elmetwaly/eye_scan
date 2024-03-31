import 'package:flutter/cupertino.dart';

class CommonText extends StatelessWidget {
  final String text ;
  const CommonText({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
                  text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xFF333333),
        fontSize: 24,
        fontFamily: 'myfont',
        fontWeight: FontWeight.w700,
        height: 0.06,
        letterSpacing: 5,
      ),
                );
  }
}