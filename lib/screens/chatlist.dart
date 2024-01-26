import 'package:eye_scan/components/StoryItem.dart';
import 'package:eye_scan/components/chatItem.dart';
import 'package:eye_scan/components/custom_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Chats',
          style: TextStyle(
            fontFamily: 'myfont',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 400,
                    height: 55,
                    child: Card(
                      elevation: 1,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: TextFormField(
                        decoration: InputDecoration(
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.mic_none_outlined,
                                  size: 28,
                                  color: Color(0xff73B8EB),
                                ),
                              ),
                            ],
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Colors.white,
                              width: 0,
                            ),
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {
                              ;
                            },
                            icon: Icon(
                              Icons.search,
                              color: Color(0xff979797),
                            ),
                          ),
                          label: Text(
                            'Search',
                            style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff979797)
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color(0xFF73B8EB),
                      width: 2,
                    ))),
                    child: Text(
                      "Active Now",
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 20,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        height: 0,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return StoryItem();
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(width: 20);
                        },
                        itemCount: 30),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: Color(0xFF73B8EB),
                      width: 2.0,
                    ))),
                    child: Text(
                      "Messages",
                      style: TextStyle(
                        color: Color(0xFF333333),
                        fontSize: 20,
                        fontFamily: 'myfont',
                        fontWeight: FontWeight.bold,
                        height: 0,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return ChatItem();
                      },
                      itemCount: 60,
                      separatorBuilder: (context, index) => Divider(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top:570,
              left: 330,
              child: InkWell(
                onTap: (){},
                child: Image(
                  width: 50,
                    height: 50,
                    image: AssetImage('assetes/message-add.png')
                ),
              )
          )
        ],
      ),
    );
  }




}
