import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SizedBox(
          width: 60.0,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [

                  CircleAvatar(
                      radius:44,
                      backgroundImage: AssetImage('assetes/girl.png')
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 7.5,
                  ),
                  Positioned(
                    bottom: 60,
                    left: 44,
                    child: CircleAvatar(
                      backgroundColor: Color(0xff7BEB78),
                      radius: 5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 6,
              ),

            ],
          ),
        ),
      ],
    );
  }
}
