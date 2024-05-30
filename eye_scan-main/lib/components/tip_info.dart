import 'package:flutter/cupertino.dart';

class TipInfo extends StatelessWidget {
  const TipInfo({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 10,
          height: 10,
          decoration: ShapeDecoration(
            color: Color(0xFF73B8EB),
            shape: OvalBorder(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 325,
            child: Text(
              text,
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Color(0xFF4C4C4D),
                fontSize: 13,
                fontFamily: "myfont",
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
        )
      ],
    );
  }
}
