import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'custom_rating.dart';

class RateComponent extends StatelessWidget {
  const RateComponent({super.key, required this.name, required this.image});
  final String name;
  final String image;

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Stack(children: [
          Container(
            width: 191,
            height: 247,
            decoration: ShapeDecoration(
              color: Color(0xFFFBFDFD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              shadows: [
                BoxShadow(
                  color: Color(0x4275C2F6),
                  blurRadius: 2,
                  offset: Offset(0, 4),
                  spreadRadius: 0.5,
                )
              ],
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xFFEDF1F1)),
                  width: 191,
                  height: 177,
                  child: Card(
                    //elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 15,
                    bottom: 70,
                    child: Image(
                      width: 142,
                      height: 177,
                      image: AssetImage(image),
                    ))
              ],
            ),
          ),
          Positioned(
            left: 5,
            bottom: 45,
            child: Text(
              name,
              style: TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: "myfont",
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 30,
            child: Text(
              'Eye diseases',
              style: TextStyle(
                color: Color(0xFF787878),
                fontSize: 10,
                fontFamily: "myfont",
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 5,
            bottom: 10,
            child: RatingComponent(),
          ),
        ]),
      ],
    );
  }

}
