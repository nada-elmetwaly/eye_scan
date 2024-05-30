import 'package:flutter/cupertino.dart';

class TipComponent extends StatelessWidget {
  const TipComponent({super.key, required this.img, required this.width, required this.height});
  final String img;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return  Container(
        width:width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.fill,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 8,
              offset: Offset(2, -1),
              spreadRadius: 0,
            )
          ],
        )
    );
  }
}
