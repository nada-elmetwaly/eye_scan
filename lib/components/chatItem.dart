import 'package:eye_scan/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()
      {
        Navigator.push(context,MaterialPageRoute(builder: (context)=>ChatScreen()));
      },
      child: Row(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: const [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assetes/Ellipse 85.png')

              ),


            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr.Sam',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      'you should be here very near. and don’t forget to take you..........',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Color(0xff979797)
                      ),
                    ),


                  ],
                ),
                Positioned(
                  left: 248,
                  child: Text('10:43 am',style: TextStyle(
                      fontFamily: 'Baloo Bhai 2',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff73B8EB)
                  ),),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
