import 'dart:convert';
import 'dart:io';


import 'dart:typed_data';

import 'package:eye_scan/DoctorScreens/Scan_Screens/ScanScreen.dart';
import 'package:eye_scan/DoctorScreens/nav_bar_screen.dart';
import 'package:eye_scan/DoctorScreens/nav_screens/doc_home_screen.dart';
import 'package:eye_scan/components/maincolor.dart';
import 'package:eye_scan/dynamicPage.dart';
import 'package:eye_scan/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart'as http;

class ResultScreenDoctor extends StatefulWidget {
  File?img;
  ResultScreenDoctor({super.key,required this.img});

  @override
  State<ResultScreenDoctor> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreenDoctor> {
  late String? classname='';
  late dynamic accuracy='';
  Future<void> _AiModelScan() async {
    final url = 'http://46.101.128.18:8080/predict?';
    final image =widget.img ;
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.files.add(await http.MultipartFile.fromPath('image', widget.img!.path));
    var
    streamedResponse = await request.send();
    final response = await http.Response.fromStream(streamedResponse);

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      setState(() {
        classname=responseData["class_name"];
        accuracy=responseData["confidence"];
      });

    }else
    {
      print('something wrong');
    }
  }
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _AiModelScan();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,

        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              child: Icon(
                Icons.arrow_back_ios_new,
                color: Color(0xff333333),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanPage()));
              },
            ),
            const SizedBox(
              width: 120,
            ),
            Text(
              'Result',
              style: TextStyle(
                fontFamily: 'myfont',
                color: Color(0xff333333),
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      width: 257,
                      height: 270,
                      image:FileImage(widget.img!))
                  ,
                ],
              ),
              SizedBox(height: 40,),
              Row(
                children: [
                Text('The Result is',style: TextStyle(fontSize: 24,fontFamily: 'myfont',color: Colors.black)),
              ],
              ),
              SizedBox(height: 18,),
              Row(
                children: [
                  Expanded(
                    child: Text(
        
                     classname!,style: TextStyle(
                      color: maincolorgrey,
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                  color: maincolorblue,
                    borderRadius:BorderRadius.circular(16) ,
                    border: Border.all(
                        color: Colors.white
                    )
                ),
                child: MaterialButton(onPressed: (){},
                  child:
                  Text(
                    'Save Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                width: 327,
                height: 56,
                decoration: BoxDecoration(
                    borderRadius:BorderRadius.circular(16) ,
                    border: Border.all(
                        color: Colors.blue
                    )
                ),
                child: MaterialButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DoctorNav()));
                },
                  child:
                  Text(
                    'Back To Home',
                    style: TextStyle(
                      color: maincolorblue,
                      fontSize: 14,
                      fontFamily: "myfont",
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
