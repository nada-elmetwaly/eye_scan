
import 'package:eye_scan/components/chatpubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff73B8EB),
          title: Stack(
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(

                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                  ),
                  onTap: (){},
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    SizedBox(height:20,),
                    Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assetes/Ellipse 85.png'),
                        radius: 28,

                      ),
                    ),
                    Positioned(
                        left: 40,
                        child: CircleAvatar(backgroundColor: Colors.green,radius: 9,))
                  ],
                ),
              ],
            ),
            Positioned(
              left: 110,
              bottom: 6,
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
                bottom:3,
                child:
                IconButton(
                  icon: const Icon(Icons.phone_outlined,color: Colors.white,size: 35,),onPressed: (){},))
          ],
                  ),),
          body:
          Padding(
            padding: const EdgeInsets.only(left: 5,right: 5),
            child: Column(
              children: [
               chatbubbleforfriend(),
                chatbubble(),
                // chatbubbleforfriend(),
                // chatbubble(),
                SizedBox(height: 370,),
                Row(
                  children: [
                    Container(
                      width:325 ,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(50)
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            suffixIcon: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton( onPressed: () {  },icon: Icon(Icons.attach_file_outlined,color:Color(0xff73B8EB) ,),),
                                IconButton( onPressed: () {  },icon: Icon(Icons.camera_alt_outlined,color:Color(0xff73B8EB) ,),),
                              ],
                              
                              
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: new BorderSide(
                                color: Color(0xff73b8eb),
                                width: 1.0,
                              ),
                            ),
                            enabledBorder:OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: new BorderSide(
                                color:  Color(0xff73b8eb),
                                width: 1.0,
                              ),
                            ) ,
                            prefixIcon: Icon(Icons.emoji_emotions,color: Color(0xff73b8eb),),
                            label: Text('Message',style: TextStyle(
                              color: Color(0xff75C1C4)
                            ),),

                          ),
                        ),

                      ),
                    ),
                  ],
                )

                // Expanded(
                //   child: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: ListView.builder(itemBuilder: (context,index)
                //     {
                //       return chatbubbleforfriend();
                //     }),
                //   ),
                // )
              ],
            ),
          ),
      
      ),
    );
  }
}

