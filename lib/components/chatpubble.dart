import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class chatbubble extends StatelessWidget {
  const chatbubble({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.centerLeft,
      child:

          Stack(
            children: [
             Card(
               shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.only(
                 topRight: Radius.circular(15),
                 topLeft: Radius.circular(15),
                 bottomRight: Radius.circular(15),
               )),
               color: Color(0xff73b8eb),
               margin: EdgeInsets.symmetric(vertical: 15, horizontal:60),
               child: Stack(children: [
                 Padding(
                   padding: EdgeInsets.only(
                       left: 10, right: 95, bottom: 30, top: 10),
                   child: Text(
                     "hello iam here to help u",
                     style: TextStyle(
                       fontFamily: 'myfont',
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
                           '10:43 am',
                           style: TextStyle(  fontFamily: 'myfont',color: Colors.white, fontSize: 15),
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
              
              Positioned(
                  top: 30,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assetes/Ellipse 85.png'),
                  )),
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
      child:

      Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(

                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                )),
            color: Colors.white,
            margin: EdgeInsets.symmetric(vertical: 15, horizontal:70),
            child: Stack(children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 10, right: 95, bottom: 30, top: 10),
                child: Text(
                  "thanks doctor",
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    color: Colors.black,
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
                        '10:43 am',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            color: Colors.black  , fontSize: 15),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.done_all,
                          color: Color(0xff73b8eb),
                      )
                    ],
                  ))
            ]),
          ),

          Positioned(
              top:40,
              right: 10,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assetes/Ellipse 85.png'),
              )),
        ],
      ),

    );
  }
}
