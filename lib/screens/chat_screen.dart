

import 'dart:io';
import 'dart:typed_data';

import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:eye_scan/components/chatpubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:image_picker/image_picker.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  Uint8List? _image;
  File?selectedimg;
  void Function(Category?, Emoji)? onEmojiSelected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    _image !=null?
                    Positioned(
                      child: CircleAvatar(
                        backgroundImage:MemoryImage(_image!),
                        radius: 28,
                      ),
                    ):Positioned(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assetes/Ellipse 85.png'),
                        radius: 28,
                      ),
                    ),
                    Positioned(
                        left: 38,
                        bottom: 39,
                        child: CircleAvatar(
                          backgroundColor:  Color(0xff7BEB78),
                          radius: 9,
                        ))
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
                  Text(
                    'Dr.Sam',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 0.5,
                  ),
                  Text(
                    'online',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 15,
                bottom: 3,
                child: IconButton(
                  icon: const Icon(
                    Icons.phone_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                  onPressed: () {},
                ))
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(itemBuilder: (context,index)
              {
                return chatbubble();

              }),
            ),
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 325,
                    height: 50,
                    child: Card(
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
                                onPressed: () {
                                  _pickImageFromGallery();
                                },
                                icon: Icon(
                                  Icons.attach_file_outlined,
                                  color: Color(0xff73B8EB),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  _pickImageFromCamera();
                                },
                                icon: Icon(
                                  Icons.camera_alt_outlined,
                                  color: Color(0xff73B8EB),
                                ),
                              ),
                            ],
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Color(0xff73b8eb),
                              width: 1.0,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: new BorderSide(
                              color: Color(0xff73b8eb),
                              width: 1.0,
                            ),
                          ),
                          prefixIcon: IconButton(onPressed: (){
                            setState(() {
                              emojiSelect();
                            });
                          },icon: Icon(Icons.emoji_emotions_outlined,color: Color(0xff73b8eb),),),
                          label: Text(
                            'Message',
                            style: TextStyle(color: Color(0xff75C1C4)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width:15,
                  ),
                  CircleAvatar(
                    child: IconButton(
                      icon: Icon(
                        Icons.mic_none_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                    backgroundColor: Color(0xff73B8EB),
                    radius: 25,
                  )
                ],
              ),

            ],
          ),
          // chatbubbleforfriend(),
          // Padding(
          //   padding: const EdgeInsets.only(left: 6),
          //   child: chatbubble(),
          // ),
          // SizedBox(
          //   height: 370,
          // ),
          // Column(
          //   children: [
          //     Row(
          //       children: [
          //         Container(
          //           width: 325,
          //           height: 50,
          //           child: Card(
          //             color: Colors.white,
          //             shape: RoundedRectangleBorder(
          //                 borderRadius: BorderRadius.circular(50)),
          //             child: TextFormField(
          //               decoration: InputDecoration(
          //                 suffixIcon: Row(
          //                   mainAxisSize: MainAxisSize.min,
          //                   mainAxisAlignment: MainAxisAlignment.end,
          //                   children: [
          //                     IconButton(
          //                       onPressed: () {
          //                         _pickImageFromGallery();
          //                       },
          //                       icon: Icon(
          //                         Icons.attach_file_outlined,
          //                         color: Color(0xff73B8EB),
          //                       ),
          //                     ),
          //                     IconButton(
          //                       onPressed: () {
          //                         _pickImageFromCamera();
          //                       },
          //                       icon: Icon(
          //                         Icons.camera_alt_outlined,
          //                         color: Color(0xff73B8EB),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //
          //                 focusedBorder: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(50),
          //                   borderSide: new BorderSide(
          //                     color: Color(0xff73b8eb),
          //                     width: 1.0,
          //                   ),
          //                 ),
          //                 enabledBorder: OutlineInputBorder(
          //                   borderRadius: BorderRadius.circular(50),
          //                   borderSide: new BorderSide(
          //                     color: Color(0xff73b8eb),
          //                     width: 1.0,
          //                   ),
          //                 ),
          //                 prefixIcon: IconButton(onPressed: (){
          //                   setState(() {
          //                     emojiSelect();
          //                   });
          //                 },icon: Icon(Icons.emoji_emotions_outlined,color: Color(0xff73b8eb),),),
          //                 label: Text(
          //                   'Message',
          //                   style: TextStyle(color: Color(0xff75C1C4)),
          //                 ),
          //               ),
          //             ),
          //           ),
          //         ),
          //         SizedBox(
          //           width:15,
          //         ),
          //         CircleAvatar(
          //           child: IconButton(
          //             icon: Icon(
          //               Icons.mic_none_outlined,
          //               color: Colors.white,
          //             ),
          //             onPressed: () {},
          //           ),
          //           backgroundColor: Color(0xff73B8EB),
          //           radius: 25,
          //         )
          //       ],
          //     ),
          //
          //   ],
          // ),


        ],
      ),
    );
  }
  Future _pickImageFromGallery()
  async {
    final returnimg=await ImagePicker().pickImage(source: ImageSource.gallery);
    if(returnimg==null)return;
    setState(() {
      selectedimg=File(returnimg.path);
      _image=File(returnimg.path).readAsBytesSync();
    });
  }
  Future _pickImageFromCamera()
  async {
    final returnimg=await ImagePicker().pickImage(source: ImageSource.camera);
    if(returnimg==null)return;
    setState(() {
      selectedimg=File(returnimg.path);
      _image=File(returnimg.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }
}


Widget emojiSelect()
{
  return EmojiPicker(
    onEmojiSelected: (Category? category, Emoji emoji) {
      print(emoji);
    },
    onBackspacePressed: () {
      // Do something when the user taps the backspace button (optional)
      // Set it to null to hide the Backspace-Button
    },
     // pass here the same [TextEditingController] that is connected to your input field, usually a [TextFormField]
    config: Config(

      columns: 7,
      emojiSizeMax: 32 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.30 : 1.0), // Issue: https://github.com/flutter/flutter/issues/28894
      verticalSpacing: 0,
      horizontalSpacing: 0,
      gridPadding: EdgeInsets.zero,
      initCategory: Category.RECENT,
      bgColor: Color(0xFFF2F2F2),
      indicatorColor: Colors.blue,
      iconColor: Colors.grey,
      iconColorSelected: Colors.blue,
      backspaceColor: Colors.blue,
      skinToneDialogBgColor: Colors.white,
      skinToneIndicatorColor: Colors.grey,
      enableSkinTones: true,
      recentTabBehavior: RecentTabBehavior.RECENT,
      recentsLimit: 28,
      noRecents: const Text(
        'No Recents',
        style: TextStyle(fontSize: 20, color: Colors.black26),
        textAlign: TextAlign.center,
      ), // Needs to be const Widget
      loadingIndicator: const SizedBox.shrink(), // Needs to be const Widget
      tabIndicatorAnimDuration: kTabScrollDuration,
      categoryIcons: const CategoryIcons(),
      buttonMode: ButtonMode.MATERIAL,
    ),
  );
}