import 'package:flutter/cupertino.dart';

class Description extends StatelessWidget {
  final String text;
  const Description({super.key , required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Text(
                text,
                style: TextStyle(
                    color: Color(0xff787876),
                    fontFamily: "myfont",
                    fontSize: 16,
                    letterSpacing: 1,
                    wordSpacing: 1),
              ),
            );
  }
}