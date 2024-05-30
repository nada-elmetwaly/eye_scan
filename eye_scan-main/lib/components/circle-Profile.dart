import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleProfile extends StatelessWidget {
  const CircleProfile({super.key,required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(img),
          radius: 30,

        ),
        Positioned(
            left: 40,
            child: CircleAvatar(backgroundColor: Colors.green,radius: 4,))
      ],
    );
  }
}
