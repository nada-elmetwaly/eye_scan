import 'package:eye_scan/components/chatpubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 70,
            color: Color(0xff73B8EB),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      InkWell(

                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                        onTap: (){},
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage('assetes/Ellipse 85.png'),
                            radius: 30,

                          ),
                          Positioned(
                            left: 40,
                              child: CircleAvatar(backgroundColor: Colors.green,radius: 9,))
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 110,
                  bottom: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Dr.Sam',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                      SizedBox(height: 0.5,),
                      Text('online',style: TextStyle(
                          fontSize: 15,

                          color: Colors.white
                      ),),
                    ],
                  ),
                ),
                Positioned(
                  right: 15,
                    bottom: 11,
                    child:
                    IconButton(
                      icon: const Icon(Icons.phone_outlined,color: Colors.white,size: 35,),onPressed: (){},))
              ],
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                chatbubble(),
                SizedBox(height: 50,),
                chatbubbleforfriend()
              ],
            ),
          )
        ],
      ),
    ));
  }
}
