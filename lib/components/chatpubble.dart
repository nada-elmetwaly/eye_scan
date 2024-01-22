import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chatbubble extends StatelessWidget {
  const chatbubble({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assetes/Ellipse 85.png'),
            radius: 30,
          ),
          Positioned(
            bottom: 1,
            left: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
              color: Color(0xff73b8eb),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 10, right: 50, bottom: 30, top: 10),
                  child: Text(
                    'hello iam here to help you ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Positioned(
                    right: 10,
                    bottom: 4,
                    child: Row(
                      children: [
                        Text(
                          '10:43 AM',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                        )
                      ],
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class chatbubbleforfriend extends StatelessWidget {
  const chatbubbleforfriend({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerRight,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage('assetes/Ellipse 85.png'),
            radius: 30,
          ),
          Positioned(
            bottom: 1,
            right: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  )),
              color: Color(0xff73b8eb),
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: 10, right: 50, bottom: 30, top: 10),
                  child: Text(
                    'hello iam here to help you ',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Positioned(
                    right: 10,
                    bottom: 4,
                    child: Row(
                      children: [
                        Text(
                          '10:43 AM',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Icon(
                          Icons.done_all,
                          color: Colors.white,
                        )
                      ],
                    ))
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
