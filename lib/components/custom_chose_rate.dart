import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseRate extends StatelessWidget {
  const ChooseRate({super.key, required this.rate});
  final String rate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: GestureDetector(
        onTap: (){},
        child: Container(
          width: 54,
          height: 26,
          decoration: ShapeDecoration(
            color: Color(0xFFFBFDFD),
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 1, color: Color(0xFFD3EBEC)),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                rate,
                style: TextStyle(
                  color: Color(0xFF333333),
                  fontSize: 12,
                  fontFamily: 'myfont',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 1),
                child: Icon(Icons.star,color: Colors.amber,size: 14,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
