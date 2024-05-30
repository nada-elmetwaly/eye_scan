import 'package:flutter/cupertino.dart';

class SharedText extends StatelessWidget {
  const SharedText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(

        left: 14,
      ),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                color: Color(0xFF73B8EB),
                width: 1.0,
              ))),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF333333),
          fontSize: 20,
          fontFamily: "myfont",
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
    );
  }
}
