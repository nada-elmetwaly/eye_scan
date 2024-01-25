import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key, required this.data, required this.width, required this.height});
  final String data;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        width: width,
        height: height,
        decoration: ShapeDecoration(
          color: Color(0xFFFBFDFD),
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0x4C75C1C4)),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Center(
          child: Text(
            data,
            style: TextStyle(
              color: Color(0xFF333333),
              fontSize: 10,
              fontFamily: 'myfont',
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
