import 'dart:io';
import 'dart:typed_data';

import 'package:eye_scan/DoctorScreens/Scan_Screens/Result_Screen_Doctor.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

import '../../patientScreen/historyscreens/Result_Screen.dart';

class ScanPage extends StatefulWidget {
  const ScanPage({super.key});

  @override
  State<ScanPage> createState() => _ScanPageState();
}

class _ScanPageState extends State<ScanPage> {
  Uint8List? _image;
  File? selectedimg;
  @override
  Widget build(BuildContext context) {
    return _image!=null?ResultScreenDoctor(img: _image):Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'Scanning',
          style: TextStyle(
            fontFamily: 'myfont',
            color: Color(0xff333333),
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              'How to scan?',
              style: TextStyle(
                  color: Colors.black, fontSize: 20, fontFamily: 'myfont'),
            ),
            SizedBox(height: 30,),
            Container(
              width: 327,
              height: 207,
              decoration: BoxDecoration(
                  color: Color(0xffF4F8F9),
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,top: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: maincolorblue,
                              radius: 20,
                            ),
                            Positioned(
                              left: 7,
                              top: 7,
                              child: Image(
                                  height: 26,
                                  width: 26,
                                  image: AssetImage('assets/images/camera.png')),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Open your camera',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'myfont'),
                            ),
                            SizedBox(height: 7,),
                            Text(
                                'Make sure your camera is cleaned to get the best result',
                                style: TextStyle(
                                    color: maincolorgrey,
                                    fontSize: 8,
                                    fontFamily: 'myfont'))
                          ],
                        )
                      ],
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: maincolorblue,
                              radius: 20,
                            ),
                            Positioned(
                              left: 7,
                              top: 7,
                              child: Image(
                                  height: 26,
                                  width: 26,
                                  image: AssetImage('assetes/scan or upload.png')),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Scan or Upload',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontFamily: 'myfont'),
                                ),

                                SizedBox(width: 3,),
                                Text('pic',style: TextStyle(fontSize: 12,fontFamily: 'myfont',color: Color(0xffFF0000)),)
                              ],
                            ),
                            SizedBox(height: 7,),
                            Row(
                              children: [
                                Text(
                                    'you can immediately scan or upload the  ',
                                    style: TextStyle(
                                        color: maincolorgrey,
                                        fontSize: 8,
                                        fontFamily: 'myfont')),
                                SizedBox(width: 3,),
                                Text('pic',style: TextStyle(fontSize: 8,fontFamily: 'myfont',color: Color(0xffFF0000)),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    Divider(
                      indent: 10,
                      endIndent: 15,
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            CircleAvatar(
                              backgroundColor: maincolorblue,
                              radius: 20,
                            ),
                            Positioned(
                              left: 7,
                              top: 7,
                              child: Image(
                                  height: 26,
                                  width: 26,
                                  image: AssetImage('assetes/gallery.png')),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Result',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'myfont'),
                            ),
                            SizedBox(height: 7,),
                            Text(
                                'See the recognition result of your pic in very easy ',
                                style: TextStyle(
                                    color: maincolorgrey,
                                    fontSize: 8,
                                    fontFamily: 'myfont')),

                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 100,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  _pickImageFromCamera();
                },
                child: const Text(
                  'Scan',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'myfont'),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff73B8EB),
                    padding: const EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future _pickImageFromCamera() async {
    final returnimg = await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnimg == null) return;
    setState(() {
      selectedimg = File(returnimg.path);
      _image = File(returnimg.path).readAsBytesSync();
    });

  }
}
